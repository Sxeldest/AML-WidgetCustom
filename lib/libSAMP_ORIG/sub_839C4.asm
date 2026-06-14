; =========================================================
; Game Engine Function: sub_839C4
; Address            : 0x839C4 - 0x83A4C
; =========================================================

839C4:  PUSH            {R4-R7,LR}
839C6:  ADD             R7, SP, #0xC
839C8:  PUSH.W          {R8,R9,R11}
839CC:  MOV             R9, R1
839CE:  MOV             R4, R0
839D0:  BL              sub_86B00
839D4:  LDRD.W          R5, R6, [R4,#0x10]
839D8:  SUBS            R0, R0, R5
839DA:  SBCS.W          R0, R1, R6
839DE:  BGE             loc_83A32
839E0:  BL              sub_86B00
839E4:  SUBS.W          R8, R5, R0
839E8:  SBC.W           R1, R6, R1
839EC:  MOV             R0, R8
839EE:  BLX             sub_108B88
839F2:  VLDR            S0, [R4,#8]
839F6:  VMOV            S4, R0
839FA:  VLDR            S2, [R4,#0x18]
839FE:  LDR             R0, =(off_114D34 - 0x83A08)
83A00:  VMLS.F32        S2, S4, S0
83A04:  ADD             R0, PC; off_114D34
83A06:  LDR             R0, [R0]; off_1ABF40
83A08:  LDR             R5, [R0]
83A0A:  MOV             R0, R9
83A0C:  VMOV            R6, S2
83A10:  BL              sub_7DB44
83A14:  LDR             R1, [R4,#4]
83A16:  MOV             R2, R6
83A18:  BLX             R5
83A1A:  LDR             R0, =(off_114D40 - 0x83A20)
83A1C:  ADD             R0, PC; off_114D40
83A1E:  LDR             R0, [R0]; off_1ABF58
83A20:  LDR             R5, [R0]
83A22:  MOV             R0, R9
83A24:  BL              sub_7DB44
83A28:  LDR             R1, [R4,#4]
83A2A:  LDR             R2, [R4,#0x18]
83A2C:  MOV             R3, R8
83A2E:  BLX             R5
83A30:  B               loc_83A46
83A32:  LDR             R0, =(off_114D34 - 0x83A38)
83A34:  ADD             R0, PC; off_114D34
83A36:  LDR             R0, [R0]; off_1ABF40
83A38:  LDR             R5, [R0]
83A3A:  MOV             R0, R9
83A3C:  BL              sub_7DB44
83A40:  LDR             R1, [R4,#4]
83A42:  LDR             R2, [R4,#0x18]
83A44:  BLX             R5
83A46:  POP.W           {R8,R9,R11}
83A4A:  POP             {R4-R7,PC}
