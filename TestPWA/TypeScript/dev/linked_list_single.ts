
// User defined class node
export class SinglyLinkedNode<T>
{
    public value: T;
    public next: SinglyLinkedNode<T>;


    // constructor
    constructor(element: T)
    {
        this.value = element;
        this.next = null
    }
}



// System.Collections.Generic.LinkedList < string > lis = new System.Collections.Generic.LinkedList<string>();
// lis.First
// lis.Last
// lis.AddLast
// lis.AddFirst
// lis.Count
// lis.Clear
// lis.AddAfter
// lisAddBefore
// lis.RemoveLast
// lis.RemoveFirst
// lis.Remove



export class SinglyLinkedList<T>
{
    protected head: SinglyLinkedNode<T>;
    public size: number;


    constructor()
    {
        this.head = null;
        this.size = 0;
    }



    // adds an element at the end
    // of list
    public add(element: T)
    {
        // creates a new node
        let node = new SinglyLinkedNode<T>(element);

        // to store current node
        let current: SinglyLinkedNode<T>;

        // if list is Empty add the element and make it head
        if (this.head == null)
            this.head = node;
        else
        {
            current = this.head;

            // iterate to the end of the list
            while (current.next)
            {
                current = current.next;
            }

            // add node
            current.next = node;
        }

        this.size++;
    }

    // insert element at the position index
    // of the list
    public insertAt(element: T, index: number)
    {
        if (index < 0 || index > this.size)
            return console.log("Please enter a valid index.");
        else
        {
            // creates a new node
            let node = new SinglyLinkedNode<T>(element);
            let curr, prev;

            curr = this.head;

            // add the element to the
            // first index
            if (index == 0)
            {
                node.next = this.head;
                this.head = node;
            } else
            {
                curr = this.head;
                var it = 0;

                // iterate over the list to find
                // the position to insert
                while (it < index)
                {
                    it++;
                    prev = curr;
                    curr = curr.next;
                }

                // adding an element
                node.next = curr;
                prev.next = node;
            }
            this.size++;
        }
    }


    // removes an element from the specified location
    public removeFrom(index: number)
    {
        if (index < 0 || index >= this.size)
            return console.log("Please Enter a valid index");
        else
        {
            let curr, prev, it = 0;
            curr = this.head;
            prev = curr;

            // deleting first element
            if (index === 0)
            {
                this.head = curr.next;
            } else
            {
                // iterate over the list to the
                // position to removce an element
                while (it < index)
                {
                    it++;
                    prev = curr;
                    curr = curr.next;
                }

                // remove the element
                prev.next = curr.next;
            }
            this.size--;

            // return the remove element
            return curr.value;
        }
    }


    // removes a given element from the list
    public removeElement(element: T)
    {
        let current = this.head;
        let prev = null;

        // iterate over the list
        while (current != null)
        {
            // comparing element with current
            // element if found then remove the
            // and return true
            if (current.value === element)
            {
                if (prev == null)
                {
                    this.head = current.next;
                }
                else
                {
                    prev.next = current.next;
                }

                this.size--;
                return current.value;
            }

            prev = current;
            current = current.next;
        }

        return -1;
    }




    // finds the index of element
    public indexOf(element: T): number
    {
        let count = 0;
        let current = this.head;

        // iterae over the list
        while (current != null)
        {
            // compare each element of the list
            // with given element
            if (current.value === element)
                return count;
            count++;
            current = current.next;
        }

        // not found
        return -1;
    }

    // checks the list for empty
    public isEmpty()
    {
        return this.size == 0;
    }

    // gives the size of the list
    public size_of_list()
    {
        console.log(this.size);
    }


    // prints the list items
    public printList()
    {
        let curr = this.head;
        let arr: string[] = [];
        while (curr)
        {
            arr.push(String(curr.value));
            curr = curr.next;
        }

        console.log(arr.join(" "));
    }

}



// https://www.geeksforgeeks.org/implementation-binary-search-tree-javascript/?ref=lbp
// https://www.freecodecamp.org/news/implementing-a-linked-list-in-javascript/
