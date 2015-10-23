#ifndef _LINC_CLIPBOARD_H_
#define _LINC_CLIPBOARD_H_

#include <hxcpp.h>

namespace linc {

    namespace clipboard {

    	extern void set(::String s);
    	extern ::String get();

    } //clipboard namespace

} //linc

#endif //_LINC_CLIPBOARD_H_
