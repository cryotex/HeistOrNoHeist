score_box_id[0] = instance_create(960, 280, objScoreBox);
score_box_id[1] = instance_create(620, 480, objScoreBox);
score_box_id[2] = instance_create(1260, 540, objScoreBox);

for(var i=0; i<3;++i)
{
    with(score_box_id[i])
    {
        index = i;
    }
}