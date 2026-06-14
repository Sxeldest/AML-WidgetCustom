; =========================================================
; Game Engine Function: _ZN10Interior_c11CalcExitPtsEv
; Address            : 0x4457BC - 0x445E96
; =========================================================

4457BC:  PUSH            {R4-R7,LR}
4457BE:  ADD             R7, SP, #0xC
4457C0:  PUSH.W          {R11}
4457C4:  VPUSH           {D8-D9}
4457C8:  SUB             SP, SP, #0x18
4457CA:  MOV             R4, R0
4457CC:  LDR             R0, [R4,#0x14]
4457CE:  LDRSB.W         R1, [R0,#5]
4457D2:  CMP             R1, #0
4457D4:  BLT.W           loc_445976
4457D8:  VMOV            S2, R1
4457DC:  VMOV.F32        S0, #-0.5
4457E0:  VCVT.F32.S32    S2, S2
4457E4:  LDRSB.W         R1, [R4,#0x40C]
4457E8:  CMP             R1, #3
4457EA:  VADD.F32        S16, S2, S0
4457EE:  BLT             loc_445816
4457F0:  ADD.W           R3, R4, #0x410
4457F4:  MOVS            R2, #0
4457F6:  LDRSB.W         R6, [R3]
4457FA:  VMOV            S0, R6
4457FE:  VCVT.F32.S32    S0, S0
445802:  VCMPE.F32       S16, S0
445806:  VMRS            APSR_nzcv, FPSCR
44580A:  BLT             loc_445854
44580C:  ADDS            R2, #2
44580E:  ADDS            R3, #0x20 ; ' '
445810:  CMP             R2, R1
445812:  BLT             loc_4457F6
445814:  B               loc_445856
445816:  MOVW            R1, #0xFFFF
44581A:  VMOV.F32        S0, #0.5
44581E:  STRH.W          R1, [R4,#0x512]
445822:  LDRB            R1, [R0,#2]
445824:  VLDR            S4, =0.0
445828:  NEGS            R1, R1
44582A:  VMOV            S2, R1
44582E:  VCVT.F32.S32    S2, S2
445832:  VMUL.F32        S2, S2, S0
445836:  VADD.F32        S2, S16, S2
44583A:  VADD.F32        S2, S2, S0
44583E:  VSTR            S2, [SP,#0x38+var_2C]
445842:  LDRB            R1, [R0,#3]
445844:  NEGS            R1, R1
445846:  VMOV            S2, R1
44584A:  VCVT.F32.S32    S2, S2
44584E:  VMUL.F32        S2, S2, S0
445852:  B               loc_4458B8
445854:  CBZ             R2, loc_445868
445856:  CMP             R2, R1
445858:  BNE             loc_44585E
44585A:  ADDS            R1, #0xFE
44585C:  B               loc_44586A
44585E:  ADD.W           R1, R2, #0xFE
445862:  STRB.W          R2, [R4,#0x512]
445866:  B               loc_445870
445868:  MOVS            R1, #0
44586A:  STRB.W          R1, [R4,#0x512]
44586E:  MOVS            R1, #0xFF
445870:  STRB.W          R1, [R4,#0x513]
445874:  VMOV.F32        S0, #0.5
445878:  LDRB            R1, [R0,#2]
44587A:  NEGS            R1, R1
44587C:  VMOV            S2, R1
445880:  VCVT.F32.S32    S2, S2
445884:  LDRSB.W         R1, [R4,#0x411]
445888:  VMOV            S4, R1
44588C:  VMUL.F32        S2, S2, S0
445890:  VADD.F32        S2, S16, S2
445894:  VADD.F32        S2, S2, S0
445898:  VSTR            S2, [SP,#0x38+var_2C]
44589C:  VMOV.F32        S2, #-0.25
4458A0:  LDRB            R2, [R0,#3]
4458A2:  VCVT.F32.S32    S4, S4
4458A6:  NEGS            R1, R2
4458A8:  VMOV            S6, R1
4458AC:  VCVT.F32.S32    S6, S6
4458B0:  VADD.F32        S2, S4, S2
4458B4:  VMUL.F32        S4, S6, S0
4458B8:  VADD.F32        S2, S2, S4
4458BC:  ADD.W           R5, R4, #0x18
4458C0:  ADD             R6, SP, #0x38+var_2C
4458C2:  MOVS            R2, #1
4458C4:  MOV             R3, R5
4458C6:  MOV             R1, R6
4458C8:  VADD.F32        S2, S2, S0
4458CC:  VSTR            S2, [SP,#0x38+var_28]
4458D0:  LDRB            R0, [R0,#4]
4458D2:  NEGS            R0, R0
4458D4:  VMOV            S2, R0
4458D8:  MOV             R0, R6
4458DA:  VCVT.F32.S32    S2, S2
4458DE:  VMUL.F32        S0, S2, S0
4458E2:  VSTR            S0, [SP,#0x38+var_24]
4458E6:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
4458EA:  ADD.W           R0, R6, #8
4458EE:  ADDS            R1, R6, #4
4458F0:  LDR             R2, [SP,#0x38+var_2C]
4458F2:  VMOV.F32        S0, #0.5
4458F6:  LDR             R1, [R1]
4458F8:  VMOV.F32        S4, #-0.25
4458FC:  LDR             R0, [R0]
4458FE:  MOV             R3, R5
445900:  STR.W           R2, [R4,#0x514]
445904:  MOVS            R2, #1
445906:  STR.W           R1, [R4,#0x518]
44590A:  STR.W           R0, [R4,#0x51C]
44590E:  LDR             R0, [R4,#0x14]
445910:  LDRB            R1, [R0,#2]
445912:  NEGS            R1, R1
445914:  VMOV            S2, R1
445918:  VCVT.F32.S32    S2, S2
44591C:  VMUL.F32        S2, S2, S0
445920:  VADD.F32        S2, S16, S2
445924:  VADD.F32        S2, S2, S0
445928:  VSTR            S2, [SP,#0x38+var_38]
44592C:  LDRB            R1, [R0,#3]
44592E:  NEGS            R1, R1
445930:  VMOV            S2, R1
445934:  VCVT.F32.S32    S2, S2
445938:  VMUL.F32        S2, S2, S0
44593C:  VADD.F32        S2, S2, S4
445940:  VADD.F32        S2, S2, S0
445944:  VSTR            S2, [SP,#0x38+var_34]
445948:  LDRB            R0, [R0,#4]
44594A:  NEGS            R0, R0
44594C:  VMOV            S2, R0
445950:  MOV             R0, SP
445952:  MOV             R1, R0
445954:  VCVT.F32.S32    S2, S2
445958:  VMUL.F32        S0, S2, S0
44595C:  VSTR            S0, [SP,#0x38+var_30]
445960:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
445964:  LDMFD.W         SP, {R0-R2}
445968:  STR.W           R0, [R4,#0x524]
44596C:  STR.W           R1, [R4,#0x528]
445970:  STR.W           R2, [R4,#0x52C]
445974:  LDR             R0, [R4,#0x14]
445976:  LDRSB.W         R1, [R0,#6]
44597A:  CMP             R1, #0
44597C:  BLT.W           loc_445B0C
445980:  LDRSB.W         R2, [R0,#7]
445984:  VMOV.F32        S16, #0.5
445988:  VMOV            S2, R1
44598C:  SUBS            R2, R2, R1
44598E:  VMOV.F32        S4, #-0.5
445992:  VMOV            S0, R2
445996:  VCVT.F32.S32    S0, S0
44599A:  VCVT.F32.S32    S2, S2
44599E:  LDRSB.W         R1, [R4,#0x40C]
4459A2:  CMP             R1, #3
4459A4:  VMUL.F32        S0, S0, S16
4459A8:  VADD.F32        S0, S0, S2
4459AC:  VADD.F32        S18, S0, S4
4459B0:  BLT             loc_4459CE
4459B2:  LDRSB.W         R1, [R4,#0x411]
4459B6:  VMOV            S0, R1
4459BA:  MOVS            R1, #0
4459BC:  VCVT.F32.S32    S0, S0
4459C0:  VCMPE.F32       S18, S0
4459C4:  VMRS            APSR_nzcv, FPSCR
4459C8:  BGE             loc_4459EC
4459CA:  MOVS            R2, #0xFF
4459CC:  B               loc_445A0A
4459CE:  MOVW            R1, #0xFFFF
4459D2:  VLDR            S2, =0.0
4459D6:  STRH.W          R1, [R4,#0x532]
4459DA:  LDRB            R1, [R0,#2]
4459DC:  NEGS            R1, R1
4459DE:  VMOV            S0, R1
4459E2:  VCVT.F32.S32    S0, S0
4459E6:  VMUL.F32        S0, S0, S16
4459EA:  B               loc_445A36
4459EC:  LDRSB.W         R2, [R4,#0x421]
4459F0:  VMOV            S0, R2
4459F4:  MOVS            R2, #1
4459F6:  VCVT.F32.S32    S0, S0
4459FA:  VCMPE.F32       S18, S0
4459FE:  VMRS            APSR_nzcv, FPSCR
445A02:  ITT GT
445A04:  MOVGT.W         R2, #0xFFFFFFFF
445A08:  MOVGT           R1, #1
445A0A:  STRB.W          R2, [R4,#0x533]
445A0E:  VMOV.F32        S0, #-0.25
445A12:  STRB.W          R1, [R4,#0x532]
445A16:  LDRSB.W         R1, [R4,#0x410]
445A1A:  LDRB            R2, [R0,#2]
445A1C:  VMOV            S2, R1
445A20:  NEGS            R1, R2
445A22:  VMOV            S4, R1
445A26:  VCVT.F32.S32    S2, S2
445A2A:  VCVT.F32.S32    S4, S4
445A2E:  VADD.F32        S0, S2, S0
445A32:  VMUL.F32        S2, S4, S16
445A36:  VADD.F32        S0, S0, S2
445A3A:  ADD.W           R5, R4, #0x18
445A3E:  ADD             R6, SP, #0x38+var_2C
445A40:  MOVS            R2, #1
445A42:  MOV             R3, R5
445A44:  VADD.F32        S0, S0, S16
445A48:  VSTR            S0, [SP,#0x38+var_2C]
445A4C:  LDRB            R1, [R0,#3]
445A4E:  NEGS            R1, R1
445A50:  VMOV            S0, R1
445A54:  MOV             R1, R6
445A56:  VCVT.F32.S32    S0, S0
445A5A:  VMUL.F32        S0, S0, S16
445A5E:  VADD.F32        S0, S18, S0
445A62:  VADD.F32        S0, S0, S16
445A66:  VSTR            S0, [SP,#0x38+var_28]
445A6A:  LDRB            R0, [R0,#4]
445A6C:  NEGS            R0, R0
445A6E:  VMOV            S0, R0
445A72:  MOV             R0, R6
445A74:  VCVT.F32.S32    S0, S0
445A78:  VMUL.F32        S0, S0, S16
445A7C:  VSTR            S0, [SP,#0x38+var_24]
445A80:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
445A84:  ADD.W           R0, R6, #8
445A88:  ADDS            R1, R6, #4
445A8A:  LDR             R2, [SP,#0x38+var_2C]
445A8C:  VMOV.F32        S2, #-0.25
445A90:  LDR             R1, [R1]
445A92:  MOV             R3, R5
445A94:  LDR             R0, [R0]
445A96:  STR.W           R2, [R4,#0x534]
445A9A:  MOVS            R2, #1
445A9C:  STR.W           R1, [R4,#0x538]
445AA0:  STR.W           R0, [R4,#0x53C]
445AA4:  LDR             R0, [R4,#0x14]
445AA6:  LDRB            R1, [R0,#2]
445AA8:  NEGS            R1, R1
445AAA:  VMOV            S0, R1
445AAE:  VCVT.F32.S32    S0, S0
445AB2:  VMUL.F32        S0, S0, S16
445AB6:  VADD.F32        S0, S0, S2
445ABA:  VADD.F32        S0, S0, S16
445ABE:  VSTR            S0, [SP,#0x38+var_38]
445AC2:  LDRB            R1, [R0,#3]
445AC4:  NEGS            R1, R1
445AC6:  VMOV            S0, R1
445ACA:  VCVT.F32.S32    S0, S0
445ACE:  VMUL.F32        S0, S0, S16
445AD2:  VADD.F32        S0, S18, S0
445AD6:  VADD.F32        S0, S0, S16
445ADA:  VSTR            S0, [SP,#0x38+var_34]
445ADE:  LDRB            R0, [R0,#4]
445AE0:  NEGS            R0, R0
445AE2:  VMOV            S0, R0
445AE6:  MOV             R0, SP
445AE8:  MOV             R1, R0
445AEA:  VCVT.F32.S32    S0, S0
445AEE:  VMUL.F32        S0, S0, S16
445AF2:  VSTR            S0, [SP,#0x38+var_30]
445AF6:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
445AFA:  LDMFD.W         SP, {R0-R2}
445AFE:  STR.W           R0, [R4,#0x544]
445B02:  STR.W           R1, [R4,#0x548]
445B06:  STR.W           R2, [R4,#0x54C]
445B0A:  LDR             R0, [R4,#0x14]
445B0C:  LDRSB.W         R1, [R0,#0xA]
445B10:  CMP             R1, #0
445B12:  BLT.W           loc_445CD6
445B16:  LDRSB.W         R2, [R0,#0xB]
445B1A:  VMOV.F32        S16, #0.5
445B1E:  VMOV            S2, R1
445B22:  SUBS            R2, R2, R1
445B24:  VMOV.F32        S4, #-0.5
445B28:  VMOV            S0, R2
445B2C:  VCVT.F32.S32    S0, S0
445B30:  VCVT.F32.S32    S2, S2
445B34:  LDRSB.W         R1, [R4,#0x40C]
445B38:  CMP             R1, #3
445B3A:  VMUL.F32        S0, S0, S16
445B3E:  VADD.F32        S0, S0, S2
445B42:  VADD.F32        S18, S0, S4
445B46:  BLT             loc_445BCC
445B48:  ADD.W           R3, R4, #0x420
445B4C:  MOVS            R2, #1
445B4E:  LDRSB.W         R6, [R3]
445B52:  VMOV            S0, R6
445B56:  VCVT.F32.S32    S0, S0
445B5A:  VCMPE.F32       S18, S0
445B5E:  VMRS            APSR_nzcv, FPSCR
445B62:  BLT             loc_445B6C
445B64:  ADDS            R2, #2
445B66:  ADDS            R3, #0x20 ; ' '
445B68:  CMP             R2, R1
445B6A:  BLT             loc_445B4E
445B6C:  ADD.W           R3, R2, #0xFE
445B70:  CMP             R2, R1
445B72:  IT EQ
445B74:  MOVEQ.W         R3, #0xFFFFFFFF
445B78:  STRB.W          R3, [R4,#0x553]
445B7C:  IT EQ
445B7E:  ADDEQ.W         R2, R1, #0xFF
445B82:  STRB.W          R2, [R4,#0x552]
445B86:  LDRB            R1, [R0,#2]
445B88:  NEGS            R1, R1
445B8A:  VMOV            S0, R1
445B8E:  VCVT.F32.S32    S0, S0
445B92:  LDRSB.W         R1, [R4,#0x421]
445B96:  VMOV            S2, R1
445B9A:  VMUL.F32        S0, S0, S16
445B9E:  VADD.F32        S0, S18, S0
445BA2:  VADD.F32        S0, S0, S16
445BA6:  VSTR            S0, [SP,#0x38+var_2C]
445BAA:  VMOV.F32        S0, #0.25
445BAE:  LDRB            R2, [R0,#3]
445BB0:  VCVT.F32.S32    S2, S2
445BB4:  NEGS            R1, R2
445BB6:  VMOV            S4, R1
445BBA:  VCVT.F32.S32    S4, S4
445BBE:  VADD.F32        S0, S2, S0
445BC2:  VMUL.F32        S2, S4, S16
445BC6:  B               loc_445C0C
445BC8:  DCFS 0.0
445BCC:  MOVW            R1, #0xFFFF
445BD0:  STRH.W          R1, [R4,#0x552]
445BD4:  LDRB            R1, [R0,#2]
445BD6:  LDRB            R2, [R0,#3]
445BD8:  NEGS            R1, R1
445BDA:  VMOV            S0, R1
445BDE:  VCVT.F32.S32    S0, S0
445BE2:  VMUL.F32        S0, S0, S16
445BE6:  VADD.F32        S0, S18, S0
445BEA:  VADD.F32        S0, S0, S16
445BEE:  VSTR            S0, [SP,#0x38+var_2C]
445BF2:  LDRB            R1, [R0,#3]
445BF4:  NEGS            R1, R1
445BF6:  VMOV            S0, R1
445BFA:  SUBS            R1, R2, #1
445BFC:  VCVT.F32.S32    S0, S0
445C00:  VMOV            S2, R1
445C04:  VCVT.F32.S32    S2, S2
445C08:  VMUL.F32        S0, S0, S16
445C0C:  VADD.F32        S0, S0, S2
445C10:  ADD.W           R5, R4, #0x18
445C14:  ADD             R6, SP, #0x38+var_2C
445C16:  MOVS            R2, #1
445C18:  MOV             R3, R5
445C1A:  MOV             R1, R6
445C1C:  VADD.F32        S0, S0, S16
445C20:  VSTR            S0, [SP,#0x38+var_28]
445C24:  LDRB            R0, [R0,#4]
445C26:  NEGS            R0, R0
445C28:  VMOV            S0, R0
445C2C:  MOV             R0, R6
445C2E:  VCVT.F32.S32    S0, S0
445C32:  VMUL.F32        S0, S0, S16
445C36:  VSTR            S0, [SP,#0x38+var_24]
445C3A:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
445C3E:  ADD.W           R0, R6, #8
445C42:  ADDS            R1, R6, #4
445C44:  LDR             R2, [SP,#0x38+var_2C]
445C46:  VMOV.F32        S2, #0.25
445C4A:  LDR             R1, [R1]
445C4C:  MOV             R3, R5
445C4E:  LDR             R0, [R0]
445C50:  STR.W           R2, [R4,#0x554]
445C54:  STR.W           R1, [R4,#0x558]
445C58:  STR.W           R0, [R4,#0x55C]
445C5C:  LDR             R0, [R4,#0x14]
445C5E:  LDRB            R1, [R0,#2]
445C60:  LDRB            R2, [R0,#3]
445C62:  NEGS            R1, R1
445C64:  SUBS            R2, #1
445C66:  VMOV            S0, R1
445C6A:  VCVT.F32.S32    S0, S0
445C6E:  VMUL.F32        S0, S0, S16
445C72:  VADD.F32        S0, S18, S0
445C76:  VADD.F32        S0, S0, S16
445C7A:  VSTR            S0, [SP,#0x38+var_38]
445C7E:  VMOV            S0, R2
445C82:  LDRB            R1, [R0,#3]
445C84:  MOVS            R2, #1
445C86:  VCVT.F32.S32    S0, S0
445C8A:  NEGS            R1, R1
445C8C:  VMOV            S4, R1
445C90:  VCVT.F32.S32    S4, S4
445C94:  VADD.F32        S0, S0, S2
445C98:  VMUL.F32        S2, S4, S16
445C9C:  VADD.F32        S0, S0, S2
445CA0:  VADD.F32        S0, S0, S16
445CA4:  VSTR            S0, [SP,#0x38+var_34]
445CA8:  LDRB            R0, [R0,#4]
445CAA:  NEGS            R0, R0
445CAC:  VMOV            S0, R0
445CB0:  MOV             R0, SP
445CB2:  MOV             R1, R0
445CB4:  VCVT.F32.S32    S0, S0
445CB8:  VMUL.F32        S0, S0, S16
445CBC:  VSTR            S0, [SP,#0x38+var_30]
445CC0:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
445CC4:  LDMFD.W         SP, {R0-R2}
445CC8:  STR.W           R0, [R4,#0x564]
445CCC:  STR.W           R1, [R4,#0x568]
445CD0:  STR.W           R2, [R4,#0x56C]
445CD4:  LDR             R0, [R4,#0x14]
445CD6:  LDRSB.W         R1, [R0,#8]
445CDA:  CMP             R1, #0
445CDC:  BLT.W           loc_445E8A
445CE0:  LDRSB.W         R2, [R0,#9]
445CE4:  VMOV.F32        S16, #0.5
445CE8:  VMOV            S2, R1
445CEC:  SUBS            R2, R2, R1
445CEE:  VMOV.F32        S4, #-0.5
445CF2:  VMOV            S0, R2
445CF6:  VCVT.F32.S32    S0, S0
445CFA:  VCVT.F32.S32    S2, S2
445CFE:  LDRSB.W         R2, [R4,#0x40C]
445D02:  CMP             R2, #3
445D04:  VMUL.F32        S0, S0, S16
445D08:  VADD.F32        S0, S0, S2
445D0C:  VADD.F32        S18, S0, S4
445D10:  BLT             loc_445D36
445D12:  SUBS            R3, R2, #2
445D14:  ADD.W           R1, R4, R3,LSL#4
445D18:  LDRSB.W         R6, [R1,#0x411]
445D1C:  VMOV            S0, R6
445D20:  VCVT.F32.S32    S0, S0
445D24:  VCMPE.F32       S18, S0
445D28:  VMRS            APSR_nzcv, FPSCR
445D2C:  BGE             loc_445D5A
445D2E:  STRB.W          R3, [R4,#0x572]
445D32:  MOVS            R2, #0xFF
445D34:  B               loc_445D80
445D36:  MOVW            R1, #0xFFFF
445D3A:  STRH.W          R1, [R4,#0x572]
445D3E:  LDRB            R1, [R0,#2]
445D40:  NEGS            R2, R1
445D42:  SUBS            R1, #1
445D44:  VMOV            S0, R2
445D48:  VMOV            S2, R1
445D4C:  VCVT.F32.S32    S0, S0
445D50:  VCVT.F32.S32    S2, S2
445D54:  VMUL.F32        S0, S0, S16
445D58:  B               loc_445DA8
445D5A:  SUBS            R3, R2, #1
445D5C:  ADD.W           R6, R4, R3,LSL#4
445D60:  LDRSB.W         R6, [R6,#0x411]
445D64:  VMOV            S0, R6
445D68:  VCVT.F32.S32    S0, S0
445D6C:  STRB.W          R3, [R4,#0x572]
445D70:  VCMPE.F32       S18, S0
445D74:  VMRS            APSR_nzcv, FPSCR
445D78:  ITTE LE
445D7A:  UXTBLE          R2, R2
445D7C:  ADDLE           R2, #0xFE
445D7E:  MOVGT           R2, #0xFF
445D80:  STRB.W          R2, [R4,#0x573]
445D84:  VMOV.F32        S0, #0.25
445D88:  LDRSB.W         R1, [R1,#0x410]
445D8C:  LDRB            R2, [R0,#2]
445D8E:  VMOV            S2, R1
445D92:  NEGS            R1, R2
445D94:  VMOV            S4, R1
445D98:  VCVT.F32.S32    S2, S2
445D9C:  VCVT.F32.S32    S4, S4
445DA0:  VADD.F32        S0, S2, S0
445DA4:  VMUL.F32        S2, S4, S16
445DA8:  VADD.F32        S0, S0, S2
445DAC:  ADD.W           R5, R4, #0x18
445DB0:  ADD             R6, SP, #0x38+var_2C
445DB2:  MOVS            R2, #1
445DB4:  MOV             R3, R5
445DB6:  VADD.F32        S0, S0, S16
445DBA:  VSTR            S0, [SP,#0x38+var_2C]
445DBE:  LDRB            R1, [R0,#3]
445DC0:  NEGS            R1, R1
445DC2:  VMOV            S0, R1
445DC6:  MOV             R1, R6
445DC8:  VCVT.F32.S32    S0, S0
445DCC:  VMUL.F32        S0, S0, S16
445DD0:  VADD.F32        S0, S18, S0
445DD4:  VADD.F32        S0, S0, S16
445DD8:  VSTR            S0, [SP,#0x38+var_28]
445DDC:  LDRB            R0, [R0,#4]
445DDE:  NEGS            R0, R0
445DE0:  VMOV            S0, R0
445DE4:  MOV             R0, R6
445DE6:  VCVT.F32.S32    S0, S0
445DEA:  VMUL.F32        S0, S0, S16
445DEE:  VSTR            S0, [SP,#0x38+var_24]
445DF2:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
445DF6:  ADD.W           R0, R6, #8
445DFA:  ADDS            R1, R6, #4
445DFC:  LDR             R2, [SP,#0x38+var_2C]
445DFE:  VMOV.F32        S0, #0.25
445E02:  LDR             R1, [R1]
445E04:  MOV             R3, R5
445E06:  LDR             R0, [R0]
445E08:  STR.W           R2, [R4,#0x574]
445E0C:  STR.W           R1, [R4,#0x578]
445E10:  STR.W           R0, [R4,#0x57C]
445E14:  LDR             R0, [R4,#0x14]
445E16:  LDRB            R1, [R0,#2]
445E18:  SUBS            R2, R1, #1
445E1A:  NEGS            R1, R1
445E1C:  VMOV            S2, R2
445E20:  MOVS            R2, #1
445E22:  VMOV            S4, R1
445E26:  VCVT.F32.S32    S2, S2
445E2A:  VCVT.F32.S32    S4, S4
445E2E:  VADD.F32        S0, S2, S0
445E32:  VMUL.F32        S2, S4, S16
445E36:  VADD.F32        S0, S2, S0
445E3A:  VADD.F32        S0, S0, S16
445E3E:  VSTR            S0, [SP,#0x38+var_38]
445E42:  LDRB            R1, [R0,#3]
445E44:  NEGS            R1, R1
445E46:  VMOV            S0, R1
445E4A:  VCVT.F32.S32    S0, S0
445E4E:  VMUL.F32        S0, S0, S16
445E52:  VADD.F32        S0, S18, S0
445E56:  VADD.F32        S0, S0, S16
445E5A:  VSTR            S0, [SP,#0x38+var_34]
445E5E:  LDRB            R0, [R0,#4]
445E60:  NEGS            R0, R0
445E62:  VMOV            S0, R0
445E66:  MOV             R0, SP
445E68:  MOV             R1, R0
445E6A:  VCVT.F32.S32    S0, S0
445E6E:  VMUL.F32        S0, S0, S16
445E72:  VSTR            S0, [SP,#0x38+var_30]
445E76:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
445E7A:  LDMFD.W         SP, {R0-R2}
445E7E:  STR.W           R0, [R4,#0x584]
445E82:  STR.W           R1, [R4,#0x588]
445E86:  STR.W           R2, [R4,#0x58C]
445E8A:  ADD             SP, SP, #0x18
445E8C:  VPOP            {D8-D9}
445E90:  POP.W           {R11}
445E94:  POP             {R4-R7,PC}
