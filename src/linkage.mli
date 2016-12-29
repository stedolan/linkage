(** The type of plugins. Extend this with your plugin type *)
type plugin = ..

(** Plugin modules should end in a call to provide *)
val provide : plugin -> 'a


type error =
| Dynlink_error of Dynlink.error
| Not_a_linkage_plugin
| Wrong_plugin_type of plugin

(** Loads a plugin given a filename.

    If the filename ends in '.cma' or '.cmo', it will be changed
    to '.cmxs' on native-code targets (so specifiying the
    plugin as '.cma' will work on both native and byte code) *)
val load : string -> (plugin, error) result


exception Error of string * error
(** Convenience function to convert the result of a failed load
    into an exception *)
val raise_error : (plugin, error) result -> 'a
