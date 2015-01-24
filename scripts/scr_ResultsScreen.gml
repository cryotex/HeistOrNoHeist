score_box_id[0] = instance_create(960, 280, objScoreBox);
score_box_id[1] = instance_create(620, 480, objScoreBox);
score_box_id[2] = instance_create(1260, 540, objScoreBox);

for(i=0;i<player_count;++i)
{
    ds_list_add(sorted_scores, player_scores[i]);    
}

ds_list_sort(sorted_scores, false);

globalvar scorebox_score;
scorebox_score[score_box_id[0]] = ds_list_find_value(sorted_scores, 0);
scorebox_score[score_box_id[1]] = ds_list_find_value(sorted_scores, 1);
scorebox_score[score_box_id[2]] = ds_list_find_value(sorted_scores, 2);