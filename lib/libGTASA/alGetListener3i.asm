; =========================================================
; Game Engine Function: alGetListener3i
; Address            : 0x255C9C - 0x255DD8
; =========================================================

255C9C:  PUSH            {R4-R7,LR}
255C9E:  ADD             R7, SP, #0xC
255CA0:  PUSH.W          {R8,R9,R11}
255CA4:  MOV             R8, R3
255CA6:  MOV             R9, R2
255CA8:  MOV             R5, R1
255CAA:  MOV             R6, R0
255CAC:  BLX             j_GetContextRef
255CB0:  MOV             R4, R0
255CB2:  CBZ             R4, loc_255D0A
255CB4:  CMP             R5, #0
255CB6:  IT NE
255CB8:  CMPNE.W         R9, #0
255CBC:  BEQ             loc_255D10
255CBE:  CMP.W           R8, #0
255CC2:  BEQ             loc_255D10
255CC4:  MOVW            R0, #0x1006
255CC8:  CMP             R6, R0
255CCA:  BEQ             loc_255D48
255CCC:  MOVW            R0, #0x1004
255CD0:  CMP             R6, R0
255CD2:  BNE             loc_255D90
255CD4:  LDR.W           R0, [R4,#0x88]
255CD8:  MOV             R6, #0x161AC
255CE0:  LDR             R1, [R0,R6]
255CE2:  LDR             R1, [R1,#0x2C]
255CE4:  BLX             R1
255CE6:  LDR             R0, [R4,#4]
255CE8:  VLDR            S0, [R0]
255CEC:  VCVT.S32.F32    S0, S0
255CF0:  VSTR            S0, [R5]
255CF4:  LDR             R0, [R4,#4]
255CF6:  VLDR            S0, [R0,#4]
255CFA:  VCVT.S32.F32    S0, S0
255CFE:  VSTR            S0, [R9]
255D02:  LDR             R0, [R4,#4]
255D04:  VLDR            S0, [R0,#8]
255D08:  B               loc_255D7C
255D0A:  POP.W           {R8,R9,R11}
255D0E:  POP             {R4-R7,PC}
255D10:  LDR             R0, =(TrapALError_ptr - 0x255D16)
255D12:  ADD             R0, PC; TrapALError_ptr
255D14:  LDR             R0, [R0]; TrapALError
255D16:  LDRB            R0, [R0]
255D18:  CMP             R0, #0
255D1A:  ITT NE
255D1C:  MOVNE           R0, #5; sig
255D1E:  BLXNE           raise
255D22:  LDREX.W         R0, [R4,#0x50]
255D26:  CMP             R0, #0
255D28:  BNE             loc_255DC2
255D2A:  ADD.W           R0, R4, #0x50 ; 'P'
255D2E:  MOVW            R1, #0xA003
255D32:  DMB.W           ISH
255D36:  STREX.W         R2, R1, [R0]
255D3A:  CMP             R2, #0
255D3C:  BEQ             loc_255DC6
255D3E:  LDREX.W         R2, [R0]
255D42:  CMP             R2, #0
255D44:  BEQ             loc_255D36
255D46:  B               loc_255DC2
255D48:  LDR.W           R0, [R4,#0x88]
255D4C:  MOV             R6, #0x161AC
255D54:  LDR             R1, [R0,R6]
255D56:  LDR             R1, [R1,#0x2C]
255D58:  BLX             R1
255D5A:  LDR             R0, [R4,#4]
255D5C:  VLDR            S0, [R0,#0xC]
255D60:  VCVT.S32.F32    S0, S0
255D64:  VSTR            S0, [R5]
255D68:  LDR             R0, [R4,#4]
255D6A:  VLDR            S0, [R0,#0x10]
255D6E:  VCVT.S32.F32    S0, S0
255D72:  VSTR            S0, [R9]
255D76:  LDR             R0, [R4,#4]
255D78:  VLDR            S0, [R0,#0x14]
255D7C:  VCVT.S32.F32    S0, S0
255D80:  VSTR            S0, [R8]
255D84:  LDR.W           R0, [R4,#0x88]
255D88:  LDR             R1, [R0,R6]
255D8A:  LDR             R1, [R1,#0x30]
255D8C:  BLX             R1
255D8E:  B               loc_255DCA
255D90:  LDR             R0, =(TrapALError_ptr - 0x255D96)
255D92:  ADD             R0, PC; TrapALError_ptr
255D94:  LDR             R0, [R0]; TrapALError
255D96:  LDRB            R0, [R0]
255D98:  CMP             R0, #0
255D9A:  ITT NE
255D9C:  MOVNE           R0, #5; sig
255D9E:  BLXNE           raise
255DA2:  LDREX.W         R0, [R4,#0x50]
255DA6:  CBNZ            R0, loc_255DC2
255DA8:  ADD.W           R0, R4, #0x50 ; 'P'
255DAC:  MOVW            R1, #0xA002
255DB0:  DMB.W           ISH
255DB4:  STREX.W         R2, R1, [R0]
255DB8:  CBZ             R2, loc_255DC6
255DBA:  LDREX.W         R2, [R0]
255DBE:  CMP             R2, #0
255DC0:  BEQ             loc_255DB4
255DC2:  CLREX.W
255DC6:  DMB.W           ISH
255DCA:  MOV             R0, R4
255DCC:  POP.W           {R8,R9,R11}
255DD0:  POP.W           {R4-R7,LR}
255DD4:  B.W             ALCcontext_DecRef
