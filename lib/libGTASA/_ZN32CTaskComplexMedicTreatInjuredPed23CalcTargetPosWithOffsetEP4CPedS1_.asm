; =========================================================
; Game Engine Function: _ZN32CTaskComplexMedicTreatInjuredPed23CalcTargetPosWithOffsetEP4CPedS1_
; Address            : 0x510D94 - 0x510DFA
; =========================================================

510D94:  PUSH            {R4,R5,R7,LR}
510D96:  ADD             R7, SP, #8
510D98:  SUB             SP, SP, #0x18
510D9A:  MOV             R5, R2
510D9C:  ADD             R1, SP, #0x20+var_14
510D9E:  MOV             R4, R0
510DA0:  MOV             R0, R5; this
510DA2:  MOVS            R2, #0x29 ; ')'
510DA4:  MOVS            R3, #0
510DA6:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
510DAA:  MOV             R1, SP
510DAC:  MOV             R0, R5; this
510DAE:  MOVS            R2, #0x33 ; '3'
510DB0:  MOVS            R3, #0
510DB2:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
510DB6:  VLDR            S0, [SP,#0x20+var_20]
510DBA:  VMOV.F32        S12, #0.5
510DBE:  VLDR            S6, [SP,#0x20+var_14]
510DC2:  VLDR            S2, [SP,#0x20+var_1C]
510DC6:  VLDR            S8, [SP,#0x20+var_10]
510DCA:  VADD.F32        S0, S6, S0
510DCE:  VLDR            S4, [SP,#0x20+var_18]
510DD2:  VLDR            S10, [SP,#0x20+var_C]
510DD6:  VADD.F32        S2, S8, S2
510DDA:  VADD.F32        S4, S10, S4
510DDE:  VMUL.F32        S0, S0, S12
510DE2:  VMUL.F32        S2, S2, S12
510DE6:  VMUL.F32        S4, S4, S12
510DEA:  VSTR            S0, [R4,#0x1C]
510DEE:  VSTR            S2, [R4,#0x20]
510DF2:  VSTR            S4, [R4,#0x24]
510DF6:  ADD             SP, SP, #0x18
510DF8:  POP             {R4,R5,R7,PC}
