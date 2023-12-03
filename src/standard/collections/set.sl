package standard.collections.Set

struct Set<T>{
    List<T> list

    """
    Add an item to the set.
    Does nothing if the item is already in the set.
    """
    bool add(T item){
        if(!list.contains(item)){
            list.add(item)
            return true
        }
        else{
            return false
        }
    }

    """
    Remove an item from the set.
    Does nothing if the item is not in the set.
    """
    bool remove(T item){
        if(list.contains(item)){
            list.remove(item)
            return true
        }
        else{
            return false
        }
    }

    """
    Returns true if the item is in the set.
    """
    bool contains(T item){
        return list.contains(item)
    }
}

