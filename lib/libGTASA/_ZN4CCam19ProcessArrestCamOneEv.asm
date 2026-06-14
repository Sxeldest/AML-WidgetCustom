; =========================================================
; Game Engine Function: _ZN4CCam19ProcessArrestCamOneEv
; Address            : 0x3CC8CC - 0x3CD410
; =========================================================

3CC8CC:  PUSH            {R4-R7,LR}
3CC8CE:  ADD             R7, SP, #0xC
3CC8D0:  PUSH.W          {R8-R11}
3CC8D4:  SUB             SP, SP, #4
3CC8D6:  VPUSH           {D8-D14}
3CC8DA:  SUB             SP, SP, #0xC0; float
3CC8DC:  MOV             R4, R0
3CC8DE:  MOVS            R0, #0x42340000
3CC8E4:  STR.W           R0, [R4,#0x8C]
3CC8E8:  MOV.W           R0, #0xFFFFFFFF
3CC8EC:  STRD.W          R0, R0, [SP,#0x118+var_80]
3CC8F0:  STRD.W          R0, R0, [SP,#0x118+var_88]
3CC8F4:  STRD.W          R0, R0, [SP,#0x118+var_90]
3CC8F8:  LDRB            R0, [R4,#0xA]
3CC8FA:  CMP             R0, #0
3CC8FC:  BEQ             loc_3CC9B2
3CC8FE:  LDR.W           R0, =(TheCamera_ptr - 0x3CC90A)
3CC902:  LDR.W           R1, =(nUsingWhichCamera_ptr - 0x3CC90C)
3CC906:  ADD             R0, PC; TheCamera_ptr
3CC908:  ADD             R1, PC; nUsingWhichCamera_ptr
3CC90A:  LDR             R0, [R0]; TheCamera
3CC90C:  LDR             R1, [R1]; nUsingWhichCamera
3CC90E:  LDR.W           R6, [R0,#(dword_952884 - 0x951FA8)]
3CC912:  MOVS            R0, #0
3CC914:  STR             R0, [R1]
3CC916:  LDRB.W          R1, [R6,#0x3A]
3CC91A:  AND.W           R1, R1, #7
3CC91E:  CMP             R1, #2
3CC920:  BEQ             loc_3CCA02
3CC922:  CMP             R1, #3
3CC924:  BNE.W           loc_3CCF02
3CC928:  ADD             R1, SP, #0x118+var_78
3CC92A:  MOV             R0, R6; this
3CC92C:  MOVS            R2, #3
3CC92E:  MOVS            R3, #1
3CC930:  MOV             R9, R4
3CC932:  MOV.W           R8, #3
3CC936:  MOVS            R5, #1
3CC938:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
3CC93C:  MOV.W           R0, #0xFFFFFFFF; int
3CC940:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3CC944:  CMP             R0, #0
3CC946:  STR             R6, [SP,#0x118+var_D0]
3CC948:  BEQ.W           loc_3CCAF6
3CC94C:  MOV.W           R0, #0xFFFFFFFF; int
3CC950:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3CC954:  LDR.W           R0, [R0,#0x444]
3CC958:  LDR             R0, [R0,#8]
3CC95A:  CMP             R0, #0
3CC95C:  BEQ.W           loc_3CCAEA
3CC960:  MOV.W           R0, #0xFFFFFFFF; int
3CC964:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3CC968:  LDR.W           R0, [R0,#0x444]
3CC96C:  LDR             R6, [R0,#8]
3CC96E:  CMP             R6, #0
3CC970:  BEQ.W           loc_3CCAEA
3CC974:  BLX             rand
3CC978:  VMOV            S0, R0
3CC97C:  VLDR            S2, =4.6566e-10
3CC980:  VMOV.F32        S4, #0.5
3CC984:  MOVS            R5, #1
3CC986:  VCVT.F32.S32    S0, S0
3CC98A:  VMUL.F32        S0, S0, S2
3CC98E:  VLDR            S2, =0.0
3CC992:  VADD.F32        S0, S0, S2
3CC996:  VCMPE.F32       S0, S4
3CC99A:  VMRS            APSR_nzcv, FPSCR
3CC99E:  BLE.W           loc_3CCF3A
3CC9A2:  STR             R5, [SP,#0x118+var_90]
3CC9A4:  MOV.W           R8, #4
3CC9A8:  MOV.W           R12, #3
3CC9AC:  MOVS            R5, #2
3CC9AE:  MOVS            R1, #1
3CC9B0:  B               loc_3CCAFE
3CC9B2:  LDR.W           R0, =(TheCamera_ptr - 0x3CC9BE)
3CC9B6:  LDR.W           R1, =(nUsingWhichCamera_ptr - 0x3CC9C0)
3CC9BA:  ADD             R0, PC; TheCamera_ptr
3CC9BC:  ADD             R1, PC; nUsingWhichCamera_ptr
3CC9BE:  LDR             R0, [R0]; TheCamera
3CC9C0:  LDR             R1, [R1]; nUsingWhichCamera
3CC9C2:  LDR.W           R0, [R0,#(dword_952884 - 0x951FA8)]
3CC9C6:  LDR             R1, [R1]
3CC9C8:  CMP             R1, #1
3CC9CA:  BNE             loc_3CCA22
3CC9CC:  LDR             R1, [R0,#0x1C]
3CC9CE:  BIC.W           R1, R1, #0x80
3CC9D2:  STR             R1, [R0,#0x1C]
3CC9D4:  MOV.W           R0, #0xFFFFFFFF; int
3CC9D8:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3CC9DC:  CMP             R0, #0
3CC9DE:  BEQ             loc_3CCADE
3CC9E0:  MOV.W           R0, #0xFFFFFFFF; int
3CC9E4:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3CC9E8:  LDR.W           R0, [R0,#0x444]
3CC9EC:  LDR             R0, [R0,#8]
3CC9EE:  CMP             R0, #0
3CC9F0:  BEQ             loc_3CCADE
3CC9F2:  MOV.W           R0, #0xFFFFFFFF; int
3CC9F6:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3CC9FA:  LDR.W           R0, [R0,#0x444]
3CC9FE:  LDR             R1, [R0,#8]
3CCA00:  B               loc_3CCAE0
3CCA02:  LDR.W           R0, [R6,#0x464]; this
3CCA06:  CBZ             R0, loc_3CCA3A
3CCA08:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
3CCA0C:  CMP             R0, #1
3CCA0E:  BNE             loc_3CCA3A
3CCA10:  LDR.W           R6, [R6,#0x464]
3CCA14:  ADD             R1, SP, #0x118+var_78
3CCA16:  MOVS            R2, #3
3CCA18:  MOVS            R3, #1
3CCA1A:  MOV             R0, R6; this
3CCA1C:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
3CCA20:  B               loc_3CCA54
3CCA22:  LDRB.W          R1, [R0,#0x3A]
3CCA26:  AND.W           R1, R1, #7
3CCA2A:  CMP             R1, #2
3CCA2C:  BEQ.W           loc_3CCF10
3CCA30:  CMP             R1, #3
3CCA32:  BEQ.W           loc_3CCF2E
3CCA36:  MOVS            R0, #0
3CCA38:  B               loc_3CCF02
3CCA3A:  LDR             R0, [R6,#0x14]
3CCA3C:  ADD.W           R1, R0, #0x30 ; '0'
3CCA40:  CMP             R0, #0
3CCA42:  IT EQ
3CCA44:  ADDEQ           R1, R6, #4
3CCA46:  MOVS            R6, #0
3CCA48:  VLDR            D16, [R1]
3CCA4C:  LDR             R0, [R1,#8]
3CCA4E:  STR             R0, [SP,#0x118+var_70]
3CCA50:  VSTR            D16, [SP,#0x118+var_78]
3CCA54:  MOV.W           R0, #0xFFFFFFFF; int
3CCA58:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3CCA5C:  CMP             R0, #0
3CCA5E:  STR             R6, [SP,#0x118+var_D0]
3CCA60:  BEQ             loc_3CCAC8
3CCA62:  MOV.W           R0, #0xFFFFFFFF; int
3CCA66:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3CCA6A:  LDR.W           R0, [R0,#0x444]
3CCA6E:  LDR             R0, [R0,#8]
3CCA70:  CBZ             R0, loc_3CCAC8
3CCA72:  MOV.W           R0, #0xFFFFFFFF; int
3CCA76:  MOV             R9, R4
3CCA78:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3CCA7C:  LDR.W           R0, [R0,#0x444]
3CCA80:  LDR             R6, [R0,#8]
3CCA82:  CBZ             R6, loc_3CCACA
3CCA84:  BLX             rand
3CCA88:  VMOV            S0, R0
3CCA8C:  VLDR            S2, =4.6566e-10
3CCA90:  MOV.W           R8, #2
3CCA94:  VCVT.F32.S32    S0, S0
3CCA98:  VMUL.F32        S0, S0, S2
3CCA9C:  VLDR            S2, =0.0
3CCAA0:  VADD.F32        S0, S0, S2
3CCAA4:  VLDR            S2, =0.65
3CCAA8:  VCMPE.F32       S0, S2
3CCAAC:  VMRS            APSR_nzcv, FPSCR
3CCAB0:  BLE.W           loc_3CCF44
3CCAB4:  STR.W           R8, [SP,#0x118+var_90]
3CCAB8:  MOVS            R0, #3
3CCABA:  MOV.W           R12, #2
3CCABE:  MOVS            R2, #8
3CCAC0:  MOVS            R5, #1
3CCAC2:  MOV.W           R8, #3
3CCAC6:  B               loc_3CCADA
3CCAC8:  MOV             R9, R4
3CCACA:  MOV.W           R8, #2
3CCACE:  MOVS            R0, #3
3CCAD0:  MOV.W           R12, #1
3CCAD4:  MOVS            R2, #8
3CCAD6:  MOVS            R6, #0
3CCAD8:  MOVS            R5, #0
3CCADA:  MOVS            R3, #2
3CCADC:  B               loc_3CCB0C
3CCADE:  MOVS            R1, #0; CPed *
3CCAE0:  MOV             R0, R4; this
3CCAE2:  MOVS            R2, #0; bool
3CCAE4:  BLX             j__ZN4CCam19ProcessDWBustedCam1EP4CPedb; CCam::ProcessDWBustedCam1(CPed *,bool)
3CCAE8:  B               loc_3CCF02
3CCAEA:  MOV.W           R8, #3
3CCAEE:  MOV.W           R12, #2
3CCAF2:  MOVS            R5, #1
3CCAF4:  B               loc_3CCAFA
3CCAF6:  MOV.W           R12, #2
3CCAFA:  MOVS            R6, #0
3CCAFC:  MOVS            R1, #0
3CCAFE:  ADD             R2, SP, #0x118+var_90
3CCB00:  MOVS            R3, #8
3CCB02:  ORR.W           R1, R2, R1,LSL#2
3CCB06:  MOVS            R0, #2
3CCB08:  MOVS            R2, #3
3CCB0A:  STR             R5, [R1]
3CCB0C:  LDR.W           R4, =(_ZN4CHud12m_BigMessageE_ptr - 0x3CCB16)
3CCB10:  ADD             R1, SP, #0x118+var_90
3CCB12:  ADD             R4, PC; _ZN4CHud12m_BigMessageE_ptr
3CCB14:  STR.W           R2, [R1,R5,LSL#2]
3CCB18:  STR.W           R0, [R1,R12,LSL#2]
3CCB1C:  LDR             R0, [R4]; CHud::m_BigMessage ...
3CCB1E:  STR.W           R3, [R1,R8,LSL#2]
3CCB22:  MOV             R8, R1
3CCB24:  LDRH.W          R0, [R0,#(word_99116C - 0x990F6C)]
3CCB28:  CBNZ            R0, loc_3CCB44
3CCB2A:  LDR.W           R0, =(TheText_ptr - 0x3CCB36)
3CCB2E:  ADR.W           R1, aBusted_0; "BUSTED"
3CCB32:  ADD             R0, PC; TheText_ptr
3CCB34:  LDR             R0, [R0]; TheText ; this
3CCB36:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
3CCB3A:  MOVW            R1, #(elf_hash_bucket+0x128C); unsigned __int16 *
3CCB3E:  MOVS            R2, #2; unsigned int
3CCB40:  BLX             j__ZN9CMessages13AddBigMessageEPtjt; CMessages::AddBigMessage(ushort *,uint,ushort)
3CCB44:  LDR.W           R0, =(nUsingWhichCamera_ptr - 0x3CCB4E)
3CCB48:  MOV             R4, R9
3CCB4A:  ADD             R0, PC; nUsingWhichCamera_ptr
3CCB4C:  LDR             R0, [R0]; nUsingWhichCamera
3CCB4E:  LDR             R0, [R0]
3CCB50:  CMP             R0, #0
3CCB52:  BNE.W           loc_3CCE42
3CCB56:  LDR.W           R0, =(pStoredCopPed_ptr - 0x3CCB6A)
3CCB5A:  VMOV.F32        S18, #5.0
3CCB5E:  VMOV.F32        S22, #1.0
3CCB62:  VLDR            S16, =4.6566e-10
3CCB66:  ADD             R0, PC; pStoredCopPed_ptr
3CCB68:  VMOV.F32        S24, #2.0
3CCB6C:  VMOV.F32        S26, #3.0
3CCB70:  VLDR            S20, =0.0
3CCB74:  LDR             R0, [R0]; pStoredCopPed
3CCB76:  VMOV.F32        S28, #4.0
3CCB7A:  STR             R0, [SP,#0x118+var_BC]
3CCB7C:  MOV.W           R9, #0
3CCB80:  LDR.W           R0, =(pStoredCopPed_ptr - 0x3CCB8E)
3CCB84:  MOV.W           R10, #0
3CCB88:  STR             R4, [SP,#0x118+var_F4]
3CCB8A:  ADD             R0, PC; pStoredCopPed_ptr
3CCB8C:  LDR             R0, [R0]; pStoredCopPed
3CCB8E:  STR             R0, [SP,#0x118+var_C8]
3CCB90:  LDR.W           R0, =(nUsingWhichCamera_ptr - 0x3CCB98)
3CCB94:  ADD             R0, PC; nUsingWhichCamera_ptr
3CCB96:  LDR             R0, [R0]; nUsingWhichCamera
3CCB98:  STR             R0, [SP,#0x118+var_C4]
3CCB9A:  LDR.W           R0, =(nUsingWhichCamera_ptr - 0x3CCBA2)
3CCB9E:  ADD             R0, PC; nUsingWhichCamera_ptr
3CCBA0:  LDR             R0, [R0]; nUsingWhichCamera
3CCBA2:  STR             R0, [SP,#0x118+var_D4]
3CCBA4:  LDR.W           R0, =(nUsingWhichCamera_ptr - 0x3CCBAC)
3CCBA8:  ADD             R0, PC; nUsingWhichCamera_ptr
3CCBAA:  LDR             R0, [R0]; nUsingWhichCamera
3CCBAC:  STR             R0, [SP,#0x118+var_C0]
3CCBAE:  LDR.W           R0, =(pStoredCopPed_ptr - 0x3CCBB6)
3CCBB2:  ADD             R0, PC; pStoredCopPed_ptr
3CCBB4:  LDR             R0, [R0]; pStoredCopPed
3CCBB6:  STR             R0, [SP,#0x118+var_CC]
3CCBB8:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3CCBC0)
3CCBBC:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3CCBBE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3CCBC0:  STR             R0, [SP,#0x118+var_D8]
3CCBC2:  LDR.W           R0, =(TheCamera_ptr - 0x3CCBCA)
3CCBC6:  ADD             R0, PC; TheCamera_ptr
3CCBC8:  LDR             R0, [R0]; TheCamera
3CCBCA:  STR             R0, [SP,#0x118+var_DC]
3CCBCC:  LDR.W           R0, =(pStoredCopPed_ptr - 0x3CCBD4)
3CCBD0:  ADD             R0, PC; pStoredCopPed_ptr
3CCBD2:  LDR             R0, [R0]; pStoredCopPed
3CCBD4:  STR             R0, [SP,#0x118+var_F8]
3CCBD6:  LDR.W           R0, =(TheCamera_ptr - 0x3CCBDE)
3CCBDA:  ADD             R0, PC; TheCamera_ptr
3CCBDC:  LDR             R0, [R0]; TheCamera
3CCBDE:  STR             R0, [SP,#0x118+var_E4]
3CCBE0:  LDR.W           R0, =(pStoredCopPed_ptr - 0x3CCBE8)
3CCBE4:  ADD             R0, PC; pStoredCopPed_ptr
3CCBE6:  LDR             R0, [R0]; pStoredCopPed
3CCBE8:  STR             R0, [SP,#0x118+var_E8]
3CCBEA:  LDR.W           R0, =(TheCamera_ptr - 0x3CCBF2)
3CCBEE:  ADD             R0, PC; TheCamera_ptr
3CCBF0:  LDR             R0, [R0]; TheCamera
3CCBF2:  STR             R0, [SP,#0x118+var_E0]
3CCBF4:  LDR.W           R0, =(pStoredCopPed_ptr - 0x3CCBFC)
3CCBF8:  ADD             R0, PC; pStoredCopPed_ptr
3CCBFA:  LDR             R0, [R0]; pStoredCopPed
3CCBFC:  STR             R0, [SP,#0x118+var_FC]
3CCBFE:  LDR.W           R0, =(TheCamera_ptr - 0x3CCC06)
3CCC02:  ADD             R0, PC; TheCamera_ptr
3CCC04:  LDR             R0, [R0]; TheCamera
3CCC06:  STR             R0, [SP,#0x118+var_EC]
3CCC08:  LDR.W           R0, =(pStoredCopPed_ptr - 0x3CCC10)
3CCC0C:  ADD             R0, PC; pStoredCopPed_ptr
3CCC0E:  LDR             R0, [R0]; pStoredCopPed
3CCC10:  STR             R0, [SP,#0x118+var_F0]
3CCC12:  B               loc_3CCE36
3CCC14:  LDR             R1, [SP,#0x118+var_BC]; CEntity *
3CCC16:  MOVS            R0, #0
3CCC18:  STR             R0, [R1]
3CCC1A:  SUB.W           R0, R11, #1; switch 8 cases
3CCC1E:  CMP             R0, #7
3CCC20:  BHI             def_3CCC22; jumptable 003CCC22 default case, cases 4-7
3CCC22:  TBB.W           [PC,R0]; switch jump
3CCC26:  DCB 4; jump table for switch statement
3CCC27:  DCB 0x1E
3CCC28:  DCB 0x2B
3CCC29:  DCB 0x16
3CCC2A:  DCB 0x16
3CCC2B:  DCB 0x16
3CCC2C:  DCB 0x16
3CCC2D:  DCB 0x5C
3CCC2E:  LDR             R0, [SP,#0x118+var_D8]; jumptable 003CCC22 case 1
3CCC30:  MOV             R1, R6; CPed *
3CCC32:  MOVS            R2, #1; bool
3CCC34:  VLDR            S0, [R0]
3CCC38:  LDR.W           R0, =(unk_952E6C - 0x3CCC44)
3CCC3C:  VCVT.F32.U32    S0, S0
3CCC40:  ADD             R0, PC; unk_952E6C
3CCC42:  VSTR            S0, [R0]
3CCC46:  MOV             R0, R4; this
3CCC48:  BLX             j__ZN4CCam19ProcessDWBustedCam1EP4CPedb; CCam::ProcessDWBustedCam1(CPed *,bool)
3CCC4C:  CMP             R0, #1
3CCC4E:  BEQ.W           loc_3CD28A
3CCC52:  MOVS.W          R0, R9,LSL#31; jumptable 003CCC22 default case, cases 4-7
3CCC56:  BEQ             loc_3CCCEC
3CCC58:  LDR             R0, [SP,#0x118+var_C8]
3CCC5A:  MOV             R5, R6
3CCC5C:  LDR             R6, [R0]
3CCC5E:  CBNZ            R6, loc_3CCCA2
3CCC60:  B               loc_3CCCAA
3CCC62:  CMP             R6, #0; jumptable 003CCC22 case 2
3CCC64:  BEQ             loc_3CCD18
3CCC66:  LDR             R0, [SP,#0x118+var_E4]
3CCC68:  ADD             R3, SP, #0x118+var_78; CVector *
3CCC6A:  MOV             R2, R6; CPed *
3CCC6C:  LDR.W           R1, [R0,#0x8DC]; CEntity *
3CCC70:  ADD             R0, SP, #0x118+var_68; this
3CCC72:  STR             R0, [SP,#0x118+var_118]; CVector *
3CCC74:  BLX             j__ZN4CCam22GetLookOverShoulderPosEP7CEntityP4CPedR7CVectorS5_; CCam::GetLookOverShoulderPos(CEntity *,CPed *,CVector &,CVector &)
3CCC78:  LDR             R1, [SP,#0x118+var_E8]
3CCC7A:  B               loc_3CCC94
3CCC7C:  CMP             R6, #0; jumptable 003CCC22 case 3
3CCC7E:  BEQ             loc_3CCD72
3CCC80:  LDR             R0, [SP,#0x118+var_EC]
3CCC82:  ADD             R3, SP, #0x118+var_78; CVector *
3CCC84:  MOV             R2, R6; CPed *
3CCC86:  LDR.W           R1, [R0,#0x8DC]; CEntity *
3CCC8A:  ADD             R0, SP, #0x118+var_68; this
3CCC8C:  STR             R0, [SP,#0x118+var_118]; CVector *
3CCC8E:  BLX             j__ZN4CCam21GetLookAlongGroundPosEP7CEntityP4CPedR7CVectorS5_; CCam::GetLookAlongGroundPos(CEntity *,CPed *,CVector &,CVector &)
3CCC92:  LDR             R1, [SP,#0x118+var_F0]
3CCC94:  MOVS            R5, #0
3CCC96:  CMP             R0, #0
3CCC98:  MOV.W           R9, #0
3CCC9C:  STR             R6, [R1]
3CCC9E:  BEQ.W           loc_3CCE0A
3CCCA2:  LDR             R1, [SP,#0x118+var_CC]; CEntity **
3CCCA4:  MOV             R0, R6; this
3CCCA6:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3CCCAA:  LDR             R0, [SP,#0x118+var_C4]
3CCCAC:  CMP.W           R11, #3
3CCCB0:  STR.W           R11, [R0]
3CCCB4:  BNE.W           loc_3CCE06
3CCCB8:  BLX             rand
3CCCBC:  VMOV            S0, R0
3CCCC0:  VCVT.F32.S32    S0, S0
3CCCC4:  VMUL.F32        S0, S0, S16
3CCCC8:  VMUL.F32        S0, S0, S18
3CCCCC:  VADD.F32        S0, S0, S20
3CCCD0:  VCMPE.F32       S0, S22
3CCCD4:  VMRS            APSR_nzcv, FPSCR
3CCCD8:  BGE             loc_3CCCFC
3CCCDA:  MOVS            R0, #3
3CCCDC:  B               loc_3CCE02
3CCCDE:  ADD             R0, SP, #0x118+var_68; jumptable 003CCC22 case 8
3CCCE0:  ADD             R3, SP, #0x118+var_78; CVector *
3CCCE2:  STR             R0, [SP,#0x118+var_118]; CVector *
3CCCE4:  BLX             j__ZN4CCam22GetLookFromLampPostPosEP7CEntityP4CPedR7CVectorS5_; CCam::GetLookFromLampPostPos(CEntity *,CPed *,CVector &,CVector &)
3CCCE8:  CMP             R0, #0
3CCCEA:  BNE             loc_3CCC58
3CCCEC:  MOV.W           R9, #0
3CCCF0:  MOV             R5, R6
3CCCF2:  CMP.W           R10, #4
3CCCF6:  BLE.W           loc_3CCE10
3CCCFA:  B               loc_3CCE42
3CCCFC:  VCMPE.F32       S0, S24
3CCD00:  VMRS            APSR_nzcv, FPSCR
3CCD04:  BGE             loc_3CCDDA
3CCD06:  MOVS            R0, #4
3CCD08:  B               loc_3CCE02
3CCD0A:  ALIGN 4
3CCD0C:  DCFS 4.6566e-10
3CCD10:  DCFS 0.0
3CCD14:  DCFS 0.65
3CCD18:  LDR             R0, [SP,#0x118+var_D0]
3CCD1A:  CMP             R0, #0
3CCD1C:  BEQ             loc_3CCDE8
3CCD1E:  LDR.W           R8, [R0,#0x440]
3CCD22:  MOVS            R0, #0x4C ; 'L'
3CCD24:  MOV             R4, R0
3CCD26:  LDR.W           R6, [R8,R4,LSL#2]
3CCD2A:  CBZ             R6, loc_3CCD66
3CCD2C:  LDR.W           R0, [R6,#0x440]
3CCD30:  MOVW            R1, #0x44C; int
3CCD34:  ADDS            R0, #4; this
3CCD36:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
3CCD3A:  MOV             R5, R0
3CCD3C:  CBZ             R5, loc_3CCD66
3CCD3E:  MOV.W           R0, #0xFFFFFFFF; int
3CCD42:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3CCD46:  LDR             R1, [R5,#8]
3CCD48:  CMP             R0, R1
3CCD4A:  BNE             loc_3CCD66
3CCD4C:  LDR             R0, [SP,#0x118+var_DC]
3CCD4E:  ADD             R3, SP, #0x118+var_78; CVector *
3CCD50:  MOV             R2, R6; CPed *
3CCD52:  LDR.W           R1, [R0,#0x8DC]; CEntity *
3CCD56:  ADD             R0, SP, #0x118+var_68; this
3CCD58:  STR             R0, [SP,#0x118+var_118]; CVector *
3CCD5A:  BLX             j__ZN4CCam22GetLookOverShoulderPosEP7CEntityP4CPedR7CVectorS5_; CCam::GetLookOverShoulderPos(CEntity *,CPed *,CVector &,CVector &)
3CCD5E:  CMP             R0, #1
3CCD60:  BEQ             loc_3CCE1E
3CCD62:  MOV.W           R9, #0
3CCD66:  SUB.W           R1, R4, #0x4C ; 'L'
3CCD6A:  ADDS            R0, R4, #1
3CCD6C:  CMP             R1, #0xF
3CCD6E:  BLT             loc_3CCD24
3CCD70:  B               loc_3CCDC8
3CCD72:  LDR             R0, [SP,#0x118+var_D0]
3CCD74:  CBZ             R0, loc_3CCDE8
3CCD76:  LDR.W           R8, [R0,#0x440]
3CCD7A:  MOVS            R0, #0x4C ; 'L'
3CCD7C:  MOV             R4, R0
3CCD7E:  LDR.W           R6, [R8,R4,LSL#2]
3CCD82:  CBZ             R6, loc_3CCDBE
3CCD84:  LDR.W           R0, [R6,#0x440]
3CCD88:  MOVW            R1, #0x44C; int
3CCD8C:  ADDS            R0, #4; this
3CCD8E:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
3CCD92:  MOV             R5, R0
3CCD94:  CBZ             R5, loc_3CCDBE
3CCD96:  MOV.W           R0, #0xFFFFFFFF; int
3CCD9A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3CCD9E:  LDR             R1, [R5,#8]
3CCDA0:  CMP             R0, R1
3CCDA2:  BNE             loc_3CCDBE
3CCDA4:  LDR             R0, [SP,#0x118+var_E0]
3CCDA6:  ADD             R3, SP, #0x118+var_78; CVector *
3CCDA8:  MOV             R2, R6; CPed *
3CCDAA:  LDR.W           R1, [R0,#0x8DC]; CEntity *
3CCDAE:  ADD             R0, SP, #0x118+var_68; this
3CCDB0:  STR             R0, [SP,#0x118+var_118]; CVector *
3CCDB2:  BLX             j__ZN4CCam22GetLookOverShoulderPosEP7CEntityP4CPedR7CVectorS5_; CCam::GetLookOverShoulderPos(CEntity *,CPed *,CVector &,CVector &)
3CCDB6:  CMP             R0, #1
3CCDB8:  BEQ             loc_3CCE22
3CCDBA:  MOV.W           R9, #0
3CCDBE:  SUB.W           R1, R4, #0x4C ; 'L'
3CCDC2:  ADDS            R0, R4, #1
3CCDC4:  CMP             R1, #0xF
3CCDC6:  BLT             loc_3CCD7C
3CCDC8:  MOVS            R6, #0
3CCDCA:  LDR             R4, [SP,#0x118+var_F4]
3CCDCC:  ADD.W           R8, SP, #0x118+var_90
3CCDD0:  MOVS.W          R0, R9,LSL#31
3CCDD4:  BNE.W           loc_3CCC58
3CCDD8:  B               loc_3CCCEC
3CCDDA:  VCMPE.F32       S0, S26
3CCDDE:  VMRS            APSR_nzcv, FPSCR
3CCDE2:  BGE             loc_3CCDF4
3CCDE4:  MOVS            R0, #5
3CCDE6:  B               loc_3CCE02
3CCDE8:  MOVS            R6, #0
3CCDEA:  MOVS.W          R0, R9,LSL#31
3CCDEE:  BNE.W           loc_3CCC58
3CCDF2:  B               loc_3CCCEC
3CCDF4:  VCMPE.F32       S0, S28
3CCDF8:  MOVS            R0, #7
3CCDFA:  VMRS            APSR_nzcv, FPSCR
3CCDFE:  IT LT
3CCE00:  MOVLT           R0, #6
3CCE02:  LDR             R1, [SP,#0x118+var_D4]
3CCE04:  STR             R0, [R1]
3CCE06:  MOV.W           R9, #1
3CCE0A:  CMP.W           R10, #4
3CCE0E:  BGT             loc_3CCE42
3CCE10:  LDR             R0, [SP,#0x118+var_C0]
3CCE12:  ADD.W           R10, R10, #1
3CCE16:  MOV             R6, R5
3CCE18:  LDR             R0, [R0]
3CCE1A:  CBZ             R0, loc_3CCE36
3CCE1C:  B               loc_3CCE42
3CCE1E:  LDR             R0, [SP,#0x118+var_F8]
3CCE20:  B               loc_3CCE24
3CCE22:  LDR             R0, [SP,#0x118+var_FC]
3CCE24:  STR             R6, [R0]
3CCE26:  MOVS            R5, #0
3CCE28:  LDR             R4, [SP,#0x118+var_F4]
3CCE2A:  ADD.W           R8, SP, #0x118+var_90
3CCE2E:  CMP             R6, #0
3CCE30:  BNE.W           loc_3CCCA2
3CCE34:  B               loc_3CCCAA
3CCE36:  LDR.W           R11, [R8,R10,LSL#2]
3CCE3A:  CMP.W           R11, #1
3CCE3E:  BGE.W           loc_3CCC14
3CCE42:  VLDR            D16, [SP,#0x118+var_68]
3CCE46:  ADD.W           R3, R4, #0x174; CVector *
3CCE4A:  LDR.W           R0, =(TheCamera_ptr - 0x3CCE5A)
3CCE4E:  ADD             R2, SP, #0x118+var_78; CVector *
3CCE50:  LDR             R1, [SP,#0x118+var_60]
3CCE52:  STR.W           R1, [R4,#0x17C]
3CCE56:  ADD             R0, PC; TheCamera_ptr
3CCE58:  VSTR            D16, [R4,#0x174]
3CCE5C:  VLDR            D16, [SP,#0x118+var_68]
3CCE60:  LDR             R1, [SP,#0x118+var_60]
3CCE62:  STR             R1, [SP,#0x118+var_98]
3CCE64:  ADD             R1, SP, #0x118+var_A0; CVector *
3CCE66:  VSTR            D16, [SP,#0x118+var_A0]
3CCE6A:  LDR             R0, [R0]; TheCamera ; this
3CCE6C:  VLDR            S0, [R4,#0x8C]
3CCE70:  VSTR            S0, [SP,#0x118+var_118]
3CCE74:  BLX             j__ZN7CCamera16AvoidTheGeometryERK7CVectorS2_RS0_f; CCamera::AvoidTheGeometry(CVector const&,CVector const&,CVector&,float)
3CCE78:  VLDR            S0, [R4,#0x174]
3CCE7C:  ADD.W           R5, R4, #0x168
3CCE80:  VLDR            S6, [SP,#0x118+var_78]
3CCE84:  VLDR            S2, [R4,#0x178]
3CCE88:  MOV             R0, R5; this
3CCE8A:  VLDR            S8, [SP,#0x118+var_78+4]
3CCE8E:  VSUB.F32        S0, S6, S0
3CCE92:  VLDR            S4, [R4,#0x17C]
3CCE96:  VLDR            S10, [SP,#0x118+var_70]
3CCE9A:  VSUB.F32        S2, S8, S2
3CCE9E:  VSUB.F32        S4, S10, S4
3CCEA2:  VSTR            S0, [R4,#0x168]
3CCEA6:  VSTR            S2, [R4,#0x16C]
3CCEAA:  VSTR            S4, [R4,#0x170]
3CCEAE:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CCEB2:  ADD             R6, SP, #0x118+var_AC
3CCEB4:  MOV.W           R8, #0
3CCEB8:  MOV.W           R0, #0x3F800000
3CCEBC:  ADD.W           R2, R4, #0x18C
3CCEC0:  STRD.W          R8, R8, [R4,#0x18C]
3CCEC4:  MOV             R1, R5; CVector *
3CCEC6:  STR.W           R0, [R4,#0x194]
3CCECA:  MOV             R0, R6; CVector *
3CCECC:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3CCED0:  MOV             R0, R6; this
3CCED2:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CCED6:  ADD             R0, SP, #0x118+var_B8; CVector *
3CCED8:  MOV             R1, R6; CVector *
3CCEDA:  MOV             R2, R5
3CCEDC:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3CCEE0:  LDR.W           R0, =(nUsingWhichCamera_ptr - 0x3CCEEC)
3CCEE4:  VLDR            D16, [SP,#0x118+var_B8]
3CCEE8:  ADD             R0, PC; nUsingWhichCamera_ptr
3CCEEA:  LDR             R1, [SP,#0x118+var_B0]
3CCEEC:  STR.W           R1, [R4,#0x194]
3CCEF0:  LDR             R0, [R0]; nUsingWhichCamera
3CCEF2:  VSTR            D16, [R4,#0x18C]
3CCEF6:  LDR             R0, [R0]
3CCEF8:  CMP             R0, #0
3CCEFA:  IT NE
3CCEFC:  STRBNE.W        R8, [R4,#0xA]
3CCF00:  MOVS            R0, #1
3CCF02:  ADD             SP, SP, #0xC0
3CCF04:  VPOP            {D8-D14}
3CCF08:  ADD             SP, SP, #4
3CCF0A:  POP.W           {R8-R11}
3CCF0E:  POP             {R4-R7,PC}
3CCF10:  LDR.W           R1, [R0,#0x464]
3CCF14:  CBZ             R1, loc_3CCF5A
3CCF16:  MOV             R0, R1; this
3CCF18:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
3CCF1C:  CBZ             R0, loc_3CCF4E
3CCF1E:  LDR.W           R0, =(TheCamera_ptr - 0x3CCF26)
3CCF22:  ADD             R0, PC; TheCamera_ptr
3CCF24:  LDR             R0, [R0]; TheCamera
3CCF26:  LDR.W           R0, [R0,#(dword_952884 - 0x951FA8)]
3CCF2A:  LDR.W           R0, [R0,#0x464]; this
3CCF2E:  ADD             R1, SP, #0x118+var_78
3CCF30:  MOVS            R2, #3
3CCF32:  MOVS            R3, #1
3CCF34:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
3CCF38:  B               loc_3CCF72
3CCF3A:  MOV.W           R8, #3
3CCF3E:  MOV.W           R12, #2
3CCF42:  B               loc_3CCAFC
3CCF44:  MOVS            R0, #3
3CCF46:  MOV.W           R12, #1
3CCF4A:  MOVS            R2, #8
3CCF4C:  B               loc_3CCAD8
3CCF4E:  LDR.W           R0, =(TheCamera_ptr - 0x3CCF56)
3CCF52:  ADD             R0, PC; TheCamera_ptr
3CCF54:  LDR             R0, [R0]; TheCamera
3CCF56:  LDR.W           R0, [R0,#(dword_952884 - 0x951FA8)]
3CCF5A:  LDR             R1, [R0,#0x14]
3CCF5C:  ADD.W           R2, R1, #0x30 ; '0'
3CCF60:  CMP             R1, #0
3CCF62:  IT EQ
3CCF64:  ADDEQ           R2, R0, #4
3CCF66:  VLDR            D16, [R2]
3CCF6A:  LDR             R0, [R2,#8]
3CCF6C:  STR             R0, [SP,#0x118+var_70]
3CCF6E:  VSTR            D16, [SP,#0x118+var_78]
3CCF72:  LDR.W           R0, =(nUsingWhichCamera_ptr - 0x3CCF7A)
3CCF76:  ADD             R0, PC; nUsingWhichCamera_ptr
3CCF78:  LDR             R0, [R0]; nUsingWhichCamera
3CCF7A:  LDR             R0, [R0]
3CCF7C:  CMP             R0, #2
3CCF7E:  BNE             loc_3CCFE4
3CCF80:  LDR.W           R1, =(pStoredCopPed_ptr - 0x3CCF88)
3CCF84:  ADD             R1, PC; pStoredCopPed_ptr
3CCF86:  LDR             R1, [R1]; pStoredCopPed
3CCF88:  LDR             R2, [R1]; CPed *
3CCF8A:  CBZ             R2, loc_3CCFE4
3CCF8C:  LDR.W           R0, =(TheCamera_ptr - 0x3CCF96)
3CCF90:  ADD             R3, SP, #0x118+var_78; CVector *
3CCF92:  ADD             R0, PC; TheCamera_ptr
3CCF94:  LDR             R0, [R0]; TheCamera
3CCF96:  LDR.W           R1, [R0,#(dword_952884 - 0x951FA8)]; CEntity *
3CCF9A:  ADD             R0, SP, #0x118+var_68; this
3CCF9C:  STR             R0, [SP,#0x118+var_118]; CVector *
3CCF9E:  BLX             j__ZN4CCam22GetLookOverShoulderPosEP7CEntityP4CPedR7CVectorS5_; CCam::GetLookOverShoulderPos(CEntity *,CPed *,CVector &,CVector &)
3CCFA2:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3CCFB2)
3CCFA6:  ADD.W           R5, R4, #0x17C
3CCFAA:  LDR.W           R2, =(ARRESTCAM_S_ROTATION_UP_ptr - 0x3CCFB4)
3CCFAE:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3CCFB0:  ADD             R2, PC; ARRESTCAM_S_ROTATION_UP_ptr
3CCFB2:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
3CCFB4:  LDR             R2, [R2]; ARRESTCAM_S_ROTATION_UP
3CCFB6:  VLDR            S0, [R1]
3CCFBA:  VLDR            S2, [R2]
3CCFBE:  VMUL.F32        S0, S2, S0
3CCFC2:  VLDR            S2, [R4,#0x17C]
3CCFC6:  VADD.F32        S0, S2, S0
3CCFCA:  VLDR            S2, [SP,#0x118+var_60]
3CCFCE:  VCMPE.F32       S2, S0
3CCFD2:  VMRS            APSR_nzcv, FPSCR
3CCFD6:  BLE             loc_3CD090
3CCFD8:  CMP             R0, #0
3CCFDA:  VSTR            S0, [SP,#0x118+var_60]
3CCFDE:  BEQ.W           loc_3CD260
3CCFE2:  B               loc_3CD366
3CCFE4:  BIC.W           R1, R0, #3
3CCFE8:  CMP             R1, #4
3CCFEA:  BNE             loc_3CD098
3CCFEC:  VLDR            D16, [R4,#0x174]
3CCFF0:  ADD.W           R5, R4, #0x168
3CCFF4:  LDR.W           R0, [R4,#0x17C]
3CCFF8:  STR             R0, [SP,#0x118+var_60]
3CCFFA:  MOV             R0, R5; this
3CCFFC:  VSTR            D16, [SP,#0x118+var_68]
3CD000:  VLDR            S0, [R4,#0x174]
3CD004:  VLDR            S6, [SP,#0x118+var_78]
3CD008:  VLDR            S2, [R4,#0x178]
3CD00C:  VLDR            S8, [SP,#0x118+var_78+4]
3CD010:  VSUB.F32        S0, S6, S0
3CD014:  VLDR            S4, [R4,#0x17C]
3CD018:  VLDR            S10, [SP,#0x118+var_70]
3CD01C:  VSUB.F32        S2, S8, S2
3CD020:  VSUB.F32        S4, S10, S4
3CD024:  VSTR            S0, [R4,#0x168]
3CD028:  VSTR            S2, [R4,#0x16C]
3CD02C:  VSTR            S4, [R4,#0x170]
3CD030:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CD034:  ADD             R6, SP, #0x118+var_A0
3CD036:  MOVS            R0, #0
3CD038:  MOV.W           R1, #0x3F800000
3CD03C:  ADD.W           R2, R4, #0x18C
3CD040:  STRD.W          R0, R0, [R4,#0x18C]
3CD044:  MOV             R0, R6; CVector *
3CD046:  STR.W           R1, [R4,#0x194]
3CD04A:  MOV             R1, R5; CVector *
3CD04C:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3CD050:  MOV             R0, R6; this
3CD052:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CD056:  LDR.W           R0, =(nUsingWhichCamera_ptr - 0x3CD062)
3CD05A:  VLDR            S0, [SP,#0x118+var_A0]
3CD05E:  ADD             R0, PC; nUsingWhichCamera_ptr
3CD060:  LDR             R0, [R0]; nUsingWhichCamera
3CD062:  LDR             R0, [R0]
3CD064:  ORR.W           R0, R0, #1
3CD068:  CMP             R0, #7
3CD06A:  BNE.W           loc_3CD1FA
3CD06E:  VLDR            S2, [SP,#0x118+var_A0+4]
3CD072:  VNEG.F32        S0, S0
3CD076:  VLDR            S4, [SP,#0x118+var_98]
3CD07A:  VNEG.F32        S2, S2
3CD07E:  VNEG.F32        S4, S4
3CD082:  VSTR            S0, [SP,#0x118+var_A0]
3CD086:  VSTR            S2, [SP,#0x118+var_A0+4]
3CD08A:  VSTR            S4, [SP,#0x118+var_98]
3CD08E:  B               loc_3CD202
3CD090:  CMP             R0, #1
3CD092:  BNE.W           loc_3CD260
3CD096:  B               loc_3CD366
3CD098:  CMP             R0, #8
3CD09A:  BNE.W           loc_3CD260
3CD09E:  VLDR            D16, [R4,#0x174]
3CD0A2:  ADD.W           R5, R4, #0x168
3CD0A6:  VLDR            S0, [SP,#0x118+var_78]
3CD0AA:  MOV.W           R8, #0
3CD0AE:  VSTR            D16, [SP,#0x118+var_68]
3CD0B2:  VLDR            S16, [SP,#0x118+var_68]
3CD0B6:  VLDR            S18, [SP,#0x118+var_68+4]
3CD0BA:  VLDR            S2, [SP,#0x118+var_78+4]
3CD0BE:  VSUB.F32        S0, S0, S16
3CD0C2:  LDR.W           R0, [R4,#0x17C]
3CD0C6:  VSUB.F32        S2, S2, S18
3CD0CA:  STR             R0, [SP,#0x118+var_60]
3CD0CC:  MOV             R0, R5; this
3CD0CE:  STR.W           R8, [R4,#0x170]
3CD0D2:  VSTR            S0, [R4,#0x168]
3CD0D6:  VSTR            S2, [R4,#0x16C]
3CD0DA:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CD0DE:  ADD             R6, SP, #0x118+var_A0
3CD0E0:  MOV.W           R0, #0x3F800000
3CD0E4:  ADD.W           R2, R4, #0x18C
3CD0E8:  STRD.W          R8, R8, [R4,#0x18C]
3CD0EC:  STR.W           R0, [R4,#0x194]
3CD0F0:  MOV             R0, R6; CVector *
3CD0F2:  MOV             R1, R5; CVector *
3CD0F4:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3CD0F8:  MOV             R0, R6; this
3CD0FA:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CD0FE:  LDR             R0, =(ARRESTCAM_LAMPPOST_ROTATEDIST_ptr - 0x3CD108)
3CD100:  VLDR            S8, [SP,#0x118+var_78+4]
3CD104:  ADD             R0, PC; ARRESTCAM_LAMPPOST_ROTATEDIST_ptr
3CD106:  VLDR            S0, [SP,#0x118+var_A0]
3CD10A:  VLDR            S2, [SP,#0x118+var_A0+4]
3CD10E:  VSUB.F32        S8, S8, S18
3CD112:  LDR             R0, [R0]; ARRESTCAM_LAMPPOST_ROTATEDIST
3CD114:  VLDR            S6, [SP,#0x118+var_78]
3CD118:  VLDR            S4, [R0]
3CD11C:  MOV             R0, R5; this
3CD11E:  STR.W           R8, [R4,#0x170]
3CD122:  VMUL.F32        S2, S4, S2
3CD126:  VMUL.F32        S0, S4, S0
3CD12A:  VSUB.F32        S4, S6, S16
3CD12E:  VADD.F32        S2, S8, S2
3CD132:  VADD.F32        S0, S4, S0
3CD136:  VSTR            S0, [R4,#0x168]
3CD13A:  VSTR            S2, [R4,#0x16C]
3CD13E:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CD142:  VMOV.F32        S0, #0.5
3CD146:  VLDR            S2, [R4,#0x168]
3CD14A:  VLDR            S4, [R4,#0x16C]
3CD14E:  MOVS            R6, #1
3CD150:  VLDR            S6, [R4,#0x170]
3CD154:  VLDR            S20, [SP,#0x118+var_60]
3CD158:  LDR             R3, =(TheCamera_ptr - 0x3CD15E)
3CD15A:  ADD             R3, PC; TheCamera_ptr
3CD15C:  VMUL.F32        S2, S2, S0
3CD160:  VMUL.F32        S4, S4, S0
3CD164:  LDR             R3, [R3]; TheCamera
3CD166:  VMUL.F32        S0, S6, S0
3CD16A:  LDR.W           R3, [R3,#(dword_952884 - 0x951FA8)]
3CD16E:  STRD.W          R3, R6, [SP,#0x118+var_118]
3CD172:  MOV             R3, #0x3ECCCCCD
3CD17A:  STRD.W          R6, R8, [SP,#0x118+var_110]
3CD17E:  VADD.F32        S2, S2, S16
3CD182:  STRD.W          R6, R8, [SP,#0x118+var_108]
3CD186:  VADD.F32        S4, S4, S18
3CD18A:  STR             R6, [SP,#0x118+var_100]
3CD18C:  VADD.F32        S0, S0, S20
3CD190:  VMOV            R0, S2
3CD194:  VMOV            R1, S4
3CD198:  VMOV            R2, S0
3CD19C:  BLX             j__ZN6CWorld22TestSphereAgainstWorldE7CVectorfP7CEntitybbbbbb; CWorld::TestSphereAgainstWorld(CVector,float,CEntity *,bool,bool,bool,bool,bool,bool)
3CD1A0:  CMP             R0, #0
3CD1A2:  BNE             loc_3CD260
3CD1A4:  LDR             R0, =(ARRESTCAM_LAMPPOST_TRANSLATE_ptr - 0x3CD1B0)
3CD1A6:  ADD.W           R5, R4, #0x17C
3CD1AA:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3CD1BA)
3CD1AC:  ADD             R0, PC; ARRESTCAM_LAMPPOST_TRANSLATE_ptr
3CD1AE:  VLDR            S0, [R4,#0x168]
3CD1B2:  VLDR            S2, [R4,#0x16C]
3CD1B6:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3CD1B8:  LDR             R0, [R0]; ARRESTCAM_LAMPPOST_TRANSLATE
3CD1BA:  VLDR            S4, [R4,#0x170]
3CD1BE:  VLDR            S6, [R0]
3CD1C2:  LDR             R0, [R1]; CTimer::ms_fTimeStep ...
3CD1C4:  VMUL.F32        S0, S6, S0
3CD1C8:  VMUL.F32        S2, S6, S2
3CD1CC:  VMUL.F32        S4, S6, S4
3CD1D0:  VLDR            S6, [R0]
3CD1D4:  VMUL.F32        S0, S0, S6
3CD1D8:  VMUL.F32        S2, S2, S6
3CD1DC:  VMUL.F32        S4, S4, S6
3CD1E0:  VADD.F32        S0, S0, S16
3CD1E4:  VADD.F32        S2, S2, S18
3CD1E8:  VADD.F32        S4, S4, S20
3CD1EC:  VSTR            S0, [SP,#0x118+var_68]
3CD1F0:  VSTR            S2, [SP,#0x118+var_68+4]
3CD1F4:  VSTR            S4, [SP,#0x118+var_60]
3CD1F8:  B               loc_3CD366
3CD1FA:  VLDR            S2, [SP,#0x118+var_A0+4]
3CD1FE:  VLDR            S4, [SP,#0x118+var_98]
3CD202:  VMOV.F32        S6, #0.5
3CD206:  VLDR            S8, [R4,#0x178]
3CD20A:  VLDR            S10, [R4,#0x17C]
3CD20E:  MOVS            R6, #1
3CD210:  LDR             R3, =(TheCamera_ptr - 0x3CD218)
3CD212:  MOVS            R5, #0
3CD214:  ADD             R3, PC; TheCamera_ptr
3CD216:  LDR             R3, [R3]; TheCamera
3CD218:  VMUL.F32        S2, S2, S6
3CD21C:  VMUL.F32        S4, S4, S6
3CD220:  VMUL.F32        S0, S0, S6
3CD224:  VLDR            S6, [R4,#0x174]
3CD228:  LDR.W           R3, [R3,#(dword_952884 - 0x951FA8)]
3CD22C:  STRD.W          R3, R6, [SP,#0x118+var_118]; float
3CD230:  MOV             R3, #0x3ECCCCCD
3CD238:  STRD.W          R6, R5, [SP,#0x118+var_110]
3CD23C:  STRD.W          R6, R5, [SP,#0x118+var_108]
3CD240:  VADD.F32        S2, S2, S8
3CD244:  STR             R6, [SP,#0x118+var_100]
3CD246:  VADD.F32        S4, S4, S10
3CD24A:  VADD.F32        S0, S0, S6
3CD24E:  VMOV            R1, S2
3CD252:  VMOV            R2, S4
3CD256:  VMOV            R0, S0
3CD25A:  BLX             j__ZN6CWorld22TestSphereAgainstWorldE7CVectorfP7CEntitybbbbbb; CWorld::TestSphereAgainstWorld(CVector,float,CEntity *,bool,bool,bool,bool,bool,bool)
3CD25E:  CBZ             R0, loc_3CD2AC
3CD260:  LDR             R0, =(TheCamera_ptr - 0x3CD270)
3CD262:  ADD.W           R3, R4, #0x174; CVector *
3CD266:  VLDR            D16, [R4,#0x174]
3CD26A:  ADD             R2, SP, #0x118+var_78; CVector *
3CD26C:  ADD             R0, PC; TheCamera_ptr
3CD26E:  LDR.W           R1, [R4,#0x17C]
3CD272:  STR             R1, [SP,#0x118+var_98]
3CD274:  ADD             R1, SP, #0x118+var_A0; CVector *
3CD276:  VSTR            D16, [SP,#0x118+var_A0]
3CD27A:  LDR             R0, [R0]; TheCamera ; this
3CD27C:  VLDR            S0, [R4,#0x8C]
3CD280:  VSTR            S0, [SP,#0x118+var_118]
3CD284:  BLX             j__ZN7CCamera16AvoidTheGeometryERK7CVectorS2_RS0_f; CCamera::AvoidTheGeometry(CVector const&,CVector const&,CVector&,float)
3CD288:  B               loc_3CCF00
3CD28A:  LDR             R0, =(TheCamera_ptr - 0x3CD292)
3CD28C:  LDR             R1, =(nUsingWhichCamera_ptr - 0x3CD294)
3CD28E:  ADD             R0, PC; TheCamera_ptr
3CD290:  ADD             R1, PC; nUsingWhichCamera_ptr
3CD292:  LDR             R0, [R0]; TheCamera
3CD294:  LDR             R1, [R1]; nUsingWhichCamera
3CD296:  LDR.W           R0, [R0,#(dword_952884 - 0x951FA8)]
3CD29A:  LDR             R2, [R0,#0x1C]
3CD29C:  BIC.W           R2, R2, #0x80
3CD2A0:  STR             R2, [R0,#0x1C]
3CD2A2:  MOVS            R0, #1
3CD2A4:  STR             R0, [R1]
3CD2A6:  MOVS            R1, #0
3CD2A8:  STRB            R1, [R4,#0xA]
3CD2AA:  B               loc_3CCF02
3CD2AC:  LDR             R0, =(ARRESTCAM_ROTATION_SPEED_ptr - 0x3CD2B8)
3CD2AE:  ADD.W           R5, R4, #0x17C
3CD2B2:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3CD2C2)
3CD2B4:  ADD             R0, PC; ARRESTCAM_ROTATION_SPEED_ptr
3CD2B6:  VLDR            S0, [SP,#0x118+var_A0]
3CD2BA:  VLDR            S2, [SP,#0x118+var_A0+4]
3CD2BE:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3CD2C0:  LDR             R0, [R0]; ARRESTCAM_ROTATION_SPEED
3CD2C2:  VLDR            S4, [SP,#0x118+var_98]
3CD2C6:  VLDR            S10, [SP,#0x118+var_68+4]
3CD2CA:  VLDR            S6, [R0]
3CD2CE:  LDR             R0, [R1]; CTimer::ms_fTimeStep ...
3CD2D0:  VMUL.F32        S8, S6, S0
3CD2D4:  VLDR            S12, [SP,#0x118+var_60]
3CD2D8:  VMUL.F32        S2, S6, S2
3CD2DC:  VMUL.F32        S4, S6, S4
3CD2E0:  VLDR            S0, [R0]
3CD2E4:  LDR             R0, =(nUsingWhichCamera_ptr - 0x3CD2EA)
3CD2E6:  ADD             R0, PC; nUsingWhichCamera_ptr
3CD2E8:  VMUL.F32        S6, S8, S0
3CD2EC:  LDR             R0, [R0]; nUsingWhichCamera
3CD2EE:  VMUL.F32        S2, S2, S0
3CD2F2:  VMUL.F32        S8, S4, S0
3CD2F6:  VLDR            S4, [SP,#0x118+var_68]
3CD2FA:  LDR             R0, [R0]
3CD2FC:  ORR.W           R0, R0, #2
3CD300:  CMP             R0, #7
3CD302:  VADD.F32        S4, S6, S4
3CD306:  VADD.F32        S6, S2, S10
3CD30A:  VADD.F32        S2, S8, S12
3CD30E:  VSTR            S4, [SP,#0x118+var_68]
3CD312:  VSTR            S6, [SP,#0x118+var_68+4]
3CD316:  VSTR            S2, [SP,#0x118+var_60]
3CD31A:  BNE             loc_3CD330
3CD31C:  LDR             R0, =(ARRESTCAM_ROTATION_UP_ptr - 0x3CD322)
3CD31E:  ADD             R0, PC; ARRESTCAM_ROTATION_UP_ptr
3CD320:  LDR             R0, [R0]; ARRESTCAM_ROTATION_UP
3CD322:  VLDR            S4, [R0]
3CD326:  VMUL.F32        S0, S4, S0
3CD32A:  VADD.F32        S0, S2, S0
3CD32E:  B               loc_3CD362
3CD330:  VMOV            R0, S4; this
3CD334:  MOVS            R3, #0
3CD336:  VMOV            R1, S6; float
3CD33A:  STRB.W          R3, [SP,#0x118+var_AC]
3CD33E:  VMOV            R2, S2; float
3CD342:  STR             R3, [SP,#0x118+var_118]; float
3CD344:  ADD             R3, SP, #0x118+var_AC; float
3CD346:  BLX             j__ZN6CWorld21FindGroundZFor3DCoordEfffPbPP7CEntity; CWorld::FindGroundZFor3DCoord(float,float,float,bool *,CEntity **)
3CD34A:  LDRB.W          R1, [SP,#0x118+var_AC]
3CD34E:  CBZ             R1, loc_3CD366
3CD350:  VMOV            S0, R0
3CD354:  LDR             R0, =(ARRESTDIST_ABOVE_GROUND_ptr - 0x3CD35A)
3CD356:  ADD             R0, PC; ARRESTDIST_ABOVE_GROUND_ptr
3CD358:  LDR             R0, [R0]; ARRESTDIST_ABOVE_GROUND
3CD35A:  VLDR            S2, [R0]
3CD35E:  VADD.F32        S0, S0, S2
3CD362:  VSTR            S0, [SP,#0x118+var_60]
3CD366:  VLDR            D16, [SP,#0x118+var_68]
3CD36A:  ADD.W           R3, R4, #0x174; CVector *
3CD36E:  LDR             R0, =(TheCamera_ptr - 0x3CD37C)
3CD370:  ADD             R2, SP, #0x118+var_78; CVector *
3CD372:  LDR             R1, [SP,#0x118+var_60]
3CD374:  STR.W           R1, [R4,#0x17C]
3CD378:  ADD             R0, PC; TheCamera_ptr
3CD37A:  VSTR            D16, [R4,#0x174]
3CD37E:  VLDR            D16, [SP,#0x118+var_68]
3CD382:  LDR             R1, [SP,#0x118+var_60]
3CD384:  STR             R1, [SP,#0x118+var_98]
3CD386:  ADD             R1, SP, #0x118+var_A0; CVector *
3CD388:  VSTR            D16, [SP,#0x118+var_A0]
3CD38C:  LDR             R0, [R0]; TheCamera ; this
3CD38E:  VLDR            S0, [R4,#0x8C]
3CD392:  VSTR            S0, [SP,#0x118+var_118]
3CD396:  BLX             j__ZN7CCamera16AvoidTheGeometryERK7CVectorS2_RS0_f; CCamera::AvoidTheGeometry(CVector const&,CVector const&,CVector&,float)
3CD39A:  VLDR            S10, [R5]
3CD39E:  ADD.W           R5, R4, #0x168
3CD3A2:  VLDR            S4, [SP,#0x118+var_70]
3CD3A6:  VLDR            S0, [SP,#0x118+var_78]
3CD3AA:  MOV             R0, R5; this
3CD3AC:  VLDR            S6, [R4,#0x174]
3CD3B0:  VSUB.F32        S4, S4, S10
3CD3B4:  VLDR            S2, [SP,#0x118+var_78+4]
3CD3B8:  VLDR            S8, [R4,#0x178]
3CD3BC:  VSUB.F32        S0, S0, S6
3CD3C0:  VSUB.F32        S2, S2, S8
3CD3C4:  VSTR            S0, [R4,#0x168]
3CD3C8:  VSTR            S2, [R4,#0x16C]
3CD3CC:  VSTR            S4, [R4,#0x170]
3CD3D0:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CD3D4:  ADD             R6, SP, #0x118+var_AC
3CD3D6:  MOVS            R0, #0
3CD3D8:  MOV.W           R1, #0x3F800000
3CD3DC:  ADD.W           R2, R4, #0x18C
3CD3E0:  STRD.W          R0, R0, [R4,#0x18C]
3CD3E4:  MOV             R0, R6; CVector *
3CD3E6:  STR.W           R1, [R4,#0x194]
3CD3EA:  MOV             R1, R5; CVector *
3CD3EC:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3CD3F0:  MOV             R0, R6; this
3CD3F2:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CD3F6:  ADD             R0, SP, #0x118+var_B8; CVector *
3CD3F8:  MOV             R1, R6; CVector *
3CD3FA:  MOV             R2, R5
3CD3FC:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3CD400:  VLDR            D16, [SP,#0x118+var_B8]
3CD404:  LDR             R0, [SP,#0x118+var_B0]
3CD406:  STR.W           R0, [R4,#0x194]
3CD40A:  VSTR            D16, [R4,#0x18C]
3CD40E:  B               loc_3CCF00
