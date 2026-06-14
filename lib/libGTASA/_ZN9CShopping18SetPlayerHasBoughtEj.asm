; =========================================================
; Game Engine Function: _ZN9CShopping18SetPlayerHasBoughtEj
; Address            : 0x361474 - 0x3614A0
; =========================================================

361474:  LDR             R2, =(_ZN9CShopping7ms_keysE_ptr - 0x361480)
361476:  MOVS            R1, #0
361478:  MOVW            R12, #0x22F
36147C:  ADD             R2, PC; _ZN9CShopping7ms_keysE_ptr
36147E:  LDR             R2, [R2]; CShopping::ms_keys ...
361480:  LDR.W           R3, [R2,R1,LSL#2]
361484:  CMP             R3, R0
361486:  BEQ             loc_361494
361488:  ADDS            R3, R1, #1
36148A:  CMP             R1, R12
36148C:  MOV             R1, R3
36148E:  BLT             loc_361480
361490:  MOV.W           R1, #0xFFFFFFFF
361494:  LDR             R0, =(_ZN9CShopping13ms_bHasBoughtE_ptr - 0x36149C)
361496:  MOVS            R2, #1
361498:  ADD             R0, PC; _ZN9CShopping13ms_bHasBoughtE_ptr
36149A:  LDR             R0, [R0]; CShopping::ms_bHasBought ...
36149C:  STRB            R2, [R0,R1]
36149E:  BX              LR
