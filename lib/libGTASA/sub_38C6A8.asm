; =========================================================
; Game Engine Function: sub_38C6A8
; Address            : 0x38C6A8 - 0x38CBD2
; =========================================================

38C6A8:  PUSH            {R4-R7,LR}
38C6AA:  ADD             R7, SP, #0xC
38C6AC:  PUSH.W          {R8-R11}
38C6B0:  SUB             SP, SP, #4
38C6B2:  VPUSH           {D8-D15}
38C6B6:  SUB             SP, SP, #0x48
38C6B8:  MOV             R4, SP
38C6BA:  BFC.W           R4, #0, #4
38C6BE:  MOV             SP, R4
38C6C0:  MOV             R9, R0
38C6C2:  MOVW            R12, #:lower16:(elf_hash_chain+0xFE9B)
38C6C6:  LDRB.W          R2, [R9]
38C6CA:  MOVT            R12, #:upper16:(elf_hash_chain+0xFE9B)
38C6CE:  TST.W           R2, #8
38C6D2:  BEQ.W           loc_38C99E
38C6D6:  LDR.W           R0, =(dword_932098 - 0x38C6DE)
38C6DA:  ADD             R0, PC; dword_932098
38C6DC:  LDR             R0, [R0]
38C6DE:  LDR             R0, [R0,#0xC]
38C6E0:  CMP             R0, #0
38C6E2:  BEQ.W           loc_38C99E
38C6E6:  VLDR            S16, =0.0
38C6EA:  VMOV.I32        Q8, #0
38C6EE:  ADD.W           R10, SP, #0xA8+var_78
38C6F2:  STR.W           R9, [SP,#0xA8+var_9C]
38C6F6:  VMOV.F32        S0, S16
38C6FA:  LDR.W           R3, [R9,#0x10]
38C6FE:  VST1.64         {D16-D17}, [R10@128]
38C702:  MOV             R9, R1
38C704:  ADD.W           R5, R3, #0x10
38C708:  LDR.W           R2, [R9],#4
38C70C:  LDR.W           R0, [R9]; this
38C710:  CMP             R2, #0
38C712:  STR             R3, [SP,#0xA8+var_A0]
38C714:  BEQ             loc_38C73E
38C716:  VLDR            S0, =0.0
38C71A:  ADD.W           R2, R1, #8
38C71E:  MOV             R3, R0
38C720:  LDR             R6, [R3,#0x10]
38C722:  CBZ             R6, loc_38C736
38C724:  LDR             R3, [R3,#0x14]
38C726:  LDRB.W          R6, [R3,#0x2E]
38C72A:  LSLS            R6, R6, #0x1B
38C72C:  ITT MI
38C72E:  VLDRMI          S2, [R3,#0x18]
38C732:  VADDMI.F32      S0, S0, S2
38C736:  LDR.W           R3, [R2],#4
38C73A:  CMP             R3, #0
38C73C:  BNE             loc_38C720
38C73E:  VMOV.F32        S22, #1.0
38C742:  STR             R5, [SP,#0xA8+var_A4]
38C744:  VMOV.F32        S20, S16
38C748:  ADD.W           R5, R1, #8
38C74C:  VMOV.F32        S18, S16
38C750:  ADD             R4, SP, #0xA8+var_84
38C752:  VSUB.F32        S0, S22, S0
38C756:  VMOV            R6, S0
38C75A:  LDR             R1, [R0,#0x10]
38C75C:  CBZ             R1, loc_38C790
38C75E:  LDRB            R1, [R1,#4]
38C760:  LSLS            R1, R1, #0x1E
38C762:  ITTT MI
38C764:  LDRMI           R1, [R0,#0x14]
38C766:  LDRBMI.W        R1, [R1,#0x2E]
38C76A:  MOVSMI.W        R1, R1,LSL#25
38C76E:  BPL             loc_38C790
38C770:  MOV             R1, R4; CVector *
38C772:  MOV             R2, R6; float
38C774:  BLX             j__ZN14CAnimBlendNode31GetCurrentTranslationCompressedER7CVectorf; CAnimBlendNode::GetCurrentTranslationCompressed(CVector &,float)
38C778:  VLDR            S0, [SP,#0xA8+var_84]
38C77C:  VLDR            S2, [SP,#0xA8+var_80]
38C780:  VLDR            S4, [SP,#0xA8+var_7C]
38C784:  VADD.F32        S16, S16, S0
38C788:  VADD.F32        S20, S20, S2
38C78C:  VADD.F32        S18, S18, S4
38C790:  LDR.W           R0, [R5],#4
38C794:  CMP             R0, #0
38C796:  BNE             loc_38C75A
38C798:  VLDR            S24, =0.0
38C79C:  ADD             R5, SP, #0xA8+var_84
38C79E:  LDR.W           R1, [R9]
38C7A2:  ADD             R4, SP, #0xA8+var_98
38C7A4:  VMOV.F32        S26, S24
38C7A8:  MOV.W           R8, #0
38C7AC:  VMOV.F32        S28, S24
38C7B0:  VMOV.F32        S21, S24
38C7B4:  VMOV.F32        S23, S24
38C7B8:  VMOV.F32        S25, S24
38C7BC:  VMOV.F32        S30, S24
38C7C0:  VMOV.F32        S17, S24
38C7C4:  VMOV.F32        S19, S24
38C7C8:  LDR             R0, [R1,#0x10]
38C7CA:  MOV             R11, R9
38C7CC:  CMP             R0, #0
38C7CE:  BEQ             loc_38C856
38C7D0:  MOV             R0, R1; this
38C7D2:  MOV             R1, R5; CVector *
38C7D4:  MOV             R2, R4; CQuaternion *
38C7D6:  MOV             R3, R6; float
38C7D8:  BLX             j__ZN14CAnimBlendNode16UpdateCompressedER7CVectorR11CQuaternionf; CAnimBlendNode::UpdateCompressed(CVector &,CQuaternion &,float)
38C7DC:  VLD1.64         {D16-D17}, [R10@128]
38C7E0:  MOV             R1, R0
38C7E2:  VLD1.64         {D18-D19}, [R4@128]
38C7E6:  VADD.F32        Q8, Q9, Q8
38C7EA:  VST1.64         {D16-D17}, [R10@128]
38C7EE:  LDR.W           R0, [R11]; this
38C7F2:  LDR             R2, [R0,#0x10]
38C7F4:  LDRB            R2, [R2,#4]
38C7F6:  LSLS            R2, R2, #0x1E
38C7F8:  BPL             loc_38C858
38C7FA:  VLDR            S0, [SP,#0xA8+var_84]
38C7FE:  VLDR            S2, [SP,#0xA8+var_80]
38C802:  VLDR            S4, [SP,#0xA8+var_7C]
38C806:  VADD.F32        S19, S19, S0
38C80A:  LDR             R2, [R0,#0x14]
38C80C:  VADD.F32        S17, S17, S2
38C810:  VADD.F32        S30, S30, S4
38C814:  LDRB.W          R2, [R2,#0x2E]
38C818:  LSLS            R2, R2, #0x19
38C81A:  BPL             loc_38C858
38C81C:  VADD.F32        S24, S24, S4
38C820:  ORR.W           R8, R8, R1
38C824:  VADD.F32        S26, S26, S2
38C828:  CMP             R1, #1
38C82A:  VADD.F32        S28, S28, S0
38C82E:  BNE             loc_38C858
38C830:  MOV             R1, R5; CVector *
38C832:  MOV             R2, R6; float
38C834:  BLX             j__ZN14CAnimBlendNode27GetEndTranslationCompressedER7CVectorf; CAnimBlendNode::GetEndTranslationCompressed(CVector &,float)
38C838:  VLDR            S0, [SP,#0xA8+var_84]
38C83C:  VLDR            S2, [SP,#0xA8+var_80]
38C840:  VLDR            S4, [SP,#0xA8+var_7C]
38C844:  VADD.F32        S25, S25, S0
38C848:  VADD.F32        S23, S23, S2
38C84C:  LDR.W           R0, [R11]
38C850:  VADD.F32        S21, S21, S4
38C854:  B               loc_38C858
38C856:  MOV             R0, R1
38C858:  MOV             R9, R11
38C85A:  ADDS            R0, #0x18
38C85C:  LDR.W           R1, [R9,#4]!
38C860:  STR.W           R0, [R11]
38C864:  CMP             R1, #0
38C866:  BNE             loc_38C7C8
38C868:  LDR             R4, [SP,#0xA8+var_9C]
38C86A:  LDR             R5, [SP,#0xA8+var_A4]
38C86C:  LDRB            R0, [R4]
38C86E:  TST.W           R0, #2
38C872:  BNE             loc_38C90C
38C874:  LDR             R2, [SP,#0xA8+var_A0]
38C876:  MOV.W           R0, #0x3F800000
38C87A:  MOVS            R1, #0
38C87C:  STR             R0, [R2,#0x10]
38C87E:  STR             R0, [R2,#0x24]
38C880:  STR             R1, [R2,#0x20]
38C882:  STRD.W          R1, R1, [R2,#0x14]
38C886:  STR             R1, [R2,#0x28]
38C888:  STRD.W          R1, R1, [R2,#0x30]
38C88C:  STR             R0, [R2,#0x38]
38C88E:  LDR             R0, [R2,#0x1C]
38C890:  STRD.W          R1, R1, [R2,#0x40]
38C894:  STR             R1, [R2,#0x48]
38C896:  MOVS            R1, #0x20003
38C89C:  ORRS            R0, R1
38C89E:  STR             R0, [R2,#0x1C]
38C8A0:  VLDR            S0, [SP,#0xA8+var_78]
38C8A4:  VLDR            S6, [SP,#0xA8+var_74]
38C8A8:  VMUL.F32        S10, S0, S0
38C8AC:  VLDR            S2, [SP,#0xA8+var_70]
38C8B0:  VMUL.F32        S8, S6, S6
38C8B4:  VLDR            S4, [SP,#0xA8+var_6C]
38C8B8:  VMUL.F32        S12, S2, S2
38C8BC:  VADD.F32        S8, S10, S8
38C8C0:  VMUL.F32        S10, S4, S4
38C8C4:  VADD.F32        S8, S8, S12
38C8C8:  VADD.F32        S8, S8, S10
38C8CC:  VCMP.F32        S8, #0.0
38C8D0:  VMRS            APSR_nzcv, FPSCR
38C8D4:  BEQ             loc_38C8FE
38C8D6:  VSQRT.F32       S8, S8
38C8DA:  VMOV.F32        S10, #1.0
38C8DE:  VDIV.F32        S8, S10, S8
38C8E2:  VMUL.F32        S6, S6, S8
38C8E6:  VMUL.F32        S22, S4, S8
38C8EA:  VMUL.F32        S0, S0, S8
38C8EE:  VMUL.F32        S2, S2, S8
38C8F2:  VSTR            S6, [SP,#0xA8+var_74]
38C8F6:  VSTR            S0, [SP,#0xA8+var_78]
38C8FA:  VSTR            S2, [SP,#0xA8+var_70]
38C8FE:  ADD             R0, SP, #0xA8+var_78
38C900:  MOV             R1, R5
38C902:  VSTR            S22, [SP,#0xA8+var_6C]
38C906:  BLX             j__ZNK11CQuaternion3GetEP11RwMatrixTag; CQuaternion::Get(RwMatrixTag *)
38C90A:  LDRB            R0, [R4]
38C90C:  LSLS            R0, R0, #0x1D
38C90E:  BMI             loc_38C99A
38C910:  LDR             R0, =(dword_932098 - 0x38C91E)
38C912:  VSUB.F32        S0, S26, S20
38C916:  VSUB.F32        S2, S28, S16
38C91A:  ADD             R0, PC; dword_932098
38C91C:  VSUB.F32        S4, S24, S18
38C920:  LDR             R0, [R0]
38C922:  LDR             R1, [R0,#0xC]
38C924:  VSTR            S2, [R1]
38C928:  VSTR            S0, [R1,#4]
38C92C:  VSTR            S4, [R1,#8]
38C930:  MOVS.W          R1, R8,LSL#31
38C934:  BEQ             loc_38C95C
38C936:  LDR             R0, [R0,#0xC]
38C938:  VLDR            S0, [R0]
38C93C:  VLDR            S2, [R0,#4]
38C940:  VLDR            S4, [R0,#8]
38C944:  VADD.F32        S0, S25, S0
38C948:  VADD.F32        S2, S23, S2
38C94C:  VADD.F32        S4, S21, S4
38C950:  VSTR            S0, [R0]
38C954:  VSTR            S2, [R0,#4]
38C958:  VSTR            S4, [R0,#8]
38C95C:  VSUB.F32        S0, S30, S24
38C960:  LDR             R0, [SP,#0xA8+var_A0]
38C962:  VSUB.F32        S4, S19, S28
38C966:  VSUB.F32        S2, S17, S26
38C96A:  VSTR            S4, [R0,#0x40]
38C96E:  VSTR            S2, [R0,#0x44]
38C972:  VSTR            S0, [R0,#0x48]
38C976:  VLDR            S6, [R4,#4]
38C97A:  VADD.F32        S4, S4, S6
38C97E:  VSTR            S4, [R0,#0x40]
38C982:  VLDR            S4, [R4,#8]
38C986:  VADD.F32        S2, S2, S4
38C98A:  VSTR            S2, [R0,#0x44]
38C98E:  VLDR            S2, [R4,#0xC]
38C992:  VADD.F32        S0, S0, S2
38C996:  VSTR            S0, [R0,#0x48]
38C99A:  MOV             R0, R5
38C99C:  B               loc_38CBBC
38C99E:  VLDR            S1, =0.0
38C9A2:  VMOV.I32        Q8, #0
38C9A6:  ADD             R6, SP, #0xA8+var_98
38C9A8:  LDR.W           R10, [R9,#0x10]
38C9AC:  VMOV.F32        S4, S1
38C9B0:  MOV             R8, R1
38C9B2:  VST1.64         {D16-D17}, [R6@128]
38C9B6:  ADD.W           R4, R10, #0x10
38C9BA:  LDR.W           R3, [R8],#4
38C9BE:  LDR.W           R0, [R8]; this
38C9C2:  CBZ             R3, loc_38C9F0
38C9C4:  CMP             R0, #0
38C9C6:  BEQ.W           loc_38CB1C
38C9CA:  VLDR            S4, =0.0
38C9CE:  ADDS            R1, #8
38C9D0:  MOV             R3, R0
38C9D2:  LDR             R5, [R3,#0x10]
38C9D4:  CBZ             R5, loc_38C9E8
38C9D6:  LDR             R3, [R3,#0x14]
38C9D8:  LDRB.W          R5, [R3,#0x2E]
38C9DC:  LSLS            R5, R5, #0x1B
38C9DE:  ITT MI
38C9E0:  VLDRMI          S6, [R3,#0x18]
38C9E4:  VADDMI.F32      S4, S4, S6
38C9E8:  LDR.W           R3, [R1],#4
38C9EC:  CMP             R3, #0
38C9EE:  BNE             loc_38C9D2
38C9F0:  VMOV.F32        S0, S1
38C9F4:  CMP             R0, #0
38C9F6:  VMOV.F32        S16, S1
38C9FA:  VMOV.F32        S18, S1
38C9FE:  VMOV.F32        S20, S1
38CA02:  VMOV.F32        S22, S1
38CA06:  BEQ             loc_38CAAE
38CA08:  VMOV.F32        S0, #1.0
38CA0C:  STR             R4, [SP,#0xA8+var_9C]
38CA0E:  ADD.W           R11, SP, #0xA8+var_84
38CA12:  ADD             R5, SP, #0xA8+var_78
38CA14:  VSUB.F32        S4, S0, S4
38CA18:  VLDR            S1, =0.0
38CA1C:  VMOV.F32        S0, S1
38CA20:  VMOV.F32        S22, S1
38CA24:  VMOV.F32        S20, S1
38CA28:  VMOV.F32        S18, S1
38CA2C:  VMOV.F32        S16, S1
38CA30:  VMOV            R4, S4
38CA34:  LDR             R1, [R0,#0x10]
38CA36:  CBZ             R1, loc_38CA8C
38CA38:  MOV             R1, R11; CVector *
38CA3A:  MOV             R2, R5; CQuaternion *
38CA3C:  MOV             R3, R4; float
38CA3E:  BLX             j__ZN14CAnimBlendNode16UpdateCompressedER7CVectorR11CQuaternionf; CAnimBlendNode::UpdateCompressed(CVector &,CQuaternion &,float)
38CA42:  LDR.W           R0, [R8]
38CA46:  LDR             R1, [R0,#0x10]
38CA48:  LDRB            R1, [R1,#4]
38CA4A:  LSLS            R1, R1, #0x1E
38CA4C:  BPL             loc_38CA70
38CA4E:  LDR             R0, [R0,#0x14]
38CA50:  VLDR            S4, [SP,#0xA8+var_7C]
38CA54:  VLDR            S0, [SP,#0xA8+var_84]
38CA58:  VLDR            S2, [SP,#0xA8+var_80]
38CA5C:  VADD.F32        S16, S16, S4
38CA60:  VLDR            S4, [R0,#0x18]
38CA64:  VADD.F32        S20, S20, S0
38CA68:  VADD.F32        S18, S18, S2
38CA6C:  VADD.F32        S22, S22, S4
38CA70:  VLD1.64         {D16-D17}, [R6@128]
38CA74:  VLD1.64         {D18-D19}, [R5@128]
38CA78:  VADD.F32        Q0, Q9, Q8
38CA7C:  VST1.64         {D0-D1}, [R6@128]
38CA80:  LDR.W           R1, [R8]
38CA84:  B               loc_38CA8E
38CA86:  ALIGN 4
38CA88:  DCFS 0.0
38CA8C:  MOV             R1, R0
38CA8E:  MOV             R2, R8
38CA90:  ADDS            R1, #0x18
38CA92:  LDR.W           R0, [R2,#4]!
38CA96:  STR.W           R1, [R8]
38CA9A:  CMP             R0, #0
38CA9C:  MOV             R8, R2
38CA9E:  BNE             loc_38CA34
38CAA0:  MOVS            R4, #:lower16:(elf_hash_chain+0xFE9B)
38CAA2:  LDRB.W          R2, [R9]
38CAA6:  MOVT            R4, #:upper16:(elf_hash_chain+0xFE9B)
38CAAA:  MOV             R12, R4
38CAAC:  LDR             R4, [SP,#0xA8+var_9C]
38CAAE:  LSLS            R0, R2, #0x1E
38CAB0:  BMI             loc_38CB72
38CAB2:  MOV.W           R0, #0x3F800000
38CAB6:  MOVS            R1, #0
38CAB8:  VMUL.F32        S8, S1, S1
38CABC:  STR.W           R0, [R10,#0x10]
38CAC0:  VMUL.F32        S10, S0, S0
38CAC4:  STR.W           R0, [R10,#0x24]
38CAC8:  STR.W           R1, [R10,#0x20]
38CACC:  STRD.W          R1, R1, [R10,#0x14]
38CAD0:  STR.W           R1, [R10,#0x28]
38CAD4:  STRD.W          R1, R1, [R10,#0x30]
38CAD8:  STR.W           R0, [R10,#0x38]
38CADC:  LDR.W           R0, [R10,#0x1C]
38CAE0:  STRD.W          R1, R1, [R10,#0x40]
38CAE4:  VADD.F32        S8, S10, S8
38CAE8:  STR.W           R1, [R10,#0x48]
38CAEC:  ORR.W           R0, R0, R12
38CAF0:  STR.W           R0, [R10,#0x1C]
38CAF4:  VLDR            S4, [SP,#0xA8+var_90]
38CAF8:  VLDR            S6, [SP,#0xA8+var_8C]
38CAFC:  VMUL.F32        S12, S4, S4
38CB00:  VMUL.F32        S10, S6, S6
38CB04:  VADD.F32        S8, S8, S12
38CB08:  VADD.F32        S8, S8, S10
38CB0C:  VCMP.F32        S8, #0.0
38CB10:  VMRS            APSR_nzcv, FPSCR
38CB14:  BNE             loc_38CB3A
38CB16:  VMOV.F32        S0, #1.0
38CB1A:  B               loc_38CB62
38CB1C:  VLDR            S1, =0.0
38CB20:  VMOV.F32        S0, S1
38CB24:  VMOV.F32        S16, S1
38CB28:  VMOV.F32        S18, S1
38CB2C:  VMOV.F32        S20, S1
38CB30:  VMOV.F32        S22, S1
38CB34:  LSLS            R0, R2, #0x1E
38CB36:  BPL             loc_38CAB2
38CB38:  B               loc_38CB72
38CB3A:  VSQRT.F32       S8, S8
38CB3E:  VMOV.F32        S10, #1.0
38CB42:  VDIV.F32        S8, S10, S8
38CB46:  VMUL.F32        S10, S1, S8
38CB4A:  VMUL.F32        S2, S0, S8
38CB4E:  VMUL.F32        S0, S6, S8
38CB52:  VMUL.F32        S4, S4, S8
38CB56:  VSTR            S10, [SP,#0xA8+var_94]
38CB5A:  VSTR            S2, [SP,#0xA8+var_98]
38CB5E:  VSTR            S4, [SP,#0xA8+var_90]
38CB62:  ADD             R0, SP, #0xA8+var_98
38CB64:  MOV             R1, R4
38CB66:  VSTR            S0, [SP,#0xA8+var_8C]
38CB6A:  BLX             j__ZNK11CQuaternion3GetEP11RwMatrixTag; CQuaternion::Get(RwMatrixTag *)
38CB6E:  LDRB.W          R2, [R9]
38CB72:  LSLS            R0, R2, #0x1D
38CB74:  BMI             loc_38CBBA
38CB76:  VMOV.F32        S0, #1.0
38CB7A:  VSTR            S20, [R10,#0x40]
38CB7E:  VSTR            S18, [R10,#0x44]
38CB82:  VSTR            S16, [R10,#0x48]
38CB86:  VLDR            S2, [R9,#4]
38CB8A:  VSUB.F32        S0, S0, S22
38CB8E:  VMUL.F32        S2, S0, S2
38CB92:  VADD.F32        S2, S20, S2
38CB96:  VSTR            S2, [R10,#0x40]
38CB9A:  VLDR            S2, [R9,#8]
38CB9E:  VMUL.F32        S2, S0, S2
38CBA2:  VADD.F32        S2, S18, S2
38CBA6:  VSTR            S2, [R10,#0x44]
38CBAA:  VLDR            S2, [R9,#0xC]
38CBAE:  VMUL.F32        S0, S0, S2
38CBB2:  VADD.F32        S0, S16, S0
38CBB6:  VSTR            S0, [R10,#0x48]
38CBBA:  MOV             R0, R4
38CBBC:  BLX             j__Z14RwMatrixUpdateP11RwMatrixTag; RwMatrixUpdate(RwMatrixTag *)
38CBC0:  SUB.W           R4, R7, #-var_60
38CBC4:  MOV             SP, R4
38CBC6:  VPOP            {D8-D15}
38CBCA:  ADD             SP, SP, #4
38CBCC:  POP.W           {R8-R11}
38CBD0:  POP             {R4-R7,PC}
