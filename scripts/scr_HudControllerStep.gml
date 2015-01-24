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
            x = player_hud_x;
            y = player_hud_y;
            
            visible = true;
        }
    }
    else
    {
        hud_win_marker = instance_create(x, y, objHudWinMarker);
        
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