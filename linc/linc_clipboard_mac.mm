// pasteboard the mac version of clipboard - aim same interface different OS!
#include <AppKit/AppKit.h>
#include <AppKit/NSPasteboard.h>

#include <string>

#include "./linc_clipboard.h"

namespace linc {

    namespace clipboard {

    	void set(::String s) {
            
			NSPasteboard *pasteBoard = [NSPasteboard generalPasteboard];
		    [pasteBoard declareTypes:[NSArray arrayWithObject:NSStringPboardType] owner:nil];

		    [pasteBoard setString:[NSString stringWithUTF8String:s.c_str()] forType:NSStringPboardType];

    	} //set

    	::String get() {

    		NSPasteboard *pasteBoard = [NSPasteboard generalPasteboard];
			NSString *text = [pasteBoard stringForType:NSStringPboardType];
				
			return ::String([text UTF8String]);

    	} //get

    } //clipboard namespace

} //linc namespace