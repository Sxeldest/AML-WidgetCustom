; =========================================================
; Game Engine Function: _ZN15CMissionCleanup4InitEv
; Address            : 0x327336 - 0x327350
; =========================================================

327336:  MOVS            R1, #0
327338:  MOVS            R2, #0
32733A:  STRB.W          R1, [R0,#0x258]
32733E:  STRB.W          R1, [R0,R2,LSL#3]
327342:  ADD.W           R3, R0, R2,LSL#3
327346:  ADDS            R2, #1
327348:  CMP             R2, #0x4B ; 'K'
32734A:  STR             R1, [R3,#4]
32734C:  BNE             loc_32733E
32734E:  BX              LR
