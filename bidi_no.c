#include <gdk/gdk.h>
#include <stdio.h>

gboolean
gdk_keymap_have_bidi_layouts(GdkKeymap *keymap)
{
	return FALSE;
}
