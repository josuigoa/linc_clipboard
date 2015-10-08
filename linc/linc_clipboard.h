#ifndef _LINC_CLIPBOARD_H_
#define _LINC_CLIPBOARD_H_

#include <hxcpp.h>

namespace linc {

    namespace clipboard {

    	extern void copy(::String s);
    	extern ::String paste();

    } //clipboard namespace

} //linc

#endif //_LINC_CLIPBOARD_H_
