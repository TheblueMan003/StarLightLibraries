package game.score

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
	with(winner(selector, score), true){
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
	with(loser(selector, score), true){
		action()
	}
}

"""