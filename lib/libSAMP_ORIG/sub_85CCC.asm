; =========================================================
; Game Engine Function: sub_85CCC
; Address            : 0x85CCC - 0x85D12
; =========================================================

85CCC:  PUSH            {R4-R7,LR}
85CCE:  ADD             R7, SP, #0xC
85CD0:  PUSH.W          {R8,R9,R11}
85CD4:  VLD1.8          {D16}, [R1]
85CD8:  ADD.W           R8, R0, #0x5C ; '\'
85CDC:  LDR             R1, [R1,#8]
85CDE:  STR             R1, [R0,#0x64]
85CE0:  VST1.8          {D16}, [R8]
85CE4:  BL              sub_85328
85CE8:  LDRD.W          R5, R9, [R0]
85CEC:  CMP             R5, R9
85CEE:  BEQ             loc_85D0C
85CF0:  LDR             R0, =(off_114D50 - 0x85CF6)
85CF2:  ADD             R0, PC; off_114D50
85CF4:  LDR             R4, [R0]; off_1ABF60
85CF6:  LDR             R0, [R5]
85CF8:  LDR             R6, [R4]
85CFA:  BL              sub_7DB44
85CFE:  MOV             R1, R8
85D00:  MOVS            R2, #0
85D02:  MOVS            R3, #0
85D04:  BLX             R6
85D06:  ADDS            R5, #4
85D08:  CMP             R5, R9
85D0A:  BNE             loc_85CF6
85D0C:  POP.W           {R8,R9,R11}
85D10:  POP             {R4-R7,PC}
