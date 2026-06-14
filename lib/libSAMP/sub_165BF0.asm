; =========================================================
; Game Engine Function: sub_165BF0
; Address            : 0x165BF0 - 0x165CC6
; =========================================================

165BF0:  PUSH            {R4-R7,LR}
165BF2:  ADD             R7, SP, #0xC
165BF4:  PUSH.W          {R8-R11}
165BF8:  SUB             SP, SP, #0x34; int
165BFA:  MOV             R5, R3
165BFC:  LDR             R3, =(dword_381B58 - 0x165C08)
165BFE:  STR             R0, [SP,#0x50+var_38]
165C00:  MOVW            R0, #0x19AC
165C04:  ADD             R3, PC; dword_381B58
165C06:  STR             R1, [SP,#0x50+var_34]
165C08:  MOV             R4, R2
165C0A:  LDR             R2, [R7,#arg_0]
165C0C:  LDR             R6, [R3]
165C0E:  LDR.W           R10, [R6,R0]
165C12:  CBZ             R2, loc_165C3E
165C14:  CMP             R5, #0
165C16:  IT EQ
165C18:  MOVEQ.W         R5, #0xFFFFFFFF
165C1C:  CMP             R5, R4
165C1E:  BLS             loc_165CBE
165C20:  SUBS            R0, R5, R4
165C22:  MOV             R1, R4
165C24:  LDRB            R2, [R1]
165C26:  CMP             R2, #0x23 ; '#'
165C28:  BEQ             loc_165C2E
165C2A:  CBNZ            R2, loc_165C34
165C2C:  B               loc_165C4E
165C2E:  LDRB            R2, [R1,#1]
165C30:  CMP             R2, #0x23 ; '#'
165C32:  BEQ             loc_165C4E
165C34:  SUBS            R0, #1
165C36:  ADD.W           R1, R1, #1
165C3A:  BNE             loc_165C24
165C3C:  B               loc_165C50
165C3E:  CBNZ            R5, loc_165C50
165C40:  MOV             R0, R4; s
165C42:  MOV             R5, R3
165C44:  BLX             strlen
165C48:  MOV             R3, R5
165C4A:  ADDS            R5, R4, R0
165C4C:  B               loc_165C50
165C4E:  MOV             R5, R1
165C50:  CMP             R5, R4
165C52:  BEQ             loc_165CBE
165C54:  MOVW            R0, #0x18C4
165C58:  LDR             R2, [R3]
165C5A:  ADD             R0, R6
165C5C:  MOVW            R1, #0x2D20
165C60:  ADD.W           R11, R6, R1
165C64:  MOVW            R1, #0x1518
165C68:  LDRD.W          R9, R8, [R0]
165C6C:  ADDS            R0, R2, R1
165C6E:  ADD.W           R1, R0, #0xAC
165C72:  LDR.W           R6, [R10,#0x27C]
165C76:  VLDR            S0, [R0]
165C7A:  ADD             R0, SP, #0x50+var_30
165C7C:  VLD1.32         {D16-D17}, [R1]
165C80:  MOVS            R1, #0xC
165C82:  MOV             R2, R0
165C84:  VST1.64         {D16-D17}, [R2],R1
165C88:  VLDR            S2, [R2]
165C8C:  VMUL.F32        S0, S0, S2
165C90:  VSTR            S0, [R2]
165C94:  BL              sub_165778
165C98:  MOVS            R1, #0
165C9A:  ADD             R3, SP, #0x50+var_38; int
165C9C:  STMEA.W         SP, {R0,R4,R5}
165CA0:  MOV             R0, R6; int
165CA2:  MOV             R2, R8; int
165CA4:  STRD.W          R1, R1, [SP,#0x50+var_44]; float
165CA8:  MOV             R1, R9; int
165CAA:  BL              sub_1745E0
165CAE:  LDRB.W          R0, [R11]
165CB2:  CBZ             R0, loc_165CBE
165CB4:  ADD             R0, SP, #0x50+var_38; int
165CB6:  MOV             R1, R4; s
165CB8:  MOV             R2, R5
165CBA:  BL              sub_165CCC
165CBE:  ADD             SP, SP, #0x34 ; '4'
165CC0:  POP.W           {R8-R11}
165CC4:  POP             {R4-R7,PC}
