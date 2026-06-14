; =========================================================
; Game Engine Function: sub_F1898
; Address            : 0xF1898 - 0xF18C2
; =========================================================

F1898:  SUB             SP, SP, #4
F189A:  PUSH            {R4,R6,R7,LR}
F189C:  ADD             R7, SP, #8
F189E:  SUB             SP, SP, #0xC
F18A0:  LDR             R4, =(aSD - 0xF18AE); "%s (%d)" ...
F18A2:  ADD.W           R1, R7, #8
F18A6:  STR             R3, [R7,#var_s8]
F18A8:  MOVS            R2, #0x40 ; '@'
F18AA:  ADD             R4, PC; "%s (%d)"
F18AC:  STR             R1, [SP,#0x14+var_C]
F18AE:  STR             R1, [SP,#0x14+var_14]
F18B0:  MOVS            R1, #0
F18B2:  MOV             R3, R4
F18B4:  BLX             __vsprintf_chk
F18B8:  ADD             SP, SP, #0xC
F18BA:  POP.W           {R4,R6,R7,LR}
F18BE:  ADD             SP, SP, #4
F18C0:  BX              LR
