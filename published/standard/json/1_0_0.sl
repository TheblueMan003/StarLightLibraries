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