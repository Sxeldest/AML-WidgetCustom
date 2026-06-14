; =========================================================
; Game Engine Function: alGetListeneriv
; Address            : 0x255DE0 - 0x255F14
; =========================================================

255DE0:  PUSH            {R4-R7,LR}
255DE2:  ADD             R7, SP, #0xC
255DE4:  PUSH.W          {R11}
255DE8:  MOV             R6, R0
255DEA:  ORR.W           R0, R6, #2
255DEE:  MOV             R5, R1
255DF0:  MOVW            R1, #0x1006
255DF4:  CMP             R0, R1
255DF6:  BNE             loc_255E0C
255DF8:  ADDS            R2, R5, #4
255DFA:  ADD.W           R3, R5, #8
255DFE:  MOV             R0, R6
255E00:  MOV             R1, R5
255E02:  POP.W           {R11}
255E06:  POP.W           {R4-R7,LR}
255E0A:  B               alGetListener3i
255E0C:  BLX             j_GetContextRef
255E10:  MOV             R4, R0
255E12:  CBZ             R4, loc_255E92
255E14:  CMP             R5, #0
255E16:  BEQ             loc_255E98
255E18:  MOVW            R0, #0x100F
255E1C:  CMP             R6, R0
255E1E:  BNE             loc_255ECC
255E20:  LDR.W           R0, [R4,#0x88]
255E24:  MOV             R6, #0x161AC
255E2C:  LDR             R1, [R0,R6]
255E2E:  LDR             R1, [R1,#0x2C]
255E30:  BLX             R1
255E32:  LDR             R0, [R4,#4]
255E34:  VLDR            S0, [R0,#0x18]
255E38:  VCVT.S32.F32    S0, S0
255E3C:  VSTR            S0, [R5]
255E40:  LDR             R0, [R4,#4]
255E42:  VLDR            S0, [R0,#0x1C]
255E46:  VCVT.S32.F32    S0, S0
255E4A:  VSTR            S0, [R5,#4]
255E4E:  LDR             R0, [R4,#4]
255E50:  VLDR            S0, [R0,#0x20]
255E54:  VCVT.S32.F32    S0, S0
255E58:  VSTR            S0, [R5,#8]
255E5C:  LDR             R0, [R4,#4]
255E5E:  VLDR            S0, [R0,#0x24]
255E62:  VCVT.S32.F32    S0, S0
255E66:  VSTR            S0, [R5,#0xC]
255E6A:  LDR             R0, [R4,#4]
255E6C:  VLDR            S0, [R0,#0x28]
255E70:  VCVT.S32.F32    S0, S0
255E74:  VSTR            S0, [R5,#0x10]
255E78:  LDR             R0, [R4,#4]
255E7A:  VLDR            S0, [R0,#0x2C]
255E7E:  VCVT.S32.F32    S0, S0
255E82:  VSTR            S0, [R5,#0x14]
255E86:  LDR.W           R0, [R4,#0x88]
255E8A:  LDR             R1, [R0,R6]
255E8C:  LDR             R1, [R1,#0x30]
255E8E:  BLX             R1
255E90:  B               loc_255F06
255E92:  POP.W           {R11}
255E96:  POP             {R4-R7,PC}
255E98:  LDR             R0, =(TrapALError_ptr - 0x255E9E)
255E9A:  ADD             R0, PC; TrapALError_ptr
255E9C:  LDR             R0, [R0]; TrapALError
255E9E:  LDRB            R0, [R0]
255EA0:  CMP             R0, #0
255EA2:  ITT NE
255EA4:  MOVNE           R0, #5; sig
255EA6:  BLXNE           raise
255EAA:  LDREX.W         R0, [R4,#0x50]
255EAE:  CBNZ            R0, loc_255EFE
255EB0:  ADD.W           R0, R4, #0x50 ; 'P'
255EB4:  MOVW            R1, #0xA003
255EB8:  DMB.W           ISH
255EBC:  STREX.W         R2, R1, [R0]
255EC0:  CBZ             R2, loc_255F02
255EC2:  LDREX.W         R2, [R0]
255EC6:  CMP             R2, #0
255EC8:  BEQ             loc_255EBC
255ECA:  B               loc_255EFE
255ECC:  LDR             R0, =(TrapALError_ptr - 0x255ED2)
255ECE:  ADD             R0, PC; TrapALError_ptr
255ED0:  LDR             R0, [R0]; TrapALError
255ED2:  LDRB            R0, [R0]
255ED4:  CMP             R0, #0
255ED6:  ITT NE
255ED8:  MOVNE           R0, #5; sig
255EDA:  BLXNE           raise
255EDE:  LDREX.W         R0, [R4,#0x50]
255EE2:  CBNZ            R0, loc_255EFE
255EE4:  ADD.W           R0, R4, #0x50 ; 'P'
255EE8:  MOVW            R1, #0xA002
255EEC:  DMB.W           ISH
255EF0:  STREX.W         R2, R1, [R0]
255EF4:  CBZ             R2, loc_255F02
255EF6:  LDREX.W         R2, [R0]
255EFA:  CMP             R2, #0
255EFC:  BEQ             loc_255EF0
255EFE:  CLREX.W
255F02:  DMB.W           ISH
255F06:  MOV             R0, R4
255F08:  POP.W           {R11}
255F0C:  POP.W           {R4-R7,LR}
255F10:  B.W             ALCcontext_DecRef
