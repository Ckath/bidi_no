# bidi_no (thanks)
a little library override to get rid of the terrible behaviour of `gdk_keymap_have_bidi_layouts`, for details on this happening see this firefox issue: https://bugzilla.mozilla.org/show_bug.cgi?id=1640535

I've personally only experienced this in firefox, but it might appear in other applications as well

## building
```
# for a debug printf whenever and how many times this call is made
make DEBUG=yes

# for just the workaround stub that stops the actual function from being called
make
```
## usage
`LD_PRELOAD=./libbidi_no.so application`
