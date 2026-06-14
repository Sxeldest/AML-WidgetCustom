; =========================================================
; Game Engine Function: sub_143EC8
; Address            : 0x143EC8 - 0x143F6C
; =========================================================

143EC8:  PUSH            {R4-R7,LR}
143ECA:  ADD             R7, SP, #0xC
143ECC:  PUSH.W          {R8,R9,R11}
143ED0:  SUB.W           SP, SP, #0x1000
143ED4:  SUB             SP, SP, #0x18
143ED6:  MOV             R4, R1
143ED8:  ADD.W           R1, SP, #0x1030+var_101D; int
143EDC:  MOV.W           R9, #0
143EE0:  MOV             R0, R4; int
143EE2:  MOVS            R2, #8
143EE4:  MOVS            R3, #1
143EE6:  STR.W           R9, [R7,#var_1C]
143EEA:  STRB.W          R9, [SP,#0x1030+var_101D]
143EEE:  STRB.W          R9, [SP,#0x1030+var_101E]
143EF2:  BL              sub_17D786
143EF6:  ADD.W           R1, SP, #0x1030+var_101E; int
143EFA:  MOV             R0, R4; int
143EFC:  MOVS            R2, #8
143EFE:  MOVS            R3, #1
143F00:  BL              sub_17D786
143F04:  SUB.W           R1, R7, #-var_1C; int
143F08:  MOV             R0, R4; int
143F0A:  MOVS            R2, #0x20 ; ' '
143F0C:  MOVS            R3, #1
143F0E:  BL              sub_17D786
143F12:  ADD.W           R8, SP, #0x1030+dest
143F16:  LDR.W           R2, [R7,#var_1C]
143F1A:  MOV             R0, R4; int
143F1C:  MOV             R1, R8; dest
143F1E:  BL              sub_17D744
143F22:  LDR             R0, =(off_2349A8 - 0x143F2C)
143F24:  LDR.W           R1, [R7,#var_1C]
143F28:  ADD             R0, PC; off_2349A8
143F2A:  LDRB.W          R6, [SP,#0x1030+var_101E]
143F2E:  LDRB.W          R5, [SP,#0x1030+var_101D]
143F32:  LDR             R0, [R0]; dword_381BF4
143F34:  STRB.W          R9, [R8,R1]
143F38:  ADD.W           R9, SP, #0x1030+var_102C
143F3C:  MOV             R1, R8; s
143F3E:  LDR             R4, [R0]
143F40:  MOV             R0, R9; int
143F42:  BL              sub_DC6DC
143F46:  MOV             R0, R4
143F48:  MOV             R1, R5
143F4A:  MOV             R2, R6
143F4C:  MOV             R3, R9
143F4E:  BL              sub_17CAF8
143F52:  LDRB.W          R0, [SP,#0x1030+var_102C]
143F56:  LSLS            R0, R0, #0x1F
143F58:  ITT NE
143F5A:  LDRNE           R0, [SP,#0x1030+var_1024]; void *
143F5C:  BLXNE           j__ZdlPv; operator delete(void *)
143F60:  ADD.W           SP, SP, #0x1000
143F64:  ADD             SP, SP, #0x18
143F66:  POP.W           {R8,R9,R11}
143F6A:  POP             {R4-R7,PC}
