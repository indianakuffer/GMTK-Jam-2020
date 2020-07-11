//delta time implementation
//min_cap = ;
//max_cap = ;
// clamp( step_delta, min_cap,  max_cap); // restrict upper bound and lower bound of 

// fixed timestep https://gafferongames.com/post/fix_your_timestep/


global.step_delta = delta_time * room_speed * 0.000001;
//show_debug_message("updating step delta");