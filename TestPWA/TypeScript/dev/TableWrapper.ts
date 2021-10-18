
export class TableWrapper<T>
{
    public rows: any[][];
    protected m_accessor: object;
    protected m_i: number;

    protected m_columnMap: { [columnName: string]: number; };
    protected m_columns: string[];
    protected m_columnLength: number;


    public get rowCount(): number
    {
        return this.rows.length;
    }


    public get columnCount(): number
    {
        return this.m_columns.length;
    }


    get columns(): string[]
    {
        return this.m_columns;
    }


    protected setColumns(cols: string[])
    {
        this.m_columnLength = cols.length;

        this.m_columnMap = null;
        this.m_columnMap = {};

        for (let i = 0; i < this.m_columnLength; ++i)
        {
            this.m_columnMap[cols[i]] = i;
        }

        this.m_columns = cols;
    } // End Sub setColumns 


    public row(i: number): T
    {
        this.m_i = i;
        return <T><any>this.m_accessor;
    }


    public getIndex(name: string): number
    {
        return this.m_columnMap[name];
    }


    public addRow(dat: any[])
    {
        this.rows.push(dat);
        return this;
    }


    public removeRow(i: number)
    {
        this.rows.splice(i, 1);
        return this;
    }


    constructor(columns: string[], data: Array<any[]>, ignoreCase?: boolean)
    {
        if (ignoreCase == null)
            ignoreCase = true;

        for (let i = 0; i < columns.length; ++i)
        {
            if (ignoreCase)
                columns[i] = columns[i].toLowerCase();
        } // Next i 

        let that = this;
        this.getIndex.bind(this);
        this.setColumns.bind(this);
        this.row.bind(this);
        this.addRow.bind(this);
        this.removeRow.bind(this);

        this.rows = data;
        this.setColumns(columns);
        this.m_accessor = {}; // Creates a new object


        for (let i = 0; i < columns.length; ++i)
        {
            let propName = columns[i];

            Object.defineProperty(this.m_accessor, propName, {
                // Using shorthand method names (ES2015 feature). 
                // get() { return bValue;}, 
                // set(value) { bValue = value;}, 
                // This is equivalent to: 
                // get: function() { return bValue; }, 
                // set: function(value) { bValue = value; }, 
                // And could be written as (getter = getter.bind(this)) 
                // get: getter, 
                // set: setter, 
                get: function ()
                {
                    let currentRow = <any>that.rows[that.m_i];
                    return currentRow == null ? currentRow : currentRow[i];
                },
                set: function (value: any) 
                {
                    let currentRow = <any>that.rows[that.m_i];
                    if (currentRow != null)
                        currentRow[i] = value;
                },
                enumerable: true,
                configurable: true
            });
        } // Next i 

    } // End Constructor 

}
