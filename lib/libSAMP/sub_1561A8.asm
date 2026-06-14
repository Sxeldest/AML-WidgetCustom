; =========================================================
; Game Engine Function: sub_1561A8
; Address            : 0x1561A8 - 0x1561D2
; =========================================================

1561A8:  SUB             SP, SP, #4
1561AA:  PUSH            {R7,LR}
1561AC:  MOV             R7, SP
1561AE:  SUB             SP, SP, #0xC
1561B0:  ADD.W           R1, R7, #8
1561B4:  MOV             R12, R2
1561B6:  STR             R3, [R7,#8]
1561B8:  MOVW            R2, #0x7FF
1561BC:  STR             R1, [SP,#0x18+var_10]
1561BE:  MOV             R3, R12
1561C0:  STR             R1, [SP,#0x18+var_18]
1561C2:  MOVS            R1, #0
1561C4:  BLX             __vsprintf_chk
1561C8:  ADD             SP, SP, #0xC
1561CA:  POP.W           {R7,LR}
1561CE:  ADD             SP, SP, #4
1561D0:  BX              LR
