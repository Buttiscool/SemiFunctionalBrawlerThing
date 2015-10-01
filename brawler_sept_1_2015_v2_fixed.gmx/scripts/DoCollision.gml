///DoCollision()
/*
this function performs collision handling for moving objects
assumes called in the instance end step of the instance needing to handle collision
assume m_Radius in the calling instance exists
assume par_ShapeCol is the object parent for all the colliding objects
assume m_Radius in all the objects involved exists
*/

//the parent for all coliding objects
var o = par_ShapeCol;
//count
var ins_ct = instance_number(o);
var ins;
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
        var lineList = ins.m_LineList;
        //number of lines in shape
        var numLines = tmc_segment_list_size(lineList);
        if(numLines)
        {
            var segment,scalar,penetration,normal,displacementV;
            //my location in vec2 form
            var myPos = tmc_vec2(x,y);
            var d = 0;
            //loop through lines in shape
            for(var j = 0; j< numLines; j++)
            {
                //get the line segment
                segment = lineList[| j];
                if(tmc_vect_is_clockwise(myPos,segment[2],segment[1]))
                {
                
                    //get the vector from the closest point on line to me
                    scalar = tmc_segment_scalar_to_point(segment,myPos);
                    //distance
                    d = tmc_vec2_len(scalar);
                    
                    //if overlap
                    if(d<r)
                    {
                        //by how many pixels
                        penetration = r-d;
                        //norm the vector
                        normal = tmc_vec2_norm(scalar);
                        //and set it to the displacement wanted
                        displacementV = tmc_vec2_mult_r(normal,penetration);
                        //displace the postion outside the collision
                        myPos = tmc_vec2_add(myPos,displacementV);
                    }
                }
            }
            //set the coord to the new location
            x = myPos[1];
            y = myPos[2];
        }
    }
}
