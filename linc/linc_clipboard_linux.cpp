#include <string>

#include <gtk/gtk.h>

#include "./linc_clipboard.h"

namespace linc {

    namespace clipboard {

        static bool gtk_inited = false;

    	void set(::String s) {

            if(!gtk_inited) {
                gtk_init(NULL, NULL);
                gtk_inited = true;
            }

            // Get a handle to the given clipboard. You can also ask for
            // GDK_SELECTION_PRIMARY (the X "primary selection") or
            // GDK_SELECTION_SECONDARY.
            GtkClipboard* clipboard = gtk_clipboard_get(GDK_SELECTION_CLIPBOARD);
            gtk_clipboard_set_text(clipboard, s.c_str(), strlen(s) + 1);

    	} //set

        ::String get() {

            if(!gtk_inited) {
                gtk_init(NULL, NULL);
                gtk_inited = true;
            }

            GtkClipboard* clipboard = gtk_clipboard_get(GDK_SELECTION_CLIPBOARD);

            char* text = gtk_clipboard_wait_for_text(clipboard);
            if(text) {
                return ::String(text);
            }
            
            return ::String(std::string().c_str());

    	} //get

    } //clipboard namespace

} //linc namespace