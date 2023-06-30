package game.score

import standard.int as int

"""
Return the entities within `selector` that has the biggest `score`
"""
def lazy entity winner(entity selector, int score){
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
def lazy withWinner(entity selector, int score, void=>void action){
	with(selector in game.score.winner(selector, score), true){
		action()
	}
}

"""
Return the entities within `selector` that has the smallest `score`
"""
def lazy loser(entity selector, int score){
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
def lazy withLoser(entity selector, int score, void=>void action){
	with(selector in game.score.loser(selector, score), true){
		action()
	}
}

"""
Execute `action` on all entities within `selector` ordered by ascending `score`
"""
def lazy forEachOrderedAscending(entity selector, int score, void=>void action){
	with(selector, true){
		entity rest = selector
		game.score.withLoser(selector in rest, score, action){
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
		game.score.withWinner(selector in rest, score, action){
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
		game.score.forEachOrderedAscending(selector, score, action)
	}
	else{
		game.score.forEachOrderedDescending(selector, score, action)
	}
}