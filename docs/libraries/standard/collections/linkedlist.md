# public class LinkedList<T>
Simple linked list implementation

## public function __init__
### Arguments:
- value (`T?`)
### Return:
- void




## public function __init__
### Arguments:

### Return:
- void




## public function set
### Arguments:
- index (`int`)
- value (`T?`)
### Return:
- void


Get the value at the given index

## public override function __destroy__
### Arguments:

### Return:
- void


Free Memory

## public function __get__
### Arguments:
- index (`int`)
### Return:
- T?


Get the value at the given index

## public function add
### Arguments:
- value (`T?`)
### Return:
- void


Add the value at the end of the list

## public function add
### Arguments:
- index (`int`)
- value (`T?`)
### Return:
- void


Add the value at the given index

## public function clear
### Arguments:

### Return:
- void


Remove all values

## public function contains
### Arguments:
- value (`T?`)
### Return:
- bool


Check if the list contains the given value

## public function count
### Arguments:

### Return:
- int


Get the number of values in the list

## public function indexOf
### Arguments:
- value (`T?`)
### Return:
- int


Get the index of the given value. Returns -1 if the value is not in the list

## public [__returnCheck__=true] function insert
### Arguments:
- index (`int`)
- value (`T?`)
### Return:
- void


Insert the value at the given index

## public function isEmpty
### Arguments:

### Return:
- bool


Check if the list is empty

## public function remove
### Arguments:
- value (`T?`)
### Return:
- bool


Remove the first occurence of the given value and return true if the value was found

## public [__returnCheck__=true] function removeAt
### Arguments:
- index (`int`)
### Return:
- void


Remove the value at the given index

## public function sort
### Arguments:

### Return:
- void


Sort the list in ascending order

## public function sort
### Arguments:
- reverse (`bool`)
### Return:
- void


Sort the list in descending order if reverse is true

## public function toArray
### Arguments:

### Return:
- T?[null]


Get the list as an array

## public function toArray
### Arguments:
- array (`T?[null]`)
- index (`int`)
### Return:
- void


Fill the array with the values of the list

## public function print
### Arguments:

### Return:
- void


Print the list




