// pasteboard the mac version of clipboard - aim same interface different OS!
#include <AppKit/AppKit.h>
#include <AppKit/NSPasteboard.h>

#include <string>

#include "./linc_clipboard.h"

namespace linc {

    namespace clipboard {

    	void copy(::String s) {
            
			NSPasteboard *pasteBoard = [NSPasteboard generalPasteboard];
		    [pasteBoard declareTypes:[NSArray arrayWithObject:NSStringPboardType] owner:nil];

		    [pasteBoard setString:[NSString stringWithUTF8String:(std::string(s.c_str()))] forType:NSStringPboardType];

    	} //copy

    	::String paste() {

    		NSPasteboard *pasteBoard = [NSPasteboard generalPasteboard];
			NSString *text = [pasteBoard stringForType:NSStringPboardType];
				
			return ::String(std::string( [text UTF8String] ));

    	} //paste

    } //clipboard namespace

} //linc namespace