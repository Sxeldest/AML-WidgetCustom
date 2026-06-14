; =========================================================
; Game Engine Function: _ZN9CIplStore11RequestIplsERK7CVectori
; Address            : 0x281CD0 - 0x281D98
; =========================================================

281CD0:  PUSH            {R4-R7,LR}
281CD2:  ADD             R7, SP, #0xC
281CD4:  PUSH.W          {R8-R11}
281CD8:  SUB             SP, SP, #4
281CDA:  VPUSH           {D8-D9}
281CDE:  MOV             R10, R0
281CE0:  BLX             j__ZN9CIplStore15SetIplsRequiredERK7CVectori; CIplStore::SetIplsRequired(CVector const&,int)
281CE4:  LDR             R0, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x281CF4)
281CE6:  MOV.W           R8, #0
281CEA:  VLDR            S16, =190.0
281CEE:  MOVS            R6, #0x62 ; 'b'
281CF0:  ADD             R0, PC; _ZN9CIplStore8ms_pPoolE_ptr
281CF2:  VLDR            S18, =-190.0
281CF6:  MOVW            R9, #0x62A8
281CFA:  MOVS            R4, #0
281CFC:  LDR.W           R11, [R0]; CIplStore::ms_pPool ...
281D00:  LDR.W           R0, [R11]; CIplStore::ms_pPool
281D04:  LDR             R1, [R0,#4]
281D06:  ADD             R1, R4
281D08:  LDRSB.W         R1, [R1,#1]
281D0C:  CMP             R1, #0
281D0E:  BLT             loc_281D84
281D10:  LDR             R5, [R0]
281D12:  LDRB            R0, [R5,R6]
281D14:  CBZ             R0, loc_281D84
281D16:  ADDS            R0, R5, R6
281D18:  SUB.W           R1, R0, #0x2E ; '.'
281D1C:  VLDR            S0, [R1]
281D20:  VADD.F32        S2, S0, S16
281D24:  VLDR            S0, [R10]
281D28:  VCMPE.F32       S0, S2
281D2C:  VMRS            APSR_nzcv, FPSCR
281D30:  BLT             loc_281D80
281D32:  SUB.W           R1, R0, #0x26 ; '&'
281D36:  VLDR            S2, [R1]
281D3A:  VADD.F32        S2, S2, S18
281D3E:  VCMPE.F32       S0, S2
281D42:  VMRS            APSR_nzcv, FPSCR
281D46:  BGT             loc_281D80
281D48:  SUB.W           R1, R0, #0x22 ; '"'
281D4C:  VLDR            S0, [R10,#4]
281D50:  VLDR            S2, [R1]
281D54:  VADD.F32        S2, S2, S16
281D58:  VCMPE.F32       S0, S2
281D5C:  VMRS            APSR_nzcv, FPSCR
281D60:  BLT             loc_281D80
281D62:  SUBS            R0, #0x2A ; '*'
281D64:  VLDR            S2, [R0]
281D68:  VADD.F32        S2, S2, S18
281D6C:  VCMPE.F32       S0, S2
281D70:  VMRS            APSR_nzcv, FPSCR
281D74:  BGT             loc_281D80
281D76:  ADD.W           R0, R4, R9; this
281D7A:  MOVS            R1, #0x18; int
281D7C:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
281D80:  STRB.W          R8, [R5,R6]
281D84:  ADDS            R4, #1
281D86:  B.W             loc_4C6D22
281D8A:  BNE             loc_281D00
281D8C:  VPOP            {D8-D9}
281D90:  ADD             SP, SP, #4
281D92:  POP.W           {R8-R11}
281D96:  POP             {R4-R7,PC}
