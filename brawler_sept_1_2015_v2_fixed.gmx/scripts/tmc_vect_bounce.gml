///tmc_vect_bounce(incident, reflect, restitution)
//returns the incident vector reflected by the normal specified
//amplified by restitution
//incident is a tmc_vect indicating the direction of the thing that is to be reflected
//reflect is the (usually) normalized vector to reflect at, like the facing direction of a plane
// if the reflect is not normalized you may bounce off with more or less force
//reflection
//restitution 0 is no bounce, 1 is full bounce
//source: http://www.asawicki.info/news_1301_reflect_and_refract_functions.html

//return incidentVec - 2.f * Dot(incidentVec, normal) * normal;
    var incident = argument0;
    var normal = argument1;
    var dot2 = (1.0+argument2)*tmc_vect_dot(incident,normal);
    var ndot2 = tmc_vect_multr(normal,dot2);
    return tmc_vect_sub(incident,ndot2);
