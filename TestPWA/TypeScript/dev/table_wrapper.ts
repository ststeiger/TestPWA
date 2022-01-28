
import { groupBy } from "./linq.js";
import { autoBind, autoTrace } from "./autobind_autotrace.js";


export class GroupedData<T>
{
    protected m_accessor: object;
    protected m_i: number;
    protected m_columns: string[];
    protected m_columnMap: { [columnName: string]: number; };


    protected m_key: string;
    protected m_groupedData: T[];


    constructor(key: string, columns: string[], columnMap: { [columnName: string]: number; }, data: T[])
    {
        autoBind(this);
        // autoTrace(this);
        let that = this;
        this.m_accessor = {}; // Creates a new object
        this.m_key = key;
        this.m_columns = columns;
        this.m_columnMap = columnMap;
        this.m_groupedData = data || null;

        for (let i = 0; i < that.columns.length; ++i)
        {
            let propName = that.columns[i];

            Object.defineProperty(that.m_accessor, propName, {
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
                    if (that.m_groupedData == null)
                        return null;

                    let currentRow = <any>that.m_groupedData[that.m_i];
                    return currentRow == null ? currentRow : currentRow[i];
                }.bind(that),
                set: function (value: any) 
                {
                    if (that.m_groupedData == null)
                        that.m_groupedData = [];

                    let currentRow = <any>that.m_groupedData[that.m_i];
                    if (currentRow != null)
                        currentRow[i] = value;
                }.bind(that),
                enumerable: true,
                configurable: true
            });
        } // Next i 
        
    }


    get key(): string
    {
        return this.m_key;
    }


    get columns(): string[]
    {
        return this.m_columns;
    }


    get rows(): T[]    
    {
        if (this.m_groupedData == null)
            return [];

        return this.m_groupedData;
    }

    public get rowCount(): number
    {
        if (this.m_groupedData == null)
            return 0;

        return this.m_groupedData.length;
    }


    public get columnMap(): { [columnName: string]: number; }
    {
        return this.m_columnMap;
    }

    public row(i: number): T
    {
        this.m_i = i;
        return <T><any>this.m_accessor;
    }
    
    public getIndex(name: string): number
    {
        return this.m_columnMap[name];
    }

}


export class GroupedTableWrapper<T>
{

    // public rows: any[][];
    protected m_accessor: object;
    protected m_id: string;

    protected m_columnMap: { [columnName: string]: number; };
    protected m_columns: string[];
    protected m_columnLength: number;

    protected m_groupedData: { [key: string]: T[] };


    constructor(tw: TableWrapper<T>, propertyToGroupBy: string)
    {
        let that = this;
        autoBind(this);
        
        this.m_columnMap = tw.columnMap;
        this.m_columns = tw.columns;
        this.m_columnLength = tw.columns.length;

        this.m_groupedData = groupBy(tw.rows,
            function (item: any)
            {
                return item[tw.getIndex(propertyToGroupBy)]
            }
        );

        this.m_accessor = {}; // Creates a new object


        for (let i = 0; i < this.m_columnLength; ++i)
        {
            let propName = this.m_columns[i];

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
                    let currentRow = that.m_groupedData[that.m_id];
                    return currentRow == null ? null : currentRow[i];
                }.bind(that),
                set: function (value: any) 
                {
                    if (that.m_groupedData[that.m_id] == null)
                        that.m_groupedData[that.m_id] = [];

                    that.m_groupedData[that.m_id][i] = value;
                }.bind(that),
                enumerable: true,
                configurable: true
            });
        } // Next i 

    }

    public get columnCount(): number
    {
        return this.m_columns.length;
    }


    get columns(): string[]
    {
        return this.m_columns;
    }


    public getGroup(id: string)
        : GroupedData<T>
    {
        // console.log("getGroup:", id, this.m_columnMap, this.m_groupedData[id]);
        return new GroupedData(id, this.columns, this.m_columnMap, this.m_groupedData[id]);
    }


    public getIndex(name: string): number
    {
        return this.m_columnMap[name];
    }

}




export class TableWrapper<T>
{
    public rows: any[][];
    protected m_accessor: object;
    protected m_i: number;

    protected m_columnMap: { [columnName: string]: number; };
    protected m_columns: string[];
    protected m_columnLength: number;



    public get columnMap(): { [columnName: string]: number; }
    {
        return this.m_columnMap;
    }


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
    
    
    public groupBy(key: string): GroupedTableWrapper<T>
    {
        return new GroupedTableWrapper<T>(this, key);
    }


    constructor(columns: string[], data: Array<any[]>, ignoreCase?: boolean)
    {
        let that = this;
        autoBind(this);

        if (ignoreCase == null)
            ignoreCase = true;

        for (let i = 0; i < columns.length; ++i)
        {
            if (ignoreCase)
                columns[i] = columns[i].toLowerCase();
        } // Next i 

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
                    return currentRow == null ? null : currentRow[i];
                }.bind(that),
                set: function (value: any) 
                {
                    if (that.rows[that.m_i] == null)
                        that.rows[that.m_i] = [];

                    that.rows[that.m_i][i] = value;
                }.bind(that),
                enumerable: true,
                configurable: true
            });
        } // Next i 

    } // End Constructor 

}
