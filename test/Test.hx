import clipboard.Clipboard;

class Test {
        
    static function main() {

    	trace('previously in the clipboard... "${Clipboard.get()}"');
    	trace('Copying "Hello world" text to clipboard.');
    	Clipboard.set("Hello world");
    	trace('this is what is in the clipboard now: "${Clipboard.get()}"');

    }

}
