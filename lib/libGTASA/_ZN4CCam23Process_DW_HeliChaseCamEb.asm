; =========================================================
; Game Engine Function: _ZN4CCam23Process_DW_HeliChaseCamEb
; Address            : 0x3CD850 - 0x3CE44A
; =========================================================

3CD850:  PUSH            {R4-R7,LR}
3CD852:  ADD             R7, SP, #0xC
3CD854:  PUSH.W          {R8-R11}
3CD858:  SUB             SP, SP, #4
3CD85A:  VPUSH           {D8-D15}
3CD85E:  SUB             SP, SP, #0x148; CVector *
3CD860:  MOV             R9, R0
3CD862:  LDR.W           R0, =(TheCamera_ptr - 0x3CD86C)
3CD866:  MOVS            R6, #0
3CD868:  ADD             R0, PC; TheCamera_ptr
3CD86A:  LDR             R0, [R0]; TheCamera
3CD86C:  STRB.W          R6, [R0,#(byte_951FD7 - 0x951FA8)]
3CD870:  BLX             rand
3CD874:  UXTH            R0, R0
3CD876:  VLDR            S2, =0.000015259
3CD87A:  VMOV            S0, R0
3CD87E:  VLDR            S16, =0.0
3CD882:  VCVT.F32.S32    S0, S0
3CD886:  VMUL.F32        S0, S0, S2
3CD88A:  VMUL.F32        S0, S0, S16
3CD88E:  VCVT.S32.F32    S0, S0
3CD892:  LDR.W           R0, [R9,#0x1F4]
3CD896:  CMP             R0, #0
3CD898:  BEQ.W           loc_3CDE02
3CD89C:  B               loc_3CD8B4
3CD89E:  ALIGN 0x10
3CD8A0:  DCFS 0.000015259
3CD8A4:  DCFS 0.0
3CD8A8:  DCFS 4.6566e-10
3CD8AC:  DCFS 1.4
3CD8B0:  DCFS 0.1
3CD8B4:  LDRB.W          R0, [R0,#0x3A]
3CD8B8:  AND.W           R0, R0, #7
3CD8BC:  CMP             R0, #2
3CD8BE:  BNE.W           loc_3CDE00
3CD8C2:  VMOV            R11, S0
3CD8C6:  LDR.W           R0, =(gHCM_ptr - 0x3CD8D2)
3CD8CA:  MOVS            R1, #0x9C
3CD8CC:  ADD             R2, SP, #0x1A8+var_CC
3CD8CE:  ADD             R0, PC; gHCM_ptr
3CD8D0:  ADD.W           R8, SP, #0x1A8+var_B0
3CD8D4:  ADD             R6, SP, #0x1A8+var_A0
3CD8D6:  ADD             R5, SP, #0x1A8+var_94
3CD8D8:  LDR             R0, [R0]; gHCM
3CD8DA:  ADD             R4, SP, #0x1A8+var_88
3CD8DC:  ADD             R3, SP, #0x1A8+var_BC
3CD8DE:  MLA.W           R0, R11, R1, R0
3CD8E2:  ADD             R1, SP, #0x1A8+var_C8
3CD8E4:  STR             R0, [SP,#0x1A8+var_120]
3CD8E6:  ADD             R0, SP, #0x1A8+var_E4
3CD8E8:  STR             R0, [SP,#0x1A8+var_188]; CColSphere *
3CD8EA:  ADD             R0, SP, #0x1A8+var_D0
3CD8EC:  STMEA.W         SP, {R4-R6,R8}
3CD8F0:  ADD             R5, SP, #0x1A8+var_78
3CD8F2:  STRD.W          R3, R2, [SP,#0x1A8+var_198]; CVector *
3CD8F6:  ADD             R2, SP, #0x1A8+var_68; CVehicle **
3CD8F8:  STRD.W          R1, R0, [SP,#0x1A8+var_190]; CVector *
3CD8FC:  ADD             R1, SP, #0x1A8+var_64; CEntity **
3CD8FE:  MOV             R0, R9; this
3CD900:  MOV             R3, R5; CVector *
3CD902:  BLX             j__ZN4CCam28GetCoreDataForDWCineyCamModeEPP7CEntityPP8CVehicleP7CVectorS7_S7_S7_S7_S7_PfS7_S8_P10CColSphere; CCam::GetCoreDataForDWCineyCamMode(CEntity **,CVehicle **,CVector *,CVector *,CVector *,CVector *,CVector *,CVector *,float *,CVector *,float *,CColSphere *)
3CD906:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3CD912)
3CD90A:  LDR.W           R1, =(gDWLastModeForCineyCam_ptr - 0x3CD914)
3CD90E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3CD910:  ADD             R1, PC; gDWLastModeForCineyCam_ptr
3CD912:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3CD914:  LDR             R1, [R1]; gDWLastModeForCineyCam
3CD916:  LDR.W           R10, [R0]; CTimer::m_snTimeInMilliseconds
3CD91A:  LDR             R0, [R1]
3CD91C:  CMP             R0, #0x38 ; '8'
3CD91E:  BNE             loc_3CD93C
3CD920:  LDR.W           R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x3CD92C)
3CD924:  LDR.W           R1, =(gLastFrameProcessedDWCineyCam_ptr - 0x3CD92E)
3CD928:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
3CD92A:  ADD             R1, PC; gLastFrameProcessedDWCineyCam_ptr
3CD92C:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
3CD92E:  LDR             R1, [R1]; gLastFrameProcessedDWCineyCam
3CD930:  LDR             R0, [R0]; CTimer::m_FrameCounter
3CD932:  LDR             R1, [R1]
3CD934:  SUBS            R0, #1
3CD936:  CMP             R1, R0
3CD938:  BCS.W           loc_3CDDF4
3CD93C:  LDR.W           R2, =(gDWLastModeForCineyCam_ptr - 0x3CD954)
3CD940:  ADR.W           R5, dword_3CE460
3CD944:  LDR.W           R12, =(gDWCamMaxDurationMs_ptr - 0x3CD95A)
3CD948:  ADR.W           R4, dword_3CE450
3CD94C:  LDR.W           R3, =(gHCM_ptr - 0x3CD960)
3CD950:  ADD             R2, PC; gDWLastModeForCineyCam_ptr
3CD952:  LDR.W           R1, =(gDWCineyCamStartTime_ptr - 0x3CD966)
3CD956:  ADD             R12, PC; gDWCamMaxDurationMs_ptr
3CD958:  LDR.W           R6, =(gbExitCam_ptr - 0x3CD96C)
3CD95C:  ADD             R3, PC; gHCM_ptr
3CD95E:  LDR.W           R0, =(gDWCineyCamEndTime_ptr - 0x3CD96E)
3CD962:  ADD             R1, PC; gDWCineyCamStartTime_ptr
3CD964:  VLD1.64         {D18-D19}, [R5@128]
3CD968:  ADD             R6, PC; gbExitCam_ptr
3CD96A:  ADD             R0, PC; gDWCineyCamEndTime_ptr
3CD96C:  MOV.W           R8, #0x9C
3CD970:  LDR             R2, [R2]; gDWLastModeForCineyCam
3CD972:  LDR.W           R5, [R12]; gDWCamMaxDurationMs
3CD976:  LDR             R3, [R3]; gHCM
3CD978:  VLD1.64         {D16-D17}, [R4@128]
3CD97C:  MLA.W           R4, R11, R8, R3
3CD980:  LDR             R1, [R1]; gDWCineyCamStartTime
3CD982:  LDR             R3, [R6]; gbExitCam
3CD984:  MOVS            R6, #0x38 ; '8'
3CD986:  STR             R6, [R2]
3CD988:  MOVS            R6, #0
3CD98A:  LDR             R2, [R5]
3CD98C:  LDR             R0, [R0]; gDWCineyCamEndTime
3CD98E:  MOV             R5, R4
3CD990:  STR.W           R10, [R1]
3CD994:  ADD.W           R1, R2, R10
3CD998:  MOVS            R2, #0
3CD99A:  STRB            R6, [R3]
3CD99C:  STR             R1, [R0]
3CD99E:  MOVS            R0, #0
3CD9A0:  MOVS            R1, #0
3CD9A2:  MOVS            R3, #0
3CD9A4:  MOVT            R0, #0x4120
3CD9A8:  MOVT            R1, #0x42C8
3CD9AC:  MOVT            R2, #0x42DC
3CD9B0:  MOVT            R3, #0x40A0
3CD9B4:  STR.W           R10, [SP,#0x1A8+var_184]
3CD9B8:  MOV             R10, R4
3CD9BA:  STR.W           R9, [SP,#0x1A8+var_180]
3CD9BE:  STR.W           R11, [SP,#0x1A8+var_17C]
3CD9C2:  STRD.W          R6, R0, [R4,#0x38]
3CD9C6:  STRD.W          R1, R2, [R4,#0x68]
3CD9CA:  MOV.W           R1, #0xFA0
3CD9CE:  STRD.W          R0, R3, [R4,#0x70]
3CD9D2:  MOV.W           R0, #0x3F400000
3CD9D6:  STRD.W          R0, R1, [R4,#0x94]
3CD9DA:  ADD.W           R0, R4, #0x28 ; '('
3CD9DE:  MOV             R1, R4
3CD9E0:  MOV             R2, R4
3CD9E2:  VST1.32         {D16-D17}, [R0]
3CD9E6:  ADD.W           R0, R4, #0x18
3CD9EA:  STR             R0, [SP,#0x1A8+var_124]
3CD9EC:  VST1.32         {D18-D19}, [R0]
3CD9F0:  MOVS            R0, #0x41400000
3CD9F6:  STR.W           R0, [R1,#0x78]!
3CD9FA:  MOVS            R0, #0
3CD9FC:  STR             R1, [SP,#0x1A8+var_128]
3CD9FE:  MOVT            R0, #0x4240
3CDA02:  MOV             R1, R4
3CDA04:  STR.W           R0, [R1,#0x7C]!
3CDA08:  MOVS            R0, #8
3CDA0A:  STR             R1, [SP,#0x1A8+var_160]
3CDA0C:  MOV             R1, R4
3CDA0E:  STR.W           R0, [R10,#0x58]!
3CDA12:  MOVS            R0, #0x1E
3CDA14:  STR.W           R0, [R1,#0x48]!
3CDA18:  STR             R1, [SP,#0x1A8+var_164]
3CDA1A:  MOVS            R1, #0x3C ; '<'
3CDA1C:  STR.W           R1, [R2,#0x60]!
3CDA20:  STR             R2, [SP,#0x1A8+var_168]
3CDA22:  MOV             R2, R4
3CDA24:  STRB.W          R6, [R2,#0x40]!
3CDA28:  STR             R2, [SP,#0x1A8+var_170]
3CDA2A:  MOV             R2, R4
3CDA2C:  STRB.W          R6, [R2,#0x5C]!
3CDA30:  STR             R2, [SP,#0x1A8+var_174]
3CDA32:  MOV             R2, R4
3CDA34:  STRB.W          R6, [R2,#0x80]!
3CDA38:  STR             R2, [SP,#0x1A8+var_178]
3CDA3A:  MOV             R2, R4
3CDA3C:  STRB.W          R6, [R2,#0x81]!
3CDA40:  STR.W           R1, [R5,#0x64]!
3CDA44:  STR             R2, [SP,#0x1A8+var_15C]
3CDA46:  MOV             R1, R5
3CDA48:  STR.W           R0, [R1,#-0x20]!
3CDA4C:  MOV             R0, R5
3CDA4E:  STRB.W          R6, [R0,#0x24]!
3CDA52:  STR             R1, [SP,#0x1A8+var_16C]
3CDA54:  STR             R0, [SP,#0x1A8+var_158]
3CDA56:  BLX             rand
3CDA5A:  VMOV            S0, R0
3CDA5E:  VLDR            S18, =4.6566e-10
3CDA62:  VLDR            S2, =1.4
3CDA66:  VCVT.F32.S32    S0, S0
3CDA6A:  VMUL.F32        S0, S0, S18
3CDA6E:  VMUL.F32        S0, S0, S2
3CDA72:  VLDR            S2, =0.1
3CDA76:  VADD.F32        S0, S0, S2
3CDA7A:  VLDR            S2, [R4,#0x18]
3CDA7E:  VMUL.F32        S0, S2, S0
3CDA82:  VSTR            S0, [R4,#0x18]
3CDA86:  BLX             rand
3CDA8A:  VMOV            S0, R0
3CDA8E:  VMOV.F32        S20, #0.5
3CDA92:  VCVT.F32.S32    S0, S0
3CDA96:  VLDR            S2, [R5,#-0x48]
3CDA9A:  VMUL.F32        S0, S0, S18
3CDA9E:  VMUL.F32        S0, S0, S20
3CDAA2:  VADD.F32        S0, S0, S20
3CDAA6:  VMUL.F32        S0, S2, S0
3CDAAA:  VSTR            S0, [R5,#-0x48]
3CDAAE:  BLX             rand
3CDAB2:  VMOV            S0, R0
3CDAB6:  VCVT.F32.S32    S0, S0
3CDABA:  VLDR            S2, [R5,#-0x44]
3CDABE:  VMUL.F32        S0, S0, S18
3CDAC2:  VMUL.F32        S0, S0, S20
3CDAC6:  VADD.F32        S0, S0, S20
3CDACA:  VMUL.F32        S0, S2, S0
3CDACE:  VSTR            S0, [R5,#-0x44]
3CDAD2:  BLX             rand
3CDAD6:  VMOV            S0, R0
3CDADA:  VCVT.F32.S32    S0, S0
3CDADE:  VLDR            S2, [R5,#-0x40]
3CDAE2:  STR             R5, [SP,#0x1A8+var_154]
3CDAE4:  VMUL.F32        S0, S0, S18
3CDAE8:  VMUL.F32        S0, S0, S20
3CDAEC:  VADD.F32        S0, S0, S20
3CDAF0:  VMUL.F32        S0, S2, S0
3CDAF4:  VSTR            S0, [R5,#-0x40]
3CDAF8:  BLX             rand
3CDAFC:  VMOV            S0, R0
3CDB00:  LDR.W           R0, =(gHandShaker_ptr - 0x3CDB10)
3CDB04:  VMOV.F32        S2, #1.5
3CDB08:  VCVT.F32.S32    S0, S0
3CDB0C:  ADD             R0, PC; gHandShaker_ptr
3CDB0E:  VMUL.F32        S0, S0, S18
3CDB12:  VMUL.F32        S0, S0, S2
3CDB16:  VLDR            S2, [R4,#0x28]
3CDB1A:  VADD.F32        S0, S0, S20
3CDB1E:  VMUL.F32        S0, S2, S0
3CDB22:  VSTR            S0, [R4,#0x28]
3CDB26:  LDR             R4, [R0]; gHandShaker
3CDB28:  STRD.W          R6, R6, [R4]
3CDB2C:  STR             R6, [R4,#(dword_951C24 - 0x951C1C)]
3CDB2E:  VLDR            S20, [R4,#0x18]
3CDB32:  BLX             rand
3CDB36:  MOV             R9, R0
3CDB38:  VLDR            S22, [R4,#0x1C]
3CDB3C:  BLX             rand
3CDB40:  MOV             R5, R0
3CDB42:  VLDR            S24, [R4,#0x20]
3CDB46:  BLX             rand
3CDB4A:  VMOV            S4, R9
3CDB4E:  VMOV            S0, R0
3CDB52:  VMOV            S2, R5
3CDB56:  VCVT.F32.S32    S4, S4
3CDB5A:  VCVT.F32.S32    S2, S2
3CDB5E:  VCVT.F32.S32    S0, S0
3CDB62:  LDR.W           R0, [R10]
3CDB66:  STR.W           R10, [SP,#0x1A8+var_12C]
3CDB6A:  CMP             R0, #1
3CDB6C:  VMUL.F32        S4, S4, S18
3CDB70:  VMUL.F32        S2, S2, S18
3CDB74:  VMUL.F32        S0, S0, S18
3CDB78:  VLDR            S18, =0.0
3CDB7C:  VMUL.F32        S4, S20, S4
3CDB80:  VMUL.F32        S2, S22, S2
3CDB84:  VMUL.F32        S0, S24, S0
3CDB88:  VADD.F32        S4, S4, S18
3CDB8C:  VADD.F32        S2, S2, S18
3CDB90:  VADD.F32        S0, S0, S18
3CDB94:  VSTR            S4, [R4,#0x24]
3CDB98:  VSTR            S2, [R4,#0x28]
3CDB9C:  VSTR            S0, [R4,#0x2C]
3CDBA0:  BLT.W           loc_3CDD80
3CDBA4:  LDR             R0, [SP,#0x1A8+var_154]
3CDBA6:  VMOV.F32        S30, #1.0
3CDBAA:  VMOV.F32        S17, #-1.0
3CDBAE:  VLDR            S20, [SP,#0x1A8+var_B0]
3CDBB2:  SUB.W           R1, R0, #0x40 ; '@'
3CDBB6:  STR             R1, [SP,#0x1A8+var_130]
3CDBB8:  SUB.W           R1, R0, #0x44 ; 'D'
3CDBBC:  SUBS            R0, #0x48 ; 'H'
3CDBBE:  STR             R0, [SP,#0x1A8+var_138]
3CDBC0:  LDR.W           R0, =(gHCM_ptr - 0x3CDBCA)
3CDBC4:  STR             R1, [SP,#0x1A8+var_134]
3CDBC6:  ADD             R0, PC; gHCM_ptr
3CDBC8:  LDR             R1, [SP,#0x1A8+var_17C]
3CDBCA:  VLDR            S22, [SP,#0x1A8+var_AC]
3CDBCE:  LDR             R0, [R0]; gHCM
3CDBD0:  MLA.W           R0, R1, R8, R0
3CDBD4:  LDR             R1, [SP,#0x1A8+var_64]
3CDBD6:  STR             R1, [SP,#0x1A8+var_14C]
3CDBD8:  VLDR            S24, [SP,#0x1A8+var_A8]
3CDBDC:  VLDR            S26, [SP,#0x1A8+var_A0]
3CDBE0:  VLDR            S28, [SP,#0x1A8+var_9C]
3CDBE4:  ADD.W           R1, R0, #8
3CDBE8:  STR             R1, [SP,#0x1A8+var_13C]
3CDBEA:  ADDS            R1, R0, #4
3CDBEC:  STR             R1, [SP,#0x1A8+var_140]
3CDBEE:  ADD.W           R1, R0, #0x14
3CDBF2:  STR             R1, [SP,#0x1A8+var_144]
3CDBF4:  ADD.W           R1, R0, #0x10
3CDBF8:  ADDS            R0, #0xC
3CDBFA:  STR             R0, [SP,#0x1A8+var_11C]
3CDBFC:  LDR.W           R0, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x3CDC08)
3CDC00:  STR             R1, [SP,#0x1A8+var_148]
3CDC02:  MOVS            R1, #0
3CDC04:  ADD             R0, PC; _ZN6CWorld13pIgnoreEntityE_ptr
3CDC06:  LDR.W           R11, [SP,#0x1A8+var_120]
3CDC0A:  LDR             R0, [R0]; CWorld::pIgnoreEntity ...
3CDC0C:  STR             R0, [SP,#0x1A8+var_150]
3CDC0E:  LDRD.W          R9, R10, [SP,#0x1A8+var_140]
3CDC12:  LDR             R0, [SP,#0x1A8+var_138]
3CDC14:  VLDR            S6, [SP,#0x1A8+var_78]
3CDC18:  VLDR            S8, [SP,#0x1A8+var_78+4]
3CDC1C:  VLDR            S0, [R0]
3CDC20:  LDR             R4, [SP,#0x1A8+var_11C]
3CDC22:  VMUL.F32        S2, S20, S0
3CDC26:  LDR             R6, [SP,#0x1A8+var_148]
3CDC28:  VMUL.F32        S4, S22, S0
3CDC2C:  LDR             R0, [SP,#0x1A8+var_124]
3CDC2E:  VMUL.F32        S0, S24, S0
3CDC32:  VLDR            S10, [SP,#0x1A8+var_70]
3CDC36:  LDR             R5, [SP,#0x1A8+var_144]
3CDC38:  STR             R1, [SP,#0x1A8+var_118]
3CDC3A:  VSUB.F32        S2, S6, S2
3CDC3E:  VSUB.F32        S4, S8, S4
3CDC42:  VSUB.F32        S0, S10, S0
3CDC46:  VSTR            S2, [R4]
3CDC4A:  VSTR            S4, [R6]
3CDC4E:  VLDR            S2, [R0]
3CDC52:  LDR             R0, [SP,#0x1A8+var_134]
3CDC54:  VMUL.F32        S4, S20, S2
3CDC58:  VMUL.F32        S12, S22, S2
3CDC5C:  VMUL.F32        S2, S24, S2
3CDC60:  VADD.F32        S4, S6, S4
3CDC64:  VADD.F32        S6, S12, S8
3CDC68:  VADD.F32        S2, S2, S10
3CDC6C:  VSTR            S4, [R11]
3CDC70:  VSTR            S6, [R9]
3CDC74:  VLDR            S4, [R0]
3CDC78:  VADD.F32        S0, S4, S0
3CDC7C:  VADD.F32        S2, S4, S2
3CDC80:  VSTR            S0, [R5]
3CDC84:  VSTR            S2, [R10]
3CDC88:  BLX             rand
3CDC8C:  MOV             R8, R0
3CDC8E:  BLX             rand
3CDC92:  LDR             R1, [SP,#0x1A8+var_130]
3CDC94:  TST.W           R8, #1
3CDC98:  VMOV.F32        S2, S30
3CDC9C:  VLDR            S0, [R1]
3CDCA0:  IT NE
3CDCA2:  VMOVNE.F32      S2, S17
3CDCA6:  VLDR            S10, [R4]
3CDCAA:  TST.W           R0, #1
3CDCAE:  VMUL.F32        S4, S26, S0
3CDCB2:  VMUL.F32        S8, S28, S0
3CDCB6:  VMUL.F32        S0, S0, S18
3CDCBA:  VMUL.F32        S6, S2, S4
3CDCBE:  VADD.F32        S6, S10, S6
3CDCC2:  VMUL.F32        S10, S2, S8
3CDCC6:  VMUL.F32        S2, S2, S0
3CDCCA:  VSTR            S6, [R4]
3CDCCE:  VMOV            R0, S6
3CDCD2:  VLDR            S12, [R6]
3CDCD6:  VADD.F32        S10, S10, S12
3CDCDA:  VMOV.F32        S12, S30
3CDCDE:  IT NE
3CDCE0:  VMOVNE.F32      S12, S17
3CDCE4:  LDR             R3, [SP,#0x1A8+var_128]
3CDCE6:  VMUL.F32        S4, S12, S4
3CDCEA:  VMUL.F32        S8, S12, S8
3CDCEE:  VMUL.F32        S0, S12, S0
3CDCF2:  VSTR            S10, [R6]
3CDCF6:  VMOV            R1, S10
3CDCFA:  VLDR            S14, [R5]
3CDCFE:  MOVS            R6, #0
3CDD00:  STR             R6, [SP,#0x1A8+var_1A8]
3CDD02:  VADD.F32        S2, S2, S14
3CDD06:  VSTR            S2, [R5]
3CDD0A:  VMOV            R2, S2
3CDD0E:  VLDR            S14, [R11]
3CDD12:  MOVS            R5, #1
3CDD14:  VADD.F32        S4, S14, S4
3CDD18:  VSTR            S4, [R11]
3CDD1C:  VLDR            S4, [R9]
3CDD20:  VADD.F32        S4, S8, S4
3CDD24:  VSTR            S4, [R9]
3CDD28:  VLDR            S4, [R10]
3CDD2C:  VADD.F32        S0, S0, S4
3CDD30:  VSTR            S0, [R10]
3CDD34:  LDR             R3, [R3]
3CDD36:  STRD.W          R5, R5, [SP,#0x1A8+var_1A4]; float
3CDD3A:  STRD.W          R6, R6, [SP,#0x1A8+var_19C]
3CDD3E:  STRD.W          R6, R6, [SP,#0x1A8+var_194]
3CDD42:  BLX             j__ZN6CWorld22TestSphereAgainstWorldE7CVectorfP7CEntitybbbbbb; CWorld::TestSphereAgainstWorld(CVector,float,CEntity *,bool,bool,bool,bool,bool,bool)
3CDD46:  CBNZ            R0, loc_3CDD72
3CDD48:  LDRD.W          R4, R0, [SP,#0x1A8+var_150]
3CDD4C:  ADD             R2, SP, #0x1A8+var_110
3CDD4E:  ADD             R3, SP, #0x1A8+var_114
3CDD50:  STR             R0, [R4]
3CDD52:  MOVS            R0, #1
3CDD54:  STRD.W          R0, R0, [SP,#0x1A8+var_1A8]
3CDD58:  ADD             R0, SP, #0x1A8+var_78
3CDD5A:  STRD.W          R6, R6, [SP,#0x1A8+var_1A0]
3CDD5E:  STRD.W          R6, R6, [SP,#0x1A8+var_198]
3CDD62:  STRD.W          R6, R6, [SP,#0x1A8+var_190]
3CDD66:  LDR             R1, [SP,#0x1A8+var_11C]
3CDD68:  BLX             j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
3CDD6C:  CMP             R0, #1
3CDD6E:  STR             R6, [R4]
3CDD70:  BNE             loc_3CDDCC
3CDD72:  LDR             R0, [SP,#0x1A8+var_12C]
3CDD74:  LDR             R1, [SP,#0x1A8+var_118]
3CDD76:  LDR             R0, [R0]
3CDD78:  ADDS            R1, #1
3CDD7A:  CMP             R1, R0
3CDD7C:  BLT.W           loc_3CDC12
3CDD80:  LDR             R2, [SP,#0x1A8+var_170]
3CDD82:  LDR             R3, [SP,#0x1A8+var_154]
3CDD84:  STRB            R6, [R2]
3CDD86:  SUB.W           R0, R3, #0x34 ; '4'
3CDD8A:  LDR             R2, [SP,#0x1A8+var_174]
3CDD8C:  SUB.W           R1, R3, #0x38 ; '8'
3CDD90:  STRB            R6, [R2]
3CDD92:  LDR             R2, [SP,#0x1A8+var_178]
3CDD94:  STRB            R6, [R2]
3CDD96:  LDR             R2, [SP,#0x1A8+var_15C]
3CDD98:  STRB            R6, [R2]
3CDD9A:  VLDR            S0, [R0]
3CDD9E:  VLDR            S2, [R1]
3CDDA2:  LDR             R1, [SP,#0x1A8+var_160]
3CDDA4:  VSUB.F32        S0, S2, S0
3CDDA8:  LDR.W           R0, =(gbExitCam_ptr - 0x3CDDB2)
3CDDAC:  LDR             R2, [SP,#0x1A8+var_16C]
3CDDAE:  ADD             R0, PC; gbExitCam_ptr
3CDDB0:  LDR             R0, [R0]; gbExitCam
3CDDB2:  VSTR            S0, [R1]
3CDDB6:  LDR             R1, [SP,#0x1A8+var_168]
3CDDB8:  LDR             R1, [R1]
3CDDBA:  STR             R1, [R3]
3CDDBC:  LDR             R1, [SP,#0x1A8+var_164]
3CDDBE:  LDR             R1, [R1]
3CDDC0:  STR             R1, [R2]
3CDDC2:  LDR             R1, [SP,#0x1A8+var_158]
3CDDC4:  STRB            R6, [R1]
3CDDC6:  MOVS            R1, #1
3CDDC8:  STRB            R1, [R0]
3CDDCA:  B               loc_3CDE02
3CDDCC:  BLX             rand
3CDDD0:  LDR             R1, [SP,#0x1A8+var_15C]
3CDDD2:  AND.W           R0, R0, #1
3CDDD6:  STRB            R0, [R1]
3CDDD8:  BLX             rand
3CDDDC:  LDR             R1, [SP,#0x1A8+var_158]
3CDDDE:  AND.W           R0, R0, #1
3CDDE2:  LDR.W           R11, [SP,#0x1A8+var_17C]
3CDDE6:  ADD.W           R8, SP, #0x1A8+var_B0
3CDDEA:  ADD             R5, SP, #0x1A8+var_78
3CDDEC:  ADD             R4, SP, #0x1A8+var_88
3CDDEE:  STRB            R0, [R1]
3CDDF0:  LDRD.W          R10, R9, [SP,#0x1A8+var_184]
3CDDF4:  LDR.W           R0, =(gbExitCam_ptr - 0x3CDDFC)
3CDDF8:  ADD             R0, PC; gbExitCam_ptr
3CDDFA:  LDR             R0, [R0]; gbExitCam
3CDDFC:  LDRB            R0, [R0]
3CDDFE:  CBZ             R0, loc_3CDE12
3CDE00:  MOVS            R6, #0
3CDE02:  MOV             R0, R6
3CDE04:  ADD             SP, SP, #0x148
3CDE06:  VPOP            {D8-D15}
3CDE0A:  ADD             SP, SP, #4
3CDE0C:  POP.W           {R8-R11}
3CDE10:  POP             {R4-R7,PC}
3CDE12:  LDR.W           R0, =(gDWCineyCamStartTime_ptr - 0x3CDE22)
3CDE16:  VMOV.F32        S20, #1.0
3CDE1A:  LDR.W           R1, =(gDWCineyCamEndTime_ptr - 0x3CDE24)
3CDE1E:  ADD             R0, PC; gDWCineyCamStartTime_ptr
3CDE20:  ADD             R1, PC; gDWCineyCamEndTime_ptr
3CDE22:  LDR             R0, [R0]; gDWCineyCamStartTime
3CDE24:  LDR             R1, [R1]; gDWCineyCamEndTime
3CDE26:  LDR             R0, [R0]
3CDE28:  LDR             R1, [R1]
3CDE2A:  SUBS            R1, R1, R0
3CDE2C:  SUB.W           R0, R10, R0
3CDE30:  VMOV            S0, R1
3CDE34:  LDR.W           R1, =(gHCM_ptr - 0x3CDE46)
3CDE38:  VMOV            S2, R0
3CDE3C:  MOVS            R0, #0x9C
3CDE3E:  VCVT.F32.S32    S0, S0
3CDE42:  ADD             R1, PC; gHCM_ptr
3CDE44:  VCVT.F32.S32    S2, S2
3CDE48:  LDR             R2, [SP,#0x1A8+var_120]
3CDE4A:  LDR             R1, [R1]; gHCM
3CDE4C:  MLA.W           R1, R11, R0, R1
3CDE50:  VLDR            S4, [SP,#0x1A8+var_CC]
3CDE54:  VLDR            D16, [R2]
3CDE58:  ORR.W           R2, R4, #4
3CDE5C:  STR             R2, [SP,#0x1A8+var_118]
3CDE5E:  VDIV.F32        S18, S2, S0
3CDE62:  VLDR            D17, [R1,#0xC]
3CDE66:  VSUB.F32        D16, D16, D17
3CDE6A:  VLDR            S0, [R1,#0x14]
3CDE6E:  VLDR            S2, [R1,#8]
3CDE72:  VLDR            S6, [R1,#0x34]
3CDE76:  VSUB.F32        S2, S2, S0
3CDE7A:  VMUL.F32        D16, D16, D9[0]
3CDE7E:  VADD.F32        D14, D17, D16
3CDE82:  VLD1.32         {D16}, [R8@64]!
3CDE86:  VMUL.F32        D17, D16, D2[0]
3CDE8A:  VMUL.F32        S2, S18, S2
3CDE8E:  VLDR            S8, [R8]
3CDE92:  VMUL.F32        S4, S4, S8
3CDE96:  VMUL.F32        D17, D17, D3[0]
3CDE9A:  VST1.32         {D14[0]}, [R4@32]
3CDE9E:  ORR.W           R4, R5, #4
3CDEA2:  VST1.32         {D14[1]}, [R2@32]
3CDEA6:  MOV             R2, R5
3CDEA8:  VADD.F32        D16, D16, D17
3CDEAC:  VLD1.32         {D17}, [R2@64]!
3CDEB0:  VADD.F32        S26, S0, S2
3CDEB4:  VMUL.F32        S4, S4, S6
3CDEB8:  VLDR            S6, [R2]
3CDEBC:  VADD.F32        D11, D17, D16
3CDEC0:  VSUB.F32        D0, D11, D14
3CDEC4:  VSTR            S26, [SP,#0x1A8+var_80]
3CDEC8:  VADD.F32        S4, S8, S4
3CDECC:  VST1.32         {D11[1]}, [R4@32]
3CDED0:  VST1.32         {D11[0]}, [R5@32]
3CDED4:  VMUL.F32        D1, D0, D0
3CDED8:  VADD.F32        S30, S4, S6
3CDEDC:  VLDR            S4, [R1,#0x74]
3CDEE0:  VADD.F32        S2, S2, S3
3CDEE4:  VSTR            S30, [R2]
3CDEE8:  VSQRT.F32       S2, S2
3CDEEC:  VCMPE.F32       S2, S4
3CDEF0:  VMRS            APSR_nzcv, FPSCR
3CDEF4:  BGE             loc_3CDF1A
3CDEF6:  VDIV.F32        S2, S20, S2
3CDEFA:  VMUL.F32        S6, S1, S2
3CDEFE:  VMUL.F32        S0, S0, S2
3CDF02:  VMUL.F32        S2, S6, S4
3CDF06:  VMUL.F32        S0, S4, S0
3CDF0A:  VSUB.F32        S29, S23, S2
3CDF0E:  VSUB.F32        S28, S22, S0
3CDF12:  VSTR            S29, [SP,#0x1A8+var_88+4]
3CDF16:  VSTR            S28, [SP,#0x1A8+var_88]
3CDF1A:  LDR.W           R1, =(gHCM_ptr - 0x3CDF22)
3CDF1E:  ADD             R1, PC; gHCM_ptr
3CDF20:  LDR             R1, [R1]; gHCM
3CDF22:  MLA.W           R0, R11, R0, R1
3CDF26:  VLDR            S0, [R0,#0x28]
3CDF2A:  VLDR            S24, [R0,#0x30]
3CDF2E:  VCMPE.F32       S18, S0
3CDF32:  VMRS            APSR_nzcv, FPSCR
3CDF36:  BGE             loc_3CDFA8
3CDF38:  LDR.W           R0, =(gHCM_ptr - 0x3CDF42)
3CDF3C:  MOVS            R1, #0x9C
3CDF3E:  ADD             R0, PC; gHCM_ptr
3CDF40:  LDR             R0, [R0]; gHCM
3CDF42:  MLA.W           R0, R11, R1, R0
3CDF46:  LDRB.W          R0, [R0,#0x81]
3CDF4A:  CBNZ            R0, loc_3CDFA8
3CDF4C:  VMOV.F32        S17, #1.0
3CDF50:  VLDR            S2, =180.0
3CDF54:  VLDR            S4, =270.0
3CDF58:  LDR.W           R2, =(gHCM_ptr - 0x3CDF60)
3CDF5C:  ADD             R2, PC; gHCM_ptr
3CDF5E:  LDR             R2, [R2]; gHCM
3CDF60:  MLA.W           R5, R11, R1, R2
3CDF64:  VDIV.F32        S0, S17, S0
3CDF68:  VMUL.F32        S0, S18, S0
3CDF6C:  VMUL.F32        S0, S0, S2
3CDF70:  VSUB.F32        S0, S4, S0
3CDF74:  VLDR            S4, =3.1416
3CDF78:  VMUL.F32        S0, S0, S4
3CDF7C:  VDIV.F32        S0, S0, S2
3CDF80:  VMOV            R0, S0; x
3CDF84:  BLX             sinf
3CDF88:  VMOV            S0, R0
3CDF8C:  VLDR            S4, [R5,#0x2C]
3CDF90:  VMOV.F32        S2, #0.5
3CDF94:  VADD.F32        S0, S0, S17
3CDF98:  VSUB.F32        S6, S24, S4
3CDF9C:  VMUL.F32        S0, S0, S2
3CDFA0:  VMUL.F32        S0, S6, S0
3CDFA4:  VADD.F32        S24, S4, S0
3CDFA8:  VSUB.F32        S0, S29, S23
3CDFAC:  LDR.W           R0, =(gHCM_ptr - 0x3CDFBE)
3CDFB0:  VSUB.F32        S2, S28, S22
3CDFB4:  MOVS            R6, #0x9C
3CDFB6:  VSUB.F32        S4, S26, S30
3CDFBA:  ADD             R0, PC; gHCM_ptr
3CDFBC:  LDR             R0, [R0]; gHCM
3CDFBE:  MLA.W           R0, R11, R6, R0
3CDFC2:  VMUL.F32        S0, S0, S0
3CDFC6:  VMUL.F32        S2, S2, S2
3CDFCA:  VMUL.F32        S4, S4, S4
3CDFCE:  VADD.F32        S0, S2, S0
3CDFD2:  VLDR            S2, [R0,#0x68]
3CDFD6:  VADD.F32        S0, S0, S4
3CDFDA:  VSQRT.F32       S0, S0
3CDFDE:  VCMPE.F32       S0, S2
3CDFE2:  VMRS            APSR_nzcv, FPSCR
3CDFE6:  BLE             loc_3CE076
3CDFE8:  LDR.W           R0, =(gHCM_ptr - 0x3CDFF8)
3CDFEC:  VSUB.F32        S0, S0, S2
3CDFF0:  VLDR            S16, =0.0
3CDFF4:  ADD             R0, PC; gHCM_ptr
3CDFF6:  LDR             R0, [R0]; gHCM
3CDFF8:  MLA.W           R0, R11, R6, R0
3CDFFC:  VLDR            S4, [R0,#0x6C]
3CE000:  VSUB.F32        S2, S4, S2
3CE004:  VDIV.F32        S0, S0, S2
3CE008:  VMOV.F32        S2, S16
3CE00C:  VCMPE.F32       S0, #0.0
3CE010:  VMRS            APSR_nzcv, FPSCR
3CE014:  BLT             loc_3CE028
3CE016:  VCMPE.F32       S0, S20
3CE01A:  VMRS            APSR_nzcv, FPSCR
3CE01E:  VMOV.F32        S2, S20
3CE022:  IT LE
3CE024:  VMOVLE.F32      S2, S0
3CE028:  VLDR            S0, =180.0
3CE02C:  VLDR            S4, =270.0
3CE030:  VMUL.F32        S2, S2, S0
3CE034:  VSUB.F32        S2, S4, S2
3CE038:  VLDR            S4, =3.1416
3CE03C:  VMUL.F32        S2, S2, S4
3CE040:  VDIV.F32        S0, S2, S0
3CE044:  VMOV            R0, S0; x
3CE048:  BLX             sinf
3CE04C:  VMOV            S0, R0
3CE050:  LDR.W           R0, =(gHCM_ptr - 0x3CE062)
3CE054:  VMOV.F32        S2, #0.5
3CE058:  MOVS            R1, #0x9C
3CE05A:  VADD.F32        S0, S0, S20
3CE05E:  ADD             R0, PC; gHCM_ptr
3CE060:  LDR             R0, [R0]; gHCM
3CE062:  MLA.W           R0, R11, R1, R0
3CE066:  VMUL.F32        S0, S0, S2
3CE06A:  VLDR            S2, [R0,#0x70]
3CE06E:  VMUL.F32        S0, S2, S0
3CE072:  VADD.F32        S16, S0, S16
3CE076:  LDR.W           R0, =(gHCM_ptr - 0x3CE07E)
3CE07A:  ADD             R0, PC; gHCM_ptr
3CE07C:  LDR             R0, [R0]; gHCM
3CE07E:  MLA.W           R6, R11, R6, R0
3CE082:  LDRB.W          R0, [R6,#0x5C]!
3CE086:  VLDR            S22, [R6,#-0x24]
3CE08A:  CBNZ            R0, loc_3CE0B8
3CE08C:  VMOV            R2, S26
3CE090:  MOVS            R3, #0
3CE092:  VMOV            R1, S29
3CE096:  MOVS            R5, #1
3CE098:  VMOV            R0, S28
3CE09C:  STRD.W          R3, R5, [SP,#0x1A8+var_1A8]
3CE0A0:  STRD.W          R5, R3, [SP,#0x1A8+var_1A0]
3CE0A4:  STRD.W          R3, R3, [SP,#0x1A8+var_198]
3CE0A8:  STR             R3, [SP,#0x1A8+var_190]
3CE0AA:  MOVS            R3, #0x41700000
3CE0B0:  BLX             j__ZN6CWorld22TestSphereAgainstWorldE7CVectorfP7CEntitybbbbbb; CWorld::TestSphereAgainstWorld(CVector,float,CEntity *,bool,bool,bool,bool,bool,bool)
3CE0B4:  CMP             R0, #0
3CE0B6:  BEQ             loc_3CE18E
3CE0B8:  LDR.W           R0, =(byte_9530AC - 0x3CE0C0)
3CE0BC:  ADD             R0, PC; byte_9530AC
3CE0BE:  LDRB            R0, [R0]
3CE0C0:  DMB.W           ISH
3CE0C4:  TST.W           R0, #1
3CE0C8:  BNE             loc_3CE0E0
3CE0CA:  LDR.W           R0, =(byte_9530AC - 0x3CE0D2)
3CE0CE:  ADD             R0, PC; byte_9530AC ; __guard *
3CE0D0:  BLX             j___cxa_guard_acquire
3CE0D4:  CBZ             R0, loc_3CE0E0
3CE0D6:  LDR.W           R0, =(byte_9530AC - 0x3CE0DE)
3CE0DA:  ADD             R0, PC; byte_9530AC ; __guard *
3CE0DC:  BLX             j___cxa_guard_release
3CE0E0:  LDRB            R0, [R6]
3CE0E2:  CBZ             R0, loc_3CE11C
3CE0E4:  LDR.W           R0, =(dword_6AA6B4 - 0x3CE0EC)
3CE0E8:  ADD             R0, PC; dword_6AA6B4
3CE0EA:  LDR             R1, [R0]
3CE0EC:  CMP.W           R1, #0xFFFFFFFF
3CE0F0:  SUB.W           R2, R1, #1
3CE0F4:  STR             R2, [R0]
3CE0F6:  BGT             loc_3CE13C
3CE0F8:  LDR.W           R0, =(DWCineyCamLastPos_ptr - 0x3CE108)
3CE0FC:  MOVS            R2, #1
3CE0FE:  LDR.W           R1, =(gbExitCam_ptr - 0x3CE10A)
3CE102:  MOVS            R6, #0
3CE104:  ADD             R0, PC; DWCineyCamLastPos_ptr
3CE106:  ADD             R1, PC; gbExitCam_ptr
3CE108:  LDR             R0, [R0]; DWCineyCamLastPos
3CE10A:  LDR             R1, [R1]; gbExitCam
3CE10C:  VLDR            D16, [R0]
3CE110:  LDR             R0, [R0,#(dword_952FC4 - 0x952FBC)]
3CE112:  STR             R0, [SP,#0x1A8+var_80]
3CE114:  STRB            R2, [R1]
3CE116:  VSTR            D16, [SP,#0x1A8+var_88]
3CE11A:  B               loc_3CDE02
3CE11C:  LDR.W           R1, =(unk_9530A0 - 0x3CE12A)
3CE120:  MOVS            R2, #1
3CE122:  LDR.W           R0, =(dword_6AA6B4 - 0x3CE132)
3CE126:  ADD             R1, PC; unk_9530A0
3CE128:  VLDR            D16, [SP,#0x1A8+var_88]
3CE12C:  STRB            R2, [R6]
3CE12E:  ADD             R0, PC; dword_6AA6B4
3CE130:  LDR             R2, [SP,#0x1A8+var_80]
3CE132:  STR             R2, [R1,#(dword_9530A8 - 0x9530A0)]
3CE134:  VSTR            D16, [R1]
3CE138:  MOVS            R1, #0x63 ; 'c'
3CE13A:  STR             R1, [R0]
3CE13C:  LDR.W           R0, =(unk_9530A0 - 0x3CE14C)
3CE140:  VMOV.F32        S12, #0.5
3CE144:  VLDR            S0, [SP,#0x1A8+var_88]
3CE148:  ADD             R0, PC; unk_9530A0
3CE14A:  VLDR            S2, [SP,#0x1A8+var_88+4]
3CE14E:  VLDR            S4, [SP,#0x1A8+var_80]
3CE152:  VLDR            S6, [R0]
3CE156:  VLDR            S8, [R0,#4]
3CE15A:  VLDR            S10, [R0,#8]
3CE15E:  VSUB.F32        S0, S0, S6
3CE162:  VSUB.F32        S2, S2, S8
3CE166:  VSUB.F32        S4, S4, S10
3CE16A:  VMUL.F32        S0, S0, S12
3CE16E:  VMUL.F32        S2, S2, S12
3CE172:  VMUL.F32        S4, S4, S12
3CE176:  VADD.F32        S0, S6, S0
3CE17A:  VADD.F32        S2, S8, S2
3CE17E:  VADD.F32        S4, S10, S4
3CE182:  VSTR            S0, [SP,#0x1A8+var_88]
3CE186:  VSTR            S2, [SP,#0x1A8+var_88+4]
3CE18A:  VSTR            S4, [SP,#0x1A8+var_80]
3CE18E:  LDR             R1, =(gHCM_ptr - 0x3CE19A)
3CE190:  MOVS            R0, #0x9C
3CE192:  VSUB.F32        S16, S24, S16
3CE196:  ADD             R1, PC; gHCM_ptr
3CE198:  LDR             R1, [R1]; gHCM
3CE19A:  MLA.W           R6, R11, R0, R1
3CE19E:  LDRB.W          R1, [R6,#0x40]!
3CE1A2:  CBZ             R1, loc_3CE1CC
3CE1A4:  LDR             R1, =(gHCM_ptr - 0x3CE1AA)
3CE1A6:  ADD             R1, PC; gHCM_ptr
3CE1A8:  LDR             R1, [R1]; gHCM
3CE1AA:  MLA.W           R0, R11, R0, R1
3CE1AE:  LDR             R1, [R0,#0x54]
3CE1B0:  STR             R1, [SP,#0x1A8+var_70]
3CE1B2:  LDR             R1, [R0,#0x44]
3CE1B4:  VLDR            D16, [R0,#0x4C]
3CE1B8:  CMP             R1, #0
3CE1BA:  SUB.W           R2, R1, #1
3CE1BE:  VSTR            D16, [SP,#0x1A8+var_78]
3CE1C2:  STR             R2, [R0,#0x44]
3CE1C4:  BNE             loc_3CE2BA
3CE1C6:  LDR             R0, =(gbExitCam_ptr - 0x3CE1CC)
3CE1C8:  ADD             R0, PC; gbExitCam_ptr
3CE1CA:  B               loc_3CE440
3CE1CC:  LDR             R0, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x3CE1D8)
3CE1CE:  MOV             R8, R11
3CE1D0:  ADD             R1, SP, #0x1A8+var_88
3CE1D2:  ADD             R2, SP, #0x1A8+var_110
3CE1D4:  ADD             R0, PC; _ZN6CWorld13pIgnoreEntityE_ptr
3CE1D6:  ADD             R3, SP, #0x1A8+var_114
3CE1D8:  STR             R4, [SP,#0x1A8+var_11C]
3CE1DA:  MOV             R4, R10
3CE1DC:  LDR.W           R11, [R0]; CWorld::pIgnoreEntity ...
3CE1E0:  MOVS            R5, #0
3CE1E2:  LDR             R0, [SP,#0x1A8+var_64]
3CE1E4:  MOV.W           R10, #1
3CE1E8:  STR.W           R0, [R11]; CWorld::pIgnoreEntity
3CE1EC:  ADD             R0, SP, #0x1A8+var_78
3CE1EE:  STRD.W          R10, R10, [SP,#0x1A8+var_1A8]; float
3CE1F2:  STRD.W          R5, R5, [SP,#0x1A8+var_1A0]
3CE1F6:  STRD.W          R5, R5, [SP,#0x1A8+var_198]
3CE1FA:  STRD.W          R5, R5, [SP,#0x1A8+var_190]
3CE1FE:  BLX             j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
3CE202:  CMP             R0, #1
3CE204:  STR.W           R5, [R11]; CWorld::pIgnoreEntity
3CE208:  BNE             loc_3CE29C
3CE20A:  LDR             R0, =(gHCM_ptr - 0x3CE214)
3CE20C:  MOVS            R3, #0x9C
3CE20E:  MOV             R11, R8
3CE210:  ADD             R0, PC; gHCM_ptr
3CE212:  LDR             R0, [R0]; gHCM
3CE214:  MLA.W           R2, R11, R3, R0
3CE218:  LDRB.W          R5, [R2,#0x88]!
3CE21C:  MOV             R0, R2
3CE21E:  CMP             R5, #0
3CE220:  LDR.W           R1, [R0,#-0x24]!
3CE224:  STRB.W          R10, [R2,#-8]
3CE228:  MOV             R10, R4
3CE22A:  BNE             loc_3CE262
3CE22C:  LDR             R5, =(gHCM_ptr - 0x3CE232)
3CE22E:  ADD             R5, PC; gHCM_ptr
3CE230:  LDR             R5, [R5]; gHCM
3CE232:  MLA.W           R3, R11, R3, R5
3CE236:  LDR             R3, [R3,#0x60]
3CE238:  ASRS            R5, R3, #0x1F
3CE23A:  ADD.W           R3, R3, R5,LSR#30
3CE23E:  CMP.W           R1, R3,ASR#2
3CE242:  BGE             loc_3CE262
3CE244:  LDR             R3, =(gHCM_ptr - 0x3CE24C)
3CE246:  MOVS            R5, #0x9C
3CE248:  ADD             R3, PC; gHCM_ptr
3CE24A:  LDR             R3, [R3]; gHCM
3CE24C:  MLA.W           R3, R11, R5, R3
3CE250:  MOVS            R5, #1
3CE252:  VSTR            S16, [R3,#0x84]
3CE256:  STRB            R5, [R2]
3CE258:  LDR.W           R2, [R3,#0x98]
3CE25C:  ADD             R2, R10
3CE25E:  STRD.W          R10, R2, [R3,#0x8C]
3CE262:  LDR             R4, [SP,#0x1A8+var_11C]
3CE264:  CMP             R1, #0
3CE266:  SUB.W           R2, R1, #1
3CE26A:  STR             R2, [R0]
3CE26C:  BNE             loc_3CE2BA
3CE26E:  LDR             R0, =(gHCM_ptr - 0x3CE27A)
3CE270:  MOVS            R1, #0x9C
3CE272:  VLDR            D16, [SP,#0x1A8+var_78]
3CE276:  ADD             R0, PC; gHCM_ptr
3CE278:  LDR             R0, [R0]; gHCM
3CE27A:  MLA.W           R0, R11, R1, R0
3CE27E:  LDR             R1, [SP,#0x1A8+var_70]
3CE280:  STR             R1, [R0,#0x54]
3CE282:  VSTR            D16, [R0,#0x4C]
3CE286:  MOVS            R0, #1
3CE288:  STRB            R0, [R6]
3CE28A:  B               loc_3CE2BA
3CE28C:  DCFS 180.0
3CE290:  DCFS 270.0
3CE294:  DCFS 3.1416
3CE298:  DCFS 0.0
3CE29C:  LDR             R0, =(gHCM_ptr - 0x3CE2A8)
3CE29E:  MOVS            R1, #0x9C
3CE2A0:  MOV             R11, R8
3CE2A2:  MOV             R10, R4
3CE2A4:  ADD             R0, PC; gHCM_ptr
3CE2A6:  LDR             R0, [R0]; gHCM
3CE2A8:  MLA.W           R0, R11, R1, R0
3CE2AC:  LDRD.W          R1, R2, [R0,#0x60]
3CE2B0:  CMP             R2, R1
3CE2B2:  IT LT
3CE2B4:  ADDLT           R1, R2, #1
3CE2B6:  LDR             R4, [SP,#0x1A8+var_11C]
3CE2B8:  STR             R1, [R0,#0x64]
3CE2BA:  LDR             R1, =(gHCM_ptr - 0x3CE2C2)
3CE2BC:  MOVS            R0, #0x9C
3CE2BE:  ADD             R1, PC; gHCM_ptr
3CE2C0:  LDR             R1, [R1]; gHCM
3CE2C2:  MLA.W           R1, R11, R0, R1
3CE2C6:  LDRB.W          R2, [R1,#0x88]!
3CE2CA:  CBNZ            R2, loc_3CE302
3CE2CC:  LDR             R2, =(gHCM_ptr - 0x3CE2D2)
3CE2CE:  ADD             R2, PC; gHCM_ptr
3CE2D0:  LDR             R2, [R2]; gHCM
3CE2D2:  MLA.W           R2, R11, R0, R2
3CE2D6:  VLDR            S0, [R2,#0x94]
3CE2DA:  VCMPE.F32       S18, S0
3CE2DE:  VMRS            APSR_nzcv, FPSCR
3CE2E2:  BLT             loc_3CE3A6
3CE2E4:  LDR             R2, =(gHCM_ptr - 0x3CE2EC)
3CE2E6:  MOVS            R3, #0x9C
3CE2E8:  ADD             R2, PC; gHCM_ptr
3CE2EA:  LDR             R2, [R2]; gHCM
3CE2EC:  MLA.W           R2, R11, R3, R2
3CE2F0:  MOVS            R3, #1
3CE2F2:  VSTR            S16, [R2,#0x84]
3CE2F6:  STRB            R3, [R1]
3CE2F8:  LDR.W           R1, [R2,#0x98]
3CE2FC:  ADD             R1, R10
3CE2FE:  STRD.W          R10, R1, [R2,#0x8C]
3CE302:  LDR             R1, =(gHCM_ptr - 0x3CE30C)
3CE304:  VMOV            S4, R10
3CE308:  ADD             R1, PC; gHCM_ptr
3CE30A:  LDR             R1, [R1]; gHCM
3CE30C:  MLA.W           R0, R11, R0, R1
3CE310:  VLDR            S0, [R0,#0x8C]
3CE314:  VLDR            S2, [R0,#0x90]
3CE318:  VCVT.F32.S32    S0, S0
3CE31C:  VCVT.F32.S32    S2, S2
3CE320:  VCVT.F32.S32    S4, S4
3CE324:  VSUB.F32        S2, S2, S0
3CE328:  VSUB.F32        S0, S4, S0
3CE32C:  VDIV.F32        S0, S0, S2
3CE330:  VCMPE.F32       S0, #0.0
3CE334:  VMRS            APSR_nzcv, FPSCR
3CE338:  BGE             loc_3CE340
3CE33A:  VLDR            S0, =0.0
3CE33E:  B               loc_3CE356
3CE340:  VCMPE.F32       S0, S20
3CE344:  VMRS            APSR_nzcv, FPSCR
3CE348:  ITTE LE
3CE34A:  VLDRLE          S2, =180.0
3CE34E:  VMULLE.F32      S0, S0, S2
3CE352:  VLDRGT          S0, =180.0
3CE356:  VLDR            S2, =270.0
3CE35A:  MOVS            R2, #0x9C
3CE35C:  LDR             R1, =(gHCM_ptr - 0x3CE36A)
3CE35E:  VSUB.F32        S0, S2, S0
3CE362:  VLDR            S2, =3.1416
3CE366:  ADD             R1, PC; gHCM_ptr
3CE368:  LDR             R1, [R1]; gHCM
3CE36A:  MLA.W           R5, R11, R2, R1
3CE36E:  VMUL.F32        S0, S0, S2
3CE372:  VLDR            S2, =180.0
3CE376:  VDIV.F32        S0, S0, S2
3CE37A:  VMOV            R0, S0; x
3CE37E:  BLX             sinf
3CE382:  VMOV            S0, R0
3CE386:  VLDR            S4, [R5,#0x2C]
3CE38A:  VMOV.F32        S2, #0.5
3CE38E:  VLDR            S6, [R5,#0x84]
3CE392:  VADD.F32        S0, S0, S20
3CE396:  VSUB.F32        S4, S4, S6
3CE39A:  VMUL.F32        S0, S0, S2
3CE39E:  VMUL.F32        S0, S0, S4
3CE3A2:  VADD.F32        S16, S6, S0
3CE3A6:  LDR             R0, =(gbExitCam_ptr - 0x3CE3AC)
3CE3A8:  ADD             R0, PC; gbExitCam_ptr
3CE3AA:  LDR             R0, [R0]; gbExitCam
3CE3AC:  LDRB            R0, [R0]
3CE3AE:  CMP             R0, #0
3CE3B0:  BNE             loc_3CE43C
3CE3B2:  VLDR            S0, [SP,#0x1A8+var_88]
3CE3B6:  VLDR            S2, [SP,#0x1A8+var_78]
3CE3BA:  LDR             R0, [SP,#0x1A8+var_118]
3CE3BC:  VSUB.F32        S0, S2, S0
3CE3C0:  VLDR            D17, [R4]
3CE3C4:  VLDR            D16, [R0]
3CE3C8:  VSUB.F32        D16, D17, D16
3CE3CC:  LDR             R0, =(gMovieCamMinDist_ptr - 0x3CE3D2)
3CE3CE:  ADD             R0, PC; gMovieCamMinDist_ptr
3CE3D0:  VMUL.F32        S0, S0, S0
3CE3D4:  LDR             R0, [R0]; gMovieCamMinDist
3CE3D6:  VMUL.F32        D1, D16, D16
3CE3DA:  VADD.F32        S0, S0, S2
3CE3DE:  VADD.F32        S0, S0, S3
3CE3E2:  VLDR            S2, [R0]
3CE3E6:  VSQRT.F32       S0, S0
3CE3EA:  VCMPE.F32       S0, S2
3CE3EE:  VMRS            APSR_nzcv, FPSCR
3CE3F2:  BLT             loc_3CE43C
3CE3F4:  LDR             R0, =(gMovieCamMaxDist_ptr - 0x3CE3FA)
3CE3F6:  ADD             R0, PC; gMovieCamMaxDist_ptr
3CE3F8:  LDR             R0, [R0]; gMovieCamMaxDist
3CE3FA:  VLDR            S2, [R0]
3CE3FE:  VCMPE.F32       S0, S2
3CE402:  VMRS            APSR_nzcv, FPSCR
3CE406:  BGT             loc_3CE43C
3CE408:  LDR             R0, =(gDWCineyCamEndTime_ptr - 0x3CE410)
3CE40A:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3CE412)
3CE40C:  ADD             R0, PC; gDWCineyCamEndTime_ptr
3CE40E:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3CE410:  LDR             R0, [R0]; gDWCineyCamEndTime
3CE412:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
3CE414:  LDR             R0, [R0]
3CE416:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
3CE418:  CMP             R1, R0
3CE41A:  BHI             loc_3CE43C
3CE41C:  VMUL.F32        S0, S18, S22
3CE420:  MOV.W           R0, #0x3F800000
3CE424:  ADD             R1, SP, #0x1A8+var_88; CVector *
3CE426:  ADD             R2, SP, #0x1A8+var_78; CVector *
3CE428:  STR             R0, [SP,#0x1A8+var_1A0]; float
3CE42A:  MOV             R0, R9; this
3CE42C:  VSTR            S16, [SP,#0x1A8+var_1A8]
3CE430:  VMOV            R3, S0; float
3CE434:  BLX             j__ZN4CCam21Finalise_DW_CineyCamsEP7CVectorS1_ffff; CCam::Finalise_DW_CineyCams(CVector *,CVector *,float,float,float,float)
3CE438:  MOVS            R6, #1
3CE43A:  B               loc_3CDE02
3CE43C:  LDR             R0, =(gbExitCam_ptr - 0x3CE442)
3CE43E:  ADD             R0, PC; gbExitCam_ptr
3CE440:  LDR             R0, [R0]; gbExitCam
3CE442:  MOVS            R1, #1
3CE444:  MOVS            R6, #0
3CE446:  STRB            R1, [R0]
3CE448:  B               loc_3CDE02
