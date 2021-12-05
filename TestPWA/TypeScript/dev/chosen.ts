
'use strict';


interface IChosenOptions
{
    isMultiple?: boolean;
    width?: number;
    height?: number;
    noResultsText?: string; // 'No results match '
    emptyListText?: string; // 'No items in list';

    renderResult?: (item:IOptionData, query:string, selectedValue:string)=>string;
    renderSelectedValue?: (selectedItem: IOptionData, query:string)=>string;
    change?: (current: IOptionData, previous: IOptionData, c:HTMLSelectElement)=>void;
}


interface IOptionData
{
    value: string;
    text: string;
    disabled?: boolean;
}




// https://github.com/medikoo/vanilla-chosen/blob/master/index.js
function extendObject(target: any, source: any)
{

    if (!target)
    {
        return target;
    }

    if (!source)
    {
        return source;
    }

    for (let prop in source)
    {
        if (source.hasOwnProperty(prop))
        {

            if (typeof source[prop] !== 'undefined')
            {

                if (typeof source[prop] !== 'object')
                {
                    target[prop] = source[prop];
                }
                else
                {

                    if (typeof target[prop] !== 'object')
                    {
                        target[prop] = {};
                    }

                    extendObject(target[prop], source[prop]);
                }
            }
        }
    }

    return target;
}


// export
class Chosen
{
    public options: IChosenOptions = {};
    public selectors = {};

    protected focused: boolean;
    protected opened: boolean;


    protected $element: HTMLSelectElement;

    protected $selectedValueContainer: HTMLElement;
    protected $resultsContainer: Element;
    protected $searchInputContainer: Element;

    protected $searchInput: HTMLInputElement;


    protected items: IOptionData[];
    protected currentItems: IOptionData[];


    protected htmlComponents: Element[];
    protected resultsElements: HTMLLIElement[];
    protected query: string;
    protected $selectedResult: Element;

    protected $dropdownContainer: HTMLDivElement
    protected $dropdownMask: HTMLAnchorElement;
    protected $dropdown: HTMLDivElement;

    protected selectedValue: string;



    constructor($element: HTMLSelectElement, options: IChosenOptions)
    {
        this.$element = $element;

        this.options.isMultiple = $element.getAttribute('multiple') === 'multiple';
        extendObject(this.options, options);

        this.items = this.getItems(this.$element);
        this.currentItems = this.items.slice();
        this.htmlComponents = [];
        this.resultsElements = [];
        this.query = '';
        this.$selectedResult = null;

        this.buildHtml(this.items, this.$element, this.options);

        this.registerEvents();

        if (this.$element.value)
        {
            this.setSelectedValue(this.$element.value);
        }
        else
        {
            this.setSelectedValue(null);
        }
    }


    public buildHtml(items: IOptionData[], $element: HTMLSelectElement, options: IChosenOptions)
    {
        let elementBoundingRectangle = $element.getBoundingClientRect();

        if (typeof options.width === 'undefined')
        {
            options.width = elementBoundingRectangle.width;
        }

        if (typeof options.height === 'undefined')
        {
            options.height = elementBoundingRectangle.height;
        }

        let $dropdownContainer = this.buildChosenContainer(options),
            $dropdownMask: HTMLAnchorElement = options.isMultiple
                ? this.buildMultipleDropdownMask(options)
                : this.buildSingleDropdownMask(options),
            $dropdown = this.buildDropdown(options, items);

        this.$dropdownContainer = $dropdownContainer;
        this.$dropdownMask = $dropdownMask;
        this.$dropdown = $dropdown;

        $dropdownContainer.appendChild($dropdownMask);
        $dropdownContainer.appendChild($dropdown);

        $element.style.display = 'none';

        $element.parentNode.insertBefore($dropdownContainer, $element.nextSibling);
    }



    public buildChosenContainer(options: IChosenOptions)
    {
        let $chosenContainer = document.createElement('div');

        $chosenContainer.classList.add('chosen-container');
        $chosenContainer.classList.add('chosen-container-single');

        $chosenContainer.style.width = options.width.toString();
        this.htmlComponents.push($chosenContainer);

        return $chosenContainer;
    }


    public buildSingleDropdownMask(options: IChosenOptions): HTMLAnchorElement
    {
        let $dropdownMaskContainer = document.createElement('a'),
            $selectedValueContainer = document.createElement('span'),
            $caretContainer = document.createElement('div'),
            $caret = document.createElement('b');

        $dropdownMaskContainer.classList.add('chosen-single');
        $dropdownMaskContainer.setAttribute('tabindex', "-1");

        $caretContainer.appendChild($caret);
        $dropdownMaskContainer.appendChild($selectedValueContainer);
        $dropdownMaskContainer.appendChild($caretContainer);

        this.htmlComponents.push($dropdownMaskContainer);
        this.htmlComponents.push($selectedValueContainer);
        this.htmlComponents.push($caretContainer);
        this.htmlComponents.push($caret);

        this.$selectedValueContainer = $selectedValueContainer;

        return $dropdownMaskContainer;
    }


    public buildMultipleDropdownMask(options: IChosenOptions): HTMLAnchorElement
    {
        // TODO: Implement
        throw new Error("buildMultipleDropdownMask not implemented !");
        return null;
    }


    public buildDropdown(options: IChosenOptions, items: IOptionData[])
    {
        let $dropdownContainer = document.createElement('div'),
            $searchInputContainer = document.createElement('div'),
            $searchInput = document.createElement('input'),
            $resultsContainer = document.createElement('ul'),
            $results = this.buildResults(items);

        $dropdownContainer.classList.add('chosen-drop');
        $searchInputContainer.classList.add('chosen-search');
        $resultsContainer.classList.add('chosen-results');

        $searchInput.setAttribute('type', 'text');
        $searchInput.setAttribute('autocomplete', 'off');
        $searchInput.setAttribute('tabindex', '2');

        this.appendResults($results, $resultsContainer);

        $searchInputContainer.appendChild($searchInput);

        $dropdownContainer.appendChild($searchInputContainer);
        $dropdownContainer.appendChild($resultsContainer);

        this.htmlComponents.push($dropdownContainer);
        this.htmlComponents.push($searchInputContainer);
        this.htmlComponents.push($searchInput);
        this.htmlComponents.push($resultsContainer);


        // this.htmlComponents.push($results);
        for (let i = 0; i < $results.length; ++i)
        {
            this.htmlComponents.push($results[i]);
        }
        
        this.$resultsContainer = $resultsContainer;
        this.$searchInputContainer = $searchInputContainer;
        this.$searchInput = $searchInput;

        return $dropdownContainer;
    }


    public buildResults(items: IOptionData[])
    {
        if (!items || items.length === 0)
        {
            let $noResults = document.createElement('li');

            $noResults.classList.add('chosen-result');
            $noResults.classList.add('no-results');

            if (this.query)
            {
                let $queryElement = document.createElement('span');
                $queryElement.innerText = this.query;
                $noResults.innerText = this.options.noResultsText || 'No results match ';
                $noResults.appendChild($queryElement);
            }
            else
            {
                $noResults.innerText = this.options.emptyListText || 'No items in list';
            }

            return [$noResults];
        }

        let resultsElements = this.resultsElements,
            options = this.options,
            query = this.query,
            selectedValue = this.selectedValue;

        return items.map(function (item: IOptionData, index: number)
        {
            let $result = document.createElement('li');

            $result.classList.add('chosen-result');
            $result.classList.add(item.disabled ? 'inactive-result' : 'active-result');

            $result.setAttribute('data-option-array-index', (index + 1).toString());
            $result.setAttribute('data-option-value', item.value || '');

            if (typeof options.renderResult === 'function')
            {
                $result.innerText = options.renderResult(item, query, selectedValue);
            }
            else
            {
                $result.innerText = item.text;
            }

            resultsElements.push($result);

            return $result;
        });
    }



    public registerEvents()
    {
        document.addEventListener('click', this.evOnOuterClick.bind(this));

        this.$dropdownMask.addEventListener('click', this.evOnContainerClick.bind(this));
        this.$dropdownMask.addEventListener('focus', this.evOnContainerFocus.bind(this));

        this.registerSearchEvents();

        this.registerResultsEvents(this.resultsElements);
    }


    public registerResultsEvents(resultsElements: Element[])
    {
        for (let i = 0; i < resultsElements.length; i++)
        {
            resultsElements[i].addEventListener('click', this.evResultClick.bind(this));
            resultsElements[i].addEventListener('mouseenter', this.evResultMouseEnter.bind(this));
            resultsElements[i].addEventListener('mouseleave', this.evResultMouseLeave.bind(this));
        }
    }


    public registerSearchEvents()
    {
        this.$searchInputContainer.addEventListener('click', this.evSearchContainerClick.bind(this));
        this.$searchInput.addEventListener('keyup', this.evSearchKeyUp.bind(this));
    }


    public evOnContainerFocus(e: MouseEvent)
    {
        e.stopPropagation();
        this.focused = true;
        this.$dropdownContainer.classList.add('chosen-container-active');

        this.$searchInput.focus();
    }


    public evOnOuterClick(e: MouseEvent)
    {
        this.focused = false;
        this.closeDropdown();

        this.$dropdownContainer.classList.remove('chosen-container-active');
    }


    public evOnContainerClick(e: MouseEvent)
    {
        e.preventDefault();
        e.stopPropagation();

        this.opened = !this.opened;
        this.performQuery(this.query);

        if (this.opened)
        {
            this.openDropdown();
        } else
        {
            this.closeDropdown();
        }
    }


    public evResultClick(e: MouseEvent)
    {
        e.preventDefault();

        if (this.$selectedResult)
        {
            this.$selectedResult.classList.remove('result-selected');
        }

        this.$selectedResult = <Element>e.target;
        let selectedValue = this.$selectedResult.getAttribute('data-option-value');
        this.$selectedResult.classList.add('result-selected');
        this.setSelectedValue(selectedValue);
    }

    public evResultMouseEnter(e: MouseEvent)
    {
        let $target: Element = <any>e.target;
        $target.classList.add('highlighted');
    }


    public evResultMouseLeave(e: MouseEvent)
    {
        let $target: HTMLElement = <HTMLElement>e.target;
        $target.classList.remove('highlighted');
    }

    public evSearchKeyUp(e: MouseEvent)
    {
        let query = (<HTMLInputElement>e.target).value;
        this.query = query;
        this.performQuery(this.query);
    }

    public evSearchContainerClick(e: MouseEvent)
    {
        e.stopPropagation();
    }


    public openDropdown()
    {
        this.opened = true;
        this.$dropdownContainer.classList.add('chosen-with-drop');
    }

    public closeDropdown()
    {
        this.opened = false;
        this.$dropdownContainer.classList.remove('chosen-with-drop');
        this.resetDropdownResults();
    }

    //public isChosenComponent($element: Element)
    //{
    //    return this.htmlComponents.indexOf($element) !== -1 || this.resultsElements.indexOf($element) !== -1;
    //}




    public getItems($select: HTMLSelectElement): IOptionData[]
    {
        let $options: NodeListOf<HTMLOptionElement> = $select.querySelectorAll('option[value]:not([value=""])'),
            items = [];

        let $emptyOption: HTMLOptionElement = $select.querySelector('option:not([value])') || $select.querySelector('option[value=""]');

        if ($emptyOption)
        {
            items.push({
                value: null,
                text: $emptyOption.innerText
            });
        }

        for (let i = 0; i < $options.length; i++)
        {
            items.push({
                value: $options[i].getAttribute('value'),
                text: $options[i].innerText
            });
        }

        return items;
    }



    public getItemByResultIndex(index: number)
    {
        if (typeof index !== 'number')
        {
            index = parseInt(index);
        }

        index = index - 1;

        return this.items[index];
    }


    public getItemByValue(value: string)
    {
        value = value || null;

        let matches = this.items.filter(function (item: IOptionData)
        {
            return item.value === value;
        });

        return matches[0];
    }


    public setSelectedValue(value: string)
    {
        let previousSelectedValue = this.selectedValue;
        this.selectedValue = value;

        let selectedItem = this.getItemByValue(value),
            selectedItemText = selectedItem.text || '';

        if (typeof this.options.renderSelectedValue === 'function')
        {
            this.$selectedValueContainer.innerText = this.options.renderSelectedValue(selectedItem, this.query);
        } else
        {
            this.$selectedValueContainer.innerText = selectedItemText;
        }

        this.$element.value = value;

        if ("createEvent" in document)
        {
            let evt = document.createEvent("HTMLEvents");
            evt.initEvent("change", false, true);
            this.$element.dispatchEvent(evt);
        }
        else
        {
            this.$element.fireEvent("onchange");
        }

        if (typeof this.options.change === 'function')
        {
            this.options.change(this.getItemByValue(value), this.getItemByValue(previousSelectedValue), this.$element);
        }

        return this.selectedValue;
    }


    public getSelectedValue()
    {
        return this.selectedValue;
    }


    public appendResults($results: HTMLLIElement[], $resultsContainer: Element)
    {
        let $currentResults = $resultsContainer.querySelectorAll('.chosen-result');

        for (let i = 0; i < $currentResults.length; i++)
        {
            $resultsContainer.removeChild($currentResults[i]);
        }

        for (let i = 0; i < $results.length; i++)
        {
            $resultsContainer.appendChild($results[i]);
        }
    }


    public queryItems(query: string, selectedValue: any):IOptionData[]
    {
        let queryResults:IOptionData[];

        if (!query)
        {
            queryResults = this.items.slice();
        }
        else
        {
            queryResults = this.items.filter(function (item: IOptionData)
            {
                return item.text && item.text.toUpperCase().indexOf(query.toUpperCase()) !== -1;
            });
        }

        if (selectedValue)
        {

            let indexOfSelectedValue = queryResults.map(function (result: IOptionData)
            {
                return result.value;
            }).indexOf(selectedValue);

            if (indexOfSelectedValue !== -1)
            {
                queryResults.splice(indexOfSelectedValue, 1);
            }
        }

        return queryResults;
    }


    public performQuery(query: string)
    {
        this.currentItems = this.queryItems(this.query, this.selectedValue);
        this.resultsElements = this.buildResults(this.currentItems);
        this.appendResults(this.resultsElements, this.$resultsContainer);
        this.registerResultsEvents(this.resultsElements);
    }


    public resetDropdownResults()
    {
        this.query = '';
        this.$searchInput.value = '';
        this.performQuery('');
    }


}
