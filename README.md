# linc/clipboard
a linc library to use the system Clipboard. Actually it only works on windows.

###Install
`haxelib git linc_clipboard https://github.com/josuigoa/linc_clipboard.git`

###Usage
```haxe
import clipboard.Clipboard;

class Test {
        
    static function main() {

    	trace('Copying "Hello world" text to clipboard.');
    	Clipboard.copy("Hello world");
    	trace('this is what is in the clipboard: "${Clipboard.paste()}"');

    }

}
```

###TODO
* get mac and linux working
* copy/paste more than simple text (e.g. images)
