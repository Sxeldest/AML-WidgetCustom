; =========================================================
; Game Engine Function: sub_263C1C
; Address            : 0x263C1C - 0x263E2C
; =========================================================

263C1C:  PUSH            {R4,R6,R7,LR}
263C1E:  ADD             R7, SP, #8
263C20:  MOV             R4, R1
263C22:  SUBS            R1, R2, #1; switch 5 cases
263C24:  CMP             R1, #4
263C26:  BHI             def_263C2C; jumptable 00263C2C default case
263C28:  VMOV            S0, R3
263C2C:  TBB.W           [PC,R1]; switch jump
263C30:  DCB 3; jump table for switch statement
263C31:  DCB 0x4E
263C32:  DCB 0x7B
263C33:  DCB 0xA6
263C34:  DCB 0xCF
263C35:  ALIGN 2
263C36:  VCMPE.F32       S0, #0.0; jumptable 00263C2C case 1
263C3A:  VMRS            APSR_nzcv, FPSCR
263C3E:  BLT             loc_263C54
263C40:  VLDR            S2, =0.207
263C44:  VCMPE.F32       S0, S2
263C48:  VMRS            APSR_nzcv, FPSCR
263C4C:  ITT LE
263C4E:  VSTRLE          S0, [R0,#0x70]
263C52:  POPLE           {R4,R6,R7,PC}
263C54:  LDR             R0, =(TrapALError_ptr - 0x263C5A)
263C56:  ADD             R0, PC; TrapALError_ptr
263C58:  LDR             R0, [R0]; TrapALError
263C5A:  LDRB            R0, [R0]
263C5C:  CMP             R0, #0
263C5E:  ITT NE
263C60:  MOVNE           R0, #5; sig
263C62:  BLXNE           raise
263C66:  LDREX.W         R0, [R4,#0x50]
263C6A:  CMP             R0, #0
263C6C:  BNE.W           loc_263E22
263C70:  ADD.W           R0, R4, #0x50 ; 'P'
263C74:  MOVW            R1, #0xA003
263C78:  DMB.W           ISH
263C7C:  STREX.W         R2, R1, [R0]
263C80:  CMP             R2, #0
263C82:  BEQ.W           loc_263E26
263C86:  LDREX.W         R2, [R0]
263C8A:  CMP             R2, #0
263C8C:  BEQ             loc_263C7C
263C8E:  B               loc_263E22
263C90:  LDR             R0, =(TrapALError_ptr - 0x263C96); jumptable 00263C2C default case
263C92:  ADD             R0, PC; TrapALError_ptr
263C94:  LDR             R0, [R0]; TrapALError
263C96:  LDRB            R0, [R0]
263C98:  CMP             R0, #0
263C9A:  ITT NE
263C9C:  MOVNE           R0, #5; sig
263C9E:  BLXNE           raise
263CA2:  LDREX.W         R0, [R4,#0x50]
263CA6:  CMP             R0, #0
263CA8:  BNE.W           loc_263E22
263CAC:  ADD.W           R0, R4, #0x50 ; 'P'
263CB0:  MOVW            R1, #0xA002
263CB4:  DMB.W           ISH
263CB8:  STREX.W         R2, R1, [R0]
263CBC:  CMP             R2, #0
263CBE:  BEQ.W           loc_263E26
263CC2:  LDREX.W         R2, [R0]
263CC6:  CMP             R2, #0
263CC8:  BEQ             loc_263CB8
263CCA:  B               loc_263E22
263CCC:  VCMPE.F32       S0, #0.0; jumptable 00263C2C case 2
263CD0:  VMRS            APSR_nzcv, FPSCR
263CD4:  BLT             loc_263CEA
263CD6:  VLDR            S2, =0.404
263CDA:  VCMPE.F32       S0, S2
263CDE:  VMRS            APSR_nzcv, FPSCR
263CE2:  ITT LE
263CE4:  VSTRLE          S0, [R0,#0x74]
263CE8:  POPLE           {R4,R6,R7,PC}
263CEA:  LDR             R0, =(TrapALError_ptr - 0x263CF0)
263CEC:  ADD             R0, PC; TrapALError_ptr
263CEE:  LDR             R0, [R0]; TrapALError
263CF0:  LDRB            R0, [R0]
263CF2:  CMP             R0, #0
263CF4:  ITT NE
263CF6:  MOVNE           R0, #5; sig
263CF8:  BLXNE           raise
263CFC:  LDREX.W         R0, [R4,#0x50]
263D00:  CMP             R0, #0
263D02:  BNE.W           loc_263E22
263D06:  ADD.W           R0, R4, #0x50 ; 'P'
263D0A:  MOVW            R1, #0xA003
263D0E:  DMB.W           ISH
263D12:  STREX.W         R2, R1, [R0]
263D16:  CMP             R2, #0
263D18:  BEQ.W           loc_263E26
263D1C:  LDREX.W         R2, [R0]
263D20:  CMP             R2, #0
263D22:  BEQ             loc_263D12
263D24:  B               loc_263E22
263D26:  VCMPE.F32       S0, #0.0; jumptable 00263C2C case 3
263D2A:  VMRS            APSR_nzcv, FPSCR
263D2E:  BLT             loc_263D44
263D30:  VLDR            S2, =0.99
263D34:  VCMPE.F32       S0, S2
263D38:  VMRS            APSR_nzcv, FPSCR
263D3C:  ITT LE
263D3E:  VSTRLE          S0, [R0,#0x78]
263D42:  POPLE           {R4,R6,R7,PC}
263D44:  LDR             R0, =(TrapALError_ptr - 0x263D4A)
263D46:  ADD             R0, PC; TrapALError_ptr
263D48:  LDR             R0, [R0]; TrapALError
263D4A:  LDRB            R0, [R0]
263D4C:  CMP             R0, #0
263D4E:  ITT NE
263D50:  MOVNE           R0, #5; sig
263D52:  BLXNE           raise
263D56:  LDREX.W         R0, [R4,#0x50]
263D5A:  CMP             R0, #0
263D5C:  BNE             loc_263E22
263D5E:  ADD.W           R0, R4, #0x50 ; 'P'
263D62:  MOVW            R1, #0xA003
263D66:  DMB.W           ISH
263D6A:  STREX.W         R2, R1, [R0]
263D6E:  CMP             R2, #0
263D70:  BEQ             loc_263E26
263D72:  LDREX.W         R2, [R0]
263D76:  CMP             R2, #0
263D78:  BEQ             loc_263D6A
263D7A:  B               loc_263E22
263D7C:  VCMPE.F32       S0, #0.0; jumptable 00263C2C case 4
263D80:  VMRS            APSR_nzcv, FPSCR
263D84:  BLT             loc_263D9A
263D86:  VMOV.F32        S2, #1.0
263D8A:  VCMPE.F32       S0, S2
263D8E:  VMRS            APSR_nzcv, FPSCR
263D92:  ITT LE
263D94:  VSTRLE          S0, [R0,#0x7C]
263D98:  POPLE           {R4,R6,R7,PC}
263D9A:  LDR             R0, =(TrapALError_ptr - 0x263DA0)
263D9C:  ADD             R0, PC; TrapALError_ptr
263D9E:  LDR             R0, [R0]; TrapALError
263DA0:  LDRB            R0, [R0]
263DA2:  CMP             R0, #0
263DA4:  ITT NE
263DA6:  MOVNE           R0, #5; sig
263DA8:  BLXNE           raise
263DAC:  LDREX.W         R0, [R4,#0x50]
263DB0:  CBNZ            R0, loc_263E22
263DB2:  ADD.W           R0, R4, #0x50 ; 'P'
263DB6:  MOVW            R1, #0xA003
263DBA:  DMB.W           ISH
263DBE:  STREX.W         R2, R1, [R0]
263DC2:  CBZ             R2, loc_263E26
263DC4:  LDREX.W         R2, [R0]
263DC8:  CMP             R2, #0
263DCA:  BEQ             loc_263DBE
263DCC:  B               loc_263E22
263DCE:  VMOV.F32        S2, #-1.0; jumptable 00263C2C case 5
263DD2:  VCMPE.F32       S0, S2
263DD6:  VMRS            APSR_nzcv, FPSCR
263DDA:  BLT             loc_263DF0
263DDC:  VMOV.F32        S2, #1.0
263DE0:  VCMPE.F32       S0, S2
263DE4:  VMRS            APSR_nzcv, FPSCR
263DE8:  ITT LE
263DEA:  VSTRLE          S0, [R0,#0x80]
263DEE:  POPLE           {R4,R6,R7,PC}
263DF0:  LDR             R0, =(TrapALError_ptr - 0x263DF6)
263DF2:  ADD             R0, PC; TrapALError_ptr
263DF4:  LDR             R0, [R0]; TrapALError
263DF6:  LDRB            R0, [R0]
263DF8:  CMP             R0, #0
263DFA:  ITT NE
263DFC:  MOVNE           R0, #5; sig
263DFE:  BLXNE           raise
263E02:  LDREX.W         R0, [R4,#0x50]
263E06:  CBNZ            R0, loc_263E22
263E08:  ADD.W           R0, R4, #0x50 ; 'P'
263E0C:  MOVW            R1, #0xA003
263E10:  DMB.W           ISH
263E14:  STREX.W         R2, R1, [R0]
263E18:  CBZ             R2, loc_263E26
263E1A:  LDREX.W         R2, [R0]
263E1E:  CMP             R2, #0
263E20:  BEQ             loc_263E14
263E22:  CLREX.W
263E26:  DMB.W           ISH
263E2A:  POP             {R4,R6,R7,PC}
