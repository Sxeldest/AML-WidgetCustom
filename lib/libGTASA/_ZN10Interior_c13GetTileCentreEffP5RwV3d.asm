; =========================================================
; Game Engine Function: _ZN10Interior_c13GetTileCentreEffP5RwV3d
; Address            : 0x4466CA - 0x44673E
; =========================================================

4466CA:  LDR.W           R12, [R0,#0x14]
4466CE:  VMOV.F32        S0, #0.5
4466D2:  VMOV            S4, R1
4466D6:  LDRB.W          R12, [R12,#2]
4466DA:  RSB.W           R12, R12, #0
4466DE:  VMOV            S2, R12
4466E2:  ADD.W           R12, R0, #0x18
4466E6:  VCVT.F32.S32    S2, S2
4466EA:  VMUL.F32        S2, S2, S0
4466EE:  VADD.F32        S2, S2, S4
4466F2:  VMOV            S4, R2
4466F6:  MOVS            R2, #1
4466F8:  VADD.F32        S2, S2, S0
4466FC:  VSTR            S2, [R3]
446700:  LDR             R1, [R0,#0x14]
446702:  LDRB            R1, [R1,#3]
446704:  NEGS            R1, R1
446706:  VMOV            S2, R1
44670A:  VCVT.F32.S32    S2, S2
44670E:  VMUL.F32        S2, S2, S0
446712:  VADD.F32        S2, S2, S4
446716:  VADD.F32        S2, S2, S0
44671A:  VSTR            S2, [R3,#4]
44671E:  LDR             R1, [R0,#0x14]
446720:  MOV             R0, R3
446722:  LDRB            R1, [R1,#4]
446724:  NEGS            R1, R1
446726:  VMOV            S2, R1
44672A:  MOV             R1, R3
44672C:  VCVT.F32.S32    S2, S2
446730:  VMUL.F32        S0, S2, S0
446734:  VSTR            S0, [R3,#8]
446738:  MOV             R3, R12
44673A:  B.W             sub_1A1708
