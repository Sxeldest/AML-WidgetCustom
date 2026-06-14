; =========================================================
; Game Engine Function: _ZN9CIplStore14HaveIplsLoadedERK7CVectori
; Address            : 0x281DA4 - 0x281E8C
; =========================================================

281DA4:  PUSH            {R4-R7,LR}
281DA6:  ADD             R7, SP, #0xC
281DA8:  PUSH.W          {R8}
281DAC:  MOV             R8, R0
281DAE:  BLX             j__ZN9CIplStore15SetIplsRequiredERK7CVectori; CIplStore::SetIplsRequired(CVector const&,int)
281DB2:  LDR             R0, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x281DC0)
281DB4:  MOVS            R1, #1
281DB6:  VLDR            S0, =190.0
281DBA:  MOVS            R2, #0x34 ; '4'
281DBC:  ADD             R0, PC; _ZN9CIplStore8ms_pPoolE_ptr
281DBE:  VLDR            S2, =-190.0
281DC2:  MOV.W           R12, #0
281DC6:  LDR             R0, [R0]; CIplStore::ms_pPool ...
281DC8:  MOV             R4, R1
281DCA:  LDR             R1, [R0]; CIplStore::ms_pPool
281DCC:  LDR             R3, [R1,#4]
281DCE:  LDRSB           R3, [R3,R4]
281DD0:  CMP             R3, #0
281DD2:  BLT             loc_281E42
281DD4:  LDR             R5, [R1]
281DD6:  ADD             R5, R2
281DD8:  LDRB.W          R6, [R5,#0x2E]
281DDC:  CBZ             R6, loc_281E42
281DDE:  VLDR            S4, [R5]
281DE2:  VADD.F32        S6, S4, S0
281DE6:  VLDR            S4, [R8]
281DEA:  VCMPE.F32       S4, S6
281DEE:  VMRS            APSR_nzcv, FPSCR
281DF2:  BLT             loc_281E3E
281DF4:  VLDR            S6, [R5,#8]
281DF8:  VADD.F32        S6, S6, S2
281DFC:  VCMPE.F32       S4, S6
281E00:  VMRS            APSR_nzcv, FPSCR
281E04:  BGT             loc_281E3E
281E06:  VLDR            S6, [R5,#0xC]
281E0A:  VLDR            S4, [R8,#4]
281E0E:  VADD.F32        S6, S6, S0
281E12:  VCMPE.F32       S4, S6
281E16:  VMRS            APSR_nzcv, FPSCR
281E1A:  BLT             loc_281E3E
281E1C:  VLDR            S6, [R5,#4]
281E20:  VADD.F32        S6, S6, S2
281E24:  VCMPE.F32       S4, S6
281E28:  VMRS            APSR_nzcv, FPSCR
281E2C:  BGT             loc_281E3E
281E2E:  LDRB.W          R6, [R5,#0x2D]
281E32:  CMP             R6, #0
281E34:  ITT EQ
281E36:  LDRBEQ.W        R6, [R5,#0x2F]
281E3A:  CMPEQ           R6, #0
281E3C:  BEQ             loc_281E52
281E3E:  STRB.W          R12, [R5,#0x2E]
281E42:  ADDS            R2, #0x34 ; '4'
281E44:  B.W             loc_4C6D3E
281E48:  BLT             loc_281DC8
281E4A:  MOVS            R0, #1
281E4C:  POP.W           {R8}
281E50:  POP             {R4-R7,PC}
281E52:  B.W             loc_4C6D62
281E56:  BGT             loc_281E4C
281E58:  LDR             R5, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x281E62)
281E5A:  ADDS            R6, R4, #1
281E5C:  ADDS            R2, #0x2E ; '.'
281E5E:  ADD             R5, PC; _ZN9CIplStore8ms_pPoolE_ptr
281E60:  LDR             R5, [R5]; CIplStore::ms_pPool ...
281E62:  B               loc_281E6E
281E64:  LDR             R1, [R5]; CIplStore::ms_pPool
281E66:  ADDS            R2, #0x34 ; '4'
281E68:  LDR             R3, [R1,#4]
281E6A:  LDRB            R3, [R3,R6]
281E6C:  ADDS            R6, #1
281E6E:  SUBS            R4, R6, #1
281E70:  SXTB            R3, R3
281E72:  CMP             R3, #0
281E74:  BLT             loc_281E80
281E76:  LDR             R1, [R1]
281E78:  ADDS            R3, R1, R2
281E7A:  CMP             R3, #0x2E ; '.'
281E7C:  IT NE
281E7E:  STRBNE          R0, [R1,R2]
281E80:  B.W             loc_4C6D4E
281E84:  MOVS            R0, #0
281E86:  POP.W           {R8}
281E8A:  POP             {R4-R7,PC}
