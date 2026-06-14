; =========================================================
; Game Engine Function: sub_21F6D4
; Address            : 0x21F6D4 - 0x21F704
; =========================================================

21F6D4:  LDRSH.W         R2, [R1,#4]
21F6D8:  LDRSH.W         R3, [R0,#4]
21F6DC:  CMP             R3, R2
21F6DE:  ITT GT
21F6E0:  MOVGT           R0, #1
21F6E2:  BXGT            LR
21F6E4:  BGE             loc_21F6EC
21F6E6:  MOV.W           R0, #0xFFFFFFFF
21F6EA:  BX              LR
21F6EC:  LDRH            R1, [R1,#6]
21F6EE:  LDRH            R0, [R0,#(byte_7 - 1)]
21F6F0:  CMP             R0, R1
21F6F2:  ITT HI
21F6F4:  MOVHI           R0, #1
21F6F6:  BXHI            LR
21F6F8:  MOV.W           R0, #0
21F6FC:  IT CC
21F6FE:  MOVCC.W         R0, #0xFFFFFFFF
21F702:  BX              LR
