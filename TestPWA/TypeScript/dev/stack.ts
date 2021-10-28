
// LIFO-data-structure 
export class Stack<T>
{
    protected items: T[];


    // Array is used to implement stack
    constructor()
    {
        this.items = [];
    }

    // push function
    public push(element: T)
    {
        // push element into the items
        this.items.push(element);
    }

    public pop(): T
    {
        // return top most element in the stack
        // and removes it from the stack
        // Underflow if stack is empty
        if (this.items.length == 0)
        {
            throw new Error("Stack underflow");
        }
        
        return this.items.pop();
    }

    public peek():T
    {
        // return the top most element from the stack
        // but does'nt delete it.
        return this.items[this.items.length - 1];
    }


    // return true if stack is empty
    get isEmpty(): boolean
    {
        return this.items.length == 0;
    }


    get count(): number
    {
        return this.items.length;
    }


    public debugDisplay():string 
    {
        let str:string[] = [];
        for (let i = 0; i < this.items.length; i++)
            str.push(String(this.items[i]));

        return str.join(" ");
    }

}


// https://www.geeksforgeeks.org/implementation-stack-javascript/
// Performs Postfix Evaluation on a given exp
function postFixEvaluation(exp:string)
{
    let stack = new Stack<number>();
    for (var i = 0; i < exp.length; i++)
    {
        let c = exp[i];
        if (!isNaN(<any>c))
            stack.push(c.charCodeAt(0) - '0'.charCodeAt(0));
        else
        {
            let val1 = stack.pop();
            var val2 = stack.pop();
            // if (val1 == "Underflow" || val2 == "Underflow") return "Can't perform postfix evaluation";
            switch (c)
            {
                case '+':
                    stack.push(val2 + val1);
                    break;

                case '-':
                    stack.push(val2 - val1);
                    break;

                case '/':
                    stack.push(val2 / val1);
                    break;

                case '*':
                    stack.push(val2 * val1);
                    break;
            }
        }
    }

    return stack.pop();
}





export function iterateOverStructure_LIFO(container: IXmlStructure)
{
    let stack = new Stack<IXmlStructure>();
    stack.push(container);

    // let n = 0;

    while (!stack.isEmpty)
    {
        // n++;
        let element = stack.pop();
        console.log(element);

        let children: IXmlStructure[] = element.children;

        for (let i = 0; i < children.length; ++i)
        {

            // if (children[i].isDirectory())
            if (true)
            {
                stack.push(children[i]);
                continue;
            }

            // n++;
        }

    }

} // End Function iterateOverStructure_LIFO
