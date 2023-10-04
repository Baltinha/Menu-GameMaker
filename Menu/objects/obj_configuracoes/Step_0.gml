//Area do menu podendo usar mouse e teclado!
if(keyboard_check_pressed(vk_enter)||mouse_check_button_pressed(mb_left)){
	switch(indexConfig)
	{
		case  0:
			//aqui abilita o som
			global.somOn = false;

			break;	
		case  1:
			// aqui o sistema de tela cheia
			t_cheia = !t_cheia;
			window_set_fullscreen(t_cheia);
			break;
				
		case  2:
			//volta para o menu
			room_goto(rm_menu)
			break;
				
		default:
		break;
	}
}