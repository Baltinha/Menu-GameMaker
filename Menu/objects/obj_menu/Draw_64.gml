//Variaveis para ajudar a colocar no centro da tela e para achar mouse na tela
var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();
var x1 = gui_largura/2;
var y1 = gui_altura/2;
var margin = 45;
var m_x = device_mouse_x_to_gui(0);
var m_y = device_mouse_y_to_gui(0);

//fala onde deverar ser colocado as palavras na tela
draw_set_font(ft_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

for(var i = 0;i < op_max; i++)
{
	var y2 = y1 +(margin * i);
	var string_w = string_width(opcoes[i]);
	var string_h = string_height(opcoes[i]);
	
	//onde o mouse esta
	if(point_in_rectangle(m_x,m_y,x1 - string_w / 2, y2 - string_h /2 ,x1 + string_w /2, y2 + string_h /2) || index == i)
	{
		//muda  a cor da palavra e reseta onde ela esta selecionada
		index = i;
		draw_set_color(c_red);
	}
	else
	{
		draw_set_color(c_white);
	}		
	
	//desenha as palavras no centro da tela
	draw_text(x1,y2,opcoes[i]);
}

//mensagem de como confirmar a navegação e de como navegar 
draw_set_font(ft_ajuda)
draw_set_color(c_white);
draw_text(1100,600,"Para confirmar sua navegação \nUsar Enter ou Mouse 1");
draw_text(1100,650,"Para navegar \nUsar Setas do teclado ou Mouse");

//resetar para poder ser desenhado denovo
draw_set_font(-1);
draw_set_font(-1);





