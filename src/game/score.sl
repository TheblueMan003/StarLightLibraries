package game.score

import standard.int as int

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
	with(best(selector, score), true){
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
	with(worst(selector, score), true){
		action()
	}
}