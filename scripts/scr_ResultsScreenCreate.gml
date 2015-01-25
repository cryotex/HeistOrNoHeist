score_box_id[0] = instance_create(620, 800, objScoreBox);
score_box_id[1] = instance_create(1280, 140, objScoreBox);
score_box_id[2] = instance_create(1400, 800, objScoreBox);

for(var i=0; i<3;++i)
{
    with(score_box_id[i])
    {
        index = i;
    }
}

var first_score = ds_list_find_value(sorted_scores, 0);
var second_score = ds_list_find_value(sorted_scores, 1);
var third_score = ds_list_find_value(sorted_scores, 2);

first = instance_find(obj1stPlace, 0);
second = instance_find(obj2ndPlace, 0);
third = instance_find(obj3rdPlace, 0);
forth = instance_find(obj4thPlace, 0);



for(i=0;i<player_count;++i)
{
    if(player_scores[i] == first_score)
    {
        with(first)
        {
            scrSetPlayerColour(i);
        }        
    }
    else if(player_scores[i] == second_score)
    {
        with(second)
        {
            scrSetPlayerColour(i);
        }  
    }
    else if(player_scores[i] == third_score)
    {
        with(third)
        {
            scrSetPlayerColour(i);
        }  
    }else{
        with(forth){
            scrSetPlayerColour(i);
        }
    }
}






