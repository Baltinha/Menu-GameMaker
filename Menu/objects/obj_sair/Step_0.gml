//Area do menu podendo usar mouse e teclado!
if(keyboard_check_pressed(vk_enter)||mouse_check_button_pressed(mb_left)){
	switch(index)
	{
		case  0:
			//Aqui ira sair do jogo
			game_end();
			break;
				
		case  1:
			// aqui sai do jogo
			room_goto(rm_menu);
			break;
				
		default:
		break;
	}
}






