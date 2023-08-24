package game.language

int language
lazy json languagesIndex = {}
lazy json languagesName = []

def setLanguage(int lang) {
    language = lang
}
def setLanguage(string name) {
    language = languagesIndex[name]
}
def addLanguage(string name) {
    languagesIndex[name] = Compiler.length(languagesIndex)
    languagesName += name
}
def lazy int getLanguageIndex(string name) {
    return languages[name]
}
def lazy string getLanguageName(int index) {
    return languagesName[index]
}
def lazy json selectByLanguage(json data) {
    return data[language]
}
def lazy json selectByLanguage(json data, string key) {
    lazy var obj = data[language]
    return obj[key]
}
def lazy forEach(json data, json=>void func) {
    lazy int count = Compiler.length(languagesName)-1
    foreach(lang in 0..count) {
        if (language == lang) {
            func(data[languagesName[lang]])
        }
    }
}