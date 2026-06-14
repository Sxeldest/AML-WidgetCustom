; =========================================================
; Game Engine Function: _ZN4CCam20Process_DW_PlaneCam1Eb
; Address            : 0x3CFBB0 - 0x3D005A
; =========================================================

3CFBB0:  PUSH            {R4-R7,LR}
3CFBB2:  ADD             R7, SP, #0xC
3CFBB4:  PUSH.W          {R8-R11}
3CFBB8:  SUB             SP, SP, #4
3CFBBA:  VPUSH           {D8-D15}
3CFBBE:  SUB             SP, SP, #0xF0
3CFBC0:  MOV             R8, R0
3CFBC2:  LDR.W           R0, =(TheCamera_ptr - 0x3CFBCA)
3CFBC6:  ADD             R0, PC; TheCamera_ptr
3CFBC8:  LDR             R1, [R0]; TheCamera
3CFBCA:  MOVS            R0, #0
3CFBCC:  STRB.W          R0, [R1,#(byte_951FD7 - 0x951FA8)]
3CFBD0:  LDR.W           R1, [R8,#0x1F4]
3CFBD4:  CMP             R1, #0
3CFBD6:  BEQ.W           loc_3D004C
3CFBDA:  LDRB.W          R0, [R1,#0x3A]
3CFBDE:  AND.W           R0, R0, #7
3CFBE2:  CMP             R0, #2
3CFBE4:  BNE.W           loc_3D004A
3CFBE8:  ADD             R0, SP, #0x150+var_DC
3CFBEA:  STR             R0, [SP,#0x150+var_130]; CColSphere *
3CFBEC:  ADD             R0, SP, #0x150+var_C8
3CFBEE:  ADD             R2, SP, #0x150+var_C4
3CFBF0:  ADD             R6, SP, #0x150+var_A8
3CFBF2:  ADD             R4, SP, #0x150+var_8C
3CFBF4:  ADD             R1, SP, #0x150+var_C0
3CFBF6:  ADD.W           R9, SP, #0x150+var_74
3CFBFA:  ADD.W           R12, SP, #0x150+var_80
3CFBFE:  ADD             R3, SP, #0x150+var_B4
3CFC00:  ADD             R5, SP, #0x150+var_98
3CFC02:  STRD.W          R12, R4, [SP,#0x150+var_150]; CVector *
3CFC06:  STRD.W          R5, R6, [SP,#0x150+var_148]; CVector *
3CFC0A:  STRD.W          R3, R2, [SP,#0x150+var_140]; CVector *
3CFC0E:  ADD             R2, SP, #0x150+var_68; CVehicle **
3CFC10:  STRD.W          R1, R0, [SP,#0x150+var_138]; CVector *
3CFC14:  ADD             R1, SP, #0x150+var_64; CEntity **
3CFC16:  MOV             R0, R8; this
3CFC18:  MOV             R3, R9; CVector *
3CFC1A:  BLX             j__ZN4CCam28GetCoreDataForDWCineyCamModeEPP7CEntityPP8CVehicleP7CVectorS7_S7_S7_S7_S7_PfS7_S8_P10CColSphere; CCam::GetCoreDataForDWCineyCamMode(CEntity **,CVehicle **,CVector *,CVector *,CVector *,CVector *,CVector *,CVector *,float *,CVector *,float *,CColSphere *)
3CFC1E:  VLDR            S0, =80.0
3CFC22:  VLDR            S2, [SP,#0x150+var_6C]
3CFC26:  VCMPE.F32       S2, S0
3CFC2A:  VMRS            APSR_nzcv, FPSCR
3CFC2E:  BGE             loc_3CFC38
3CFC30:  LDR.W           R0, =(gbExitCam_ptr - 0x3CFC38)
3CFC34:  ADD             R0, PC; gbExitCam_ptr
3CFC36:  B               loc_3D0044
3CFC38:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3CFC40)
3CFC3C:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3CFC3E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3CFC40:  LDR.W           R11, [R0]; CTimer::m_snTimeInMilliseconds
3CFC44:  LDR.W           R0, =(gDWLastModeForCineyCam_ptr - 0x3CFC4C)
3CFC48:  ADD             R0, PC; gDWLastModeForCineyCam_ptr
3CFC4A:  LDR             R0, [R0]; gDWLastModeForCineyCam
3CFC4C:  LDR             R0, [R0]
3CFC4E:  CMP             R0, #0x3E ; '>'
3CFC50:  BNE             loc_3CFC6C
3CFC52:  LDR.W           R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x3CFC5E)
3CFC56:  LDR.W           R1, =(gLastFrameProcessedDWCineyCam_ptr - 0x3CFC60)
3CFC5A:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
3CFC5C:  ADD             R1, PC; gLastFrameProcessedDWCineyCam_ptr
3CFC5E:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
3CFC60:  LDR             R1, [R1]; gLastFrameProcessedDWCineyCam
3CFC62:  LDR             R0, [R0]; CTimer::m_FrameCounter
3CFC64:  LDR             R1, [R1]
3CFC66:  SUBS            R0, #1
3CFC68:  CMP             R1, R0
3CFC6A:  BCS             loc_3CFD22
3CFC6C:  LDR.W           R0, =(gDWLastModeForCineyCam_ptr - 0x3CFC7C)
3CFC70:  MOV.W           R10, #1
3CFC74:  LDR.W           R4, =(gDWCamMaxDurationMs_ptr - 0x3CFC86)
3CFC78:  ADD             R0, PC; gDWLastModeForCineyCam_ptr
3CFC7A:  LDR.W           R3, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x3CFC8C)
3CFC7E:  LDR.W           R6, =(gbExitCam_ptr - 0x3CFC92)
3CFC82:  ADD             R4, PC; gDWCamMaxDurationMs_ptr
3CFC84:  LDR.W           R2, =(gDWCineyCamEndTime_ptr - 0x3CFC96)
3CFC88:  ADD             R3, PC; _ZN6CWorld13pIgnoreEntityE_ptr
3CFC8A:  LDR.W           R1, =(gDWCineyCamStartTime_ptr - 0x3CFC9A)
3CFC8E:  ADD             R6, PC; gbExitCam_ptr
3CFC90:  LDR             R0, [R0]; gDWLastModeForCineyCam
3CFC92:  ADD             R2, PC; gDWCineyCamEndTime_ptr
3CFC94:  LDR             R4, [R4]; gDWCamMaxDurationMs
3CFC96:  ADD             R1, PC; gDWCineyCamStartTime_ptr
3CFC98:  LDR             R5, [R3]; CWorld::pIgnoreEntity ...
3CFC9A:  LDR             R3, [R6]; gbExitCam
3CFC9C:  MOVS            R6, #0x3E ; '>'
3CFC9E:  STR             R6, [R0]
3CFCA0:  MOVS            R6, #0
3CFCA2:  LDR             R0, [R4,#(dword_6AA660 - 0x6AA648)]
3CFCA4:  LDR             R2, [R2]; gDWCineyCamEndTime
3CFCA6:  LDR             R1, [R1]; gDWCineyCamStartTime
3CFCA8:  ADD             R0, R11
3CFCAA:  STRB            R6, [R3,#(byte_952FFA - 0x952FF4)]
3CFCAC:  ADD             R3, SP, #0x150+var_118
3CFCAE:  STR             R0, [R2]
3CFCB0:  ADD             R2, SP, #0x150+var_108
3CFCB2:  LDR             R0, [SP,#0x150+var_64]
3CFCB4:  STR.W           R11, [R1]
3CFCB8:  ADD             R1, SP, #0x150+var_80
3CFCBA:  STR             R0, [R5]; CWorld::pIgnoreEntity
3CFCBC:  ADD             R0, SP, #0x150+var_74
3CFCBE:  STRD.W          R10, R10, [SP,#0x150+var_150]
3CFCC2:  STRD.W          R6, R6, [SP,#0x150+var_148]
3CFCC6:  STRD.W          R6, R6, [SP,#0x150+var_140]
3CFCCA:  STRD.W          R6, R6, [SP,#0x150+var_138]
3CFCCE:  BLX             j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
3CFCD2:  CMP             R0, #1
3CFCD4:  STR             R6, [R5]; CWorld::pIgnoreEntity
3CFCD6:  BNE             loc_3CFCE6
3CFCD8:  LDR.W           R0, =(gbExitCam_ptr - 0x3CFCE0)
3CFCDC:  ADD             R0, PC; gbExitCam_ptr
3CFCDE:  LDR             R0, [R0]; gbExitCam
3CFCE0:  STRB.W          R10, [R0,#(byte_952FFA - 0x952FF4)]
3CFCE4:  B               loc_3D004A
3CFCE6:  LDR             R0, =(dword_953114 - 0x3CFCF0)
3CFCE8:  MOV.W           R1, #0x3F800000
3CFCEC:  ADD             R0, PC; dword_953114
3CFCEE:  STR             R1, [R0]
3CFCF0:  BLX             rand
3CFCF4:  TST.W           R0, #1
3CFCF8:  BEQ             loc_3CFD0A
3CFCFA:  LDR             R0, =(dword_953114 - 0x3CFD00)
3CFCFC:  ADD             R0, PC; dword_953114
3CFCFE:  VLDR            S0, [R0]
3CFD02:  VNEG.F32        S0, S0
3CFD06:  VSTR            S0, [R0]
3CFD0A:  BLX             rand
3CFD0E:  TST.W           R0, #1
3CFD12:  BEQ             loc_3CFD5C
3CFD14:  LDR             R0, =(dword_6AA6B8 - 0x3CFD20)
3CFD16:  MOVS            R1, #0xBF800000
3CFD1C:  ADD             R0, PC; dword_6AA6B8
3CFD1E:  STR             R1, [R0]
3CFD20:  B               loc_3CFD5C
3CFD22:  LDR             R0, =(TheCamera_ptr - 0x3CFD2A)
3CFD24:  MOVS            R1, #0; unsigned int
3CFD26:  ADD             R0, PC; TheCamera_ptr
3CFD28:  LDR             R5, [R0]; TheCamera
3CFD2A:  MOV             R0, R5; this
3CFD2C:  BLX             j__ZN7CCamera21CalculateGroundHeightEj; CCamera::CalculateGroundHeight(uint)
3CFD30:  LDRB.W          R1, [R5,#(byte_951FFF - 0x951FA8)]
3CFD34:  VMOV            S0, R0
3CFD38:  VMOV.F32        S4, #30.0
3CFD3C:  ADD.W           R0, R1, R1,LSL#5
3CFD40:  ADD.W           R0, R5, R0,LSL#4
3CFD44:  VLDR            S2, [R0,#0x2EC]
3CFD48:  VSUB.F32        S0, S2, S0
3CFD4C:  VCMPE.F32       S0, S4
3CFD50:  VMRS            APSR_nzcv, FPSCR
3CFD54:  BGE             loc_3CFD5C
3CFD56:  LDR             R0, =(gbExitCam_ptr - 0x3CFD5C)
3CFD58:  ADD             R0, PC; gbExitCam_ptr
3CFD5A:  B               loc_3D0044
3CFD5C:  LDR             R0, =(gDWCineyCamEndTime_ptr - 0x3CFD64)
3CFD5E:  LDR             R1, =(gDWCineyCamStartTime_ptr - 0x3CFD6A)
3CFD60:  ADD             R0, PC; gDWCineyCamEndTime_ptr
3CFD62:  VLDR            D16, [SP,#0x150+var_A8]
3CFD66:  ADD             R1, PC; gDWCineyCamStartTime_ptr
3CFD68:  LDR             R4, [R0]; gDWCineyCamEndTime
3CFD6A:  LDR             R0, [SP,#0x150+var_A0]
3CFD6C:  STR             R0, [SP,#0x150+var_110]
3CFD6E:  LDR             R6, [R1]; gDWCineyCamStartTime
3CFD70:  LDR             R0, [SP,#0x150+var_90]
3CFD72:  VSTR            D16, [SP,#0x150+var_118]
3CFD76:  STR             R0, [SP,#0x150+var_120]
3CFD78:  ADD             R0, SP, #0x150+var_118; this
3CFD7A:  VLDR            D16, [SP,#0x150+var_98]
3CFD7E:  LDR.W           R10, [R4]
3CFD82:  LDR             R5, [R6]
3CFD84:  VSTR            D16, [SP,#0x150+var_128]
3CFD88:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CFD8C:  ADD             R0, SP, #0x150+var_128; this
3CFD8E:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CFD92:  VLDR            S0, [R6]
3CFD96:  VMOV            S4, R11
3CFD9A:  VLDR            S2, [R4]
3CFD9E:  SUB.W           R0, R10, R5
3CFDA2:  VCVT.F32.S32    S0, S0
3CFDA6:  LDR             R1, =(dword_953114 - 0x3CFDB4)
3CFDA8:  VCVT.F32.S32    S2, S2
3CFDAC:  VCVT.F32.S32    S4, S4
3CFDB0:  ADD             R1, PC; dword_953114
3CFDB2:  VSUB.F32        S2, S2, S0
3CFDB6:  VSUB.F32        S0, S4, S0
3CFDBA:  VMOV            S4, R0
3CFDBE:  SUB.W           R0, R11, R5
3CFDC2:  VMOV            S6, R0
3CFDC6:  LDR             R0, =(dword_6AA6B8 - 0x3CFDD4)
3CFDC8:  VCVT.F32.S32    S4, S4
3CFDCC:  VCVT.F32.S32    S6, S6
3CFDD0:  ADD             R0, PC; dword_6AA6B8
3CFDD2:  VLDR            S22, [SP,#0x150+var_88]
3CFDD6:  VDIV.F32        S0, S0, S2
3CFDDA:  VMOV.F32        S2, #4.0
3CFDDE:  VLDR            S10, [R0]
3CFDE2:  VLDR            S8, [SP,#0x150+var_120]
3CFDE6:  VLDR            S24, [SP,#0x150+var_84]
3CFDEA:  VLDR            S26, [SP,#0x150+var_8C]
3CFDEE:  VMUL.F32        S20, S10, S8
3CFDF2:  VLDR            S28, [R1]
3CFDF6:  VMUL.F32        S0, S0, S2
3CFDFA:  VLDR            S2, =360.0
3CFDFE:  VMUL.F32        S0, S0, S2
3CFE02:  VLDR            S2, =3.1416
3CFE06:  VMUL.F32        S0, S0, S2
3CFE0A:  VLDR            S2, =180.0
3CFE0E:  VDIV.F32        S0, S0, S2
3CFE12:  VDIV.F32        S2, S6, S4
3CFE16:  VLDR            S4, [SP,#0x150+var_128]
3CFE1A:  VMOV            R0, S0; x
3CFE1E:  VLDR            S6, [SP,#0x150+var_128+4]
3CFE22:  VMUL.F32        S16, S10, S4
3CFE26:  VMOV.F32        S4, #-0.5
3CFE2A:  VMUL.F32        S18, S10, S6
3CFE2E:  VLDR            S6, =-150.0
3CFE32:  VMUL.F32        S0, S22, S6
3CFE36:  VSTR            S16, [SP,#0x150+var_128]
3CFE3A:  VADD.F32        S2, S2, S4
3CFE3E:  VMUL.F32        S4, S24, S6
3CFE42:  VSTR            S18, [SP,#0x150+var_128+4]
3CFE46:  VMUL.F32        S6, S26, S6
3CFE4A:  VSTR            S20, [SP,#0x150+var_120]
3CFE4E:  VMUL.F32        S0, S2, S0
3CFE52:  VMUL.F32        S30, S2, S4
3CFE56:  VMUL.F32        S17, S2, S6
3CFE5A:  VMUL.F32        S19, S0, S28
3CFE5E:  BLX             sinf
3CFE62:  VMOV.F32        S0, #10.0
3CFE66:  VLDR            S2, [SP,#0x150+var_118+4]
3CFE6A:  VLDR            S6, [SP,#0x150+var_118]
3CFE6E:  VMOV.F32        S4, #30.0
3CFE72:  VLDR            S8, [SP,#0x150+var_110]
3CFE76:  VMOV.F32        S10, #15.0
3CFE7A:  VLDR            S1, [SP,#0x150+var_6C]
3CFE7E:  ADD.W           R10, SP, #0x150+var_80
3CFE82:  ADD             R2, SP, #0x150+var_108
3CFE84:  ADD             R3, SP, #0x150+var_12C
3CFE86:  MOVS            R6, #0
3CFE88:  MOV             R1, R10
3CFE8A:  VMUL.F32        S2, S2, S0
3CFE8E:  VMUL.F32        S6, S6, S0
3CFE92:  VMUL.F32        S0, S8, S0
3CFE96:  VLDR            S8, [SP,#0x150+var_70]
3CFE9A:  VMUL.F32        S12, S18, S4
3CFE9E:  VMUL.F32        S14, S16, S4
3CFEA2:  VMUL.F32        S4, S20, S4
3CFEA6:  VADD.F32        S2, S2, S8
3CFEAA:  VLDR            S8, [SP,#0x150+var_74]
3CFEAE:  VADD.F32        S6, S6, S8
3CFEB2:  VADD.F32        S0, S0, S1
3CFEB6:  VMUL.F32        S8, S22, S10
3CFEBA:  VMUL.F32        S1, S26, S10
3CFEBE:  VMUL.F32        S10, S24, S10
3CFEC2:  VADD.F32        S2, S12, S2
3CFEC6:  VMOV.F32        S12, #0.5
3CFECA:  VADD.F32        S6, S14, S6
3CFECE:  VADD.F32        S0, S4, S0
3CFED2:  VADD.F32        S2, S8, S2
3CFED6:  VMUL.F32        S4, S22, S12
3CFEDA:  VADD.F32        S6, S1, S6
3CFEDE:  VMUL.F32        S8, S17, S28
3CFEE2:  VADD.F32        S0, S10, S0
3CFEE6:  VMUL.F32        S1, S28, S30
3CFEEA:  VMUL.F32        S14, S26, S12
3CFEEE:  VMUL.F32        S10, S24, S12
3CFEF2:  VMOV            S12, R0
3CFEF6:  LDR             R0, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x3CFF04)
3CFEF8:  VADD.F32        S2, S19, S2
3CFEFC:  VMUL.F32        S4, S12, S4
3CFF00:  ADD             R0, PC; _ZN6CWorld13pIgnoreEntityE_ptr
3CFF02:  VADD.F32        S6, S8, S6
3CFF06:  VADD.F32        S0, S1, S0
3CFF0A:  LDR             R4, [R0]; CWorld::pIgnoreEntity ...
3CFF0C:  VMUL.F32        S8, S12, S14
3CFF10:  LDR             R0, [SP,#0x150+var_64]
3CFF12:  VMUL.F32        S10, S12, S10
3CFF16:  STR             R0, [R4]; CWorld::pIgnoreEntity
3CFF18:  MOVS            R0, #1
3CFF1A:  VADD.F32        S2, S4, S2
3CFF1E:  VADD.F32        S4, S8, S6
3CFF22:  VADD.F32        S0, S10, S0
3CFF26:  VSTR            S2, [SP,#0x150+var_7C]
3CFF2A:  VSTR            S4, [SP,#0x150+var_80]
3CFF2E:  VSTR            S0, [SP,#0x150+var_78]
3CFF32:  STRD.W          R0, R0, [SP,#0x150+var_150]
3CFF36:  MOV             R0, R9
3CFF38:  STRD.W          R6, R6, [SP,#0x150+var_148]
3CFF3C:  STRD.W          R6, R6, [SP,#0x150+var_140]
3CFF40:  STRD.W          R6, R6, [SP,#0x150+var_138]
3CFF44:  BLX             j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
3CFF48:  MOV             R5, R0
3CFF4A:  LDR             R0, =(byte_95311C - 0x3CFF52)
3CFF4C:  STR             R6, [R4]; CWorld::pIgnoreEntity
3CFF4E:  ADD             R0, PC; byte_95311C
3CFF50:  LDRB            R0, [R0]
3CFF52:  DMB.W           ISH
3CFF56:  TST.W           R0, #1
3CFF5A:  BNE             loc_3CFF76
3CFF5C:  LDR             R0, =(byte_95311C - 0x3CFF62)
3CFF5E:  ADD             R0, PC; byte_95311C ; __guard *
3CFF60:  BLX             j___cxa_guard_acquire
3CFF64:  CBZ             R0, loc_3CFF76
3CFF66:  LDR             R1, =(dword_953118 - 0x3CFF70)
3CFF68:  MOVS            R2, #0x64 ; 'd'
3CFF6A:  LDR             R0, =(byte_95311C - 0x3CFF72)
3CFF6C:  ADD             R1, PC; dword_953118
3CFF6E:  ADD             R0, PC; byte_95311C ; __guard *
3CFF70:  STR             R2, [R1]
3CFF72:  BLX             j___cxa_guard_release
3CFF76:  LDR             R0, =(dword_953118 - 0x3CFF7E)
3CFF78:  CMP             R5, #1
3CFF7A:  ADD             R0, PC; dword_953118
3CFF7C:  LDR             R0, [R0]
3CFF7E:  BNE             loc_3CFF98
3CFF80:  LDR             R1, =(dword_953118 - 0x3CFF8C)
3CFF82:  CMP             R0, #0
3CFF84:  SUB.W           R2, R0, #1
3CFF88:  ADD             R1, PC; dword_953118
3CFF8A:  STR             R2, [R1]
3CFF8C:  BNE             loc_3CFFA6
3CFF8E:  LDR             R0, =(gbExitCam_ptr - 0x3CFF94)
3CFF90:  ADD             R0, PC; gbExitCam_ptr
3CFF92:  B               loc_3D0044
3CFF94:  DCFS 80.0
3CFF98:  LDR             R1, =(dword_953118 - 0x3CFFA2)
3CFF9A:  ADDS            R2, R0, #1
3CFF9C:  CMP             R0, #0x64 ; 'd'
3CFF9E:  ADD             R1, PC; dword_953118
3CFFA0:  IT GT
3CFFA2:  MOVGT           R2, #0x64 ; 'd'
3CFFA4:  STR             R2, [R1]
3CFFA6:  LDR             R0, =(gbExitCam_ptr - 0x3CFFAC)
3CFFA8:  ADD             R0, PC; gbExitCam_ptr
3CFFAA:  LDR             R0, [R0]; gbExitCam
3CFFAC:  LDRB            R0, [R0,#(byte_952FFA - 0x952FF4)]
3CFFAE:  CMP             R0, #0
3CFFB0:  BNE             loc_3D0040
3CFFB2:  VLDR            S0, [SP,#0x150+var_80]
3CFFB6:  ADD.W           R0, R10, #4
3CFFBA:  VLDR            S2, [SP,#0x150+var_74]
3CFFBE:  ADD.W           R1, R9, #4
3CFFC2:  VLDR            D16, [R0]
3CFFC6:  VSUB.F32        S0, S2, S0
3CFFCA:  VLDR            D17, [R1]
3CFFCE:  VSUB.F32        D16, D17, D16
3CFFD2:  LDR             R0, =(gMovieCamMinDist_ptr - 0x3CFFD8)
3CFFD4:  ADD             R0, PC; gMovieCamMinDist_ptr
3CFFD6:  LDR             R0, [R0]; gMovieCamMinDist
3CFFD8:  VMUL.F32        D1, D16, D16
3CFFDC:  VMUL.F32        S0, S0, S0
3CFFE0:  VADD.F32        S0, S0, S2
3CFFE4:  VADD.F32        S0, S0, S3
3CFFE8:  VLDR            S2, [R0,#0x18]
3CFFEC:  VSQRT.F32       S0, S0
3CFFF0:  VCMPE.F32       S0, S2
3CFFF4:  VMRS            APSR_nzcv, FPSCR
3CFFF8:  BLT             loc_3D0040
3CFFFA:  LDR             R0, =(gMovieCamMaxDist_ptr - 0x3D0000)
3CFFFC:  ADD             R0, PC; gMovieCamMaxDist_ptr
3CFFFE:  LDR             R0, [R0]; gMovieCamMaxDist
3D0000:  VLDR            S2, [R0,#0x18]
3D0004:  VCMPE.F32       S0, S2
3D0008:  VMRS            APSR_nzcv, FPSCR
3D000C:  BGT             loc_3D0040
3D000E:  LDR             R0, =(gDWCineyCamEndTime_ptr - 0x3D0016)
3D0010:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3D0018)
3D0012:  ADD             R0, PC; gDWCineyCamEndTime_ptr
3D0014:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3D0016:  LDR             R0, [R0]; gDWCineyCamEndTime
3D0018:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
3D001A:  LDR             R0, [R0]
3D001C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
3D001E:  CMP             R1, R0
3D0020:  BHI             loc_3D0040
3D0022:  MOV.W           R0, #0x3F800000
3D0026:  ADD             R1, SP, #0x150+var_80; CVector *
3D0028:  STR             R0, [SP,#0x150+var_148]; float
3D002A:  MOVS            R0, #0x428C0000
3D0030:  ADD             R2, SP, #0x150+var_74; CVector *
3D0032:  STR             R0, [SP,#0x150+var_150]; float
3D0034:  MOV             R0, R8; this
3D0036:  MOVS            R3, #0; float
3D0038:  BLX             j__ZN4CCam21Finalise_DW_CineyCamsEP7CVectorS1_ffff; CCam::Finalise_DW_CineyCams(CVector *,CVector *,float,float,float,float)
3D003C:  MOVS            R0, #1
3D003E:  B               loc_3D004C
3D0040:  LDR             R0, =(gbExitCam_ptr - 0x3D0046)
3D0042:  ADD             R0, PC; gbExitCam_ptr
3D0044:  LDR             R0, [R0]; gbExitCam
3D0046:  MOVS            R1, #1
3D0048:  STRB            R1, [R0,#(byte_952FFA - 0x952FF4)]
3D004A:  MOVS            R0, #0
3D004C:  ADD             SP, SP, #0xF0
3D004E:  VPOP            {D8-D15}
3D0052:  ADD             SP, SP, #4
3D0054:  POP.W           {R8-R11}
3D0058:  POP             {R4-R7,PC}
