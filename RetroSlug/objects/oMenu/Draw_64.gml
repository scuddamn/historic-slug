/// @description draw menu
// You can write your code in this editor

draw_set_font(fMenu);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

for(var i = 0; i < menu_items; i++)
{
	var txt = menu[i];
	if(menu_cursor == i)
	{
		txt = string_insert("> ", txt, 0);
		var col = c_white;
	} else {
		var col = c_gray;
	}
	
	var xx = menu_x;
	var yy = menu_y - (menu_itemheight * (i * 3));
	
	
	draw_set_color(col);
	draw_text(xx, yy, txt);
	
}
