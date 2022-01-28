
// FIFO-data-structure 
export class Queue<T>
{

    protected items: T[];


    // Array is used to implement stack
    constructor()
    {
        this.items = [];
    }

    // add an element from the back of the queue
    public enqueue(e:T)
    {
        this.items.push(e);
    }


    // remove an element from the front of the queue
    public dequeue()
    {
        return this.items.shift();
    }

    // check if the queue is empty
    public get isEmpty(): boolean
    {
        return this.items.length == 0;
    }

    // get the element at the front of the queue
    public peek()
    {
        return !this.isEmpty ? this.items[0] : undefined;
    }

    // get the current length of queue
    public get length(): number
    {
        return this.items.length;
    }

}


export function iterateOverStructure_FIFO(container: IXmlStructure)
{
    let queue = new Queue<IXmlStructure>();
    queue.enqueue(container);

    // let n = 0;

    while (!queue.isEmpty)
    {
        // n++;
        let element = queue.dequeue();
        console.log(element);

        let children: IXmlStructure[] = element.children;

        for (let i = 0; i < children.length; ++i)
        {

            // if (children[i].isDirectory())
            if (true)
            {
                queue.enqueue(children[i]);
                continue;
            }

            // n++;
        }

    }

} // End Function iterateOverStructure_FIFO
