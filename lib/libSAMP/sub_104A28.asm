; =========================================================
; Game Engine Function: sub_104A28
; Address            : 0x104A28 - 0x104A76
; =========================================================

104A28:  PUSH            {R4,R5,R7,LR}
104A2A:  ADD             R7, SP, #8
104A2C:  VPUSH           {D8}
104A30:  MOV             R4, R0
104A32:  LDR             R0, [R0,#0x5C]
104A34:  CBZ             R0, loc_104A70
104A36:  LDR             R0, [R4,#8]
104A38:  MOV             R5, R1
104A3A:  BL              sub_1082F4
104A3E:  CBZ             R0, loc_104A70
104A40:  MOV             R0, R5
104A42:  VMOV            S16, R5
104A46:  BL              sub_108728
104A4A:  LDR             R1, [R4,#0x5C]
104A4C:  STR.W           R0, [R1,#0x55C]
104A50:  MOV             R0, R5
104A52:  BL              sub_108728
104A56:  VCVT.F64.F32    D16, S16
104A5A:  LDR             R1, [R4,#8]
104A5C:  LDR             R5, [R4,#0x5C]
104A5E:  LDR             R4, =(unk_B374E - 0x104A64)
104A60:  ADD             R4, PC; unk_B374E
104A62:  STR.W           R0, [R5,#0x560]
104A66:  VMOV            R2, R3, D16
104A6A:  MOV             R0, R4
104A6C:  BL              sub_107188
104A70:  VPOP            {D8}
104A74:  POP             {R4,R5,R7,PC}
