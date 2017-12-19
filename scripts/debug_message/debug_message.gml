///@description debug_message( string/real, ... )
if (global.dev_mode == true)
{
	var _str = string( current_time ) + " " + object_get_name( object_index ) + ":" + string( id ) + "    ";
	for( var _i = 0; _i < argument_count; _i++ ) _str += string( argument[_i] );
	show_debug_message( _str );
	return _str;
}