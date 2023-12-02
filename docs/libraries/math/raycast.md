## lazy function shoot
### Arguments:
- distance (`float`)
- precision (`float`)
- stopCondtion (`bool`)
- action (`bool=>void`)
### Return:
- void


Raycast with a `distance` and with step `precision`. Stop When `stopCondtion` is true or distance is reach.Call `action` at the end with `true` if stopCondtion was `true` and false otherwise.

## lazy function laser
### Arguments:
- distance (`float`)
- precision (`float`)
- stopCondtion (`bool`)
- step (`float=>void`)
- action (`bool=>void`)
### Return:
- void


Raycast with a `distance` and with step `precision`. Stop When `stopCondtion` is true or distance is reach.Call `step` at every step with argument corresponding to the distance remaining.Call `action` at the end with `true` if stopCondtion was `true` and false otherwise.


