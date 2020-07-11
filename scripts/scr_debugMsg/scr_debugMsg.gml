if !is_string(argument0){
	return 0
} else if global.debug_flag{
	show_debug_message(argument0)	
}