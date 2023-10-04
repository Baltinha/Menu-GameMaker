//Area do menu podendo usar mouse e teclado!
if(keyboard_check(vk_enter)||mouse_check_button_pressed(mb_left)){
	switch(index)
	{
		case  0:
			//Aqui ira o sistema de volume
			break;
				
		case  1:
			// aqui o sistema de tela cheia
			t_cheia = !t_cheia;
			window_set_fullscreen(t_cheia);
			break;
				
		case  2:
			room_goto(rm_menu)
			break;
				
		default:
		break;
	}
}




