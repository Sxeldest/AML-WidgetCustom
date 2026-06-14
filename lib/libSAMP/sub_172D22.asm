; =========================================================
; Game Engine Function: sub_172D22
; Address            : 0x172D22 - 0x172D44
; =========================================================

172D22:  PUSH            {R7,LR}
172D24:  MOV             R7, SP
172D26:  SUB             SP, SP, #8
172D28:  LDR.W           R12, [R0,#0x28]
172D2C:  MOV.W           LR, #0
172D30:  ADD.W           R12, R12, #0x14
172D34:  LDM.W           R12, {R1-R3,R12}; int
172D38:  STRD.W          R12, LR, [SP,#0x10+var_10]; float
172D3C:  BL              sub_172C12
172D40:  ADD             SP, SP, #8
172D42:  POP             {R7,PC}
