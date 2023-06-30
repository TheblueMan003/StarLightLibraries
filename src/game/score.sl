package game.score

import standard.int as int

"""
Sum up the value of the scoreboard of the entity in e
"""
lazy int sum(entity selector, string score){
    int c = 0
    with(selector){
        c += score
    }
    return c
}

"""
Get the min value of the scoreboard of the entity in e
"""
lazy int min(entity selector, string score){
    int c = int.maxValue
    with(selector){
        if(score < c){
            c = score
        }
    }
    return c
}

"""
Get the max value of the scoreboard of the entity in e
"""
lazy int max(entity selector, string score){
    int c = int.minValue
    with(selector){
        if(score > c){
            c = score
        }
    }
    return c
}

"""
Get the average value of the scoreboard of the entity in e
"""
lazy int avg(entity selector, string score){
    int c = 0
    int c2 = 0
    with(selector){
        c += score
        c2 ++
    }
    return c / c2
}

"""
Return the entities within `selector` that has the biggest `score`
"""
def lazy entity best(entity selector, int score){
	entity winner
	int previous = int.minValue
	as(selector){
		if (score > previous){
			previous = score
			winner = @s
		}
		else if (score == previous){
			winner += @s
		}
	}
    return winner
}

"""
Execute `action` on the entity within `selector` that has the biggest `score`
"""
def lazy withBest(entity selector, int score, void=>void action){
	with(selector in best(selector, score), true){
		action()
	}
}

"""
Return the entities within `selector` that has the smallest `score`
"""
def lazy worst(entity selector, int score){
	entity winner
	int previous = int.maxValue
	as(selector){
		if (score < previous){
			previous = score
			winner = @s
		}
		else if (score == previous){
			winner += @s
		}
	}
}

"""
Execute `action` on the entity within `selector` that has the smallest `score`
"""
def lazy withWorst(entity selector, int score, void=>void action){
	with(selector in worst(selector, score), true){
		action()
	}
}

"""
Return the entities within `selector` that has the closest `score` to `goal`
"""
def lazy closest(entity selector, int score, int goal){
	scoreboard int delta = score - goal
	return worst(selector, delta)
}

"""
Execute `action` on the entity within `selector` that has the closest `score` to `goal`
"""
def lazy withClosest(entity selector, int score, int goal, void=>void action){
	with(selector in closest(selector, score, goal), true){
		action()
	}
}

"""
Return the entities within `selector` that has the furthest `score` to `goal`
"""
def lazy furthest(entity selector, int score, int goal){
	scoreboard int delta = score - goal
	return best(selector, delta)
}

"""
Execute `action` on the entity within `selector` that has the furthest `score` to `goal`
"""
def lazy withFurthest(entity selector, int score, int goal, void=>void action){
	with(selector in furthest(selector, score, goal), true){
		action()
	}
}


"""
Execute `action` on all entities within `selector` ordered by ascending `score`
"""
def lazy forEachOrderedAscending(entity selector, int score, void=>void action){
	with(selector, true){
		entity rest = selector
		withWinner(selector in rest, score, action){
			rest -= @s
			action()
		}
	}
}

"""
Execute `action` on all entities within `selector` ordered by descending `score`
"""
def lazy forEachOrderedDescending(entity selector, int score, void=>void action){
	with(selector, true){
		entity rest = selector
		withLoser(selector in rest, score, action){
			rest -= @s
			action()
		}
	}
}

"""
Execute `action` on all entities within `selector` ordered `score`
"""
def lazy forEachOrdered(entity selector, int score, bool ascending, void=>void action){
	if (ascending){
		forEachOrderedAscending(selector, score, action)
	}
	else{
		forEachOrderedDescending(selector, score, action)
	}
}