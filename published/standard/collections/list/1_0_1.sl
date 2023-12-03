package standard.collections.List

struct List<V>{
    json data

    def this(){
        this.data = []
    }

    def macro V get(int key){
        return this.data["[$(key)]"]
    }

    def lazy V __get__(int key){
        return get(key)
    }

    def set(int key, V value){
        def macro inner(int a){
            this.data["[$(a)]"] = value
        }
        inner(key)
    }

    def lazy __set__(int key, V value){
        set(key, value)
    }

    def add(V value){
        this.data >:= value
    }

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
    
    if (Compiler.isEqualitySupported<V>()){
        def remove(V value){
            json tmp = []
            for(int i = 0; i < this.size(); i++){
                V v = get(i) 
                if(v != value){
                    tmp >:= v
                }
            }

            this.data = tmp
        }
    }

    def removeAt(int index){
        json tmp = []
        for(int i = 0; i < this.size(); i++){
            V v = get(i) 
            if(i != index){
                tmp >:= v
            }
        }

        this.data = tmp
    }

    if (Compiler.isEqualitySupported<V>()){
        def removeAll(V=>bool pred){
            json tmp = []
            for(int i = 0; i < this.size(); i++){
                V v = get(i) 
                if(!pred(v)){
                    tmp >:= v
                }
            }

            this.data = tmp
        }
    }

    if (Compiler.isEqualitySupported<V>()){
        bool contains(V value){
            bool ret = false
            for(int i = 0; i < this.size() && !ret; i++){
                if(get(i) == value){
                    ret = true
                }
            }
            return ret
        }
    }

    if (Compiler.isEqualitySupported<V>()){
        int indexOf(V value){
            int ret = -1
            for(int i = 0; i < this.size() && ret == -1; i++){
                if(get(i) == value){
                    ret = i
                }
            }
            return ret
        }
    }

    def clear(){
        this.data = []
    }
}