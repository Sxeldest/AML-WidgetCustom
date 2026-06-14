; =========================================================
; Game Engine Function: sub_14F4C0
; Address            : 0x14F4C0 - 0x14F520
; =========================================================

14F4C0:  PUSH            {R4,R5,R7,LR}
14F4C2:  ADD             R7, SP, #8
14F4C4:  SUB             SP, SP, #0x138
14F4C6:  ADD             R0, SP, #0x140+var_120
14F4C8:  MOV             R4, R1
14F4CA:  BL              sub_17D4A8
14F4CE:  STRH.W          R4, [R7,#var_A]
14F4D2:  SUB.W           R1, R7, #-var_A
14F4D6:  MOVS            R2, #0x10
14F4D8:  MOVS            R3, #1
14F4DA:  BL              sub_17D628
14F4DE:  LDR             R0, =(off_23496C - 0x14F4E6)
14F4E0:  MOVS            R3, #0
14F4E2:  ADD             R0, PC; off_23496C
14F4E4:  LDR             R0, [R0]; dword_23DEF4
14F4E6:  LDR             R0, [R0]
14F4E8:  LDR.W           R0, [R0,#0x210]
14F4EC:  LDR             R1, =(off_234E2C - 0x14F4F2)
14F4EE:  ADD             R1, PC; off_234E2C
14F4F0:  LDR             R2, [R0]
14F4F2:  LDR             R1, [R1]; unk_23C7C8
14F4F4:  LDR.W           R12, [R2,#0x6C]
14F4F8:  MOV.W           LR, #0xFFFFFFFF
14F4FC:  MOVS            R5, #9
14F4FE:  ADD             R2, SP, #0x140+var_120
14F500:  MOVW            R4, #0xFFFF
14F504:  STRD.W          R5, R3, [SP,#0x140+var_140]
14F508:  STRD.W          R3, LR, [SP,#0x140+var_138]
14F50C:  STR             R3, [SP,#0x140+var_128]
14F50E:  MOVS            R3, #1
14F510:  STRD.W          R4, R4, [SP,#0x140+var_130]
14F514:  BLX             R12
14F516:  ADD             R0, SP, #0x140+var_120
14F518:  BL              sub_17D542
14F51C:  ADD             SP, SP, #0x138
14F51E:  POP             {R4,R5,R7,PC}
