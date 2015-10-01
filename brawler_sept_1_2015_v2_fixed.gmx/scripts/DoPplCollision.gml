///DoPplCollision()
/*
this function performs collision handling for moving people
assumes called in the instance end step of the instance needing to handle collision
assume m_Radius in the calling instance exists
assume m_Mass in the calling instance exists
assume par_DynaPplCol is the object parent for all the colliding objects
assume m_Radius in the calling instance exists
assume m_Mass in the calling instance exists
*/
            image_blend = c_white;
//the parent for all coliding objects
var o = par_DynaPplCol;
//count
var ins_ct = instance_number(o);
var ins;
var myPos = tmc_vec2(x,y);
//loop though all instances
for(var i = 0; i<ins_ct; i++)
{
    //get id
    ins = instance_find(o,i);
    //make sure not me
    if(ins != id)
    {
        //radius for collion, this + me radius
        var r = ins.m_Radius+m_Radius;
        //distance
        var d = point_distance(myPos[1],myPos[2],ins.x,ins.y);
        //overlap?
        if(d<r)
        {
            image_blend = c_red;
            var norm_masses = tmc_vec2_norm(tmc_vec2(ins.m_Mass,m_Mass));
            //yes
            var overlap = r-d;
            //could have used vectors here byt his is faster
            var dir = point_direction(myPos[1],myPos[2],x,y);
            //direction in deltax,deltay or vector form
            var dx = dcos(dir);
            var dy = dsin(dir);
            //move away from each other by the overlap value taking the mass into account
            myPos[@1]=myPos[1]-dx*overlap*norm_masses[1];
            myPos[@2]=myPos[2]-dy*overlap*norm_masses[1];
            ins.x=ins.x+dx*overlap*norm_masses[2];
            ins.y=ins.y+dy*overlap*norm_masses[2];
            
        }
    }
}
//set my new position
x = myPos[1];
y = myPos[2];
