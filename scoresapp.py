import ui

def button_tapped(sender):
	from text_concatenate import text_concatenate
	score_string = text_concatenate()
	head = ui.TextView(text=str(score_string))
	head.present('sheet')
	
ui.load_view('demo').present('sheet')
	
#view = ui.View()
#view.name = 'scoresapp'
#view.background_color = '#4a4a4a'
#button = ui.Button(title='yes')
#button.center = (view.width*0.5, view.height*0.5)
#button.flex = 'LRTB'
#button_action = button_tapped
#view.add_subview(button)
#view.present('sheet')