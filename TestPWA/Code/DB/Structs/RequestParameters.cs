
namespace AnySqlWebAdmin
{


    public class RequestParameters
        : System.Collections.Generic.IDictionary<string, object>
    {

        protected System.StringComparer m_comparer;
        public System.Collections.Generic.List<System.Collections.Generic.Dictionary<string, object>> InputStream = null;
        public System.Collections.Generic.Dictionary<string, object> GetParameters = null;
        public System.Collections.Generic.Dictionary<string, object> PostParameters = null;
        public System.Collections.Generic.Dictionary<string, object> CustomParameters = null;


        System.Collections.Generic.ICollection<string> System.Collections.Generic.IDictionary<string, object>.Keys
        {
            get
            {
                System.Collections.Generic.List<string> abc = new System.Collections.Generic.List<string>();

                foreach (System.Collections.Generic.KeyValuePair<string, object> kvp in this.GetParameters)
                {
                    abc.Add(kvp.Key);
                }

                foreach (System.Collections.Generic.KeyValuePair<string, object> kvp in this.PostParameters)
                {
                    abc.Add(kvp.Key);
                }

                foreach (System.Collections.Generic.KeyValuePair<string, object> kvp in this.CustomParameters)
                {
                    abc.Add(kvp.Key);
                }

                if (this.InputStream != null && this.InputStream.Count > 0)
                {
                    foreach (System.Collections.Generic.KeyValuePair<string, object> kvp in this.InputStream[0])
                    {
                        abc.Add(kvp.Key);
                    }
                }

                return abc;
            }
        } // End IDictionary<T>.Keys 


        System.Collections.Generic.ICollection<object> System.Collections.Generic.IDictionary<string, object>.Values
        {
            get
            {
                System.Collections.Generic.List<object> abc = new System.Collections.Generic.List<object>();

                foreach (System.Collections.Generic.KeyValuePair<string, object> kvp in this.GetParameters)
                {
                    abc.Add(kvp.Value);
                }

                foreach (System.Collections.Generic.KeyValuePair<string, object> kvp in this.PostParameters)
                {
                    abc.Add(kvp.Value);
                }

                foreach (System.Collections.Generic.KeyValuePair<string, object> kvp in this.CustomParameters)
                {
                    abc.Add(kvp.Value);
                }

                if (this.InputStream != null && this.InputStream.Count > 0)
                {
                    foreach (System.Collections.Generic.KeyValuePair<string, object> kvp in this.InputStream[0])
                    {
                        abc.Add(kvp.Value);
                    }
                }

                return abc;
            }

        } // End IDictionary<T>.Values 



        int System.Collections.Generic.ICollection<System.Collections.Generic.KeyValuePair<string, object>>.Count
        {
            get
            {
                int cnt = this.GetParameters.Count + this.PostParameters.Count + this.CustomParameters.Count;

                if (this.InputStream != null && this.InputStream.Count > 0)
                    cnt += this.InputStream[0].Count;

                return cnt;
            }
        } // End Property ICollection.Count


        bool System.Collections.Generic.ICollection<System.Collections.Generic.KeyValuePair<string, object>>.IsReadOnly
        {
            get
            {
                return false;
            }
        } // End ICollection<T>.IsReadOnly 


        object System.Collections.Generic.IDictionary<string, object>.this[string key]
        {
            get => this[key];
            set => this[key] = value;
        }


        public RequestParameters(System.StringComparer comparer)
        {
            this.m_comparer = comparer;
            this.GetParameters = new System.Collections.Generic.Dictionary<string, object>(comparer);
            this.PostParameters = new System.Collections.Generic.Dictionary<string, object>(comparer);
            this.CustomParameters = new System.Collections.Generic.Dictionary<string, object>(comparer);
        } // End Constructor 


        public RequestParameters()
            : this(System.StringComparer.InvariantCultureIgnoreCase)
        { } // End Constructor 



        public bool ContainsKey(string key)
        {
            if (this.CustomParameters.ContainsKey(key))
                return true;

            if (this.GetParameters.ContainsKey(key))
                return true;

            if (PostParameters.ContainsKey(key))
                return true;

            if (this.InputStream != null && this.InputStream.Count > 0)
            {
                if (this.InputStream[0].ContainsKey(key))
                    return true;
            }

            return false;
        } // IDictionary<T>.ContainsKey 


        void System.Collections.Generic.IDictionary<string, object>.Add(string key, object value)
        {
            this.CustomParameters.Add(key, value);
        } // IDictionary<T>.Add 

        bool System.Collections.Generic.IDictionary<string, object>.ContainsKey(string key)
        {
            return this.ContainsKey(key);
        } // IDictionary.ContainsKey 

        bool System.Collections.Generic.IDictionary<string, object>.Remove(string key)
        {
            if (this.GetParameters.ContainsKey(key))
                return this.GetParameters.Remove(key);

            if (this.PostParameters.ContainsKey(key))
                return this.PostParameters.Remove(key);

            if (this.CustomParameters.ContainsKey(key))
                return this.CustomParameters.Remove(key);

            if (this.InputStream != null && this.InputStream.Count > 0)
            {
                if (this.InputStream[0].ContainsKey(key))
                    return this.InputStream[0].Remove(key);
            }

            return false;
        } // IDictionary<T>.Remove 

        bool System.Collections.Generic.IDictionary<string, object>.TryGetValue(string key, out object value)
        {
            if (this.ContainsKey(key))
            {
                value = this[key];
                return true;
            }

            value = null;
            return false;
        } // IDictionary<T>.TryGetValue


        void System.Collections.Generic.ICollection<System.Collections.Generic.KeyValuePair<string, object>>
            .Add(
            System.Collections.Generic.KeyValuePair<string, object> item)
        {
            this.CustomParameters.Add(item.Key, item.Value);
        } // ICollection<T>.Add

        void System.Collections.Generic.ICollection<System.Collections.Generic.KeyValuePair<string, object>>
            .Clear()
        {
            this.GetParameters.Clear();
            this.PostParameters.Clear();
            this.CustomParameters.Clear();

            if (this.InputStream != null)
                this.InputStream.Clear();
        } // ICollection<T>.Clear

        bool System.Collections.Generic.ICollection<System.Collections.Generic.KeyValuePair<string, object>>
            .Contains(System.Collections.Generic.KeyValuePair<string, object> item)
        {
            return this.ContainsKey(item.Key);
        } // ICollection<T>.Contains

        void System.Collections.Generic.ICollection<System.Collections.Generic.KeyValuePair<string, object>>
            .CopyTo(System.Collections.Generic.KeyValuePair<string, object>[] array, int arrayIndex)
        {

            int i = arrayIndex;
            foreach (System.Collections.Generic.KeyValuePair<string, object> kvp in this)
            {
                array[i] = kvp;
            }

        } // ICollection<T>.CopyTo

        bool System.Collections.Generic.ICollection<System.Collections.Generic.KeyValuePair<string, object>>
            .Remove(System.Collections.Generic.KeyValuePair<string, object> item)
        {
            string key = item.Key;

            if (this.GetParameters.ContainsKey(key))
                return this.GetParameters.Remove(key);

            if (this.PostParameters.ContainsKey(key))
                return this.PostParameters.Remove(key);

            if (this.CustomParameters.ContainsKey(key))
                return this.CustomParameters.Remove(key);

            if (this.InputStream != null && this.InputStream.Count > 0)
            {
                if (this.InputStream[0].ContainsKey(key))
                    return this.InputStream[0].Remove(key);
            }

            return false;
        } // ICollection<T>.Remove

        System.Collections.Generic.IEnumerator<System.Collections.Generic.KeyValuePair<string, object>>
            System.Collections.Generic.IEnumerable<System.Collections.Generic.KeyValuePair<string, object>>
            .GetEnumerator()
        {
            foreach (System.Collections.Generic.KeyValuePair<string, object> kvp in this.GetParameters)
            {
                yield return kvp;
            }

            foreach (System.Collections.Generic.KeyValuePair<string, object> kvp in this.PostParameters)
            {
                yield return kvp;
            }

            foreach (System.Collections.Generic.KeyValuePair<string, object> kvp in this.CustomParameters)
            {
                yield return kvp;
            }

            if (this.InputStream != null && this.InputStream.Count > 0)
            {
                foreach (System.Collections.Generic.KeyValuePair<string, object> kvp in this.InputStream[0])
                {
                    yield return kvp;
                }
            }

        } // IEnumerable<T>.GetEnumerator 


        System.Collections.IEnumerator System.Collections.IEnumerable.GetEnumerator()
        {
            return ((System.Collections.IEnumerable)this).GetEnumerator();
        } // IEnumerable.GetEnumerator 


        public object this[string index]
        {
            set
            {
                if (this.GetParameters.ContainsKey(index))
                {
                    this.GetParameters[index] = value;
                    return;
                }


                if (this.PostParameters.ContainsKey(index))
                {
                    this.PostParameters[index] = value;
                    return;
                }

                if (this.InputStream != null && this.InputStream.Count > 0)
                {
                    if (this.InputStream[0].ContainsKey(index))
                    {
                        this.InputStream[0][index] = value;
                        return;
                    }
                }

                this.CustomParameters[index] = value;
            }

            get
            {
                if (this.CustomParameters.ContainsKey(index))
                    return this.CustomParameters[index];

                if (this.GetParameters.ContainsKey(index))
                    return this.GetParameters[index];

                if (this.PostParameters.ContainsKey(index))
                    return this.PostParameters[index];

                if (this.InputStream != null && this.InputStream.Count > 0)
                {
                    if (this.InputStream[0].ContainsKey(index))
                        return InputStream[0][index];
                }
                
                return null;
            }
        } // End Indexed Property this 


    } // End Class RequestParameters 


}
