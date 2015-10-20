# linc/clipboard
a linc library to use the system Clipboard. Currently works on windows and mac.

###Install
`haxelib git linc_clipboard https://github.com/josuigoa/linc_clipboard.git`

###Usage
```haxe
import clipboard.Clipboard;

class Test {
        
    static function main() {

    	trace('previously in the clipboard... "${Clipboard.paste()}"');
    	trace('Copying "Hello world" text to clipboard.');
    	Clipboard.copy("Hello world");
    	trace('this is what is in the clipboard: "${Clipboard.paste()}"');

    }

}
```

###Functions
* copy and paste plain text

###TODO
* get linux working
* copy/paste more than simple text (e.g. images)
