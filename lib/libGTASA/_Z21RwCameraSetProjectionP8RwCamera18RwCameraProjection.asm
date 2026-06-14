; =========================================================
; Game Engine Function: _Z21RwCameraSetProjectionP8RwCamera18RwCameraProjection
; Address            : 0x1D5DA8 - 0x1D5E5A
; =========================================================

1D5DA8:  PUSH            {R4,R6,R7,LR}
1D5DAA:  ADD             R7, SP, #8
1D5DAC:  VPUSH           {D8}
1D5DB0:  SUB             SP, SP, #8
1D5DB2:  MOV             R4, R0
1D5DB4:  SUBS            R0, R1, #1
1D5DB6:  CMP             R0, #1
1D5DB8:  BHI             loc_1D5DE6
1D5DBA:  LDR             R0, [R4,#4]
1D5DBC:  STR             R1, [R4,#0x14]
1D5DBE:  CMP             R0, #0
1D5DC0:  IT NE
1D5DC2:  BLXNE           j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
1D5DC6:  BLX             j__Z20RwIm2DGetNearScreenZv; RwIm2DGetNearScreenZ(void)
1D5DCA:  VMOV            S16, R0
1D5DCE:  BLX             j__Z19RwIm2DGetFarScreenZv; RwIm2DGetFarScreenZ(void)
1D5DD2:  VMOV            S2, R0
1D5DD6:  LDR             R0, [R4,#0x14]
1D5DD8:  VLDR            S0, [R4,#0x84]
1D5DDC:  CMP             R0, #2
1D5DDE:  BNE             loc_1D5E00
1D5DE0:  VLDR            S4, [R4,#0x80]
1D5DE4:  B               loc_1D5E10
1D5DE6:  MOVS            R0, #3
1D5DE8:  ADR             R1, aInvalidProject; "Invalid projection type specified"
1D5DEA:  MOVS            R4, #0
1D5DEC:  MOVT            R0, #0x8000; int
1D5DF0:  STR             R4, [SP,#0x18+var_18]
1D5DF2:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1D5DF6:  STR             R0, [SP,#0x18+var_14]
1D5DF8:  MOV             R0, SP
1D5DFA:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1D5DFE:  B               loc_1D5E50
1D5E00:  VMOV.F32        S6, #1.0
1D5E04:  VLDR            S4, [R4,#0x80]
1D5E08:  VDIV.F32        S4, S6, S4
1D5E0C:  VDIV.F32        S0, S6, S0
1D5E10:  VSUB.F32        S6, S2, S16
1D5E14:  VLDR            S8, =0.0001
1D5E18:  VMUL.F32        S6, S6, S8
1D5E1C:  VADD.F32        S8, S16, S6
1D5E20:  VSUB.F32        S2, S2, S6
1D5E24:  VSUB.F32        S6, S0, S4
1D5E28:  VADD.F32        S0, S0, S4
1D5E2C:  VMOV.F32        S4, #0.5
1D5E30:  VSUB.F32        S10, S2, S8
1D5E34:  VADD.F32        S2, S2, S8
1D5E38:  VDIV.F32        S6, S10, S6
1D5E3C:  VMUL.F32        S0, S0, S6
1D5E40:  VSTR            S6, [R4,#0x8C]
1D5E44:  VSUB.F32        S0, S2, S0
1D5E48:  VMUL.F32        S0, S0, S4
1D5E4C:  VSTR            S0, [R4,#0x90]
1D5E50:  MOV             R0, R4
1D5E52:  ADD             SP, SP, #8
1D5E54:  VPOP            {D8}
1D5E58:  POP             {R4,R6,R7,PC}
