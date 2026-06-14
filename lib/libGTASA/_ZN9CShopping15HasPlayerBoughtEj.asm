; =========================================================
; Game Engine Function: _ZN9CShopping15HasPlayerBoughtEj
; Address            : 0x361440 - 0x36146A
; =========================================================

361440:  LDR             R2, =(_ZN9CShopping7ms_keysE_ptr - 0x36144C)
361442:  MOVS            R1, #0
361444:  MOVW            R12, #0x22F
361448:  ADD             R2, PC; _ZN9CShopping7ms_keysE_ptr
36144A:  LDR             R2, [R2]; CShopping::ms_keys ...
36144C:  LDR.W           R3, [R2,R1,LSL#2]
361450:  CMP             R3, R0
361452:  BEQ             loc_361460
361454:  ADDS            R3, R1, #1
361456:  CMP             R1, R12
361458:  MOV             R1, R3
36145A:  BLT             loc_36144C
36145C:  MOV.W           R1, #0xFFFFFFFF
361460:  LDR             R0, =(_ZN9CShopping13ms_bHasBoughtE_ptr - 0x361466)
361462:  ADD             R0, PC; _ZN9CShopping13ms_bHasBoughtE_ptr
361464:  LDR             R0, [R0]; CShopping::ms_bHasBought ...
361466:  LDRB            R0, [R0,R1]
361468:  BX              LR
