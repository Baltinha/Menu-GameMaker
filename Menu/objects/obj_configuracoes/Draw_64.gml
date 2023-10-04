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


for(var i = 0;i < op_maxConfig; i++)
{
	var y2 = y1 +(margin * i);
	var string_w = string_width(opcoesConfig[i]);
	var string_h = string_height(opcoesConfig[i]);
	
	//onde o mouse esta
	if(point_in_rectangle(m_x,m_y,x1 - string_w / 2, y2 - string_h /2 ,x1 + string_w /2, y2 + string_h /2) || indexConfig == i)
	{

		//muda  a cor da palavra e reseta onde ela esta selecionada
		indexConfig = i;
		draw_set_color(c_red);

	}
	else
	{
		draw_set_color(c_white);
	}		
	
	//desenha as palavras no centro da tela
	draw_text(x1,y2,opcoesConfig[i]);
}


//resetar para poder ser desenhado denovo
draw_set_font(-1);





