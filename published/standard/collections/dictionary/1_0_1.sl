package standard.collections.Dictionnary

struct Dictionary<K, V>{
    json data

    def lazy this(){
        this.data = {}
    }
    def lazy this(json values){
        this.data = values
    }

    def macro V get(K key){
        return this.data["$(key)"]
    }
    def set(K key, V value){
        def macro inner(K a){
            this.data["$(a)"] = value
        }
        inner(key)
    }
    def clear(){
        this.data = {}
    }
}