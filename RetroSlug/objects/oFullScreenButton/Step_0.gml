/// @description make window fullscreen
// You can write your code in this editor
if mouse_check_button_pressed(mb_middle)
   {
   if window_get_fullscreen()
      {
      window_set_fullscreen(false);
      }
   else
      {
      window_set_fullscreen(true);
      }
   }
