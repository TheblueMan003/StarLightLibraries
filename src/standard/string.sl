package standard.string

def macro string concat(string a, string b){
    return "$(a)$(b)"
}
def macro string cast(mcobject a){
    return "$(a)"
}
def string repeat(string value, int count){
    string result = ""
    for (int i = 0; i < count; i++){
        result += value
    }
    return result
}
def string equals(string source, string value){
    macro bool test(json value){
        if (source == "$(value)"){
            return true
        }
        else{
            return false
        }
    }
    return test(value)
}