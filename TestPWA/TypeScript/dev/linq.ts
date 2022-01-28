
// https://stackoverflow.com/questions/20310369/declare-a-delegate-type-in-typescript
// type Predicate<T, TKey> = (item: T) => TKey;

interface Predicate<T, TKey> 
{
    (item: T): TKey;
}


export function groupBy<TSource, TKey>(source: TSource[], keySelector: Predicate<TSource, TKey>)
    : { [key: string]: TSource[] }
{
    if (source == null)
        throw new Error("ArgumentNullException: Source");
    if (keySelector == null)
        throw new Error("ArgumentNullException: keySelector");

    let dict: { [key: string]: TSource[] } = {};

    for (let i = 0; i < source.length; ++i)
    {
        // https://dev.to/manikbajaj/avoid-tostring-fatal-error-string-casting-in-javascript-2mn6
        let key: string = String(keySelector(source[i])) || "null";

        if (!dict.hasOwnProperty(key))
        {
            dict[key] = [];
        }

        dict[key].push(source[i]);
    }

    return dict;
}


function group2()
{
    var arr = [
        { studentType: 'freshman' },
        { studentType: 'senior' },
        { studentType: 'freshman' },
        { studentType: 'junior' },
        { studentType: 'sophmore' },
        { studentType: 'freshman' },
        { studentType: 'freshman' },
        { studentType: 'junior' },
        { studentType: 'senior' },
        { studentType: 'senior' },
        { studentType: 'freshman' },
        { studentType: 'sophmore' },
        { studentType: 'freshman' },
        { studentType: 'sophmore' },
        { studentType: 'senior' }
    ];
}



interface IRecursiveStructure<T>
{
    id: string;
    children: T[];
}


// https://stackoverflow.com/questions/34202993/ensure-generic-type-has-certain-property
export function findNode<T extends IRecursiveStructure<T>>(id: string, currentNode: T): T
{
    if (id == currentNode.id)
    {
        return currentNode;
    }
    else
    {
        // Use a for loop instead of forEach to avoid nested functions
        // Otherwise "return" will not work properly
        for (let i = 0; i < currentNode.children.length; i += 1)
        {
            // Search in the current child
            let result = findNode(id, currentNode.children[i]);

            // Return the result if the node has been found
            if (result !== null)
            {
                return result;
            }
        }

        // The node has not been found and we have no more options
        return null;
    }
}




export function findHtmlNode(id: string, currentNode: Node): Node
{
    if (currentNode.nodeType === Node.ELEMENT_NODE && id == (<Element>currentNode).id)
    {
        return currentNode;
    }
    else
    {
        // Use a for loop instead of forEach to avoid nested functions
        // Otherwise "return" will not work properly
        let children = currentNode.childNodes;

        for (let child in children)
        {
            // Search in the current child
            if (children.hasOwnProperty(child))
            {
                let result = findHtmlNode(id, children[child]);

                // Return the result if the node has been found
                if (result !== null)
                {
                    return result;
                }
            }
        }
        
        // The node has not been found and we have no more options
        return null;
    }
}
