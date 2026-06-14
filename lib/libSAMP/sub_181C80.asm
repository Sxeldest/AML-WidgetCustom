; =========================================================
; Game Engine Function: sub_181C80
; Address            : 0x181C80 - 0x181D06
; =========================================================

181C80:  PUSH            {R4-R7,LR}
181C82:  ADD             R7, SP, #0xC
181C84:  PUSH.W          {R8-R11}
181C88:  SUB             SP, SP, #0xC
181C8A:  MOV             R8, R0
181C8C:  LDRH            R0, [R1,#8]
181C8E:  MOVW            R10, #0xFFFF
181C92:  STRD.W          R2, R3, [SP,#0x28+var_24]
181C96:  CBZ             R0, loc_181CE2
181C98:  ADD.W           R9, SP, #0x28+var_24
181C9C:  MOV             R5, R1
181C9E:  MOV.W           R11, #0xFFFFFFFF
181CA2:  MOVS            R4, #0
181CA4:  MOVS            R6, #0
181CA6:  LDR.W           R0, [R5,#0x340]
181CAA:  MOV             R1, R9
181CAC:  ADD             R0, R4
181CAE:  ADDS            R0, #4
181CB0:  BL              sub_17E580
181CB4:  CBNZ            R0, loc_181CC2
181CB6:  LDR             R1, =(unk_BE944 - 0x181CBE)
181CB8:  MOV             R0, R9
181CBA:  ADD             R1, PC; unk_BE944
181CBC:  BL              sub_17E580
181CC0:  CBZ             R0, loc_181CD4
181CC2:  LDR.W           R0, [R5,#0x340]
181CC6:  LDRB            R1, [R0,R4]
181CC8:  CBNZ            R1, loc_181CF0
181CCA:  ADD             R0, R4
181CCC:  LDRH.W          R10, [R0,#0x10]
181CD0:  LDR.W           R11, [R0,#0xC]
181CD4:  LDRH            R0, [R5,#8]
181CD6:  ADDS            R6, #1
181CD8:  ADD.W           R4, R4, #0x840
181CDC:  CMP             R6, R0
181CDE:  BCC             loc_181CA6
181CE0:  B               loc_181CE6
181CE2:  MOV.W           R11, #0xFFFFFFFF
181CE6:  UXTH.W          R0, R10
181CEA:  STR.W           R11, [R8]
181CEE:  B               loc_181CFA
181CF0:  ADD             R0, R4
181CF2:  LDRD.W          R1, R0, [R0,#0xC]
181CF6:  STR.W           R1, [R8]
181CFA:  STR.W           R0, [R8,#4]
181CFE:  ADD             SP, SP, #0xC
181D00:  POP.W           {R8-R11}
181D04:  POP             {R4-R7,PC}
