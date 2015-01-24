//Sort scores
ds_list_destroy(sorted_scores);
sorted_scores = ds_list_create();

for(i=0;i<player_count;++i)
{
    ds_list_add(sorted_scores, player_scores[i]);    
}

ds_list_sort(sorted_scores, false);

var first_score = ds_list_find_value(sorted_scores, 0);
var second_score = ds_list_find_value(sorted_scores, 1);

if(first_score > second_score)
{
    for(i=0;i<player_count;++i)
    {
        if(player_scores[i] == first_score)
        {
            first_place = i;  
            break;
        }
    }
}
else
{
    first_place = -1;
}

//Update timer
seconds_left-=1;

if(seconds_left < 0)
{
    seconds_left = 59;
    minutes_left-=1;
}

//Check for end game
if(seconds_left == 0 && minutes_left == 0)
{
    alarm[1] = 1; //End Game Event
}
else
{
    alarm[0] = timer_tick_rate;
}