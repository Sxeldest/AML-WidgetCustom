; =========================================================
; Game Engine Function: _ZN8CCarCtrl25SteerPlayerWhilstCruisingEP8CVehiclePfS2_S2_Pb
; Address            : 0x2F773C - 0x2F82E4
; =========================================================

2F773C:  PUSH            {R4-R7,LR}
2F773E:  ADD             R7, SP, #0xC
2F7740:  PUSH.W          {R8-R11}
2F7744:  SUB             SP, SP, #4
2F7746:  VPUSH           {D8-D15}
2F774A:  SUB             SP, SP, #0x50; float
2F774C:  MOV             R11, R0
2F774E:  MOV             R10, R3
2F7750:  LDR.W           R0, [R11,#0x14]
2F7754:  MOV             R9, R2
2F7756:  VLDR            S0, [R0,#0x10]
2F775A:  VLDR            S26, [R0,#0x14]
2F775E:  VMUL.F32        S4, S0, S0
2F7762:  VMUL.F32        S2, S26, S26
2F7766:  VADD.F32        S2, S4, S2
2F776A:  VSQRT.F32       S2, S2
2F776E:  VCMP.F32        S2, #0.0
2F7772:  VMRS            APSR_nzcv, FPSCR
2F7776:  BEQ             loc_2F7782
2F7778:  VDIV.F32        S26, S26, S2
2F777C:  VDIV.F32        S19, S0, S2
2F7780:  B               loc_2F7786
2F7782:  VMOV.F32        S19, #1.0
2F7786:  LDR.W           R2, =(ThePaths_ptr - 0x2F7792)
2F778A:  LDRH.W          R0, [R11,#0x3A8]
2F778E:  ADD             R2, PC; ThePaths_ptr
2F7790:  LDR             R5, [R7,#arg_0]
2F7792:  LDR             R2, [R2]; ThePaths
2F7794:  LSRS            R4, R0, #0xA
2F7796:  ADD.W           R2, R2, R4,LSL#2
2F779A:  LDR.W           R2, [R2,#0x804]
2F779E:  CMP             R2, #0
2F77A0:  BEQ.W           loc_2F7A02
2F77A4:  LDR.W           R3, =(ThePaths_ptr - 0x2F77B0)
2F77A8:  LDRH.W          R2, [R11,#0x3AA]
2F77AC:  ADD             R3, PC; ThePaths_ptr
2F77AE:  LDR             R6, [R3]; ThePaths
2F77B0:  LSRS            R3, R2, #0xA
2F77B2:  ADD.W           R6, R6, R3,LSL#2
2F77B6:  LDR.W           R6, [R6,#0x804]
2F77BA:  CMP             R6, #0
2F77BC:  BEQ.W           loc_2F7A02
2F77C0:  STR             R1, [SP,#0xB0+var_70]
2F77C2:  BFC.W           R0, #0xA, #0x16
2F77C6:  LDR.W           R5, =(ThePaths_ptr - 0x2F77DA)
2F77CA:  BFC.W           R2, #0xA, #0x16
2F77CE:  LDRSB.W         R1, [R11,#0x3B9]
2F77D2:  RSB.W           R0, R0, R0,LSL#3
2F77D6:  ADD             R5, PC; ThePaths_ptr
2F77D8:  LDRSB.W         R6, [R11,#0x3BB]
2F77DC:  LDRSB.W         R8, [R11,#0x3BA]
2F77E0:  LDR             R5, [R5]; ThePaths
2F77E2:  VMOV            S0, R1
2F77E6:  VCVT.F32.S32    S20, S0
2F77EA:  ADDW            R5, R5, #0x924
2F77EE:  VMOV            S0, R6
2F77F2:  VCVT.F32.S32    S16, S0
2F77F6:  LDR.W           R1, [R5,R4,LSL#2]
2F77FA:  LDR.W           R3, [R5,R3,LSL#2]
2F77FE:  ADD.W           R0, R1, R0,LSL#1; this
2F7802:  RSB.W           R1, R2, R2,LSL#3
2F7806:  LDRSB.W         R2, [R0,#9]
2F780A:  ADD.W           R1, R3, R1,LSL#1
2F780E:  LDRSB.W         R3, [R0,#8]
2F7812:  LDRSB.W         R6, [R1,#9]
2F7816:  VMOV            S0, R3
2F781A:  VCVT.F32.S32    S18, S0
2F781E:  LDRSB.W         R1, [R1,#8]
2F7822:  VMOV            S0, R2
2F7826:  VCVT.F32.S32    S22, S0
2F782A:  VMOV            S0, R6
2F782E:  VMOV            S24, R1
2F7832:  VCVT.F32.S32    S28, S0
2F7836:  BLX             j__ZN12CCarPathLink16OneWayLaneOffsetEv; CCarPathLink::OneWayLaneOffset(void)
2F783A:  LDRH.W          R1, [R11,#0x3AA]
2F783E:  VCVT.F32.S32    S30, S24
2F7842:  LDRSB.W         R2, [R11,#0x3BC]
2F7846:  VMOV            S0, R8
2F784A:  VMOV            S2, R0
2F784E:  VLDR            S24, =0.01
2F7852:  VLDR            S27, =5.4
2F7856:  VMOV            S4, R2
2F785A:  VMUL.F32        S22, S22, S24
2F785E:  VCVT.F32.S32    S23, S4
2F7862:  UBFX.W          R0, R1, #0xA, #6
2F7866:  BFC.W           R1, #0xA, #0x16
2F786A:  VMUL.F32        S18, S18, S24
2F786E:  LDR.W           R0, [R5,R0,LSL#2]
2F7872:  VCVT.F32.S32    S21, S0
2F7876:  VADD.F32        S0, S2, S16
2F787A:  RSB.W           R1, R1, R1,LSL#3
2F787E:  ADD.W           R0, R0, R1,LSL#1; this
2F7882:  VMUL.F32        S17, S0, S27
2F7886:  BLX             j__ZN12CCarPathLink16OneWayLaneOffsetEv; CCarPathLink::OneWayLaneOffset(void)
2F788A:  VMOV            S0, R0
2F788E:  LDRH.W          R6, [R11,#0x3A8]
2F7892:  LDRH.W          R2, [R11,#0x3AA]
2F7896:  VMUL.F32        S18, S18, S20
2F789A:  VADD.F32        S0, S0, S23
2F789E:  VLDR            S2, =1.458
2F78A2:  MOV             R0, R6
2F78A4:  UBFX.W          R1, R6, #0xA, #6
2F78A8:  BFC.W           R0, #0xA, #0x16
2F78AC:  UBFX.W          R3, R2, #0xA, #6
2F78B0:  LDR.W           R1, [R5,R1,LSL#2]
2F78B4:  VADD.F32        S4, S17, S2
2F78B8:  RSB.W           R0, R0, R0,LSL#3
2F78BC:  LDR.W           R3, [R5,R3,LSL#2]
2F78C0:  VMOV.F32        S16, #0.125
2F78C4:  ADD.W           R5, R1, R0,LSL#1
2F78C8:  LDRSH.W         R0, [R1,R0,LSL#1]
2F78CC:  MOV             R1, R2
2F78CE:  VMUL.F32        S0, S0, S27
2F78D2:  BFC.W           R1, #0xA, #0x16
2F78D6:  LDR.W           R4, [R11,#0x5A4]
2F78DA:  LDRSH.W         R5, [R5,#2]
2F78DE:  VMUL.F32        S20, S22, S20
2F78E2:  RSB.W           R1, R1, R1,LSL#3
2F78E6:  CMP             R4, #0xA
2F78E8:  VMOV            S6, R0
2F78EC:  LDRSH.W         R0, [R3,R1,LSL#1]
2F78F0:  IT EQ
2F78F2:  VMOVEQ.F32      S17, S4
2F78F6:  VMOV            S4, R5
2F78FA:  VCVT.F32.S32    S6, S6
2F78FE:  ADD.W           R1, R3, R1,LSL#1
2F7902:  VCVT.F32.S32    S8, S4
2F7906:  CMP             R4, #0xA
2F7908:  VADD.F32        S10, S0, S2
2F790C:  LDRSH.W         R1, [R1,#2]
2F7910:  VMOV            S4, R0
2F7914:  ADD.W           R4, R11, #4
2F7918:  VMUL.F32        S12, S20, S17
2F791C:  VMOV            S2, R1
2F7920:  MOV             R0, R4
2F7922:  VCVT.F32.S32    S2, S2
2F7926:  VCVT.F32.S32    S4, S4
2F792A:  IT EQ
2F792C:  VMOVEQ.F32      S0, S10
2F7930:  VMUL.F32        S10, S18, S17
2F7934:  VMUL.F32        S8, S8, S16
2F7938:  LDR.W           R1, [R11,#0x14]; CVehicle *
2F793C:  VMUL.F32        S14, S6, S16
2F7940:  CMP             R1, #0
2F7942:  IT NE
2F7944:  ADDNE.W         R0, R1, #0x30 ; '0'
2F7948:  VSUB.F32        S6, S8, S10
2F794C:  VLDR            S10, [R0,#4]
2F7950:  VADD.F32        S8, S12, S14
2F7954:  VLDR            S12, [R0]
2F7958:  VSUB.F32        S10, S10, S6
2F795C:  VSUB.F32        S12, S12, S8
2F7960:  VMUL.F32        S14, S10, S10
2F7964:  VMUL.F32        S1, S12, S12
2F7968:  VADD.F32        S14, S1, S14
2F796C:  VSQRT.F32       S22, S14
2F7970:  VMOV.F32        S14, #5.0
2F7974:  VCMPE.F32       S22, S14
2F7978:  VMRS            APSR_nzcv, FPSCR
2F797C:  BLT             loc_2F7A18
2F797E:  VMUL.F32        S14, S28, S24
2F7982:  VMUL.F32        S1, S30, S24
2F7986:  VMUL.F32        S2, S2, S16
2F798A:  VMUL.F32        S4, S4, S16
2F798E:  VMUL.F32        S28, S1, S21
2F7992:  VMUL.F32        S1, S14, S21
2F7996:  VMUL.F32        S14, S28, S0
2F799A:  VMUL.F32        S0, S1, S0
2F799E:  VSUB.F32        S2, S2, S14
2F79A2:  VADD.F32        S0, S0, S4
2F79A6:  VSUB.F32        S2, S2, S6
2F79AA:  VSUB.F32        S4, S0, S8
2F79AE:  VMUL.F32        S0, S2, S10
2F79B2:  VMUL.F32        S6, S4, S12
2F79B6:  VADD.F32        S0, S6, S0
2F79BA:  VCMPE.F32       S0, #0.0
2F79BE:  VMRS            APSR_nzcv, FPSCR
2F79C2:  BLE             loc_2F79D2
2F79C4:  VMOV.F32        S6, #8.0
2F79C8:  VCMPE.F32       S22, S6
2F79CC:  VMRS            APSR_nzcv, FPSCR
2F79D0:  BLT             loc_2F7A18
2F79D2:  VMUL.F32        S2, S2, S2
2F79D6:  VMUL.F32        S4, S4, S4
2F79DA:  VADD.F32        S2, S4, S2
2F79DE:  VSQRT.F32       S2, S2
2F79E2:  VMUL.F32        S2, S22, S2
2F79E6:  VDIV.F32        S0, S0, S2
2F79EA:  VLDR            S2, =0.7
2F79EE:  VCMPE.F32       S0, S2
2F79F2:  VMRS            APSR_nzcv, FPSCR
2F79F6:  BGT             loc_2F7A18
2F79F8:  CMP             R2, R6
2F79FA:  BEQ             loc_2F7A18
2F79FC:  VSTR            S1, [SP,#0xB0+var_9C]
2F7A00:  B               loc_2F7C76
2F7A02:  MOV.W           R0, #0x3F800000
2F7A06:  STR.W           R0, [R10]
2F7A0A:  MOVS            R0, #0
2F7A0C:  STR.W           R0, [R9]
2F7A10:  STR             R0, [R1]
2F7A12:  STRB            R0, [R5]
2F7A14:  B.W             loc_2F82D6
2F7A18:  MOV             R0, R11; this
2F7A1A:  BLX             j__ZN8CCarCtrl29PickNextNodeAccordingStrategyEP8CVehicle; CCarCtrl::PickNextNodeAccordingStrategy(CVehicle *)
2F7A1E:  CMP             R0, #1
2F7A20:  BNE.W           def_2F7A30; jumptable 002F7A30 default case, cases 3,5-7,9-11,13,14,16,18-42,44-64
2F7A24:  LDRSB.W         R0, [R11,#0x3BE]
2F7A28:  SUBS            R1, R0, #2; switch 67 cases
2F7A2A:  CMP             R1, #0x42 ; 'B'
2F7A2C:  BHI.W           def_2F7A30; jumptable 002F7A30 default case, cases 3,5-7,9-11,13,14,16,18-42,44-64
2F7A30:  TBH.W           [PC,R1,LSL#1]; switch jump
2F7A34:  DCW 0x41E; jump table for switch statement
2F7A36:  DCW 0x6A
2F7A38:  DCW 0x420
2F7A3A:  DCW 0x6A
2F7A3C:  DCW 0x6A
2F7A3E:  DCW 0x6A
2F7A40:  DCW 0x422
2F7A42:  DCW 0x6A
2F7A44:  DCW 0x6A
2F7A46:  DCW 0x6A
2F7A48:  DCW 0x426
2F7A4A:  DCW 0x6A
2F7A4C:  DCW 0x6A
2F7A4E:  DCW 0x42C
2F7A50:  DCW 0x6A
2F7A52:  DCW 0x430
2F7A54:  DCW 0x6A
2F7A56:  DCW 0x6A
2F7A58:  DCW 0x6A
2F7A5A:  DCW 0x6A
2F7A5C:  DCW 0x6A
2F7A5E:  DCW 0x6A
2F7A60:  DCW 0x6A
2F7A62:  DCW 0x6A
2F7A64:  DCW 0x6A
2F7A66:  DCW 0x6A
2F7A68:  DCW 0x6A
2F7A6A:  DCW 0x6A
2F7A6C:  DCW 0x6A
2F7A6E:  DCW 0x6A
2F7A70:  DCW 0x6A
2F7A72:  DCW 0x6A
2F7A74:  DCW 0x6A
2F7A76:  DCW 0x6A
2F7A78:  DCW 0x6A
2F7A7A:  DCW 0x6A
2F7A7C:  DCW 0x6A
2F7A7E:  DCW 0x6A
2F7A80:  DCW 0x6A
2F7A82:  DCW 0x6A
2F7A84:  DCW 0x6A
2F7A86:  DCW 0x43E
2F7A88:  DCW 0x6A
2F7A8A:  DCW 0x6A
2F7A8C:  DCW 0x6A
2F7A8E:  DCW 0x6A
2F7A90:  DCW 0x6A
2F7A92:  DCW 0x6A
2F7A94:  DCW 0x6A
2F7A96:  DCW 0x6A
2F7A98:  DCW 0x6A
2F7A9A:  DCW 0x6A
2F7A9C:  DCW 0x6A
2F7A9E:  DCW 0x6A
2F7AA0:  DCW 0x6A
2F7AA2:  DCW 0x6A
2F7AA4:  DCW 0x6A
2F7AA6:  DCW 0x6A
2F7AA8:  DCW 0x6A
2F7AAA:  DCW 0x6A
2F7AAC:  DCW 0x6A
2F7AAE:  DCW 0x6A
2F7AB0:  DCW 0x6A
2F7AB2:  DCW 0x43
2F7AB4:  DCW 0x43
2F7AB6:  DCW 0x43
2F7AB8:  DCW 0x43
2F7ABA:  LDR.W           R1, [R11,#0x420]; jumptable 002F7A30 cases 65-68
2F7ABE:  UXTB            R0, R0
2F7AC0:  ADDS            R0, #0xDC
2F7AC2:  STRB.W          R0, [R11,#0x3BE]
2F7AC6:  LDR             R0, [R1,#0x14]
2F7AC8:  ADD.W           R3, R0, #0x30 ; '0'
2F7ACC:  CMP             R0, #0
2F7ACE:  IT EQ
2F7AD0:  ADDEQ           R3, R1, #4
2F7AD2:  B               loc_2F82AA
2F7AD4:  DCFS 0.01
2F7AD8:  DCFS 5.4
2F7ADC:  DCFS 1.458
2F7AE0:  DCFS 0.7
2F7AE4:  DCFS 0.35
2F7AE8:  DCFS 40.0
2F7AEC:  DCFS -3.1416
2F7AF0:  DCFS 6.2832
2F7AF4:  DCFS 3.1416
2F7AF8:  DCFS -6.2832
2F7AFC:  DCFS 0.2
2F7B00:  DCFS 0.9
2F7B04:  DCFS 0.0
2F7B08:  LDR.W           R1, =(ThePaths_ptr - 0x2F7B14); jumptable 002F7A30 default case, cases 3,5-7,9-11,13,14,16,18-42,44-64
2F7B0C:  LDRH.W          R0, [R11,#0x3A8]
2F7B10:  ADD             R1, PC; ThePaths_ptr
2F7B12:  LDR             R2, [R1]; ThePaths
2F7B14:  LSRS            R1, R0, #0xA
2F7B16:  ADD.W           R2, R2, R1,LSL#2
2F7B1A:  LDR.W           R2, [R2,#0x804]
2F7B1E:  CMP             R2, #0
2F7B20:  BEQ.W           loc_2F802C
2F7B24:  LDR.W           R2, =(ThePaths_ptr - 0x2F7B30)
2F7B28:  LDRH.W          R3, [R11,#0x3AA]
2F7B2C:  ADD             R2, PC; ThePaths_ptr
2F7B2E:  LDR             R2, [R2]; ThePaths
2F7B30:  UBFX.W          R3, R3, #0xA, #6
2F7B34:  ADD.W           R2, R2, R3,LSL#2
2F7B38:  LDR.W           R2, [R2,#0x804]
2F7B3C:  CMP             R2, #0
2F7B3E:  BEQ.W           loc_2F802C
2F7B42:  LDR.W           R2, =(ThePaths_ptr - 0x2F7B52)
2F7B46:  BFC.W           R0, #0xA, #0x16
2F7B4A:  LDRSB.W         R6, [R11,#0x3BB]
2F7B4E:  ADD             R2, PC; ThePaths_ptr
2F7B50:  RSB.W           R0, R0, R0,LSL#3
2F7B54:  LDR             R2, [R2]; ThePaths
2F7B56:  ADDW            R5, R2, #0x924
2F7B5A:  LDR.W           R1, [R5,R1,LSL#2]
2F7B5E:  ADD.W           R0, R1, R0,LSL#1; this
2F7B62:  BLX             j__ZN12CCarPathLink16OneWayLaneOffsetEv; CCarPathLink::OneWayLaneOffset(void)
2F7B66:  VMOV            S0, R6
2F7B6A:  VMOV            S2, R0
2F7B6E:  VCVT.F32.S32    S0, S0
2F7B72:  LDRH.W          R6, [R11,#0x3A8]
2F7B76:  MOV             R1, R6
2F7B78:  UBFX.W          R0, R6, #0xA, #6
2F7B7C:  BFC.W           R1, #0xA, #0x16
2F7B80:  LDR.W           R0, [R5,R0,LSL#2]
2F7B84:  RSB.W           R1, R1, R1,LSL#3
2F7B88:  VADD.F32        S0, S2, S0
2F7B8C:  ADD.W           R2, R0, R1,LSL#1
2F7B90:  LDRSH.W         R0, [R0,R1,LSL#1]
2F7B94:  LDRSH.W         R3, [R2,#2]
2F7B98:  VMOV            S2, R0
2F7B9C:  MOV             R0, R4
2F7B9E:  VMUL.F32        S17, S0, S27
2F7BA2:  VMOV            S0, R3
2F7BA6:  VCVT.F32.S32    S0, S0
2F7BAA:  VCVT.F32.S32    S2, S2
2F7BAE:  LDR.W           R1, [R11,#0x14]
2F7BB2:  CMP             R1, #0
2F7BB4:  VMUL.F32        S4, S18, S17
2F7BB8:  IT NE
2F7BBA:  ADDNE.W         R0, R1, #0x30 ; '0'
2F7BBE:  VMUL.F32        S6, S20, S17
2F7BC2:  VMUL.F32        S0, S0, S16
2F7BC6:  VMUL.F32        S2, S2, S16
2F7BCA:  VSUB.F32        S0, S0, S4
2F7BCE:  VLDR            S4, [R0]
2F7BD2:  VADD.F32        S2, S6, S2
2F7BD6:  VLDR            S6, [R0,#4]
2F7BDA:  LDRH.W          R0, [R11,#0x3AA]
2F7BDE:  UBFX.W          R3, R0, #0xA, #6
2F7BE2:  BFC.W           R0, #0xA, #0x16
2F7BE6:  VSUB.F32        S0, S0, S6
2F7BEA:  LDR.W           R3, [R5,R3,LSL#2]
2F7BEE:  VSUB.F32        S2, S2, S4
2F7BF2:  RSB.W           R0, R0, R0,LSL#3
2F7BF6:  ADD.W           R0, R3, R0,LSL#1
2F7BFA:  LDRSB.W         R3, [R2,#8]
2F7BFE:  LDRSB.W         R2, [R2,#9]
2F7C02:  VMUL.F32        S0, S0, S0
2F7C06:  VMUL.F32        S2, S2, S2
2F7C0A:  VMOV            S4, R2
2F7C0E:  VADD.F32        S0, S2, S0
2F7C12:  VMOV            S2, R3
2F7C16:  VCVT.F32.S32    S2, S2
2F7C1A:  LDRSB.W         R3, [R0,#8]
2F7C1E:  VCVT.F32.S32    S4, S4
2F7C22:  LDRSB.W         R0, [R0,#9]
2F7C26:  VMOV            S6, R3
2F7C2A:  VMOV            S8, R0
2F7C2E:  VCVT.F32.S32    S6, S6
2F7C32:  VCVT.F32.S32    S8, S8
2F7C36:  LDRSB.W         R0, [R11,#0x3BA]
2F7C3A:  VSQRT.F32       S22, S0
2F7C3E:  VMOV            S0, R0
2F7C42:  VMUL.F32        S8, S8, S24
2F7C46:  VCVT.F32.S32    S0, S0
2F7C4A:  LDRSB.W         R0, [R11,#0x3B9]
2F7C4E:  VMUL.F32        S6, S6, S24
2F7C52:  VMUL.F32        S4, S4, S24
2F7C56:  VMOV            S10, R0
2F7C5A:  VMUL.F32        S2, S2, S24
2F7C5E:  VCVT.F32.S32    S10, S10
2F7C62:  VMUL.F32        S8, S8, S0
2F7C66:  VMUL.F32        S28, S6, S0
2F7C6A:  VMUL.F32        S20, S4, S10
2F7C6E:  VMUL.F32        S18, S2, S10
2F7C72:  VSTR            S8, [SP,#0xB0+var_9C]
2F7C76:  LDR.W           R0, =(ThePaths_ptr - 0x2F7C8A)
2F7C7A:  UBFX.W          R2, R6, #0xA, #6
2F7C7E:  BFC.W           R6, #0xA, #0x16
2F7C82:  VMUL.F32        S6, S17, S20
2F7C86:  ADD             R0, PC; ThePaths_ptr
2F7C88:  VMUL.F32        S8, S20, S22
2F7C8C:  VLDR            S12, =0.35
2F7C90:  VMUL.F32        S4, S18, S22
2F7C94:  LDR             R0, [R0]; ThePaths
2F7C96:  VMUL.F32        S10, S17, S18
2F7C9A:  ADD.W           R0, R0, R2,LSL#2
2F7C9E:  RSB.W           R2, R6, R6,LSL#3; float
2F7CA2:  LDR.W           R0, [R0,#0x924]
2F7CA6:  VMUL.F32        S4, S4, S12
2F7CAA:  LDRSH.W         R3, [R0,R2,LSL#1]
2F7CAE:  ADD.W           R0, R0, R2,LSL#1
2F7CB2:  VMOV            S0, R3
2F7CB6:  VCVT.F32.S32    S0, S0
2F7CBA:  LDRSH.W         R0, [R0,#2]
2F7CBE:  VMOV            S2, R0
2F7CC2:  MOV             R0, R4
2F7CC4:  VCVT.F32.S32    S2, S2
2F7CC8:  VMUL.F32        S0, S0, S16
2F7CCC:  VMUL.F32        S2, S2, S16
2F7CD0:  VADD.F32        S0, S6, S0
2F7CD4:  VMUL.F32        S6, S8, S12
2F7CD8:  VLDR            S8, =40.0
2F7CDC:  VCMPE.F32       S22, S8
2F7CE0:  VMRS            APSR_nzcv, FPSCR
2F7CE4:  VSUB.F32        S2, S2, S10
2F7CE8:  VSUB.F32        S4, S0, S4
2F7CEC:  VSUB.F32        S6, S2, S6
2F7CF0:  ITT GT
2F7CF2:  VMOVGT.F32      S4, S0
2F7CF6:  VMOVGT.F32      S6, S2
2F7CFA:  CMP             R1, #0
2F7CFC:  IT NE
2F7CFE:  ADDNE.W         R0, R1, #0x30 ; '0'
2F7D02:  VLDR            S0, [R0]
2F7D06:  VLDR            S2, [R0,#4]
2F7D0A:  VSUB.F32        S0, S4, S0
2F7D0E:  VSUB.F32        S2, S6, S2
2F7D12:  VMOV            R0, S0; this
2F7D16:  VMOV            R1, S2; float
2F7D1A:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
2F7D1E:  MOV             R6, R0
2F7D20:  VMOV            R0, S19; this
2F7D24:  VMOV            R1, S26; float
2F7D28:  VMOV            S24, R6
2F7D2C:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
2F7D30:  MOV             R3, R0
2F7D32:  LDRB.W          R0, [R11,#0x3BD]
2F7D36:  VMOV            S26, R3; float
2F7D3A:  CMP             R0, #6
2F7D3C:  BHI             loc_2F7D5E
2F7D3E:  MOVS            R1, #1
2F7D40:  LSL.W           R0, R1, R0
2F7D44:  TST.W           R0, #0x64
2F7D48:  BEQ             loc_2F7D5E
2F7D4A:  MOV.W           R0, #0x3F800000
2F7D4E:  MOVS            R1, #0; CVehicle *
2F7D50:  STR             R0, [SP,#0xB0+var_B0]; float
2F7D52:  MOV             R0, R11; this
2F7D54:  MOV             R2, R6; CPhysical *
2F7D56:  BLX             j__ZN8CCarCtrl30FindAngleToWeaveThroughTrafficEP8CVehicleP9CPhysicalfff; CCarCtrl::FindAngleToWeaveThroughTraffic(CVehicle *,CPhysical *,float,float,float)
2F7D5A:  VMOV            S24, R0
2F7D5E:  VSUB.F32        S24, S24, S26
2F7D62:  VLDR            S21, =-3.1416
2F7D66:  VCMPE.F32       S24, S21
2F7D6A:  VMRS            APSR_nzcv, FPSCR
2F7D6E:  BGE             loc_2F7D82
2F7D70:  VLDR            S0, =6.2832
2F7D74:  VADD.F32        S24, S24, S0
2F7D78:  VCMPE.F32       S24, S21
2F7D7C:  VMRS            APSR_nzcv, FPSCR
2F7D80:  BLT             loc_2F7D74
2F7D82:  VLDR            S19, =3.1416
2F7D86:  VCMPE.F32       S24, S19
2F7D8A:  VMRS            APSR_nzcv, FPSCR
2F7D8E:  BLE             loc_2F7DA2
2F7D90:  VLDR            S0, =-6.2832
2F7D94:  VADD.F32        S24, S24, S0
2F7D98:  VCMPE.F32       S24, S19
2F7D9C:  VMRS            APSR_nzcv, FPSCR
2F7DA0:  BGT             loc_2F7D94
2F7DA2:  VLDR            S17, [R11,#0x48]
2F7DA6:  VLDR            S29, [R11,#0x4C]
2F7DAA:  VMUL.F32        S2, S17, S17
2F7DAE:  VLDR            S23, [R11,#0x50]
2F7DB2:  VMUL.F32        S0, S29, S29
2F7DB6:  LDR.W           R0, [R11,#0x14]
2F7DBA:  VMUL.F32        S4, S23, S23
2F7DBE:  VLDR            S6, =0.2
2F7DC2:  VADD.F32        S0, S2, S0
2F7DC6:  VLDR            S2, [R0,#0x10]
2F7DCA:  VSTR            S2, [SP,#0xB0+var_88]
2F7DCE:  VLDR            S2, [R0,#0x14]
2F7DD2:  VSTR            S2, [SP,#0xB0+var_8C]
2F7DD6:  VLDR            S2, [R0,#0x18]
2F7DDA:  VADD.F32        S0, S0, S4
2F7DDE:  VLDR            S4, =0.7
2F7DE2:  VSTR            S2, [SP,#0xB0+var_84]
2F7DE6:  VLDR            S2, =0.9
2F7DEA:  VSQRT.F32       S0, S0
2F7DEE:  VCMPE.F32       S0, S4
2F7DF2:  VMRS            APSR_nzcv, FPSCR
2F7DF6:  VSUB.F32        S2, S2, S0
2F7DFA:  VMOV.F32        S0, #1.0
2F7DFE:  IT GT
2F7E00:  VMOVGT.F32      S2, S6
2F7E04:  LDRSB.W         R0, [R11,#0x3BD]
2F7E08:  VMIN.F32        D1, D1, D2
2F7E0C:  CMP             R0, #6
2F7E0E:  UXTB            R1, R0; CVehicle *
2F7E10:  VNEG.F32        S30, S2
2F7E14:  VSTR            D1, [SP,#0xB0+var_80]
2F7E18:  BHI             loc_2F7E44
2F7E1A:  MOVS            R2, #1
2F7E1C:  LSL.W           R0, R2, R0
2F7E20:  TST.W           R0, #0x53
2F7E24:  BEQ             loc_2F7E44
2F7E26:  MOV             R0, R11; this
2F7E28:  BLX             j__ZN8CCarCtrl35FindMaximumSpeedForThisCarInTrafficEP8CVehicle; CCarCtrl::FindMaximumSpeedForThisCarInTraffic(CVehicle *)
2F7E2C:  LDRB.W          R2, [R11,#0x3D4]
2F7E30:  VMOV            S2, R0
2F7E34:  LDRB.W          R1, [R11,#0x3BD]
2F7E38:  VMOV            S0, R2; bool
2F7E3C:  VCVT.F32.U32    S0, S0
2F7E40:  VDIV.F32        S0, S2, S0
2F7E44:  SXTB            R0, R1
2F7E46:  CMP             R0, #6
2F7E48:  VSTR            D0, [SP,#0xB0+var_78]
2F7E4C:  BHI             loc_2F7E72
2F7E4E:  MOVS            R1, #1
2F7E50:  LSL.W           R0, R1, R0
2F7E54:  TST.W           R0, #0x63
2F7E58:  BEQ             loc_2F7E72
2F7E5A:  MOV             R0, R11; this
2F7E5C:  MOVS            R1, #0; CVehicle *
2F7E5E:  BLX             j__ZN14CTrafficLights21ShouldCarStopForLightEP8CVehicleb; CTrafficLights::ShouldCarStopForLight(CVehicle *,bool)
2F7E62:  CBZ             R0, loc_2F7E72
2F7E64:  MOV             R0, R11; this
2F7E66:  BLX             j__ZN6CCarAI18CarHasReasonToStopEP8CVehicle; CCarAI::CarHasReasonToStop(CVehicle *)
2F7E6A:  VLDR            S0, =0.0
2F7E6E:  VSTR            D0, [SP,#0xB0+var_78]
2F7E72:  VMAX.F32        D16, D12, D15
2F7E76:  MOV             R0, R11; this
2F7E78:  VSTR            D16, [SP,#0xB0+var_98]
2F7E7C:  BLX             j__ZN14CTrafficLights22ShouldCarStopForBridgeEP8CVehicle; CTrafficLights::ShouldCarStopForBridge(CVehicle *)
2F7E80:  CMP             R0, #1
2F7E82:  BNE             loc_2F7E92
2F7E84:  MOV             R0, R11; this
2F7E86:  BLX             j__ZN6CCarAI18CarHasReasonToStopEP8CVehicle; CCarAI::CarHasReasonToStop(CVehicle *)
2F7E8A:  VLDR            S0, =0.0
2F7E8E:  VSTR            D0, [SP,#0xB0+var_78]
2F7E92:  LDR.W           R0, =(ThePaths_ptr - 0x2F7E9E)
2F7E96:  LDRH.W          R1, [R11,#0x3A8]
2F7E9A:  ADD             R0, PC; ThePaths_ptr
2F7E9C:  LDRSB.W         R5, [R11,#0x3BB]
2F7EA0:  LDR             R0, [R0]; ThePaths
2F7EA2:  UBFX.W          R2, R1, #0xA, #6
2F7EA6:  BFC.W           R1, #0xA, #0x16
2F7EAA:  ADDW            R6, R0, #0x924
2F7EAE:  RSB.W           R1, R1, R1,LSL#3
2F7EB2:  LDR.W           R0, [R6,R2,LSL#2]
2F7EB6:  ADD.W           R0, R0, R1,LSL#1; this
2F7EBA:  BLX             j__ZN12CCarPathLink16OneWayLaneOffsetEv; CCarPathLink::OneWayLaneOffset(void)
2F7EBE:  VMOV            S0, R5
2F7EC2:  VMOV            S2, R0
2F7EC6:  VCVT.F32.S32    S0, S0
2F7ECA:  LDRH.W          R1, [R11,#0x3A8]
2F7ECE:  UBFX.W          R0, R1, #0xA, #6
2F7ED2:  BFC.W           R1, #0xA, #0x16
2F7ED6:  LDR.W           R0, [R6,R0,LSL#2]
2F7EDA:  RSB.W           R1, R1, R1,LSL#3
2F7EDE:  VADD.F32        S0, S2, S0
2F7EE2:  LDRSH.W         R2, [R0,R1,LSL#1]
2F7EE6:  ADD.W           R0, R0, R1,LSL#1
2F7EEA:  MOV             R1, R4
2F7EEC:  VMOV            S2, R2; float
2F7EF0:  VCVT.F32.S32    S2, S2
2F7EF4:  LDRSH.W         R0, [R0,#2]
2F7EF8:  VMUL.F32        S0, S0, S27
2F7EFC:  VMOV            S4, R0
2F7F00:  VCVT.F32.S32    S4, S4
2F7F04:  LDR.W           R0, [R11,#0x14]
2F7F08:  VMUL.F32        S2, S2, S16
2F7F0C:  CMP             R0, #0
2F7F0E:  VMUL.F32        S6, S20, S0
2F7F12:  IT NE
2F7F14:  ADDNE.W         R1, R0, #0x30 ; '0'
2F7F18:  VMUL.F32        S0, S18, S0
2F7F1C:  VMUL.F32        S4, S4, S16
2F7F20:  VADD.F32        S2, S6, S2
2F7F24:  VLDR            S6, [R1,#4]
2F7F28:  VSUB.F32        S0, S4, S0
2F7F2C:  VLDR            S4, [R1]
2F7F30:  VSUB.F32        S2, S2, S4
2F7F34:  VSUB.F32        S0, S0, S6
2F7F38:  VMOV            R0, S2; this
2F7F3C:  VMOV            R1, S0; float
2F7F40:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
2F7F44:  VMOV            S0, R0
2F7F48:  VSUB.F32        S0, S0, S26
2F7F4C:  VCMPE.F32       S0, S21
2F7F50:  VMRS            APSR_nzcv, FPSCR
2F7F54:  BGE             loc_2F7F68
2F7F56:  VLDR            S2, =6.2832
2F7F5A:  VADD.F32        S0, S0, S2
2F7F5E:  VCMPE.F32       S0, S21
2F7F62:  VMRS            APSR_nzcv, FPSCR
2F7F66:  BLT             loc_2F7F5A
2F7F68:  VLDR            S2, [SP,#0xB0+var_8C]
2F7F6C:  VCMPE.F32       S0, S19
2F7F70:  VLDR            S4, [SP,#0xB0+var_88]
2F7F74:  VMUL.F32        S2, S29, S2
2F7F78:  VMRS            APSR_nzcv, FPSCR
2F7F7C:  VMUL.F32        S4, S17, S4
2F7F80:  BLE             loc_2F7F94
2F7F82:  VLDR            S6, =-6.2832
2F7F86:  VADD.F32        S0, S0, S6
2F7F8A:  VCMPE.F32       S0, S19
2F7F8E:  VMRS            APSR_nzcv, FPSCR
2F7F92:  BGT             loc_2F7F86
2F7F94:  VABS.F32        S0, S0
2F7F98:  VLDR            S6, [SP,#0xB0+var_84]
2F7F9C:  VADD.F32        S17, S4, S2
2F7FA0:  VLDR            S2, =-0.4
2F7FA4:  VLDR            S4, =0.0
2F7FA8:  VMUL.F32        S30, S23, S6
2F7FAC:  VLDR            S23, =0.8
2F7FB0:  VMOV            R0, S18; this
2F7FB4:  VMOV            R1, S20; float
2F7FB8:  VMOV            R6, S28
2F7FBC:  VMOV.F32        S28, #1.0
2F7FC0:  VADD.F32        S0, S0, S2
2F7FC4:  VLDR            S2, [SP,#0xB0+var_9C]
2F7FC8:  VMOV            R5, S2
2F7FCC:  VLDR            S2, =-0.6
2F7FD0:  VMAX.F32        D13, D0, D2
2F7FD4:  VDIV.F32        S0, S26, S23
2F7FD8:  VMUL.F32        S0, S0, S2
2F7FDC:  VADD.F32        S24, S0, S28
2F7FE0:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
2F7FE4:  VMOV            S18, R0
2F7FE8:  MOV             R0, R6; this
2F7FEA:  MOV             R1, R5; float
2F7FEC:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
2F7FF0:  VCMPE.F32       S26, S23
2F7FF4:  VMRS            APSR_nzcv, FPSCR
2F7FF8:  VMOV            S0, R0
2F7FFC:  VSUB.F32        S4, S18, S0
2F8000:  VLDR            S0, =0.4
2F8004:  VCMPE.F32       S4, S21
2F8008:  IT GT
2F800A:  VMOVGT.F32      S24, S0
2F800E:  VMRS            APSR_nzcv, FPSCR
2F8012:  BGE             loc_2F8044
2F8014:  LDR             R2, [R7,#arg_0]
2F8016:  LDR             R3, [SP,#0xB0+var_70]
2F8018:  VLDR            S0, =6.2832
2F801C:  VADD.F32        S4, S4, S0
2F8020:  VCMPE.F32       S4, S21
2F8024:  VMRS            APSR_nzcv, FPSCR
2F8028:  BLT             loc_2F801C
2F802A:  B               loc_2F8048
2F802C:  MOV.W           R0, #0x3F800000
2F8030:  STR.W           R0, [R10]
2F8034:  MOVS            R0, #0
2F8036:  STR.W           R0, [R9]
2F803A:  LDR             R1, [SP,#0xB0+var_70]
2F803C:  STR             R0, [R1]
2F803E:  LDR             R1, [R7,#arg_0]
2F8040:  STRB            R0, [R1]
2F8042:  B               loc_2F82D6
2F8044:  LDR             R2, [R7,#arg_0]
2F8046:  LDR             R3, [SP,#0xB0+var_70]
2F8048:  VADD.F32        S2, S17, S30
2F804C:  VLDR            D16, [SP,#0xB0+var_80]
2F8050:  VLDR            D17, [SP,#0xB0+var_98]
2F8054:  VCMPE.F32       S4, S19
2F8058:  VMIN.F32        D0, D17, D16
2F805C:  VLDR            S6, =60.0
2F8060:  VMRS            APSR_nzcv, FPSCR
2F8064:  BLE             loc_2F8078
2F8066:  VLDR            S8, =-6.2832
2F806A:  VADD.F32        S4, S4, S8
2F806E:  VCMPE.F32       S4, S19
2F8072:  VMRS            APSR_nzcv, FPSCR
2F8076:  BGT             loc_2F806A
2F8078:  VMUL.F32        S2, S2, S6
2F807C:  VLDR            S6, =40.0
2F8080:  LDRB.W          R0, [R11,#0x3D4]
2F8084:  VCMPE.F32       S22, S6
2F8088:  VMRS            APSR_nzcv, FPSCR
2F808C:  BGT             loc_2F80E4
2F808E:  CMP             R0, #0xC
2F8090:  BCC             loc_2F80E4
2F8092:  VABS.F32        S4, S4
2F8096:  VLDR            S6, =-0.1
2F809A:  VLDR            S10, =-40.0
2F809E:  VMOV.F32        S14, #1.0
2F80A2:  VLDR            S12, =0.6
2F80A6:  VDIV.F32        S10, S22, S10
2F80AA:  VADD.F32        S4, S4, S6
2F80AE:  VLDR            S6, =0.0
2F80B2:  VADD.F32        S10, S10, S14
2F80B6:  VMAX.F32        D2, D2, D3
2F80BA:  VLDR            S6, =1.1
2F80BE:  VDIV.F32        S8, S4, S6
2F80C2:  VCMPE.F32       S4, S6
2F80C6:  VMRS            APSR_nzcv, FPSCR
2F80CA:  VMUL.F32        S8, S8, S12
2F80CE:  VSUB.F32        S8, S14, S8
2F80D2:  VSUB.F32        S8, S14, S8
2F80D6:  IT GT
2F80D8:  VMOVGT.F32      S8, S12
2F80DC:  VMUL.F32        S4, S10, S8
2F80E0:  VSUB.F32        S28, S14, S4
2F80E4:  VMOV            S4, R0
2F80E8:  VLDR            S8, =0.05
2F80EC:  VMIN.F32        D16, D12, D14
2F80F0:  MOVS            R0, #0
2F80F2:  VCVT.F32.U32    S4, S4
2F80F6:  VLDR            D17, [SP,#0xB0+var_78]
2F80FA:  STR.W           R0, [R10]
2F80FE:  VMIN.F32        D3, D16, D17
2F8102:  VMUL.F32        S6, S6, S4
2F8106:  VCMPE.F32       S6, S8
2F810A:  VMRS            APSR_nzcv, FPSCR
2F810E:  VSUB.F32        S4, S6, S2
2F8112:  ITTT LT
2F8114:  VLDRLT          S6, =0.03
2F8118:  VCMPELT.F32     S4, S6
2F811C:  VMRSLT          APSR_nzcv, FPSCR
2F8120:  BGE             loc_2F8132
2F8122:  MOV.W           R0, #0x3F800000
2F8126:  STR.W           R0, [R10]
2F812A:  MOVS            R0, #0
2F812C:  STR.W           R0, [R9]
2F8130:  B               loc_2F81AE
2F8132:  VCMPE.F32       S4, #0.0
2F8136:  VMRS            APSR_nzcv, FPSCR
2F813A:  BLE             loc_2F8194
2F813C:  VMOV.F32        S6, #2.0
2F8140:  VMOV.F32        S8, #0.25
2F8144:  VCMPE.F32       S2, S6
2F8148:  VMRS            APSR_nzcv, FPSCR
2F814C:  VMOV.F32        S6, #1.0
2F8150:  VMOV.F32        S2, #3.0
2F8154:  VCMPE.F32       S4, S2
2F8158:  IT LT
2F815A:  VMOVLT.F32      S16, S8
2F815E:  VMRS            APSR_nzcv, FPSCR
2F8162:  VMUL.F32        S8, S16, S4
2F8166:  VMIN.F32        D3, D4, D3
2F816A:  VSTR            S6, [R9]
2F816E:  BLE             loc_2F81AE
2F8170:  LDR.W           R0, [R11,#0x5A4]
2F8174:  CMP             R0, #0xA
2F8176:  BNE             loc_2F81AE
2F8178:  ADDW            R0, R11, #0x82C
2F817C:  VLDR            S2, [R0]
2F8180:  VCMPE.F32       S2, #0.0
2F8184:  VMRS            APSR_nzcv, FPSCR
2F8188:  ITTT LE
2F818A:  MOVLE           R1, #0
2F818C:  MOVTLE          R1, #0x4120
2F8190:  STRLE           R1, [R0]
2F8192:  B               loc_2F81AE
2F8194:  VMOV.F32        S2, #-12.0
2F8198:  MOVS            R0, #0
2F819A:  STR.W           R0, [R9]
2F819E:  VDIV.F32        S2, S4, S2
2F81A2:  VMOV.F32        S4, #0.5
2F81A6:  VMIN.F32        D1, D1, D2
2F81AA:  VSTR            S2, [R10]
2F81AE:  MOVS            R0, #0
2F81B0:  VSTR            S0, [R3]
2F81B4:  STRB            R0, [R2]
2F81B6:  LDRB.W          R0, [R11,#0x3BE]
2F81BA:  ORR.W           R0, R0, #4
2F81BE:  CMP             R0, #0xC
2F81C0:  ITT EQ
2F81C2:  LDRBEQ.W        R0, [R11,#0x3BF]
2F81C6:  CMPEQ           R0, #0
2F81C8:  BNE.W           loc_2F82D6
2F81CC:  LDR.W           R0, [R11,#0x14]
2F81D0:  VLDR            S6, [R11,#0x3F0]
2F81D4:  CMP             R0, #0
2F81D6:  VLDR            S8, [R11,#0x3F4]
2F81DA:  VLDR            S10, [R11,#0x3F8]
2F81DE:  IT NE
2F81E0:  ADDNE.W         R4, R0, #0x30 ; '0'
2F81E4:  VLDR            S0, [R4]
2F81E8:  VLDR            S4, [R4,#4]
2F81EC:  VSUB.F32        S6, S0, S6
2F81F0:  VLDR            S2, [R4,#8]
2F81F4:  VSUB.F32        S8, S4, S8
2F81F8:  VSUB.F32        S10, S2, S10
2F81FC:  VMUL.F32        S6, S6, S6
2F8200:  VMUL.F32        S8, S8, S8
2F8204:  VMUL.F32        S10, S10, S10
2F8208:  VADD.F32        S6, S6, S8
2F820C:  VMOV.F32        S8, #8.0
2F8210:  VADD.F32        S6, S6, S10
2F8214:  VSQRT.F32       S6, S6
2F8218:  VCMPE.F32       S6, S8
2F821C:  VMRS            APSR_nzcv, FPSCR
2F8220:  BGE             loc_2F82D6
2F8222:  VLDR            S8, [R0,#0x10]
2F8226:  VLDR            S10, [R0,#0x14]
2F822A:  VMUL.F32        S0, S0, S8
2F822E:  VLDR            S12, [R0,#0x18]
2F8232:  VMUL.F32        S4, S4, S10
2F8236:  VMUL.F32        S2, S2, S12
2F823A:  VADD.F32        S0, S0, S4
2F823E:  VADD.F32        S0, S0, S2
2F8242:  VLDR            S2, =0.2
2F8246:  VABS.F32        S0, S0
2F824A:  VDIV.F32        S0, S0, S6
2F824E:  VCMPE.F32       S0, S2
2F8252:  VMRS            APSR_nzcv, FPSCR
2F8256:  BGE             loc_2F82D6
2F8258:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2F8264)
2F825A:  MOVS            R1, #3
2F825C:  STRB.W          R1, [R11,#0x3BF]
2F8260:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2F8262:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2F8264:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2F8266:  ADD.W           R0, R0, #0x7D0
2F826A:  STR.W           R0, [R11,#0x3C0]
2F826E:  B               loc_2F82D6
2F8270:  MOVS            R0, #3; jumptable 002F7A30 case 2
2F8272:  B               loc_2F82B2
2F8274:  MOVS            R0, #5; jumptable 002F7A30 case 4
2F8276:  B               loc_2F82B2
2F8278:  LDRD.W          R2, R3, [R11,#0x3F0]; jumptable 002F7A30 case 8
2F827C:  MOVS            R0, #9
2F827E:  B               loc_2F8286
2F8280:  LDRD.W          R2, R3, [R11,#0x3F0]; jumptable 002F7A30 case 12
2F8284:  MOVS            R0, #0xD
2F8286:  STRB.W          R0, [R11,#0x3BE]
2F828A:  B               loc_2F82C4
2F828C:  LDR.W           R0, [R11,#0x420]; jumptable 002F7A30 case 15
2F8290:  MOVS            R1, #0x10
2F8292:  B               loc_2F829A
2F8294:  LDR.W           R0, [R11,#0x420]; jumptable 002F7A30 case 17
2F8298:  MOVS            R1, #0x12
2F829A:  STRB.W          R1, [R11,#0x3BE]
2F829E:  LDR             R1, [R0,#0x14]
2F82A0:  ADD.W           R3, R1, #0x30 ; '0'
2F82A4:  CMP             R1, #0
2F82A6:  IT EQ
2F82A8:  ADDEQ           R3, R0, #4
2F82AA:  LDR             R2, [R3]
2F82AC:  LDR             R3, [R3,#4]
2F82AE:  B               loc_2F82C4
2F82B0:  MOVS            R0, #0x2C ; ','; jumptable 002F7A30 case 43
2F82B2:  STRB.W          R0, [R11,#0x3BE]
2F82B6:  ADD             R0, SP, #0xB0+var_6C; int
2F82B8:  MOV.W           R1, #0xFFFFFFFF
2F82BC:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2F82C0:  LDR             R2, [SP,#0xB0+var_6C]; CPhysical *
2F82C2:  LDR             R3, [SP,#0xB0+var_68]; float
2F82C4:  LDR             R0, [SP,#0xB0+var_70]
2F82C6:  MOVS            R1, #0; CVehicle *
2F82C8:  STMEA.W         SP, {R0,R9,R10}
2F82CC:  LDR             R0, [R7,#arg_0]
2F82CE:  STR             R0, [SP,#0xB0+var_A4]; float *
2F82D0:  MOV             R0, R11; this
2F82D2:  BLX             j__ZN8CCarCtrl37SteerAICarWithPhysicsHeadingForTargetEP8CVehicleP9CPhysicalffPfS4_S4_Pb; CCarCtrl::SteerAICarWithPhysicsHeadingForTarget(CVehicle *,CPhysical *,float,float,float *,float *,float *,bool *)
2F82D6:  ADD             SP, SP, #0x50 ; 'P'
2F82D8:  VPOP            {D8-D15}
2F82DC:  ADD             SP, SP, #4
2F82DE:  POP.W           {R8-R11}
2F82E2:  POP             {R4-R7,PC}
