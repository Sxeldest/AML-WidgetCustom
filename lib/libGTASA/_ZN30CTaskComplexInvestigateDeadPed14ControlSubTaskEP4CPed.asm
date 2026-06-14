; =========================================================
; Game Engine Function: _ZN30CTaskComplexInvestigateDeadPed14ControlSubTaskEP4CPed
; Address            : 0x546C2C - 0x546DE0
; =========================================================

546C2C:  PUSH            {R4-R7,LR}
546C2E:  ADD             R7, SP, #0xC
546C30:  PUSH.W          {R11}
546C34:  VPUSH           {D8-D9}
546C38:  SUB             SP, SP, #0x18
546C3A:  MOV             R4, R0
546C3C:  MOV             R5, R1
546C3E:  LDR             R0, [R4,#0xC]
546C40:  CMP             R0, #0
546C42:  BEQ.W           loc_546DD2
546C46:  LDR             R0, [R4,#8]
546C48:  LDR             R1, [R0]
546C4A:  LDR             R1, [R1,#0x14]
546C4C:  BLX             R1
546C4E:  MOVW            R1, #0x387
546C52:  CMP             R0, R1
546C54:  BNE             loc_546C70
546C56:  LDRB            R0, [R4,#0x18]
546C58:  CBZ             R0, loc_546CAC
546C5A:  LDRB            R0, [R4,#0x19]
546C5C:  CBZ             R0, loc_546C98
546C5E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x546C66)
546C60:  MOVS            R1, #0
546C62:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
546C64:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
546C66:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
546C68:  STRB            R1, [R4,#0x19]
546C6A:  STR             R0, [R4,#0x10]
546C6C:  MOV             R1, R0
546C6E:  B               loc_546CA2
546C70:  LDR             R0, [R4,#8]
546C72:  LDR             R1, [R0]
546C74:  LDR             R1, [R1,#0x14]
546C76:  BLX             R1
546C78:  CMP.W           R0, #0x190
546C7C:  BNE.W           loc_546DCE
546C80:  MOVS            R0, #0
546C82:  MOVS            R1, #0xB5; unsigned __int16
546C84:  STRD.W          R0, R0, [SP,#0x38+var_38]; unsigned __int8
546C88:  MOVS            R2, #0; unsigned int
546C8A:  STR             R0, [SP,#0x38+var_30]; unsigned __int8
546C8C:  MOV             R0, R5; this
546C8E:  MOV.W           R3, #0x3F800000; float
546C92:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
546C96:  B               loc_546DCE
546C98:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x546CA0)
546C9A:  LDR             R1, [R4,#0x10]
546C9C:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
546C9E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
546CA0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
546CA2:  LDR             R2, [R4,#0x14]
546CA4:  ADD             R1, R2
546CA6:  CMP             R1, R0
546CA8:  BLS.W           loc_546DD2
546CAC:  LDRD.W          R6, R0, [R4,#8]
546CB0:  LDR             R1, [R5,#0x14]
546CB2:  LDR             R2, [R0,#0x14]
546CB4:  ADD.W           R3, R1, #0x30 ; '0'
546CB8:  CMP             R1, #0
546CBA:  VLDR            D8, [R4,#0x20]
546CBE:  ADD.W           R1, R2, #0x30 ; '0'
546CC2:  VLDR            S18, [R4,#0x1C]
546CC6:  IT EQ
546CC8:  ADDEQ           R3, R5, #4
546CCA:  CMP             R2, #0
546CCC:  VLDR            S0, [R3]
546CD0:  VLDR            S2, [R3,#4]
546CD4:  IT EQ
546CD6:  ADDEQ           R1, R0, #4
546CD8:  VLDR            S4, [R1]
546CDC:  MOVS            R0, #0
546CDE:  VLDR            S6, [R1,#4]
546CE2:  VSUB.F32        S0, S0, S4
546CE6:  STR             R0, [SP,#0x38+var_28+4]
546CE8:  VSUB.F32        S2, S2, S6
546CEC:  ADD             R0, SP, #0x38+var_2C; this
546CEE:  VSTR            S2, [SP,#0x38+var_28]
546CF2:  VSTR            S0, [SP,#0x38+var_2C]
546CF6:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
546CFA:  VLDR            S0, [SP,#0x38+var_2C]
546CFE:  VMOV.F32        S8, #1.0
546D02:  LDR             R0, [R4,#0xC]
546D04:  VADD.F32        S0, S0, S0
546D08:  LDR             R1, [R0,#0x14]
546D0A:  ADD.W           R2, R1, #0x30 ; '0'
546D0E:  CMP             R1, #0
546D10:  IT EQ
546D12:  ADDEQ           R2, R0, #4
546D14:  VLDR            D16, [SP,#0x38+var_28]
546D18:  VLDR            S2, [R2]
546D1C:  VADD.F32        D16, D16, D16
546D20:  VLDR            D17, [R2,#4]
546D24:  VADD.F32        S4, S0, S2
546D28:  VADD.F32        D0, D16, D17
546D2C:  VSUB.F32        D16, D0, D8
546D30:  VSUB.F32        S2, S4, S18
546D34:  VMUL.F32        D3, D16, D16
546D38:  VMUL.F32        S2, S2, S2
546D3C:  VADD.F32        S2, S2, S6
546D40:  VADD.F32        S2, S2, S7
546D44:  VCMPE.F32       S2, S8
546D48:  VMRS            APSR_nzcv, FPSCR
546D4C:  BLE             loc_546DCE
546D4E:  LDR             R0, =(_ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr - 0x546D58)
546D50:  ADD.W           R1, R4, #0x20 ; ' '
546D54:  ADD             R0, PC; _ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr
546D56:  VST1.32         {D0[0]}, [R1@32]
546D5A:  ADD.W           R1, R4, #0x24 ; '$'
546D5E:  VSTR            S4, [R4,#0x1C]
546D62:  VST1.32         {D0[1]}, [R1@32]
546D66:  LDR             R0, [R0]; CTaskComplexGoToPointAndStandStill::ms_fSlowDownDistance ...
546D68:  VLDR            S6, [R6,#0x10]
546D6C:  VCMP.F32        S6, S4
546D70:  VLDR            S2, [R0]
546D74:  VMRS            APSR_nzcv, FPSCR
546D78:  BNE             loc_546DA4
546D7A:  VLDR            S4, [R6,#0x14]
546D7E:  VCMP.F32        S4, S0
546D82:  VMRS            APSR_nzcv, FPSCR
546D86:  ITTT EQ
546D88:  VLDREQ          S4, [R6,#0x18]
546D8C:  VCMPEQ.F32      S4, S1
546D90:  VMRSEQ          APSR_nzcv, FPSCR
546D94:  BNE             loc_546DA4
546D96:  VLDR            S0, [R6,#0x20]
546D9A:  VCMP.F32        S0, S2
546D9E:  VMRS            APSR_nzcv, FPSCR
546DA2:  BEQ             loc_546DCE
546DA4:  LDR             R1, =(_ZN34CTaskComplexGoToPointAndStandStill16ms_fTargetRadiusE_ptr - 0x546DB2)
546DA6:  ADD.W           R0, R4, #0x1C
546DAA:  LDRB.W          R2, [R6,#0x24]
546DAE:  ADD             R1, PC; _ZN34CTaskComplexGoToPointAndStandStill16ms_fTargetRadiusE_ptr
546DB0:  VLDR            D16, [R0]
546DB4:  LDR             R0, [R0,#8]
546DB6:  LDR             R1, [R1]; CTaskComplexGoToPointAndStandStill::ms_fTargetRadius ...
546DB8:  LDR             R1, [R1]; CTaskComplexGoToPointAndStandStill::ms_fTargetRadius
546DBA:  STRD.W          R0, R1, [R6,#0x18]
546DBE:  ORR.W           R0, R2, #4
546DC2:  VSTR            S2, [R6,#0x20]
546DC6:  STRB.W          R0, [R6,#0x24]
546DCA:  VSTR            D16, [R6,#0x10]
546DCE:  LDR             R0, [R4,#8]
546DD0:  B               loc_546DD4
546DD2:  MOVS            R0, #0
546DD4:  ADD             SP, SP, #0x18
546DD6:  VPOP            {D8-D9}
546DDA:  POP.W           {R11}
546DDE:  POP             {R4-R7,PC}
