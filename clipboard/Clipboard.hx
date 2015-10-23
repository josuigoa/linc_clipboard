package clipboard;

@:keep
@:include('linc_clipboard.h')
@:build(linc.Linc.touch())
@:build(linc.Linc.xml('clipboard'))
extern class Clipboard {

    @:native('linc::clipboard::set')
    static function set(s:String):Void;

    @:native('linc::clipboard::get')
    static function get() : String;

} //Clipboard