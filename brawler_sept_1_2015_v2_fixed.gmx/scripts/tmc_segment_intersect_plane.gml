///tmc_segment_intersect_plane(segment Segment, vect3 PlanePoint, vect3 PlaneNormal, vec3 out_IntersectPoint)
/*
source: http://geomalgorithms.com/a05-_intersect-1.html    
    
Segment is a tmc_segment holding the start and end point of the test

PlanePoint is the point onto which the plane is affixed and rotated about by the PlaneNormal

PlaneNormal is the normal of the plane, see tmc_vect_plane_normal_from_tri. it is simply a normalized directional vector

out_IntersectPoint is a pre alocated vect3 into which the position of the intersectio will be placed

returns 0 if no intersect, 2 if segment is on the plane, 1 if intersect (if return is 1)
out_IntersectPoint will hold the intersect point if succesful
                   will hold the Segment start point (if return is 2)
                   will be untouched (if return is 0)
*/
var Segment = argument0,
    PlanePoint = argument1,
    PlaneNormal = argument2,
    out_IntersectPoint = argument3;

var u = tmc_vect_sub(Segment[2],Segment[1]),
    w = tmc_vect_sub(Segment[1], PlanePoint);

var D = tmc_vect_dot(PlaneNormal, u),
var N = -tmc_vect_dot(PlaneNormal, w);
// segment is parallel to plane
//show_message(string_format(D,10,10))
if (abs(D) < .0001) 
{  
    // segment lies in plane       
    if (N == 0)             
    {
        var retp = Segment[1];
        out_IntersectPoint[@1] = retp[1];
        out_IntersectPoint[@2] = retp[2];
        out_IntersectPoint[@3] = retp[3];
        return 2;
    }
    else
    {   
        // no intersection
        return 0;         
    }           
}
// they are not parallel
// compute intersect param
var sI = N / D;
if (sI < 0 || sI > 1)
{
    // no intersection
    return 0;
}
//compute intersection point;
var retp = tmc_vect_add(Segment[1],tmc_vect_multr(u,sI));
//set in output
out_IntersectPoint[@1] = retp[1];
out_IntersectPoint[@2] = retp[2];
out_IntersectPoint[@3] = retp[3];
//success
return 1;
