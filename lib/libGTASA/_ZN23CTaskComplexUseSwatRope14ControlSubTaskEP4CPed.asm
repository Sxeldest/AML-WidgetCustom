; =========================================================
; Game Engine Function: _ZN23CTaskComplexUseSwatRope14ControlSubTaskEP4CPed
; Address            : 0x511DA8 - 0x511F60
; =========================================================

511DA8:  PUSH            {R4-R7,LR}
511DAA:  ADD             R7, SP, #0xC
511DAC:  PUSH.W          {R8}
511DB0:  SUB             SP, SP, #0x28; CVector *
511DB2:  MOV             R6, R0
511DB4:  MOV             R5, R1
511DB6:  LDRB            R0, [R6,#0x14]
511DB8:  LSLS            R0, R0, #0x1F
511DBA:  BEQ             loc_511E10
511DBC:  LDR             R0, [R6,#0x18]
511DBE:  CMP             R0, #0
511DC0:  ITT NE
511DC2:  LDRBNE.W        R1, [R0,#0x3BE]
511DC6:  CMPNE           R1, #0x3A ; ':'
511DC8:  BEQ             loc_511DDC
511DCA:  ADDW            R0, R0, #0x4CC
511DCE:  VLDR            S0, [R0]
511DD2:  VCMPE.F32       S0, #0.0
511DD6:  VMRS            APSR_nzcv, FPSCR
511DDA:  BGT             loc_511E10
511DDC:  LDR             R0, [R6,#8]
511DDE:  MOVS            R2, #1
511DE0:  MOVS            R3, #0
511DE2:  MOV.W           R8, #0
511DE6:  LDR             R1, [R0]
511DE8:  LDR             R4, [R1,#0x1C]
511DEA:  MOV             R1, R5
511DEC:  BLX             R4
511DEE:  CMP             R0, #1
511DF0:  BNE             loc_511E10
511DF2:  LDR.W           R0, [R5,#0x484]
511DF6:  STRD.W          R8, R8, [R5,#0x48]
511DFA:  STR.W           R8, [R5,#0x50]
511DFE:  BIC.W           R0, R0, #1
511E02:  LDR             R1, [R5,#0x1C]
511E04:  STR.W           R0, [R5,#0x484]
511E08:  ORR.W           R0, R1, #1
511E0C:  STR             R0, [R5,#0x1C]
511E0E:  B               loc_511F56
511E10:  LDR.W           R8, [R6,#8]
511E14:  LDR.W           R0, [R8]
511E18:  LDR             R1, [R0,#0x14]
511E1A:  MOV             R0, R8
511E1C:  BLX             R1
511E1E:  MOVW            R1, #0x1A7
511E22:  CMP             R0, R1
511E24:  IT NE
511E26:  CMPNE           R0, #0xCA
511E28:  BNE.W           loc_511F56
511E2C:  LDR             R0, [R5,#0x14]
511E2E:  ADDS            R4, R5, #4
511E30:  CMP             R0, #0
511E32:  MOV             R1, R4
511E34:  IT NE
511E36:  ADDNE.W         R1, R0, #0x30 ; '0'; CVector *
511E3A:  LDR             R0, [R1,#8]
511E3C:  VLDR            D16, [R1]
511E40:  STR             R0, [SP,#0x38+var_18]
511E42:  ADD             R0, SP, #0x38+var_20; this
511E44:  VSTR            D16, [SP,#0x38+var_20]
511E48:  BLX             j__ZN13CPedPlacement15FindZCoorForPedEP7CVector; CPedPlacement::FindZCoorForPed(CVector *)
511E4C:  VMOV.F32        S0, #-2.0
511E50:  LDR             R0, [R5,#0x14]
511E52:  CMP             R0, #0
511E54:  IT NE
511E56:  ADDNE.W         R4, R0, #0x30 ; '0'
511E5A:  VLDR            S2, [R4,#8]
511E5E:  VADD.F32        S0, S2, S0
511E62:  VLDR            S2, [SP,#0x38+var_18]
511E66:  VCMPE.F32       S0, S2
511E6A:  VMRS            APSR_nzcv, FPSCR
511E6E:  BGE             loc_511E94
511E70:  LDR             R0, [R6,#8]
511E72:  MOVS            R2, #1
511E74:  MOVS            R3, #0
511E76:  LDR             R1, [R0]
511E78:  LDR             R6, [R1,#0x1C]
511E7A:  MOV             R1, R5
511E7C:  BLX             R6
511E7E:  CMP             R0, #1
511E80:  BNE             loc_511F56
511E82:  MOVS            R0, #byte_8; this
511E84:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
511E88:  MOV             R8, R0
511E8A:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
511E8E:  LDR             R0, =(_ZTV15CTaskSimpleNone_ptr - 0x511E94)
511E90:  ADD             R0, PC; _ZTV15CTaskSimpleNone_ptr
511E92:  B               loc_511EFC
511E94:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x511EA2)
511E96:  ADD             R2, SP, #0x38+var_2C; float
511E98:  VLDR            S0, =0.003
511E9C:  MOVS            R3, #0; CVector *
511E9E:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
511EA0:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
511EA2:  VLDR            S2, [R0]
511EA6:  VMUL.F32        S0, S2, S0
511EAA:  VLDR            S2, [R6,#0x10]
511EAE:  VADD.F32        S0, S2, S0
511EB2:  VMOV            R1, S0; unsigned int
511EB6:  VSTR            S0, [R6,#0x10]
511EBA:  LDR             R0, [R6,#0xC]; this
511EBC:  BLX             j__ZN6CRopes18FindCoorsAlongRopeEjfP7CVectorS1_; CRopes::FindCoorsAlongRope(uint,float,CVector *,CVector *)
511EC0:  CMP             R0, #1
511EC2:  BNE             loc_511EDA
511EC4:  LDRD.W          R2, R1, [SP,#0x38+var_2C]
511EC8:  LDR             R3, [R5,#0x14]
511ECA:  LDR             R0, [SP,#0x38+var_24]
511ECC:  CBZ             R3, loc_511F06
511ECE:  STR             R2, [R3,#0x30]
511ED0:  LDR             R2, [R5,#0x14]
511ED2:  STR             R1, [R2,#0x34]
511ED4:  LDR             R1, [R5,#0x14]
511ED6:  ADDS            R1, #0x38 ; '8'
511ED8:  B               loc_511F0E
511EDA:  LDR             R0, [R6,#8]
511EDC:  MOVS            R2, #1
511EDE:  MOVS            R3, #0
511EE0:  LDR             R1, [R0]
511EE2:  LDR             R6, [R1,#0x1C]
511EE4:  MOV             R1, R5
511EE6:  BLX             R6
511EE8:  CMP             R0, #1
511EEA:  BNE             loc_511F56
511EEC:  MOVS            R0, #byte_8; this
511EEE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
511EF2:  MOV             R8, R0
511EF4:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
511EF8:  LDR             R0, =(_ZTV15CTaskSimpleNone_ptr - 0x511EFE)
511EFA:  ADD             R0, PC; _ZTV15CTaskSimpleNone_ptr
511EFC:  LDR             R0, [R0]; `vtable for'CTaskSimpleNone ...
511EFE:  ADDS            R0, #8
511F00:  STR.W           R0, [R8]
511F04:  B               loc_511F56
511F06:  STRD.W          R2, R1, [R5,#4]
511F0A:  ADD.W           R1, R5, #0xC
511F0E:  LDR             R2, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x511F1E)
511F10:  MOV.W           R3, #0x3F800000; float
511F14:  STR             R0, [R1]
511F16:  ADDW            R0, R5, #0x55C
511F1A:  ADD             R2, PC; _ZN6CTimer12ms_fTimeStepE_ptr
511F1C:  VLDR            S0, =-0.05
511F20:  MOVS            R1, #0xB1; unsigned __int16
511F22:  LDR             R2, [R2]; CTimer::ms_fTimeStep ...
511F24:  VLDR            S2, [R2]
511F28:  MOVS            R2, #0; unsigned int
511F2A:  VMUL.F32        S0, S2, S0
511F2E:  VLDR            S2, [R0]
511F32:  MOV             R0, #0xBCF5C28F
511F3A:  STR             R0, [R5,#0x50]
511F3C:  ADD.W           R0, R5, #0x560
511F40:  VADD.F32        S0, S2, S0
511F44:  VSTR            S0, [R0]
511F48:  MOVS            R0, #0
511F4A:  STRD.W          R0, R0, [SP,#0x38+var_38]; unsigned __int8
511F4E:  STR             R0, [SP,#0x38+var_30]; unsigned __int8
511F50:  MOV             R0, R5; this
511F52:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
511F56:  MOV             R0, R8
511F58:  ADD             SP, SP, #0x28 ; '('
511F5A:  POP.W           {R8}
511F5E:  POP             {R4-R7,PC}
