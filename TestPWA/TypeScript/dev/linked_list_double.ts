
export class DoublyLinkedNode<T>
{

    public value: T;
    public next: DoublyLinkedNode<T>;
    public previous: DoublyLinkedNode<T>;


    constructor(value:T)
    {
        this.value = value;
        this.next = null;
        this.previous = null;
    }

}

export class DoublyLinkedList<T>
{

    public head: DoublyLinkedNode<T>;
    public length: number;
    public tail: DoublyLinkedNode<T>;

    
    //get first(): DoublyLinkedNode<T>
    //{
    //    return this.head;
    //}
    //set first(value: DoublyLinkedNode<T>)
    //{
    //    this.head = value;
    //}
    

    //get last(): DoublyLinkedNode<T>
    //{
    //    return this.tail;
    //}
    //set last(value: DoublyLinkedNode<T>)
    //{
    //    this.tail = value;
    //}
    

    constructor(value?:T)
    {
        if (value != null)
        {
            this.head = new DoublyLinkedNode(value);
            this.length = 1;
        }
        else
        {
            this.head = null;
            this.tail = null;
            this.length = 0;
        }

        this.tail = this.head;

        // this.first
        // this.last

        this.printList = this.printList.bind(this);
        this.insert = this.insert.bind(this);
        this.prepend = this.prepend.bind(this);
        this.append = this.append.bind(this);
        this.remove = this.remove.bind(this);
        this.removeFirst = this.removeFirst.bind(this);
        this.removeLast = this.removeLast.bind(this);
    }


    public printList()
    {
        let array = [];
        let currentList = this.head;
        while (currentList !== null)
        {
            array.push(currentList.value);
            currentList = currentList.next;
        }

        console.log(array.join(' <--> '));
        return this;
    }

    // Insert DoublyLinkedNode at end of the list
    public append(value:T)
    {
        let newDoublyLinkedNode = new DoublyLinkedNode(value);

        if (this.length == 0)
        {
            this.head = newDoublyLinkedNode;
            this.tail = newDoublyLinkedNode;
        }
        else
        {
            this.tail.next = newDoublyLinkedNode;
            newDoublyLinkedNode.previous = this.tail;
            this.tail = newDoublyLinkedNode;
        }

        this.length++;
        // this.printList();
    }

    // Insert DoublyLinkedNode at the start of the list
    public prepend(value:T)
    {
        let newDoublyLinkedNode = new DoublyLinkedNode(value);

        if (this.length == 0)
        {
            this.head = newDoublyLinkedNode;
            this.tail = newDoublyLinkedNode;
        }
        else
        {
            newDoublyLinkedNode.next = this.head;
            this.head.previous = newDoublyLinkedNode;
            this.head = newDoublyLinkedNode;
        }

        this.length++;
        // this.printList();
    }

    // Insert DoublyLinkedNode at a given index
    public insert(index:number, value:T)
    {
        if (!Number.isInteger(index) || index < 0 || index > this.length + 1)
        {
            console.log(`Invalid index. Current length is ${this.length}.`);
            return this;
        }

        // If index is 0, prepend
        if (index === 0)
        {
            this.prepend(value);
            return this;
        }

        // If index is equal to this.length, append
        if (index === this.length)
        {
            this.append(value);
            return this;
        }

        // Reach the DoublyLinkedNode at that index
        let newDoublyLinkedNode = new DoublyLinkedNode(value);
        let previousDoublyLinkedNode = this.head;

        for (let k = 0; k < index - 1; k++)
        {
            previousDoublyLinkedNode = previousDoublyLinkedNode.next;
        }

        let nextDoublyLinkedNode = previousDoublyLinkedNode.next;

        newDoublyLinkedNode.next = nextDoublyLinkedNode;
        previousDoublyLinkedNode.next = newDoublyLinkedNode;
        newDoublyLinkedNode.previous = previousDoublyLinkedNode;
        nextDoublyLinkedNode.previous = newDoublyLinkedNode;

        this.length++;
        // this.printList();
    }

    public addAfter(node: DoublyLinkedNode<T>, value:T)
    {
        if (node == null)
        {
            this.append(value);
            return;
        }

        let newDoublyLinkedNode = new DoublyLinkedNode(value);
        let nextDoublyLinkedNode = node.next;

        newDoublyLinkedNode.next = nextDoublyLinkedNode;
        node.next = newDoublyLinkedNode;
        newDoublyLinkedNode.previous = node;

        if (nextDoublyLinkedNode != null)
            nextDoublyLinkedNode.previous = newDoublyLinkedNode;

        if (newDoublyLinkedNode.next == null)
            this.tail = newDoublyLinkedNode;
        
        if (newDoublyLinkedNode.previous == null)
            this.head = newDoublyLinkedNode;
        
        this.length++;
        // this.printList();
    }



    public addBefore(node: DoublyLinkedNode<T>, value: T)
    {
        if (node == null)
        {
            this.prepend(value);
            return;
        }

        let newDoublyLinkedNode = new DoublyLinkedNode(value);

        let nodeToAppendTo = node.previous;

        if (nodeToAppendTo != null)
            nodeToAppendTo.next = newDoublyLinkedNode;

        node.previous = newDoublyLinkedNode;
        newDoublyLinkedNode.previous = nodeToAppendTo;
        newDoublyLinkedNode.next = node;
        
        if (newDoublyLinkedNode.next == null)
            this.tail = newDoublyLinkedNode;

        if (newDoublyLinkedNode.previous == null)
            this.head = newDoublyLinkedNode;

        this.length++;
        // this.printList();
    }

    public removeFirst()
    {
        this.remove(0);
    }


    public removeLast()
    {
        this.remove(this.length);
    }


    // Remove a DoublyLinkedNode
    public remove(index:number)
    {
        if (!Number.isInteger(index) || index < 0 || index > this.length)
        {
            console.log(`Invalid index. Current length is ${this.length}.`);
            return this;
        }

        // Remove head
        if (index === 0)
        {
            this.head = this.head.next;
            this.head.previous = null;

            this.length--;
            // this.printList();
            return this;
        }

        // Remove tail
        if (index === this.length - 1)
        {
            this.tail = this.tail.previous;
            this.tail.next = null;

            this.length--;
            // this.printList();
            return this;
        }

        // Remove DoublyLinkedNode at an index
        let previousDoublyLinkedNode = this.head;

        for (let k = 0; k < index - 1; k++)
        {
            previousDoublyLinkedNode = previousDoublyLinkedNode.next;
        }
        let deleteDoublyLinkedNode = previousDoublyLinkedNode.next;
        let nextDoublyLinkedNode = deleteDoublyLinkedNode.next;

        previousDoublyLinkedNode.next = nextDoublyLinkedNode;
        nextDoublyLinkedNode.previous = previousDoublyLinkedNode;

        this.length--;
        // this.printList();
        return this;
    }
}



//function tests()
//{

    // let ls = new DoublyLinkedList()
    // ls.append("a")
    // ls.append("b")
    // ls.prepend("c")
    // ls.addAfter(ls.tail, "hello")
    // ls.addBefore(ls.head, "i am the new head");
    // ls.append("i am the new tail")
    // ls.addBefore(ls.tail, "i am before the tail")
    // ls.printList();

    // let ls = new DoublyLinkedList()
    // ls.append("a")
    // ls.printList();


    // let ls = new DoublyLinkedList()
    // ls.prepend("c")
    // ls.printList();

    // let ls = new DoublyLinkedList()
    // ls.addAfter(ls.head, "hello")
    // ls.printList();


    // let ls = new DoublyLinkedList()
    // ls.addAfter(ls.tail, "hello")
    // ls.printList();



    // let ls = new DoublyLinkedList()
    // ls.addBefore(ls.head, "hello")
    // ls.printList();


    // let ls = new DoublyLinkedList()
    // ls.addBefore(ls.tail, "hello")
    // ls.printList();



    // let myDoublyList = new DoublyLinkedList(10);

    // myDoublyList.append(5);                     //  10 <--> 5

    // myDoublyList.append(16);                    //  10 <--> 5 <--> 16

    // myDoublyList.prepend(1);                    //  1 <--> 10 <--> 5 <--> 16

    // myDoublyList.insert(2, 99);                 //  1 <--> 10 <--> 99 <--> 5 <--> 16
    // myDoublyList.insert(20, 88);                //  Invalid index. Current length is 5.
    // myDoublyList.insert(5, 80);                 //  1 <--> 10 <--> 99 <--> 5 <--> 16 <--> 80
    // myDoublyList.insert(0, 80);                 //  80 <--> 1 <--> 10 <--> 99 <--> 5 <--> 16 <--> 80

    // myDoublyList.remove(0);                     //  1 <--> 10 <--> 99 <--> 5 <--> 16 <--> 80
    // myDoublyList.remove(5);                     // 1 <--> 10 <--> 99 <--> 5 <--> 16
    // myDoublyList.remove(2);                     // 1 <--> 10 <--> 5 <--> 16
//}


// https://medium.com/geekculture/doubly-linked-lists-javascript-b13cc21ca59d
// https://sebhastian.com/doubly-linked-list-javascript/
