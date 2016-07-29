// pasteboard the ios version of clipboard - aim same interface different OS!
#include <UIKit/UIKit.h>
#include <UIKit/UIPasteboard.h>

#include <string>

#include "./linc_clipboard.h"

namespace linc {

    namespace clipboard {

    	void set(::String s) {
            
			UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
            pasteboard.persistent = YES;
            [pasteboard setString:[NSString stringWithUTF8String:s.c_str()]];

    	} //set

    	::String get() {

    		UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
			NSString *text = [pasteboard string];
				
			return ::String([text UTF8String]);

    	} //get

    } //clipboard namespace

} //linc namespace