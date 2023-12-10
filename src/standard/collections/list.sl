package standard.collections.List

struct List<V>{
    json data

    void this(){
        this.data = []
    }

    macro V get(int key){
        return this.data["[$(key)]"]
    }

    lazy V __get__(int key){
        return get(key)
    }

    void set(int key, V value){
        macro void inner(int a){
            this.data["[$(a)]"] = value
        }
        inner(key)
    }

    lazy void __set__(int key, V value){
        set(key, value)
    }

    void add(V value){
        this.data >:= value
    }

    [noReturnCheck=true]
    int size(){
        Compiler.cmdstore(_ret){
            Compiler.insert($value, Compiler.getStorage(data)){
                /data get $value
            }
        }
    }

    property length{
        lazy int get(){
            return size()
        }
    }
    
    void remove(V value){
        json tmp = []
        for(int i = 0; i < this.size(); i++){
            V v = get(i) 
            if(v != value){
                tmp >:= v
            }
        }

        this.data = tmp
    }

    void removeAt(int index){
        json tmp = []
        for(int i = 0; i < this.size(); i++){
            V v = get(i) 
            if(i != index){
                tmp >:= v
            }
        }

        this.data = tmp
    }

    void removeAll(V=>bool pred){
        json tmp = []
        for(int i = 0; i < this.size(); i++){
            V v = get(i) 
            if(!pred(v)){
                tmp >:= v
            }
        }

        this.data = tmp
    }

    bool contains(V value){
        bool ret = false
        for(int i = 0; i < this.size() && !ret; i++){
            if(get(i) == value){
                ret = true
            }
        }
        return ret
    }

    int indexOf(V value){
        int ret = -1
        for(int i = 0; i < this.size() && ret == -1; i++){
            if(get(i) == value){
                ret = i
            }
        }
        return ret
    }

    void clear(){
        this.data = []
    }

    ListIterator<V> iterator(){
        return new ListIterator<V>(data)
    }
}

struct ListIterator<V>{
    json data
    int index

    void this(json data){
        this.data = data
        this.index = 0
    }

    macro V get(int index){
        return this.data["[$(index)]"]
    }

    bool hasNext(){
        return index < size()
    }

    V next(){
        V ret = get(index)
        this.index++
        return ret
    }

    [noReturnCheck=true]
    int size(){
        Compiler.cmdstore(_ret){
            Compiler.insert($value, Compiler.getStorage(data)){
                /data get $value
            }
        }
    }
}