def text_concatenate():

	from testnow import get_scores_test
	header, games_live_update, footer = get_scores_test()
	
	score_string = (header + '\n' + footer)
	for each in games_live_update:
		a = games_live_update[each]['clock']
		b = games_live_update[each]['visitor']
		c = games_live_update[each]['home']
		score_string = score_string + str('\n' + str(a) + '\n' + str(b) + '\n' + str(c) + '\n' + footer)
	
	return(score_string)