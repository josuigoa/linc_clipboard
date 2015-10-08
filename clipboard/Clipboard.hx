package clipboard;

@:keep
@:include('linc_clipboard.h')
@:build(linc.Linc.touch())
@:build(linc.Linc.xml('clipboard'))
extern class Clipboard {

        //external native function definition
        //can be wrapped in linc::libname or call directly
        //and the header for the lib included in linc_empty.h

    @:native('linc::clipboard::copy')
    static function copy(s:String):Void;

    @:native('linc::clipboard::paste')
    static function paste() : String;

        //inline functions can be used as wrappers

    // static inline function example() : Void {
    //     trace('empty project example');
    // }

} //Clipboard