; =========================================================
; Game Engine Function: _ZN15CMatrixLinkList10AddToList2Ev
; Address            : 0x4080C8 - 0x4080FE
; =========================================================

4080C8:  MOV             R1, R0
4080CA:  ADD.W           R2, R1, #0x1A4
4080CE:  LDR.W           R0, [R1,#0x1A0]
4080D2:  CMP             R0, R2
4080D4:  ITT EQ
4080D6:  MOVEQ           R0, #0
4080D8:  BXEQ            LR
4080DA:  LDRD.W          R2, R3, [R0,#0x4C]
4080DE:  STR             R2, [R3,#0x4C]
4080E0:  LDRD.W          R2, R3, [R0,#0x4C]
4080E4:  STR             R3, [R2,#0x50]
4080E6:  LDR.W           R2, [R1,#0xF8]
4080EA:  STR             R2, [R0,#0x50]
4080EC:  LDR.W           R2, [R1,#0xF8]
4080F0:  STR             R0, [R2,#0x4C]
4080F2:  ADD.W           R2, R1, #0xA8
4080F6:  STR             R2, [R0,#0x4C]
4080F8:  STR.W           R0, [R1,#0xF8]
4080FC:  BX              LR
