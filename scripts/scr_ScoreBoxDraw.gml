draw_self();

var this_score = ds_list_find_value(sorted_scores, index);
draw_text_transformed(x,y,string(this_score),2,2,0);