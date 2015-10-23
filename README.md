# linc/clipboard
a linc library to use the system Clipboard. Works on Linux, Mac and Windows

###Install
`haxelib git linc_clipboard https://github.com/josuigoa/linc_clipboard.git`

###Usage
```haxe
import clipboard.Clipboard;

class Test {
        
    static function main() {

    	trace('previously in the clipboard... "${Clipboard.get()}"');
    	trace('Copying "Hello world" text to clipboard.');
    	Clipboard.set("Hello world");
    	trace('this is what is in the clipboard: "${Clipboard.get()}"');

    }

}
```

###Functions
* set and get plain text

###TODO
* set/get more than simple text (e.g. images)
