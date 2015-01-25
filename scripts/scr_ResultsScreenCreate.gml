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