; =========================================================
; Game Engine Function: _ZN10MobileMenu10InitializeEv
; Address            : 0x2998BC - 0x299A3E
; =========================================================

2998BC:  PUSH            {R4,R6,R7,LR}
2998BE:  ADD             R7, SP, #8
2998C0:  VPUSH           {D8-D14}
2998C4:  MOV             R4, R0
2998C6:  LDR             R0, =(RsGlobal_ptr - 0x2998CC)
2998C8:  ADD             R0, PC; RsGlobal_ptr
2998CA:  LDR             R0, [R0]; RsGlobal
2998CC:  LDR             R0, [R0,#(dword_9FC904 - 0x9FC8FC)]
2998CE:  CBZ             R0, loc_2998F0
2998D0:  LDR             R1, =(RsGlobal_ptr - 0x2998DA)
2998D2:  VLDR            S4, =0.4
2998D6:  ADD             R1, PC; RsGlobal_ptr
2998D8:  LDR             R1, [R1]; RsGlobal
2998DA:  VLDR            S0, [R1,#4]
2998DE:  VCVT.F32.S32    S2, S0
2998E2:  VMOV            S0, R0
2998E6:  VCVT.F32.S32    S0, S0
2998EA:  VMUL.F32        S2, S2, S4
2998EE:  B               loc_29990A
2998F0:  LDR             R0, =(RsGlobal_ptr - 0x299902)
2998F2:  MOVW            R1, #0x984
2998F6:  VLDR            S2, =974.4
2998FA:  MOVW            R2, #0x465
2998FE:  ADD             R0, PC; RsGlobal_ptr
299900:  VLDR            S0, =1125.0
299904:  LDR             R0, [R0]; RsGlobal
299906:  STRD.W          R1, R2, [R0,#(dword_9FC900 - 0x9FC8FC)]
29990A:  VDIV.F32        S24, S2, S0
29990E:  MOV             R0, #0x3ECCCCCD
299916:  STR             R0, [R4,#4]
299918:  VMOV.F32        S16, #1.0
29991C:  VLDR            S18, =4.6566e-10
299920:  VLDR            S20, =0.0
299924:  VLDR            S22, =0.35
299928:  VSTR            S24, [R4]
29992C:  B               loc_299932
29992E:  VLDR            S24, [R4]
299932:  BLX             rand
299936:  VMOV            S0, R0
29993A:  VLDR            S26, [R4,#4]
29993E:  VCVT.F32.S32    S28, S0
299942:  BLX             rand
299946:  VMOV            S0, R0
29994A:  VSUB.F32        S2, S16, S24
29994E:  VCVT.F32.S32    S0, S0
299952:  VLDR            S24, [R4]
299956:  VMUL.F32        S4, S28, S18
29995A:  VSUB.F32        S6, S16, S26
29995E:  VMUL.F32        S0, S0, S18
299962:  VMUL.F32        S2, S2, S4
299966:  VMUL.F32        S0, S6, S0
29996A:  VADD.F32        S2, S2, S20
29996E:  VADD.F32        S0, S0, S20
299972:  VSTR            S2, [R4,#0x10]
299976:  VSTR            S0, [R4,#0x14]
29997A:  VSTR            S2, [R4,#0x18]
29997E:  VSTR            S0, [R4,#0x1C]
299982:  BLX             rand
299986:  VMOV            S0, R0
29998A:  VLDR            S26, [R4,#4]
29998E:  VCVT.F32.S32    S28, S0
299992:  BLX             rand
299996:  VMOV            S0, R0
29999A:  VSUB.F32        S2, S16, S24
29999E:  VCVT.F32.S32    S0, S0
2999A2:  VMUL.F32        S4, S28, S18
2999A6:  VSUB.F32        S6, S16, S26
2999AA:  VMUL.F32        S0, S0, S18
2999AE:  VMUL.F32        S2, S2, S4
2999B2:  VMUL.F32        S4, S6, S0
2999B6:  VLDR            S6, [R4,#0x1C]
2999BA:  VADD.F32        S0, S2, S20
2999BE:  VADD.F32        S2, S4, S20
2999C2:  VLDR            S4, [R4,#0x18]
2999C6:  VSTR            S0, [R4,#8]
2999CA:  VSUB.F32        S4, S4, S0
2999CE:  VSUB.F32        S6, S6, S2
2999D2:  VSTR            S2, [R4,#0xC]
2999D6:  VMUL.F32        S4, S4, S4
2999DA:  VMUL.F32        S6, S6, S6
2999DE:  VADD.F32        S4, S4, S6
2999E2:  VSQRT.F32       S4, S4
2999E6:  VCMPE.F32       S4, S22
2999EA:  VMRS            APSR_nzcv, FPSCR
2999EE:  BLT             loc_29992E
2999F0:  VLDR            S4, [R4,#0x10]
2999F4:  VLDR            S6, [R4,#0x14]
2999F8:  VSUB.F32        S0, S0, S4
2999FC:  VSUB.F32        S2, S2, S6
299A00:  VMUL.F32        S10, S0, S0
299A04:  VMUL.F32        S8, S2, S2
299A08:  VADD.F32        S8, S10, S8
299A0C:  VSQRT.F32       S8, S8
299A10:  VDIV.F32        S8, S16, S8
299A14:  VMUL.F32        S0, S0, S8
299A18:  VMUL.F32        S2, S2, S8
299A1C:  VLDR            S8, =0.15
299A20:  VMUL.F32        S0, S0, S8
299A24:  VMUL.F32        S2, S2, S8
299A28:  VADD.F32        S0, S4, S0
299A2C:  VADD.F32        S2, S6, S2
299A30:  VSTR            S0, [R4,#0x10]
299A34:  VSTR            S2, [R4,#0x14]
299A38:  VPOP            {D8-D14}
299A3C:  POP             {R4,R6,R7,PC}
