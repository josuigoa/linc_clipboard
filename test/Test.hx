import clipboard.Clipboard;

class Test {
        
    static function main() {

    	trace('Copying "Hello world" text to clipboard.');
    	Clipboard.copy("Hello world");
    	trace('this is what is in the clipboard: "${Clipboard.paste()}"');

    }

}