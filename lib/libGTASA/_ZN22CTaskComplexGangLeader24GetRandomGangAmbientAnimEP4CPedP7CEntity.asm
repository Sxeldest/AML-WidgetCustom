; =========================================================
; Game Engine Function: _ZN22CTaskComplexGangLeader24GetRandomGangAmbientAnimEP4CPedP7CEntity
; Address            : 0x515D70 - 0x515E14
; =========================================================

515D70:  PUSH            {R4,R6,R7,LR}
515D72:  ADD             R7, SP, #8
515D74:  MOV             R4, R0
515D76:  CBZ             R1, loc_515DBC
515D78:  LDR             R0, =(MI_GANG_DRINK_ptr - 0x515D7E)
515D7A:  ADD             R0, PC; MI_GANG_DRINK_ptr
515D7C:  LDR             R2, [R0]; MI_GANG_DRINK
515D7E:  LDRSH.W         R0, [R1,#0x26]
515D82:  LDRH            R1, [R2]
515D84:  CMP             R0, R1
515D86:  BNE             loc_515DA6
515D88:  BLX             rand
515D8C:  TST.W           R0, #1
515D90:  BNE             loc_515DE8
515D92:  BLX             rand
515D96:  UXTH            R0, R0
515D98:  VLDR            S2, =0.000015259
515D9C:  VMOV            S0, R0
515DA0:  VMOV.F32        S4, #4.0
515DA4:  B               loc_515DCE
515DA6:  LDR             R1, =(MI_GANG_SMOKE_ptr - 0x515DAC)
515DA8:  ADD             R1, PC; MI_GANG_SMOKE_ptr
515DAA:  LDR             R1, [R1]; MI_GANG_SMOKE
515DAC:  LDRH            R1, [R1]
515DAE:  CMP             R0, R1
515DB0:  BNE             loc_515DBC
515DB2:  BLX             rand
515DB6:  TST.W           R0, #1
515DBA:  BNE             loc_515DFE
515DBC:  BLX             rand
515DC0:  UXTH            R0, R0
515DC2:  VMOV.F32        S4, #8.0
515DC6:  VMOV            S0, R0
515DCA:  VLDR            S2, =0.000015259
515DCE:  VCVT.F32.S32    S0, S0
515DD2:  VMUL.F32        S0, S0, S2
515DD6:  VMUL.F32        S0, S0, S4
515DDA:  VCVT.S32.F32    S0, S0
515DDE:  VMOV            R0, S0
515DE2:  ADDW            R0, R0, #0x117
515DE6:  POP             {R4,R6,R7,PC}
515DE8:  LDRSH.W         R1, [R4,#0x26]
515DEC:  MOVW            R0, #0x12D
515DF0:  CMP             R1, #0x67 ; 'g'
515DF2:  IT NE
515DF4:  CMPNE           R1, #0x69 ; 'i'
515DF6:  BEQ             locret_515DE6
515DF8:  MOVW            R0, #0x12B
515DFC:  POP             {R4,R6,R7,PC}
515DFE:  LDRSH.W         R1, [R4,#0x26]
515E02:  MOV.W           R0, #0x12E
515E06:  CMP             R1, #0x67 ; 'g'
515E08:  IT NE
515E0A:  CMPNE           R1, #0x69 ; 'i'
515E0C:  BEQ             locret_515DE6
515E0E:  MOV.W           R0, #0x12C
515E12:  POP             {R4,R6,R7,PC}
