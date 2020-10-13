#include <gdk/gdk.h>
#include <stdio.h>

static int count = 0;

gboolean
gdk_keymap_have_bidi_layouts(GdkKeymap *keymap)
{
	printf("bidi check called: #%d\n", count++);
	return FALSE;
}
