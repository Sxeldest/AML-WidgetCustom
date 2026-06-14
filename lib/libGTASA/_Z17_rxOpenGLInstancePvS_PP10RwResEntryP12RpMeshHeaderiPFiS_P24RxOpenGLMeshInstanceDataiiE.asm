; =========================================================
; Game Engine Function: _Z17_rxOpenGLInstancePvS_PP10RwResEntryP12RpMeshHeaderiPFiS_P24RxOpenGLMeshInstanceDataiiE
; Address            : 0x2227C0 - 0x222AC2
; =========================================================

2227C0:  PUSH            {R4-R7,LR}
2227C2:  ADD             R7, SP, #0xC
2227C4:  PUSH.W          {R8-R11}
2227C8:  SUB             SP, SP, #4
2227CA:  VPUSH           {D8-D9}
2227CE:  SUB             SP, SP, #0x30
2227D0:  MOV             R9, R3
2227D2:  STR             R0, [SP,#0x60+var_4C]
2227D4:  LDRH.W          R0, [R9,#4]
2227D8:  MOVS            R6, #4
2227DA:  LDR             R3, =(sub_222AD4+1 - 0x2227E4)
2227DC:  RSB.W           R0, R0, R0,LSL#3
2227E0:  ADD             R3, PC; sub_222AD4
2227E2:  ORR.W           R4, R6, R0,LSL#3
2227E6:  MOV             R0, R1
2227E8:  MOV             R1, R2
2227EA:  MOV             R2, R4
2227EC:  BLX             j__Z27RwResourcesAllocateResEntryPvPP10RwResEntryiPFvS1_E; RwResourcesAllocateResEntry(void *,RwResEntry **,int,void (*)(RwResEntry *))
2227F0:  CMP             R0, #0
2227F2:  BEQ.W           loc_222AB2
2227F6:  LDRH.W          R1, [R9,#6]
2227FA:  STRH            R1, [R0,#0x18]
2227FC:  LDRH.W          R1, [R9,#4]
222800:  STRH            R1, [R0,#0x1A]
222802:  LDRH.W          R10, [R9,#4]
222806:  CMP.W           R10, #0
22280A:  BEQ.W           loc_222AB4
22280E:  ADD.W           R1, R0, #0x34 ; '4'
222812:  ADD.W           R4, R0, #0x1C
222816:  LDR             R5, [R7,#arg_4]
222818:  VMOV.I32        Q4, #0
22281C:  STRD.W          R0, R1, [SP,#0x60+var_60]
222820:  ADD.W           R8, R9, #0x14
222824:  LDR             R0, =(meshModule_ptr - 0x222832)
222826:  MOVS            R6, #0
222828:  LDR             R1, =(RwEngineInstance_ptr - 0x222838)
22282A:  MOV.W           R11, #0
22282E:  ADD             R0, PC; meshModule_ptr
222830:  STR.W           R9, [SP,#0x60+var_50]
222834:  ADD             R1, PC; RwEngineInstance_ptr
222836:  LDR             R0, [R0]; meshModule
222838:  STR             R0, [SP,#0x60+var_3C]
22283A:  LDR             R0, [R1]; RwEngineInstance
22283C:  STR             R0, [SP,#0x60+var_40]
22283E:  LDR             R0, =(_rwOpenGLPrimConvTbl_ptr - 0x222844)
222840:  ADD             R0, PC; _rwOpenGLPrimConvTbl_ptr
222842:  LDR             R0, [R0]; _rwOpenGLPrimConvTbl
222844:  STR             R0, [SP,#0x60+var_44]
222846:  MOVS            R0, #0
222848:  STR             R0, [SP,#0x60+var_48]
22284A:  LDR             R0, [SP,#0x60+var_3C]
22284C:  LDRB.W          R2, [R9]
222850:  LDR             R1, [R0]
222852:  LDR             R0, [SP,#0x60+var_40]
222854:  LDR.W           LR, [R0]
222858:  ADD             R1, LR
22285A:  ADD             R1, R2
22285C:  LDR             R2, [SP,#0x60+var_44]
22285E:  LDRB            R1, [R1,#8]
222860:  LDR.W           R1, [R2,R1,LSL#2]
222864:  ADD.W           R2, R4, #0x20 ; ' '
222868:  VST1.32         {D8-D9}, [R2]
22286C:  ADD.W           R2, R4, #0x14
222870:  VST1.32         {D8-D9}, [R2]
222874:  ADDS            R2, R4, #4
222876:  VST1.32         {D8-D9}, [R2]
22287A:  STR             R1, [R4]
22287C:  LDR.W           R1, [R8,#8]
222880:  STRD.W          R1, R6, [R4,#0x30]
222884:  LDRB.W          R1, [R9,#1]
222888:  LSLS            R1, R1, #0x1F
22288A:  BNE             loc_222944
22288C:  LDR.W           R0, [R8,#4]
222890:  STR             R0, [R4,#0x28]
222892:  LDR.W           R6, [R8]
222896:  CMP             R6, #0
222898:  BEQ             loc_22295E
22289A:  LDR.W           R3, [R8,#4]
22289E:  MOVS            R1, #0
2228A0:  STR             R1, [R4,#0x18]
2228A2:  CMP             R3, #0
2228A4:  STR             R1, [R4,#0xC]
2228A6:  BEQ             loc_2229A6
2228A8:  CMP             R3, #4
2228AA:  BCC             loc_22297E
2228AC:  BIC.W           R1, R3, #3
2228B0:  CMP             R1, #0
2228B2:  BEQ             loc_22297E
2228B4:  VMOV.I8         Q8, #0xFF
2228B8:  STRD.W          R3, R0, [SP,#0x60+var_58]
2228BC:  VMOV.I32        Q9, #0
2228C0:  SUBS            R3, R3, R1
2228C2:  ADD.W           R2, R6, R1,LSL#1
2228C6:  ADD.W           R12, SP, #0x60+var_38
2228CA:  MOV             R0, R1
2228CC:  LDR.W           R9, [R6,#4]
2228D0:  SUBS            R1, #4
2228D2:  LDR             R5, [R6]
2228D4:  ADD.W           R6, R6, #8
2228D8:  STRD.W          R5, R9, [SP,#0x60+var_38]
2228DC:  VLD1.16         {D20}, [R12@64]
2228E0:  VMOVL.U16       Q10, D20
2228E4:  VMAX.U32        Q9, Q9, Q10
2228E8:  VMIN.U32        Q8, Q8, Q10
2228EC:  BNE             loc_2228CC
2228EE:  VEXT.8          Q10, Q9, Q8, #8
2228F2:  VEXT.8          Q11, Q8, Q8, #8
2228F6:  VMAX.U32        Q9, Q9, Q10
2228FA:  VMIN.U32        Q8, Q8, Q11
2228FE:  VDUP.32         Q10, D18[1]
222902:  VDUP.32         Q11, D16[1]
222906:  VCGT.U32        Q10, Q9, Q10
22290A:  VCGT.U32        Q11, Q11, Q8
22290E:  VMOV.32         R5, D18[1]
222912:  VMOV.32         R1, D16[1]
222916:  VMOVN.I32       D20, Q10
22291A:  VMOVN.I32       D21, Q11
22291E:  VMOV.U16        R6, D20[0]
222922:  VMOV.U16        R9, D21[0]
222926:  LSLS            R6, R6, #0x1F
222928:  IT NE
22292A:  VMOVNE.32       R5, D18[0]
22292E:  MOVS.W          R6, R9,LSL#31
222932:  IT NE
222934:  VMOVNE.32       R1, D16[0]
222938:  LDR             R6, [SP,#0x60+var_58]
22293A:  CMP             R6, R0
22293C:  LDRD.W          R0, R9, [SP,#0x60+var_54]
222940:  BNE             loc_222986
222942:  B               loc_22299A
222944:  STRD.W          R6, R6, [R4,#0x28]
222948:  LDR.W           R0, [R8,#4]
22294C:  LDR             R1, [SP,#0x60+var_48]
22294E:  STR             R1, [R4,#0x18]
222950:  STR             R0, [R4,#0xC]
222952:  ADD             R1, R0
222954:  STR             R1, [SP,#0x60+var_48]
222956:  CMP             R5, #0
222958:  BNE.W           loc_222A86
22295C:  B               loc_222A92
22295E:  MOVS            R6, #0
222960:  STR             R6, [R4,#0x2C]
222962:  LDR.W           R0, [R9,#0x10]
222966:  STR             R0, [R4,#0x20]
222968:  LDR.W           R0, [R8,#4]
22296C:  STR             R6, [R4,#0xC]
22296E:  STR             R0, [R4,#0x28]
222970:  LDR.W           R0, [R8,#0xC]
222974:  STR             R0, [R4,#0x24]
222976:  CMP             R5, #0
222978:  BNE.W           loc_222A86
22297C:  B               loc_222A92
22297E:  MOV.W           R1, #0xFFFFFFFF
222982:  MOVS            R5, #0
222984:  MOV             R2, R6
222986:  LDRH.W          R6, [R2],#2
22298A:  CMP             R5, R6
22298C:  IT CC
22298E:  MOVCC           R5, R6
222990:  CMP             R1, R6
222992:  IT HI
222994:  MOVHI           R1, R6
222996:  SUBS            R3, #1
222998:  BNE             loc_222986
22299A:  STR             R1, [R4,#0x18]
22299C:  RSB.W           R1, R1, #1
2229A0:  ADD             R1, R5
2229A2:  LDR             R5, [R7,#arg_4]
2229A4:  STR             R1, [R4,#0xC]
2229A6:  LDR.W           R1, [LR,#0x12C]
2229AA:  LSLS            R0, R0, #1
2229AC:  BLX             R1
2229AE:  LDR.W           R12, [R4,#0x28]
2229B2:  STR             R0, [R4,#0x2C]
2229B4:  CMP.W           R12, #0
2229B8:  BEQ             loc_222A82
2229BA:  LDR.W           R6, [R8]
2229BE:  ADD.W           R9, R4, #0x18
2229C2:  CMP.W           R12, #4
2229C6:  BCC             loc_222A5C
2229C8:  BIC.W           R2, R12, #3
2229CC:  STR             R2, [SP,#0x60+var_54]
2229CE:  CMP             R2, #0
2229D0:  BEQ             loc_222A5C
2229D2:  RSB.W           R2, R11, R11,LSL#3
2229D6:  LDR             R3, [SP,#0x60+var_5C]
2229D8:  MOV.W           LR, #0
2229DC:  ADD.W           R5, R0, R12,LSL#1
2229E0:  ADD.W           R2, R3, R2,LSL#3
2229E4:  MOVS            R3, #0
2229E6:  ADDS            R2, #1
2229E8:  CMP             R0, R2
2229EA:  ADD.W           R2, R6, R12,LSL#1
2229EE:  IT CC
2229F0:  MOVCC.W         LR, #1
2229F4:  CMP             R5, R9
2229F6:  IT HI
2229F8:  MOVHI           R3, #1
2229FA:  CMP             R5, R6
2229FC:  MOV.W           R5, #0
222A00:  IT HI
222A02:  MOVHI           R5, #1
222A04:  CMP             R0, R2
222A06:  MOV.W           R2, #0
222A0A:  IT CC
222A0C:  MOVCC           R2, #1
222A0E:  TST             R2, R5
222A10:  IT EQ
222A12:  ANDSEQ.W        R2, LR, R3
222A16:  BNE             loc_222A5C
222A18:  LDR             R1, [SP,#0x60+var_54]
222A1A:  SUB.W           R2, R12, R1
222A1E:  ADD.W           R3, R6, R1,LSL#1
222A22:  ADD.W           R5, R0, R1,LSL#1
222A26:  LDR.W           R1, [R9]
222A2A:  STR             R1, [SP,#0x60+var_58]
222A2C:  LDR             R1, [SP,#0x60+var_58]
222A2E:  LDR.W           LR, [SP,#0x60+var_58]
222A32:  VDUP.32         Q8, R1
222A36:  VMOVN.I32       D16, Q8
222A3A:  VMOV.16         D16[3], LR
222A3E:  LDR.W           LR, [SP,#0x60+var_54]
222A42:  VLD1.16         {D17}, [R6]!
222A46:  SUBS.W          LR, LR, #4
222A4A:  VSUB.I16        D17, D17, D16
222A4E:  VST1.16         {D17}, [R0]!
222A52:  BNE             loc_222A42
222A54:  LDR             R0, [SP,#0x60+var_54]
222A56:  CMP             R12, R0
222A58:  BNE             loc_222A62
222A5A:  B               loc_222A76
222A5C:  MOV             R2, R12
222A5E:  MOV             R5, R0
222A60:  MOV             R3, R6
222A62:  LDR.W           R0, [R9]
222A66:  SUBS            R2, #1
222A68:  LDRH.W          R6, [R3],#2
222A6C:  SUB.W           R0, R6, R0
222A70:  STRH.W          R0, [R5],#2
222A74:  BNE             loc_222A62
222A76:  LDR             R5, [R7,#arg_4]
222A78:  MOVS            R6, #0
222A7A:  LDR.W           R9, [SP,#0x60+var_50]
222A7E:  CBNZ            R5, loc_222A86
222A80:  B               loc_222A92
222A82:  MOVS            R6, #0
222A84:  CBZ             R5, loc_222A92
222A86:  LDR             R0, [SP,#0x60+var_4C]
222A88:  MOV             R1, R4
222A8A:  LDR             R2, [R7,#arg_0]
222A8C:  MOVS            R3, #0
222A8E:  BLX             R5
222A90:  CBZ             R0, loc_222AAC
222A92:  SUB.W           R10, R10, #1
222A96:  ADD.W           R11, R11, #1
222A9A:  ADDS            R4, #0x38 ; '8'
222A9C:  ADD.W           R8, R8, #0x10
222AA0:  MOVS.W          R0, R10,LSL#16
222AA4:  BNE.W           loc_22284A
222AA8:  LDR             R0, [SP,#0x60+var_60]
222AAA:  B               loc_222AB4
222AAC:  LDR             R0, [SP,#0x60+var_60]
222AAE:  BLX             j__Z23RwResourcesFreeResEntryP10RwResEntry; RwResourcesFreeResEntry(RwResEntry *)
222AB2:  MOVS            R0, #0
222AB4:  ADD             SP, SP, #0x30 ; '0'
222AB6:  VPOP            {D8-D9}
222ABA:  ADD             SP, SP, #4
222ABC:  POP.W           {R8-R11}
222AC0:  POP             {R4-R7,PC}
