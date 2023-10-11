## ` functionabs
### Type Arguments:
- `T`
### Arguments:
- x (`T?`)

### Return:
- `T?`


Return the absolute value of x

## ` functionmax
### Type Arguments:
- `T`
### Arguments:
- a (`T?`)
- b (`T?`)

### Return:
- `T?`


Return the max between the a and b

## ` functionmin
### Type Arguments:
- `T`
### Arguments:
- a (`T?`)
- b (`T?`)

### Return:
- `T?`


Return the min between the a and b

## function isClose
### Arguments:
- x (`float`)
- y (`float`)
- maxDiff (`float`)
### Return:
- bool


return true if difference between x and y smaller than maxDiff

## [__returnCheck__=true] function sqrt
### Arguments:
- value (`float`)
### Return:
- float


return squart root of value

## function root
### Arguments:
- n (`float`)
### Return:
- float




## [__returnCheck__=true] function factorial
### Arguments:
- x (`int`)
### Return:
- int


return x!

## function pow
### Arguments:
- x (`float`)
- n (`int`)
- m (`float`)
### Return:
- float


return x^n

## function pow
### Arguments:
- x (`int`)
- n (`int`)
### Return:
- int


return x^n

## ` functionsign
### Type Arguments:
- `T`
### Arguments:
- value (`T?`)

### Return:
- `T?`


Return sign of the argument-1 if value smaller than 01 otherwise

## function round
### Arguments:
- value (`float`)
### Return:
- float


Round float to closest value

## function floor
### Arguments:
- value (`float`)
### Return:
- float


Round float to lowest value

## function ceil
### Arguments:
- value (`float`)
### Return:
- float


Round float to upper value

## ` functionclamp
### Type Arguments:
- `T`
### Arguments:
- value (`T?`)
- a (`T?`)
- b (`T?`)

### Return:
- `T?`


Clamp the value between a and b

## ` functionsorted
### Type Arguments:
- `T`
### Arguments:
- a (`T?`)
- b (`T?`)

### Return:
- `(T?,T?)`


Return (a,b) if a <= b else return (b,a)

## lazy function lerp
### Arguments:
- a0 (`float`)
- a1 (`float`)
- w (`float`)
### Return:
- float


Return the linear interpolated value of a0 and a1 with coefficient w

## function linearLerp
### Arguments:
- a0 (`float`)
- a1 (`float`)
- w (`float`)
### Return:
- float


Return the linear interpolated value of a0 and a1 with coefficient w

## function smoothLerp
### Arguments:
- a0 (`float`)
- a1 (`float`)
- w (`float`)
### Return:
- float


Return the 3rd degree interpolated value of a0 and a1 with coefficient w

## function sin
### Arguments:
- angle (`float`)
### Return:
- float


Compute the sinus of the angle in degrees with a taylor series

## function cos
### Arguments:
- angle (`float`)
### Return:
- float


Compute the cossinus of the angle in degrees with a taylor series

## function tan
### Arguments:
- angle (`float`)
### Return:
- float


Compute the tangente of the angle in degrees with a taylor series

## function asin
### Arguments:
- angle (`float`)
### Return:
- float


Compute the arcsinus of the angle in degrees with a taylor series

## function acos
### Arguments:
- angle (`float`)
### Return:
- float


Compute the arccossinus of the angle in degrees with a taylor series

## function atan
### Arguments:
- angle (`float`)
### Return:
- float


Compute the arctangente of the angle in degrees with a taylor series

## function atan2
### Arguments:
- y (`float`)
- x (`float`)
### Return:
- float


Compute the arctangente of the angle in degrees with a taylor series

## function sqrt2
### Arguments:
- value (`float`)
### Return:
- float


Compute the square root of the value with a taylor series

## function log
### Arguments:
- x (`float`)
### Return:
- float


Compute the log of x with a taylor series

## function exp
### Arguments:
- x (`float`)
### Return:
- float


Compute the exp of x with a taylor series

## function pow
### Arguments:
- x (`float`)
- y (`float`)
### Return:
- float


Compute the pow of x with a taylor series


