## lazy function delay
### Arguments:
- func (`void=>void`)
- t (`int`)
### Return:
- void


schedule `func` in `t` ticks

## lazy function asyncrepeat
### Arguments:
- count (`int`)
- func (`int=>void`)
### Return:
- void


repeat `func` every tick for `count` times

## lazy function asyncrepeat
### Arguments:
- count (`int`)
- dt (`int`)
- func (`int=>void`)
### Return:
- void


repeat `func` every `dt` tick for `count` times

## lazy function asyncwhile
### Arguments:
- condition (`bool`)
- func (`void=>void`)
### Return:
- void


repeat `func` while `condition` is true

## lazy function asyncwhile
### Arguments:
- condition (`int`)
- dlt (`int`)
- func (`void=>void`)
### Return:
- void


repeat `func` while `condition` is true with a delay of `dlt` ticks

## lazy function asyncwhile
### Arguments:
- condition (`int`)
- sel (`entity`)
- dlt (`int`)
- func (`void=>void`)
### Return:
- void


repeat `func` while `condition` is true with a delay of `dlt` ticks at entity `sel`

## lazy function add
### Arguments:
- func (`void=>void`)
### Return:
- void


add `func` to the schedule

## lazy function remove
### Arguments:
- func (`void=>void`)
### Return:
- void


remove `func` from the schedule

## lazy function clear
### Arguments:
- func (`void=>void`)
### Return:
- void


remove `func` from the schedule

## lazy function add
### Arguments:
- t (`int`)
- func (`void=>void`)
### Return:
- void


add `func` to the schedule int `t` tick

## lazy function clear
### Arguments:
- $func (`void=>void`)
### Return:
- void


remove `func` from the schedule

## lazy function add
### Arguments:
- t (`int`)
- func (`void=>void`)
### Return:
- void


add `func` to the schedule int `t` tick


