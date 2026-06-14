; =========================================================
; Game Engine Function: sub_148A3C
; Address            : 0x148A3C - 0x148AE4
; =========================================================

148A3C:  PUSH            {R4-R7,LR}
148A3E:  ADD             R7, SP, #0xC
148A40:  PUSH.W          {R8-R11}
148A44:  SUB             SP, SP, #0x14; float
148A46:  MOV             R6, R0
148A48:  MOVS            R0, #0
148A4A:  CMP.W           R0, R2,LSR#12
148A4E:  BNE             loc_148ADC
148A50:  LDR             R0, [R6]
148A52:  CMP.W           R0, #0x1000
148A56:  BGE             loc_148ADC
148A58:  ADD.W           R8, R6, R2,LSL#2
148A5C:  MOV             R11, R1
148A5E:  MOV             R9, R2
148A60:  MOV             R10, R8
148A62:  LDR.W           R1, [R10,#4]!
148A66:  CBZ             R1, loc_148A70
148A68:  LDR             R0, =(unk_B953C - 0x148A6E)
148A6A:  ADD             R0, PC; unk_B953C
148A6C:  BL              sub_107188
148A70:  ADD.W           R1, R9, R9,LSL#2
148A74:  MOV             R5, R11
148A76:  LDR             R0, =(off_234970 - 0x148A8A)
148A78:  MOVW            R2, #0xF004
148A7C:  ADD.W           R1, R6, R1,LSL#2
148A80:  VLD1.8          {D16-D17}, [R5]!
148A84:  ADD             R1, R2
148A86:  ADD             R0, PC; off_234970
148A88:  LDR             R3, [R5]
148A8A:  MOV.W           R12, #0
148A8E:  VST1.8          {D16-D17}, [R1]!
148A92:  MOVW            R2, #0xC004
148A96:  STR             R3, [R1]
148A98:  ADD.W           R1, R9, R9,LSL#1
148A9C:  LDR             R0, [R0]; dword_23DEF0
148A9E:  ADD             R1, R6
148AA0:  LDR.W           R3, [R11,#8]; int
148AA4:  STRB.W          R12, [R1,R2]
148AA8:  LDR             R0, [R0]; int
148AAA:  LDR.W           R1, [R11]; int
148AAE:  LDR.W           R2, [R11,#4]; int
148AB2:  LDR.W           R4, [R11,#0xC]
148AB6:  LDR             R5, [R5]
148AB8:  STR.W           R12, [SP,#0x30+var_20]
148ABC:  ADD.W           R12, SP, #0x30+var_20
148AC0:  STMEA.W         SP, {R4,R5,R12}
148AC4:  BL              sub_F9BB4
148AC8:  LDR             R1, [SP,#0x30+var_20]
148ACA:  MOVW            R2, #0x4004
148ACE:  STR.W           R1, [R8,R2]
148AD2:  STR.W           R0, [R10]
148AD6:  LDR             R0, [R6]
148AD8:  ADDS            R0, #1
148ADA:  STR             R0, [R6]
148ADC:  ADD             SP, SP, #0x14
148ADE:  POP.W           {R8-R11}
148AE2:  POP             {R4-R7,PC}
