; =========================================================
; Game Engine Function: _ZN7CCamera19TakeControlNoEntityERK7CVectorsi
; Address            : 0x3E17A4 - 0x3E17E6
; =========================================================

3E17A4:  CMP             R3, #2
3E17A6:  ITTT EQ
3E17A8:  LDREQ.W         R12, [R0,#0xAC]
3E17AC:  CMPEQ.W         R12, #1
3E17B0:  BXEQ            LR
3E17B2:  STR.W           R3, [R0,#0xAC]
3E17B6:  MOV.W           R3, #0xF
3E17BA:  STRH.W          R3, [R0,#0xBC0]
3E17BE:  MOV.W           R3, #0x100
3E17C2:  STRH.W          R3, [R0,#0x29]
3E17C6:  VLDR            D16, [R1]
3E17CA:  LDR             R1, [R1,#8]
3E17CC:  STR.W           R1, [R0,#0x7EC]
3E17D0:  MOV.W           R1, #1
3E17D4:  STRH.W          R2, [R0,#0xBC4]
3E17D8:  STRB.W          R1, [R0,#0x30]
3E17DC:  ADDW            R0, R0, #0x7E4
3E17E0:  VSTR            D16, [R0]
3E17E4:  BX              LR
