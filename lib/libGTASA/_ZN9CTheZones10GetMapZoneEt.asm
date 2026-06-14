; =========================================================
; Game Engine Function: _ZN9CTheZones10GetMapZoneEt
; Address            : 0x42DECC - 0x42DED8
; =========================================================

42DECC:  LDR             R1, =(_ZN9CTheZones12MapZoneArrayE_ptr - 0x42DED2)
42DECE:  ADD             R1, PC; _ZN9CTheZones12MapZoneArrayE_ptr
42DED0:  LDR             R1, [R1]; CTheZones::MapZoneArray ...
42DED2:  ADD.W           R0, R1, R0,LSL#5
42DED6:  BX              LR
