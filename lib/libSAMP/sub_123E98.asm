; =========================================================
; Game Engine Function: sub_123E98
; Address            : 0x123E98 - 0x123F54
; =========================================================

123E98:  PUSH            {R4-R7,LR}
123E9A:  ADD             R7, SP, #0xC
123E9C:  PUSH.W          {R8-R11}
123EA0:  SUB             SP, SP, #0x4C
123EA2:  MOV             R5, R0
123EA4:  LDR             R0, =(off_23494C - 0x123EAE)
123EA6:  MOV             R9, SP
123EA8:  MOVS            R2, #0
123EAA:  ADD             R0, PC; off_23494C
123EAC:  MOV             R3, R5
123EAE:  LDR             R0, [R0]; dword_23DF24
123EB0:  LDR.W           R10, [R0]
123EB4:  MOV             R0, R9
123EB6:  LDR             R1, =(sub_123FA0+1 - 0x123EBC)
123EB8:  ADD             R1, PC; sub_123FA0
123EBA:  BL              sub_1240B8
123EBE:  ADD.W           R11, SP, #0x68+var_50
123EC2:  MOV             R1, R9
123EC4:  MOV             R0, R11
123EC6:  BL              sub_10CD74
123ECA:  BL              sub_124200
123ECE:  LDR             R0, =(unk_263C18 - 0x123ED4)
123ED0:  ADD             R0, PC; unk_263C18
123ED2:  LDR             R6, [R0,#(dword_263C28 - 0x263C18)]
123ED4:  CBNZ            R6, loc_123F08
123ED6:  ADD.W           R8, SP, #0x68+var_50
123EDA:  ADD             R0, SP, #0x68+var_38
123EDC:  MOV             R1, R8
123EDE:  BL              sub_10CD74
123EE2:  BL              sub_124200
123EE6:  LDR             R0, =(unk_263C18 - 0x123EEC)
123EE8:  ADD             R0, PC; unk_263C18
123EEA:  ADD             R4, SP, #0x68+var_38
123EEC:  MOV             R1, R4
123EEE:  BL              sub_10CDA0
123EF2:  LDR             R0, [SP,#0x68+var_28]
123EF4:  CMP             R4, R0
123EF6:  BEQ             loc_123EFE
123EF8:  CBZ             R0, loc_123F08
123EFA:  MOVS            R1, #5
123EFC:  B               loc_123F00
123EFE:  MOVS            R1, #4
123F00:  LDR             R2, [R0]
123F02:  LDR.W           R1, [R2,R1,LSL#2]
123F06:  BLX             R1
123F08:  LDR             R0, [SP,#0x68+var_40]
123F0A:  CMP             R11, R0
123F0C:  BEQ             loc_123F14
123F0E:  CBZ             R0, loc_123F1E
123F10:  MOVS            R1, #5
123F12:  B               loc_123F16
123F14:  MOVS            R1, #4
123F16:  LDR             R2, [R0]
123F18:  LDR.W           R1, [R2,R1,LSL#2]
123F1C:  BLX             R1
123F1E:  CBNZ            R6, loc_123F34
123F20:  MOVW            R0, #0x1DB0
123F24:  LDR             R1, =(sub_1241DC+1 - 0x123F30)
123F26:  MOVT            R0, #0x67 ; 'g'
123F2A:  ADD             R0, R10
123F2C:  ADD             R1, PC; sub_1241DC
123F2E:  MOV             R2, R5
123F30:  BL              sub_164196
123F34:  LDR             R0, [SP,#0x68+var_58]
123F36:  CMP             R9, R0
123F38:  BEQ             loc_123F40
123F3A:  CBZ             R0, loc_123F4A
123F3C:  MOVS            R1, #5
123F3E:  B               loc_123F42
123F40:  MOVS            R1, #4
123F42:  LDR             R2, [R0]
123F44:  LDR.W           R1, [R2,R1,LSL#2]
123F48:  BLX             R1
123F4A:  MOV             R0, R5
123F4C:  ADD             SP, SP, #0x4C ; 'L'
123F4E:  POP.W           {R8-R11}
123F52:  POP             {R4-R7,PC}
