; =========================================================
; Game Engine Function: sub_E3D2A
; Address            : 0xE3D2A - 0xE3D4C
; =========================================================

E3D2A:  PUSH            {R4,R6,R7,LR}
E3D2C:  ADD             R7, SP, #8
E3D2E:  SUB             SP, SP, #8
E3D30:  LDR.W           R12, [R1]
E3D34:  MOVS            R4, #0
E3D36:  LDRD.W          R2, R3, [R7,#arg_0]
E3D3A:  LDR.W           LR, [R7,#arg_8]
E3D3E:  LDR.W           R12, [R12,#0x10]
E3D42:  STRD.W          R4, LR, [SP,#0x10+var_10]
E3D46:  BLX             R12
E3D48:  ADD             SP, SP, #8
E3D4A:  POP             {R4,R6,R7,PC}
