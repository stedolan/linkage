type plugin = ..

val provide : plugin -> 'a


type error =
| Dynlink_error of Dynlink.error
| Not_a_linkage_plugin
| Wrong_plugin_type of plugin

val load : string -> (plugin, error) result


exception Error of string * error
val raise_error : (plugin, error) result -> 'a
