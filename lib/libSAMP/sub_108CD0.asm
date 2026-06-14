; =========================================================
; Game Engine Function: sub_108CD0
; Address            : 0x108CD0 - 0x108D2C
; =========================================================

108CD0:  PUSH            {R4-R7,LR}
108CD2:  ADD             R7, SP, #0xC
108CD4:  PUSH.W          {R8,R9,R11}
108CD8:  SUB             SP, SP, #0x20
108CDA:  STR             R2, [SP,#0x38+var_1C]
108CDC:  CBZ             R0, loc_108D24
108CDE:  MOV             R5, R0
108CE0:  LDR             R0, =(off_234A8C - 0x108CEA)
108CE2:  MOV             R8, R1
108CE4:  MOVS            R1, #2
108CE6:  ADD             R0, PC; off_234A8C
108CE8:  MOV             R6, R3
108CEA:  LDR             R0, [R0]; off_263758
108CEC:  LDR             R2, [R0]
108CEE:  MOVS            R0, #9
108CF0:  BLX             R2
108CF2:  LDR             R0, =(off_23494C - 0x108D00)
108CF4:  ADD.W           LR, R6, #8
108CF8:  LDRD.W          R3, R1, [R6]
108CFC:  ADD             R0, PC; off_23494C
108CFE:  LDM.W           LR, {R2,R4,R12,LR}
108D02:  LDR             R0, [R0]; dword_23DF24
108D04:  LDRD.W          R9, R6, [R6,#0x18]
108D08:  STMEA.W         SP, {R1,R2,R4,R12,LR}
108D0C:  MOV             R1, #0x5C95C1
108D14:  LDR             R0, [R0]
108D16:  ADD             R2, SP, #0x38+var_1C
108D18:  STRD.W          R9, R6, [SP,#0x38+var_24]
108D1C:  ADDS            R6, R0, R1
108D1E:  MOV             R0, R5
108D20:  MOV             R1, R8
108D22:  BLX             R6
108D24:  ADD             SP, SP, #0x20 ; ' '
108D26:  POP.W           {R8,R9,R11}
108D2A:  POP             {R4-R7,PC}
