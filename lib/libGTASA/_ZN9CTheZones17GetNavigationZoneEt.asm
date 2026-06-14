; =========================================================
; Game Engine Function: _ZN9CTheZones17GetNavigationZoneEt
; Address            : 0x42DB78 - 0x42DB84
; =========================================================

42DB78:  LDR             R1, =(_ZN9CTheZones19NavigationZoneArrayE_ptr - 0x42DB7E)
42DB7A:  ADD             R1, PC; _ZN9CTheZones19NavigationZoneArrayE_ptr
42DB7C:  LDR             R1, [R1]; CTheZones::NavigationZoneArray ...
42DB7E:  ADD.W           R0, R1, R0,LSL#5
42DB82:  BX              LR
