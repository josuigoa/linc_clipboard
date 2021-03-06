#include <string>

#include <windows.h>

#include "./linc_clipboard.h"

namespace linc {

    namespace clipboard {

    	void set(::String s) {
            
            if (OpenClipboard(0)) {
	    		EmptyClipboard();
                const size_t len = strlen(s) + 1;
				HGLOBAL hClipboardData = GlobalAlloc(GMEM_MOVEABLE, len);
				if (!hClipboardData){
					CloseClipboard();
					return;
				}
				memcpy(GlobalLock(hClipboardData), s.c_str(), len);
				GlobalUnlock(hClipboardData);
				SetClipboardData(CF_TEXT, hClipboardData);
				CloseClipboard();
				GlobalFree(hClipboardData);
    		}

    	} //set

    	::String get() {

    		if (OpenClipboard(0)) {
    			HANDLE hClipboardData = GetClipboardData(CF_TEXT);
                char* pchData = (char*)GlobalLock(hClipboardData);
    			GlobalUnlock(hClipboardData);
    			CloseClipboard();
    			return ::String(pchData);
    		}

            return ::String(std::string().c_str());
            
    	} //get

    } //clipboard namespace

} //linc namespace