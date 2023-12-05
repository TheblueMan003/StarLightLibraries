package standard.string

import standard.char as char
import standard.collections.List


lazy int maxIterations = 1000

"""
Concatenates two strings.
"""
macro string concat(string a, string b){
    return "$(a)$(b)"
}

"""
Cast a value to a string.
"""
macro string cast(mcobject a){
    return "$(a)"
}

"""
Repeat a string a number of times.
"""
string multiply(string value, int count){
    string result = ""
    for (int i = 0; i < count; i++){
        result += value
    }
    return result
}

"""
Check if two strings are equal.
"""
[noReturnCheck=true]
bool equals(string source, string value){
    Compiler.cmdsuccess(_ret){
        source = value
    }
    _ret = !_ret
}

"""
Check if two strings are equal. Case insensitive.
"""
bool equalsIgnoreCase(string source, string value){
    return equals(toLower(source), toLower(value))
}

"""
Return the length of a string.
"""
[noReturnCheck=true]
int length(string value){
    Compiler.cmdstore(_ret){
        Compiler.insert($value, Compiler.getStorage(value)){
            /data get $value
        }
    }
}

"""
Check if a string starts with another string.
"""
bool startsWith(string source, string value){
    return equals(substring(source, 0, length(value)), value)
}

"""
Check if a string contains another string.
"""
bool contains(string source, string value){
    bool ret = false
    int c = 0
    while (source != "" && !ret && c < maxIterations){
        if (startsWith(source, value)){
            ret = true
        }
        source = source[1..]
        c++
    }
    return ret
}

"""
Check if a string ends with another string.
"""
bool endsWith(string source, string value){
    return equals(substring(source, length(source) - length(value)), value)
}

"""
Reverse a string.
"""
string reverse(string source){
    string ret = ""
    int c = 0
    while (source != "" && c < maxIterations){
        ret = source[0] + ret
        source = source[1..]
        c++
    }
    return ret
}

"""
Replace `value` with `replacement` in `source`.
"""
string replace(string source, string value, string replacement){
    string ret = ""
    int c = 0
    while (source != "" && c < maxIterations){
        if (startsWith(source, value)){
            ret += replacement
            for (int i = 0; i < length(value); i++){
                source = source[1..]
            }
        }
        else{
            ret += source[0]
            source = source[1..]
        }
        c++
    }
    return ret
}

"""
Return a substring of `source` from `start` with `length`.
"""
[noReturnCheck=true]
lazy string substring(string source, int start){
    lazy val ret = _ret
    def macro inner(int start){
        Compiler.insert(($value, $ret), (Compiler.getStorage(source), Compiler.getStorage(ret))){
            /data modify $ret set string $value $(start)
        }
    }
    inner(source)
}

"""
Return a substring of `source` from `start` with `length`.
"""
lazy string substring(string source, int start, int length){
    return slice(source, start, start + length)
}

"""
Return a substring of `source` from `start` with `length`.
"""
[noReturnCheck=true]
string slice(string source, int start, int end){
    lazy val ret = _ret
    def macro inner(int start, int end){
        Compiler.insert(($value, $ret), (Compiler.getStorage(source), Compiler.getStorage(ret))){
            /data modify $ret set string $value $(start) $(end)
        }
    }
    inner(start, end)
}

"""
Return the character at `index` in `source`.
"""
string charAt(string source, int index){
    if (index < 0){
        index = length(source) + index
    }
    return slice(source, index, index + 1)
}

"""
Return the index of `value` in `source`.
"""
int indexOf(string source, string value){
    int ret = -1
    int i = 0
    while (source != "" && ret == -1 && i < maxIterations){
        if (startsWith(source, value)){
            ret = i
        }
        source = source[1..]
        i++
    }
    return ret
}

"""
Return the index of `value` in `source` starting from the end.
"""
int lastIndexOf(string source, string value){
    int ret = -1
    int i = length(source) - length(value)
    while (source != "" && ret == -1 && i < maxIterations){
        if (endsWith(source, value)){
            ret = i
        }
        source = slice(source, 0, -1)
        i++
    }
    return ret
}

"""
Make the string uppercase.
"""
string toUpper(string source){
    string ret = ""
    int c = 0
    while (source != "" && c < maxIterations){
        ret += char.toUpper(source[0])
        source = source[1..]
        c++
    }
    return ret
}

"""
Make the string lowercase.
"""
string toLower(string source){
    string ret = ""
    int c = 0
    while (source != "" && c < maxIterations){
        ret += char.toLower(source[0])
        source = source[1..]
        c++
    }
    return ret
}

"""
Trim whitespace from the left side of the string.
"""
string trimLeft(string source){
    int c = 0
    while (source != "" && source[0] == " " && c < maxIterations){
        source = source[1..]
        c++
    }
    return source
}

"""
Trim whitespace from the right side of the string.
"""
string trimRight(string source){
    int c = 0
    while (source != "" && source[-1] == " " && c < maxIterations){
        source = slice(source, 0, -1)
        c++
    }
    return source
}

"""
Trim whitespace from both sides of the string.
"""
string trim(string source){
    return trimLeft(trimRight(source))
}


"""
Split a string into an array of strings.
"""
List<string> split(string source, string value){
    List<string> ret = new List<string>()
    string current = ""
    int c = 0
    int l = length(value)
    while (source != "" && c < maxIterations){
        if (startsWith(source, value)){
            ret.add(current)
            current = ""
            for (int i = 0; i < l; i++){
                source = source[1..]
            }
        }
        else{
            current += source[0]
            source = source[1..]
        }
        c++
    }
    ret.add(current)
    return ret
}