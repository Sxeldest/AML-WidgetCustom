; =========================================================
; Game Engine Function: sub_264CA0
; Address            : 0x264CA0 - 0x264D96
; =========================================================

264CA0:  PUSH            {R4,R6,R7,LR}
264CA2:  ADD             R7, SP, #8
264CA4:  VLDR            S0, [R3]
264CA8:  MOV             R4, R1
264CAA:  CMP             R2, #2
264CAC:  BEQ             loc_264D08
264CAE:  CMP             R2, #1
264CB0:  BNE             loc_264D5A
264CB2:  VCMPE.F32       S0, #0.0
264CB6:  VMRS            APSR_nzcv, FPSCR
264CBA:  BLT             loc_264CD0
264CBC:  VMOV.F32        S2, #1.0
264CC0:  VCMPE.F32       S0, S2
264CC4:  VMRS            APSR_nzcv, FPSCR
264CC8:  ITT LE
264CCA:  VSTRLE          S0, [R0,#4]
264CCE:  POPLE           {R4,R6,R7,PC}
264CD0:  LDR             R0, =(TrapALError_ptr - 0x264CD6)
264CD2:  ADD             R0, PC; TrapALError_ptr
264CD4:  LDR             R0, [R0]; TrapALError
264CD6:  LDRB            R0, [R0]
264CD8:  CMP             R0, #0
264CDA:  ITT NE
264CDC:  MOVNE           R0, #5; sig
264CDE:  BLXNE           raise
264CE2:  LDREX.W         R0, [R4,#0x50]
264CE6:  CMP             R0, #0
264CE8:  BNE             loc_264D8C
264CEA:  ADD.W           R0, R4, #0x50 ; 'P'
264CEE:  MOVW            R1, #0xA003
264CF2:  DMB.W           ISH
264CF6:  STREX.W         R2, R1, [R0]
264CFA:  CMP             R2, #0
264CFC:  BEQ             loc_264D90
264CFE:  LDREX.W         R2, [R0]
264D02:  CMP             R2, #0
264D04:  BEQ             loc_264CF6
264D06:  B               loc_264D8C
264D08:  VCMPE.F32       S0, #0.0
264D0C:  VMRS            APSR_nzcv, FPSCR
264D10:  BLT             loc_264D26
264D12:  VMOV.F32        S2, #1.0
264D16:  VCMPE.F32       S0, S2
264D1A:  VMRS            APSR_nzcv, FPSCR
264D1E:  ITT LE
264D20:  VSTRLE          S0, [R0,#8]
264D24:  POPLE           {R4,R6,R7,PC}
264D26:  LDR             R0, =(TrapALError_ptr - 0x264D2C)
264D28:  ADD             R0, PC; TrapALError_ptr
264D2A:  LDR             R0, [R0]; TrapALError
264D2C:  LDRB            R0, [R0]
264D2E:  CMP             R0, #0
264D30:  ITT NE
264D32:  MOVNE           R0, #5; sig
264D34:  BLXNE           raise
264D38:  LDREX.W         R0, [R4,#0x50]
264D3C:  CBNZ            R0, loc_264D8C
264D3E:  ADD.W           R0, R4, #0x50 ; 'P'
264D42:  MOVW            R1, #0xA003
264D46:  DMB.W           ISH
264D4A:  STREX.W         R2, R1, [R0]
264D4E:  CBZ             R2, loc_264D90
264D50:  LDREX.W         R2, [R0]
264D54:  CMP             R2, #0
264D56:  BEQ             loc_264D4A
264D58:  B               loc_264D8C
264D5A:  LDR             R0, =(TrapALError_ptr - 0x264D60)
264D5C:  ADD             R0, PC; TrapALError_ptr
264D5E:  LDR             R0, [R0]; TrapALError
264D60:  LDRB            R0, [R0]
264D62:  CMP             R0, #0
264D64:  ITT NE
264D66:  MOVNE           R0, #5; sig
264D68:  BLXNE           raise
264D6C:  LDREX.W         R0, [R4,#0x50]
264D70:  CBNZ            R0, loc_264D8C
264D72:  ADD.W           R0, R4, #0x50 ; 'P'
264D76:  MOVW            R1, #0xA002
264D7A:  DMB.W           ISH
264D7E:  STREX.W         R2, R1, [R0]
264D82:  CBZ             R2, loc_264D90
264D84:  LDREX.W         R2, [R0]
264D88:  CMP             R2, #0
264D8A:  BEQ             loc_264D7E
264D8C:  CLREX.W
264D90:  DMB.W           ISH
264D94:  POP             {R4,R6,R7,PC}
