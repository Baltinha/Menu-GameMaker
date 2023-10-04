//Area do menu podendo usar mouse e teclado!
if(keyboard_check(vk_enter)||mouse_check_button_pressed(mb_left)){
	switch(index)
	{
		case  0:
			room_goto(rm_gameplay)
			break;
				
		case  1:
			room_goto(rm_configuracoes)
			break;
				
		case  2:
			room_goto(rm_sair)
			break;
				
		default:
		break;
	}
}




