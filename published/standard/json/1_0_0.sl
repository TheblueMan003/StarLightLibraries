package standard.json

"""
Check if a json contains a value
"""
bool contains(json source, json value){
    macro bool test(json value){
        if ("$(value)" in source){
            return true
        }
        else{
            return false
        }
    }
    return test(value)
}

"""
Check if two jsons are equal
"""
bool equals(json a, json b){
    if (contains(a,b) && contains(b,a)){
        return true
    }
    else{
        return false
    }
}

struct JsonIterator{
    json data
    int index

    void this(json data){
        this.data = data
        this.index = 0
    }

    macro json get(int index){
        return this.data["[$(index)]"]
    }

    bool hasNext(){
        return index < size()
    }

    json next(){
        json ret = get(index)
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

"""
Return a json iterator
"""
JsonIterator iterator(json a){
    return new JsonIterator(a)
}