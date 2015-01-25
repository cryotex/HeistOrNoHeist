
var x_offset = -35;
var y_offset = -25;

if(first_place > -1)
{
    var player_hud_x = x;
    var player_hud_y = y;

    with player_hud_id[first_place]
    {
        player_hud_x = x;
        player_hud_y = y;
    }
        
    if(instance_exists(hud_win_marker))
    {
        with(hud_win_marker)
        {
            x = player_hud_x + x_offset;
            y = player_hud_y + y_offset;
            
            visible = true;
        }
    }
    else
    {
        hud_win_marker = instance_create(x + x_offset, y + y_offset, objHudWinMarker);
        
        with(hud_win_marker)
        {
            depth = -1;
        }
    }            
}
else
{
    if(instance_exists(hud_win_marker))
    {
        with(hud_win_marker)
        {
            visible = false;
        }
    }
}