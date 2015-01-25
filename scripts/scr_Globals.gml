show_debug_message("Setting Globals");

globalvar player_count;
player_count = 4;

//Time
globalvar timer_tick_rate;
timer_tick_rate = 60;

globalvar minutes_left;
minutes_left=0;

globalvar seconds_left;
seconds_left=2;


//Scores
globalvar player_scores;
globalvar score_box_index;
score_box_index = 0;

for(i=0;i<player_count;++i)
{
    player_scores[i] = 0;    
}

globalvar sorted_scores;
sorted_scores = ds_list_create();

globalvar first_place;
first_place = -1;


 
