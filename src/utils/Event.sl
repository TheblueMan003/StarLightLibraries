package utils.Event

struct Event{
    public lazy void __add__(void=>void func){

    }
    public lazy void __set__(void=>void func){
        def @structs.event(){
            func()
        }
    }
    public lazy void __apply__(){
        @structs.event()
    }
}