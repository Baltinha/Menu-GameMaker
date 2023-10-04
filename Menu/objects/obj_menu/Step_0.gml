//Area do menu podendo usar mouse e teclado!
if(keyboard_check_pressed(vk_enter)||mouse_check_button_pressed(mb_left)){
	switch(index)
	{
		case  0:
			//vai para a gameplay
			room_goto(rm_gameplay)
			break;
				
		case  1:
			//vai para as configuraçôes 
			room_goto(rm_configuracoes)
			break;
				
		case  2:
			//vai para a tela de sair do jogo
			room_goto(rm_sair)
			break;
				
		default:
		break;
	}
}




