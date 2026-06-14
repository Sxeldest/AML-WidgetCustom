; =========================================================
; Game Engine Function: _ZN11CMenuSystem15GetMenuPositionEhPfS0_
; Address            : 0x43D64C - 0x43D66A
; =========================================================

43D64C:  LDR             R3, =(MenuNumber_ptr - 0x43D652)
43D64E:  ADD             R3, PC; MenuNumber_ptr
43D650:  LDR.W           R12, [R3]; MenuNumber
43D654:  LDR.W           R3, [R12,R0,LSL#2]
43D658:  LDR.W           R3, [R3,#0x40C]
43D65C:  STR             R3, [R1]
43D65E:  LDR.W           R0, [R12,R0,LSL#2]
43D662:  LDR.W           R0, [R0,#0x410]
43D666:  STR             R0, [R2]
43D668:  BX              LR
