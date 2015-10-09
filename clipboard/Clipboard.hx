package clipboard;

@:keep
@:include('linc_clipboard.h')
@:build(linc.Linc.touch())
@:build(linc.Linc.xml('clipboard'))
extern class Clipboard {

    @:native('linc::clipboard::copy')
    static function copy(s:String):Void;

    @:native('linc::clipboard::paste')
    static function paste() : String;

} //Clipboard