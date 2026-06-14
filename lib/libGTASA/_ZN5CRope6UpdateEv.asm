; =========================================================
; Game Engine Function: _ZN5CRope6UpdateEv
; Address            : 0x412800 - 0x413CD2
; =========================================================

412800:  PUSH            {R4-R7,LR}
412802:  ADD             R7, SP, #0xC
412804:  PUSH.W          {R8-R11}
412808:  SUB             SP, SP, #4
41280A:  VPUSH           {D8-D15}
41280E:  SUB             SP, SP, #0x138
412810:  MOV             R11, R0
412812:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x41281E)
412816:  LDR.W           R1, =(TheCamera_ptr - 0x412824)
41281A:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
41281C:  VLDR            S18, [R11]
412820:  ADD             R1, PC; TheCamera_ptr
412822:  VLDR            S16, [R11,#4]
412826:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
412828:  LDR             R1, [R1]; TheCamera
41282A:  VLDR            S20, [R0]
41282E:  LDR             R0, [R1,#(dword_951FBC - 0x951FA8)]
412830:  ADD.W           R2, R0, #0x30 ; '0'
412834:  CMP             R0, #0
412836:  IT EQ
412838:  ADDEQ           R2, R1, #4
41283A:  VMOV            R1, S20; y
41283E:  VLDR            S0, [R2]
412842:  MOVW            R0, #0xCCCD
412846:  VLDR            S2, [R2,#4]
41284A:  MOVT            R0, #0x3F4C; x
41284E:  VSUB.F32        S0, S0, S18
412852:  VSUB.F32        S2, S2, S16
412856:  VMUL.F32        S0, S0, S0
41285A:  VMUL.F32        S2, S2, S2
41285E:  VADD.F32        S0, S0, S2
412862:  VSQRT.F32       S22, S0
412866:  BLX             powf
41286A:  VLDR            S0, =200.0
41286E:  MOV             R5, R0
412870:  VCMPE.F32       S22, S0
412874:  VMRS            APSR_nzcv, FPSCR
412878:  BGE.W           loc_413AFA
41287C:  LDRB.W          R1, [R11,#0x327]
412880:  TST.W           R1, #1
412884:  BNE             loc_4128DC
412886:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x412892)
41288A:  LDR.W           R2, [R11,#0x320]
41288E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
412890:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
412892:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
412894:  CMP             R0, R2
412896:  BLS             loc_4128DC
412898:  VLDR            S0, =-0.0015
41289C:  VLDR            S8, [R11,#0x188]
4128A0:  VMUL.F32        S0, S20, S0
4128A4:  VLDR            S4, [R11,#0x180]
4128A8:  VLDR            S6, [R11,#0x184]
4128AC:  VMUL.F32        S4, S20, S4
4128B0:  VLDR            S2, [R11,#8]
4128B4:  VMUL.F32        S6, S20, S6
4128B8:  VADD.F32        S0, S8, S0
4128BC:  VADD.F32        S18, S4, S18
4128C0:  VADD.F32        S16, S6, S16
4128C4:  VMUL.F32        S8, S20, S0
4128C8:  VSTR            S0, [R11,#0x188]
4128CC:  VSTR            S18, [R11]
4128D0:  VSTR            S16, [R11,#4]
4128D4:  VADD.F32        S2, S8, S2
4128D8:  VSTR            S2, [R11,#8]
4128DC:  LSLS            R0, R1, #0x1D
4128DE:  BPL             loc_412910
4128E0:  LDR.W           R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x4128E8)
4128E4:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
4128E6:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
4128E8:  LDR             R0, [R0]; CTimer::m_FrameCounter
4128EA:  AND.W           R0, R0, #7
4128EE:  CMP             R0, #2
4128F0:  BNE             loc_412910
4128F2:  VMOV            R0, S18; this
4128F6:  LDR.W           R2, [R11,#8]; float
4128FA:  VMOV            R1, S16; float
4128FE:  MOVS            R3, #0
412900:  STR             R3, [SP,#0x198+var_198]; bool *
412902:  MOVS            R3, #0; float
412904:  BLX             j__ZN6CWorld21FindGroundZFor3DCoordEfffPbPP7CEntity; CWorld::FindGroundZFor3DCoord(float,float,float,bool *,CEntity **)
412908:  LDRB.W          R1, [R11,#0x327]
41290C:  STR.W           R0, [R11,#0x304]
412910:  LSLS            R0, R1, #0x1D
412912:  BPL             loc_412982
412914:  LDR.W           R0, [R11,#0x318]
412918:  CBZ             R0, loc_412982
41291A:  LDRB.W          R1, [R0,#0x3A]
41291E:  AND.W           R1, R1, #7
412922:  CMP             R1, #2
412924:  BEQ             loc_412962
412926:  LDR.W           R1, =(MI_OBJECTFORMAGNOCRANE1_ptr - 0x412932)
41292A:  LDRSH.W         R0, [R0,#0x26]
41292E:  ADD             R1, PC; MI_OBJECTFORMAGNOCRANE1_ptr
412930:  LDR             R1, [R1]; MI_OBJECTFORMAGNOCRANE1
412932:  LDRH            R1, [R1]
412934:  CMP             R0, R1
412936:  BEQ             loc_412962
412938:  LDR.W           R1, =(MI_OBJECTFORMAGNOCRANE2_ptr - 0x412940)
41293C:  ADD             R1, PC; MI_OBJECTFORMAGNOCRANE2_ptr
41293E:  LDR             R1, [R1]; MI_OBJECTFORMAGNOCRANE2
412940:  LDRH            R1, [R1]
412942:  CMP             R0, R1
412944:  BEQ             loc_412962
412946:  LDR.W           R1, =(MI_OBJECTFORMAGNOCRANE3_ptr - 0x41294E)
41294A:  ADD             R1, PC; MI_OBJECTFORMAGNOCRANE3_ptr
41294C:  LDR             R1, [R1]; MI_OBJECTFORMAGNOCRANE3
41294E:  LDRH            R1, [R1]
412950:  CMP             R0, R1
412952:  BEQ             loc_412962
412954:  LDR.W           R1, =(MI_OBJECTFORMAGNOCRANE5_ptr - 0x41295C)
412958:  ADD             R1, PC; MI_OBJECTFORMAGNOCRANE5_ptr
41295A:  LDR             R1, [R1]; MI_OBJECTFORMAGNOCRANE5
41295C:  LDRH            R1, [R1]
41295E:  CMP             R0, R1
412960:  BNE             loc_412982
412962:  LDR.W           R0, [R11,#0x314]
412966:  VMOV.F32        S0, #-0.5
41296A:  LDR             R1, [R0,#0x14]
41296C:  ADD.W           R2, R1, #0x30 ; '0'
412970:  CMP             R1, #0
412972:  IT EQ
412974:  ADDEQ           R2, R0, #4
412976:  VLDR            S2, [R2,#8]
41297A:  VADD.F32        S0, S2, S0
41297E:  VSTR            S0, [R11,#0x304]
412982:  LDRB.W          R0, [R11,#0x324]
412986:  CMP             R0, #0x1E
412988:  BHI.W           loc_412B18
41298C:  VMOV.F32        S18, #1.0
412990:  ADD.W           R1, R0, R0,LSL#1
412994:  SUBS            R6, R0, #1
412996:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4129A6)
41299A:  VMOV            S16, R5
41299E:  ADD.W           R5, R11, R1,LSL#2
4129A2:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4129A4:  VLDR            S22, =0.001
4129A8:  VLDR            S24, =-0.15
4129AC:  LDR.W           R8, [R0]; CTimer::ms_fTimeStep ...
4129B0:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4129C0)
4129B4:  VSUB.F32        S20, S18, S16
4129B8:  VLDR            S26, =0.3
4129BC:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4129BE:  LDR             R4, [R0]; CTimer::ms_fTimeStep ...
4129C0:  VLDR            S28, [R5,#0xC]
4129C4:  VLDR            S17, [R5,#0x10]
4129C8:  VLDR            S30, [R5,#0x14]
4129CC:  BLX             rand
4129D0:  AND.W           R0, R0, #0xF
4129D4:  SUBS            R0, #8
4129D6:  VMOV            S0, R0
4129DA:  VCVT.F32.S32    S0, S0
4129DE:  VLDR            S2, [R5,#0x18C]
4129E2:  VMUL.F32        S0, S0, S22
4129E6:  VADD.F32        S0, S2, S0
4129EA:  VSTR            S0, [R5,#0x18C]
4129EE:  BLX             rand
4129F2:  AND.W           R0, R0, #0xF
4129F6:  ADDS            R6, #1
4129F8:  SUBS            R0, #8
4129FA:  VMOV            S0, R0
4129FE:  VCVT.F32.S32    S0, S0
412A02:  VLDR            S10, [R5,#0x190]
412A06:  VLDR            S2, [R5,#0x180]
412A0A:  VLDR            S4, [R5,#0x184]
412A0E:  VLDR            S6, [R5,#0x188]
412A12:  VMUL.F32        S2, S20, S2
412A16:  VLDR            S8, [R5,#0x18C]
412A1A:  VMUL.F32        S4, S20, S4
412A1E:  VLDR            S12, [R5,#0x194]
412A22:  VMUL.F32        S6, S20, S6
412A26:  VMUL.F32        S8, S16, S8
412A2A:  VMUL.F32        S0, S0, S22
412A2E:  VMUL.F32        S12, S16, S12
412A32:  VADD.F32        S2, S2, S8
412A36:  VADD.F32        S0, S10, S0
412A3A:  VLDR            S10, [R5,#0x14]
412A3E:  VADD.F32        S6, S6, S12
412A42:  VSTR            S2, [R5,#0x18C]
412A46:  VMUL.F32        S0, S16, S0
412A4A:  VADD.F32        S0, S4, S0
412A4E:  VSTR            S0, [R5,#0x190]
412A52:  VSTR            S6, [R5,#0x194]
412A56:  VLDR            S0, [R8]
412A5A:  VMUL.F32        S0, S0, S24
412A5E:  VADD.F32        S0, S10, S0
412A62:  VSTR            S0, [R5,#0x14]
412A66:  LDRB.W          R0, [R11,#0x327]
412A6A:  LSLS            R0, R0, #0x1D
412A6C:  ITTTT MI
412A6E:  VLDRMI          S2, [R11,#0x304]
412A72:  VADDMI.F32      S2, S2, S26
412A76:  VMAXMI.F32      D0, D0, D1
412A7A:  VSTRMI          S0, [R5,#0x14]
412A7E:  CMP             R6, #0x1E
412A80:  VLDR            S2, [R5]
412A84:  VLDR            S8, [R5,#0xC]
412A88:  VLDR            S4, [R5,#4]
412A8C:  VLDR            S10, [R5,#0x10]
412A90:  VSUB.F32        S8, S8, S2
412A94:  VLDR            S6, [R5,#8]
412A98:  VSUB.F32        S10, S10, S4
412A9C:  VSUB.F32        S0, S0, S6
412AA0:  VMUL.F32        S14, S8, S8
412AA4:  VMUL.F32        S12, S10, S10
412AA8:  VMUL.F32        S1, S0, S0
412AAC:  VADD.F32        S12, S14, S12
412AB0:  VLDR            S14, [R11,#0x30C]
412AB4:  VADD.F32        S12, S12, S1
412AB8:  VSQRT.F32       S12, S12
412ABC:  VDIV.F32        S12, S14, S12
412AC0:  VMUL.F32        S0, S0, S12
412AC4:  VMUL.F32        S8, S8, S12
412AC8:  VMUL.F32        S10, S10, S12
412ACC:  VADD.F32        S0, S6, S0
412AD0:  VADD.F32        S2, S2, S8
412AD4:  VADD.F32        S4, S4, S10
412AD8:  VSTR            S2, [R5,#0xC]
412ADC:  VSUB.F32        S2, S2, S28
412AE0:  VSTR            S4, [R5,#0x10]
412AE4:  VSUB.F32        S4, S4, S17
412AE8:  VSTR            S0, [R5,#0x14]
412AEC:  VSUB.F32        S0, S0, S30
412AF0:  VLDR            S6, [R4]
412AF4:  VDIV.F32        S6, S18, S6
412AF8:  VMUL.F32        S2, S6, S2
412AFC:  VMUL.F32        S4, S6, S4
412B00:  VMUL.F32        S0, S6, S0
412B04:  VSTR            S2, [R5,#0x18C]
412B08:  VSTR            S4, [R5,#0x190]
412B0C:  VSTR            S0, [R5,#0x194]
412B10:  ADD.W           R5, R5, #0xC
412B14:  BLT.W           loc_4129C0
412B18:  LDRB.W          R1, [R11,#0x325]
412B1C:  SUBS            R0, R1, #1
412B1E:  UXTB            R0, R0
412B20:  CMP             R0, #6
412B22:  BHI.W           loc_413A7E
412B26:  LDR.W           R2, =(_ZN6CRopes19PlayerControlsCraneE_ptr - 0x412B30)
412B2A:  CMP             R1, #4
412B2C:  ADD             R2, PC; _ZN6CRopes19PlayerControlsCraneE_ptr
412B2E:  LDR             R2, [R2]; CRopes::PlayerControlsCrane ...
412B30:  LDR             R2, [R2]; CRopes::PlayerControlsCrane
412B32:  IT EQ
412B34:  CMPEQ           R2, #1
412B36:  BEQ             loc_412B64
412B38:  CMP             R1, #5
412B3A:  IT EQ
412B3C:  CMPEQ           R2, #2
412B3E:  BEQ             loc_412B64
412B40:  CMP             R1, #7
412B42:  IT EQ
412B44:  CMPEQ           R2, #3
412B46:  BEQ             loc_412B64
412B48:  EOR.W           R2, R2, #4
412B4C:  EOR.W           R1, R1, #6
412B50:  ORRS            R1, R2
412B52:  MOV.W           R1, #0
412B56:  IT EQ
412B58:  MOVEQ           R1, #1; int
412B5A:  CMP             R0, #3
412B5C:  BCC             loc_412B64
412B5E:  CMP             R1, #1
412B60:  BNE.W           loc_412DE2
412B64:  CMP             R0, #2
412B66:  BHI             loc_412C5C
412B68:  MOVS            R0, #0; this
412B6A:  MOVS            R4, #0
412B6C:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
412B70:  MOVW            R3, #0x4000
412B74:  MOVS            R1, #0; bool
412B76:  MOVT            R3, #0x451C; float
412B7A:  MOVS            R2, #0; CAutomobile *
412B7C:  STR             R4, [SP,#0x198+var_198]; CHID *
412B7E:  BLX             j__ZN4CPad15GetCarGunUpDownEbP11CAutomobilefb; CPad::GetCarGunUpDown(bool,CAutomobile *,float,bool)
412B82:  MOV             R5, R0
412B84:  MOV.W           R0, #0xFFFFFFFF; int
412B88:  MOVS            R1, #0; bool
412B8A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
412B8E:  CBZ             R0, loc_412BCA
412B90:  MOV.W           R0, #0xFFFFFFFF; int
412B94:  MOVS            R1, #0; bool
412B96:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
412B9A:  LDR.W           R0, [R0,#0x5A4]
412B9E:  CMP             R0, #3
412BA0:  BNE             loc_412BCA
412BA2:  MOVS            R0, #0x2E ; '.'
412BA4:  MOVS            R1, #0
412BA6:  MOVS            R2, #1
412BA8:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
412BAC:  CMP             R0, #0
412BAE:  MOV.W           R0, #0x2F ; '/'
412BB2:  MOV.W           R1, #0
412BB6:  MOV.W           R2, #1
412BBA:  IT NE
412BBC:  MOVNE           R5, #0xFFFFFF80
412BC0:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
412BC4:  CMP             R0, #0
412BC6:  IT NE
412BC8:  MOVNE           R5, #0x80
412BCA:  SXTH            R0, R5
412BCC:  CMP.W           R0, #0xFFFFFFFF
412BD0:  BGT             loc_412BDE
412BD2:  LDR.W           R1, =(_ZN11CTheScripts17bEnableCraneRaiseE_ptr - 0x412BDA)
412BD6:  ADD             R1, PC; _ZN11CTheScripts17bEnableCraneRaiseE_ptr
412BD8:  LDR             R1, [R1]; CTheScripts::bEnableCraneRaise ...
412BDA:  LDRB            R1, [R1]; CTheScripts::bEnableCraneRaise
412BDC:  CBNZ            R1, loc_412BF0
412BDE:  CMP             R0, #1
412BE0:  BLT             loc_412CCA
412BE2:  LDR.W           R1, =(_ZN11CTheScripts17bEnableCraneLowerE_ptr - 0x412BEA)
412BE6:  ADD             R1, PC; _ZN11CTheScripts17bEnableCraneLowerE_ptr
412BE8:  LDR             R1, [R1]; CTheScripts::bEnableCraneLower ...
412BEA:  LDRB            R1, [R1]; CTheScripts::bEnableCraneLower
412BEC:  CMP             R1, #0
412BEE:  BEQ             loc_412CCA
412BF0:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x412BFC)
412BF4:  VMOV            S0, R0
412BF8:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
412BFA:  VCVT.F32.S32    S0, S0
412BFE:  LDR             R0, [R1]; CTimer::ms_fTimeStep ...
412C00:  VLDR            S2, [R0]
412C04:  VMUL.F32        S0, S2, S0
412C08:  VLDR            S2, =-0.00001
412C0C:  VMUL.F32        S0, S0, S2
412C10:  VLDR            S2, [R11,#0x31C]
412C14:  VADD.F32        S0, S2, S0
412C18:  VSTR            S0, [R11,#0x31C]
412C1C:  B               loc_412CCE
412C1E:  ALIGN 0x10
412C20:  DCFS 200.0
412C24:  DCFS -0.0015
412C28:  DCFS 0.001
412C2C:  DCFS -0.15
412C30:  DCFS 0.3
412C34:  DCFS -0.00001
412C38:  DCFS 0.00255
412C3C:  DCFS 0.00001
412C40:  DCFS 0.84
412C44:  DCFS 0.9
412C48:  DCFS 0.01
412C4C:  DCFS 0.00010833
412C50:  DCFS 0.06
412C54:  DCFS 0.14125
412C58:  DCFS 0.0
412C5C:  LDR.W           R0, =(_ZN11CTheScripts17bEnableCraneRaiseE_ptr - 0x412C64)
412C60:  ADD             R0, PC; _ZN11CTheScripts17bEnableCraneRaiseE_ptr
412C62:  LDR             R0, [R0]; CTheScripts::bEnableCraneRaise ...
412C64:  LDRB            R0, [R0]; CTheScripts::bEnableCraneRaise
412C66:  CMP             R0, #0
412C68:  BEQ             loc_412D2A
412C6A:  MOVS            R0, #0x2C ; ','
412C6C:  MOVS            R1, #0
412C6E:  MOVS            R2, #1
412C70:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
412C74:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x412C7E)
412C78:  CMP             R0, #1
412C7A:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
412C7C:  LDR             R1, [R1]; int
412C7E:  VLDR            S16, [R1]
412C82:  BNE             loc_412C8E
412C84:  VLDR            S0, =0.00255
412C88:  VMUL.F32        S16, S16, S0
412C8C:  B               loc_412CAC
412C8E:  MOVS            R0, #0; this
412C90:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
412C94:  LDRSH.W         R0, [R0,#0x1C]
412C98:  VLDR            S2, =0.00001
412C9C:  VMOV            S0, R0
412CA0:  VCVT.F32.S32    S0, S0
412CA4:  VMUL.F32        S0, S16, S0
412CA8:  VMUL.F32        S16, S0, S2
412CAC:  LDRB.W          R0, [R11,#0x325]
412CB0:  CMP             R0, #7
412CB2:  BHI             loc_412CE0
412CB4:  MOVS            R1, #1
412CB6:  LSLS            R1, R0
412CB8:  TST.W           R1, #0xB0
412CBC:  BEQ             loc_412CE0
412CBE:  VCMPE.F32       S16, #0.0
412CC2:  VMRS            APSR_nzcv, FPSCR
412CC6:  BGT             loc_412CEE
412CC8:  B               loc_412D1E
412CCA:  VLDR            S0, [R11,#0x31C]
412CCE:  VLDR            S2, =0.84
412CD2:  ADD.W           R0, R11, #0x31C
412CD6:  VMIN.F32        D0, D0, D1
412CDA:  VSTR            S0, [R0]
412CDE:  B               loc_412DE2
412CE0:  VCMPE.F32       S16, #0.0
412CE4:  VMRS            APSR_nzcv, FPSCR
412CE8:  BLE             loc_412D1E
412CEA:  CMP             R0, #6
412CEC:  BNE             loc_412D1E
412CEE:  VLDR            S0, [R11,#0x31C]
412CF2:  VLDR            S2, =0.9
412CF6:  VADD.F32        S0, S16, S0
412CFA:  VCMPE.F32       S0, S2
412CFE:  VMRS            APSR_nzcv, FPSCR
412D02:  BGE             loc_412D1E
412D04:  LDR.W           R0, =(AudioEngine_ptr - 0x412D16)
412D08:  MOV.W           R1, #0x3F800000
412D0C:  LDR.W           R2, [R11,#0x310]; CPhysical *
412D10:  MOVS            R3, #0; float
412D12:  ADD             R0, PC; AudioEngine_ptr
412D14:  STR             R1, [SP,#0x198+var_198]; float
412D16:  MOVS            R1, #0x68 ; 'h'; unsigned __int16
412D18:  LDR             R0, [R0]; AudioEngine ; this
412D1A:  BLX             j__ZN12CAudioEngine23ReportMissionAudioEventEtP9CPhysicalff; CAudioEngine::ReportMissionAudioEvent(ushort,CPhysical *,float,float)
412D1E:  VLDR            S0, [R11,#0x31C]
412D22:  VADD.F32        S0, S16, S0
412D26:  VSTR            S0, [R11,#0x31C]
412D2A:  LDR.W           R0, =(_ZN11CTheScripts17bEnableCraneLowerE_ptr - 0x412D32)
412D2E:  ADD             R0, PC; _ZN11CTheScripts17bEnableCraneLowerE_ptr
412D30:  LDR             R0, [R0]; CTheScripts::bEnableCraneLower ...
412D32:  LDRB            R0, [R0]; CTheScripts::bEnableCraneLower
412D34:  CMP             R0, #0
412D36:  BEQ             loc_412DE2
412D38:  MOVS            R0, #0x2D ; '-'
412D3A:  MOVS            R1, #0
412D3C:  MOVS            R2, #1
412D3E:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
412D42:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x412D4C)
412D46:  CMP             R0, #1
412D48:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
412D4A:  LDR             R1, [R1]; int
412D4C:  VLDR            S16, [R1]
412D50:  BNE             loc_412D5C
412D52:  VLDR            S0, =0.00255
412D56:  VMUL.F32        S16, S16, S0
412D5A:  B               loc_412D7A
412D5C:  MOVS            R0, #0; this
412D5E:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
412D62:  LDRSH.W         R0, [R0,#0x20]
412D66:  VLDR            S2, =0.00001
412D6A:  VMOV            S0, R0
412D6E:  VCVT.F32.S32    S0, S0
412D72:  VMUL.F32        S0, S16, S0
412D76:  VMUL.F32        S16, S0, S2
412D7A:  LDRB.W          R0, [R11,#0x325]
412D7E:  CMP             R0, #7
412D80:  BHI             loc_412D98
412D82:  MOVS            R1, #1
412D84:  LSLS            R1, R0
412D86:  TST.W           R1, #0xB0
412D8A:  BEQ             loc_412D98
412D8C:  VCMPE.F32       S16, #0.0
412D90:  VMRS            APSR_nzcv, FPSCR
412D94:  BGT             loc_412DA6
412D96:  B               loc_412DD6
412D98:  VCMPE.F32       S16, #0.0
412D9C:  VMRS            APSR_nzcv, FPSCR
412DA0:  BLE             loc_412DD6
412DA2:  CMP             R0, #6
412DA4:  BNE             loc_412DD6
412DA6:  VLDR            S0, [R11,#0x31C]
412DAA:  VLDR            S2, =0.01
412DAE:  VSUB.F32        S0, S0, S16
412DB2:  VCMPE.F32       S0, S2
412DB6:  VMRS            APSR_nzcv, FPSCR
412DBA:  BLE             loc_412DD6
412DBC:  LDR.W           R0, =(AudioEngine_ptr - 0x412DCE)
412DC0:  MOV.W           R1, #0x3F800000
412DC4:  LDR.W           R2, [R11,#0x310]; CPhysical *
412DC8:  MOVS            R3, #0; float
412DCA:  ADD             R0, PC; AudioEngine_ptr
412DCC:  STR             R1, [SP,#0x198+var_198]; float
412DCE:  MOVS            R1, #0x68 ; 'h'; unsigned __int16
412DD0:  LDR             R0, [R0]; AudioEngine ; this
412DD2:  BLX             j__ZN12CAudioEngine23ReportMissionAudioEventEtP9CPhysicalff; CAudioEngine::ReportMissionAudioEvent(ushort,CPhysical *,float,float)
412DD6:  VLDR            S0, [R11,#0x31C]
412DDA:  VSUB.F32        S0, S0, S16
412DDE:  VSTR            S0, [R11,#0x31C]
412DE2:  VLDR            S16, =0.01
412DE6:  ADD.W           R8, R11, #0x318
412DEA:  VLDR            S0, [R11,#0x31C]
412DEE:  VLDR            S18, =0.9
412DF2:  VMAX.F32        D16, D0, D8
412DF6:  LDR.W           R5, [R11,#0x318]
412DFA:  CMP             R5, #0
412DFC:  VMIN.F32        D0, D16, D9
412E00:  VSTR            S0, [R11,#0x31C]
412E04:  BEQ             loc_412E3C
412E06:  VLDR            S0, =0.00010833
412E0A:  VLDR            S2, [R5,#0x90]
412E0E:  LDRH            R0, [R5,#0x26]
412E10:  VMUL.F32        S0, S2, S0
412E14:  VLDR            S2, =0.06
412E18:  CMP.W           R0, #0x1AC
412E1C:  MOV.W           R0, #0
412E20:  VADD.F32        S0, S0, S2
412E24:  VLDR            S2, =0.14125
412E28:  IT EQ
412E2A:  VMOVEQ.F32      S0, S2
412E2E:  VMOV.F32        S2, #0.5
412E32:  STRB.W          R0, [R5,#0xBC]
412E36:  VMIN.F32        D10, D0, D1
412E3A:  B               loc_412E52
412E3C:  LDR.W           R5, [R11,#0x314]
412E40:  CMP             R5, #0
412E42:  LDR             R0, [R5,#0x1C]
412E44:  ORR.W           R0, R0, #1
412E48:  STR             R0, [R5,#0x1C]
412E4A:  BEQ.W           loc_4131E6
412E4E:  VLDR            S20, =0.06
412E52:  LDR             R0, [R5,#0x14]
412E54:  ADDS            R6, R5, #4
412E56:  CMP             R0, #0
412E58:  MOV             R3, R6
412E5A:  IT NE
412E5C:  ADDNE.W         R3, R0, #0x30 ; '0'
412E60:  ADD             R0, SP, #0x198+var_6C
412E62:  LDM             R3, {R1-R3}
412E64:  STR             R0, [SP,#0x198+var_194]
412E66:  MOV             R0, R11
412E68:  BLX             j__ZN5CRope18UpdateWeightInRopeE7CVectorfPS0_; CRope::UpdateWeightInRope(CVector,float,CVector*)
412E6C:  CMP             R0, #1
412E6E:  BNE.W           loc_41317A
412E72:  LDRD.W          R2, R1, [SP,#0x198+var_6C]
412E76:  LDR             R3, [R5,#0x14]
412E78:  LDR             R0, [SP,#0x198+var_64]
412E7A:  CBZ             R3, loc_412E88
412E7C:  STR             R2, [R3,#0x30]
412E7E:  LDR             R2, [R5,#0x14]
412E80:  STR             R1, [R2,#0x34]
412E82:  LDR             R1, [R5,#0x14]
412E84:  ADDS            R1, #0x38 ; '8'
412E86:  B               loc_412E90
412E88:  STRD.W          R2, R1, [R5,#4]
412E8C:  ADD.W           R1, R5, #0xC
412E90:  STR             R0, [R1]
412E92:  LDR.W           R1, [R11,#0x310]
412E96:  VLDR            S0, [R11]
412E9A:  VLDR            S2, [R11,#4]
412E9E:  LDR             R0, [R1,#0x14]
412EA0:  VLDR            S4, [R11,#8]
412EA4:  ADD.W           R2, R0, #0x30 ; '0'
412EA8:  CMP             R0, #0
412EAA:  IT EQ
412EAC:  ADDEQ           R2, R1, #4
412EAE:  ADD             R0, SP, #0x198+var_78
412EB0:  VLDR            S6, [R2]
412EB4:  VLDR            S8, [R2,#4]
412EB8:  VSUB.F32        S0, S0, S6
412EBC:  VLDR            S10, [R2,#8]
412EC0:  VSUB.F32        S2, S2, S8
412EC4:  VLDR            S24, [R5,#0x48]
412EC8:  VLDR            S26, [R5,#0x4C]
412ECC:  VLDR            S22, [R5,#0x50]
412ED0:  VMOV            R2, S0
412ED4:  VMOV            R3, S2
412ED8:  VSUB.F32        S0, S4, S10
412EDC:  VSTR            S0, [SP,#0x198+var_198]
412EE0:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
412EE4:  LDRB.W          R0, [R11,#0x325]
412EE8:  AND.W           R0, R0, #0xFC
412EEC:  CMP             R0, #4
412EEE:  BNE             loc_412F06
412EF0:  VLDR            S28, =0.0
412EF4:  MOVS            R0, #0
412EF6:  STRD.W          R0, R0, [SP,#0x198+var_78]
412EFA:  VMOV.F32        S23, S28
412EFE:  STR             R0, [SP,#0x198+var_70]
412F00:  VMOV.F32        S30, S28
412F04:  B               loc_412F12
412F06:  VLDR            S30, [SP,#0x198+var_78]
412F0A:  VLDR            S23, [SP,#0x198+var_74]
412F0E:  VLDR            S28, [SP,#0x198+var_70]
412F12:  LDR             R0, [R5,#0x14]
412F14:  VLDR            S0, [R11]
412F18:  CMP             R0, #0
412F1A:  VLDR            S2, [R11,#4]
412F1E:  VLDR            S4, [R11,#8]
412F22:  IT NE
412F24:  ADDNE.W         R6, R0, #0x30 ; '0'
412F28:  VLDR            S6, [R6]
412F2C:  ADD             R0, SP, #0x198+var_84; this
412F2E:  VLDR            S8, [R6,#4]
412F32:  VLDR            S10, [R6,#8]
412F36:  VSUB.F32        S0, S6, S0
412F3A:  VSUB.F32        S2, S8, S2
412F3E:  VSUB.F32        S4, S10, S4
412F42:  VSTR            S2, [SP,#0x198+var_80]
412F46:  VSTR            S0, [SP,#0x198+var_84]
412F4A:  VSTR            S4, [SP,#0x198+var_7C]
412F4E:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
412F52:  VSUB.F32        S6, S26, S23
412F56:  VLDR            S2, [SP,#0x198+var_80]
412F5A:  VSUB.F32        S8, S24, S30
412F5E:  VLDR            S0, [SP,#0x198+var_84]
412F62:  VSUB.F32        S10, S22, S28
412F66:  VLDR            S4, [SP,#0x198+var_7C]
412F6A:  VMUL.F32        S12, S6, S2
412F6E:  VMUL.F32        S14, S8, S0
412F72:  VMUL.F32        S1, S10, S4
412F76:  VADD.F32        S12, S14, S12
412F7A:  VADD.F32        S12, S12, S1
412F7E:  VCMPE.F32       S12, #0.0
412F82:  VMRS            APSR_nzcv, FPSCR
412F86:  BLE             loc_412FA0
412F88:  VMUL.F32        S14, S4, S12
412F8C:  VMUL.F32        S1, S2, S12
412F90:  VMUL.F32        S12, S0, S12
412F94:  VSUB.F32        S10, S10, S14
412F98:  VSUB.F32        S6, S6, S1
412F9C:  VSUB.F32        S8, S8, S12
412FA0:  VLDR            S12, [SP,#0x198+var_78]
412FA4:  VMOV.F32        S3, #1.0
412FA8:  VLDR            S14, [SP,#0x198+var_74]
412FAC:  VLDR            S1, [SP,#0x198+var_70]
412FB0:  VADD.F32        S8, S8, S12
412FB4:  VADD.F32        S6, S6, S14
412FB8:  VLDR            S12, [R5,#0x48]
412FBC:  VADD.F32        S10, S10, S1
412FC0:  VLDR            S14, [R5,#0x4C]
412FC4:  VLDR            S1, [R5,#0x50]
412FC8:  VSUB.F32        S3, S3, S20
412FCC:  VSUB.F32        S8, S8, S12
412FD0:  VSUB.F32        S6, S6, S14
412FD4:  VSUB.F32        S10, S10, S1
412FD8:  VMUL.F32        S5, S3, S8
412FDC:  VMUL.F32        S7, S3, S6
412FE0:  VMUL.F32        S3, S3, S10
412FE4:  VMUL.F32        S6, S20, S6
412FE8:  VMUL.F32        S8, S20, S8
412FEC:  VMUL.F32        S10, S20, S10
412FF0:  VADD.F32        S12, S12, S5
412FF4:  VADD.F32        S14, S14, S7
412FF8:  VADD.F32        S1, S1, S3
412FFC:  VSTR            S12, [R5,#0x48]
413000:  VSTR            S14, [R5,#0x4C]
413004:  VSTR            S1, [R5,#0x50]
413008:  LDR.W           R0, [R11,#0x310]
41300C:  VLDR            S12, [R0,#0x48]
413010:  VLDR            S14, [R0,#0x4C]
413014:  VLDR            S1, [R0,#0x50]
413018:  VSUB.F32        S8, S12, S8
41301C:  VSUB.F32        S6, S14, S6
413020:  VSUB.F32        S10, S1, S10
413024:  VSTR            S8, [R0,#0x48]
413028:  VSTR            S6, [R0,#0x4C]
41302C:  VSTR            S10, [R0,#0x50]
413030:  LDR.W           R0, [R11,#0x318]
413034:  CMP             R0, #0
413036:  BEQ.W           loc_41315C
41303A:  ADD             R6, SP, #0x198+var_D0
41303C:  LDR             R1, [R5,#0x14]; CMatrix *
41303E:  MOV             R0, R6; this
413040:  BLX             j__ZN7CMatrixC2ERKS_; CMatrix::CMatrix(CMatrix const&)
413044:  ADD             R3, SP, #0x198+var_84
413046:  LDM             R3, {R1-R3}
413048:  LDR             R0, [R5,#0x14]
41304A:  EOR.W           R1, R1, #0x80000000
41304E:  EOR.W           R2, R2, #0x80000000
413052:  EOR.W           R3, R3, #0x80000000
413056:  BLX             j__ZN7CMatrix13ForceUpVectorE7CVector; CMatrix::ForceUpVector(CVector)
41305A:  LDR             R1, [R5,#0x14]; CMatrix *
41305C:  ADD             R0, SP, #0x198+var_118; this
41305E:  BLX             j__ZN7CMatrixC2ERKS_; CMatrix::CMatrix(CMatrix const&)
413062:  VLDR            S0, [SP,#0x198+var_D0]
413066:  VLDR            S2, =0.1
41306A:  VLDR            S4, [SP,#0x198+var_118]
41306E:  VMUL.F32        S0, S0, S18
413072:  LDR             R1, [R5,#0x14]
413074:  VMUL.F32        S4, S4, S2
413078:  VADD.F32        S0, S4, S0
41307C:  VSTR            S0, [R1]
413080:  VLDR            S0, [SP,#0x198+var_D0+4]
413084:  VLDR            S4, [SP,#0x198+var_118+4]
413088:  VMUL.F32        S0, S0, S18
41308C:  LDR             R1, [R5,#0x14]
41308E:  VMUL.F32        S4, S4, S2
413092:  VADD.F32        S0, S4, S0
413096:  VSTR            S0, [R1,#4]
41309A:  VLDR            S0, [SP,#0x198+var_C8]
41309E:  VLDR            S4, [SP,#0x198+var_110]
4130A2:  VMUL.F32        S0, S0, S18
4130A6:  LDR             R1, [R5,#0x14]
4130A8:  VMUL.F32        S4, S4, S2
4130AC:  VADD.F32        S0, S4, S0
4130B0:  VSTR            S0, [R1,#8]
4130B4:  VLDR            S0, [SP,#0x198+var_C0]
4130B8:  VLDR            S4, [SP,#0x198+var_108]
4130BC:  VMUL.F32        S0, S0, S18
4130C0:  LDR             R1, [R5,#0x14]
4130C2:  VMUL.F32        S4, S4, S2
4130C6:  VADD.F32        S0, S4, S0
4130CA:  VSTR            S0, [R1,#0x10]
4130CE:  VLDR            S0, [SP,#0x198+var_BC]
4130D2:  VLDR            S4, [SP,#0x198+var_104]
4130D6:  VMUL.F32        S0, S0, S18
4130DA:  LDR             R1, [R5,#0x14]
4130DC:  VMUL.F32        S4, S4, S2
4130E0:  VADD.F32        S0, S4, S0
4130E4:  VSTR            S0, [R1,#0x14]
4130E8:  VLDR            S0, [SP,#0x198+var_B8]
4130EC:  VLDR            S4, [SP,#0x198+var_100]
4130F0:  VMUL.F32        S0, S0, S18
4130F4:  LDR             R1, [R5,#0x14]
4130F6:  VMUL.F32        S4, S4, S2
4130FA:  VADD.F32        S0, S4, S0
4130FE:  VSTR            S0, [R1,#0x18]
413102:  VLDR            S0, [SP,#0x198+var_B0]
413106:  VLDR            S4, [SP,#0x198+var_F8]
41310A:  VMUL.F32        S0, S0, S18
41310E:  LDR             R1, [R5,#0x14]
413110:  VMUL.F32        S4, S4, S2
413114:  VADD.F32        S0, S4, S0
413118:  VSTR            S0, [R1,#0x20]
41311C:  VLDR            S0, [SP,#0x198+var_AC]
413120:  VLDR            S4, [SP,#0x198+var_F4]
413124:  VMUL.F32        S0, S0, S18
413128:  LDR             R1, [R5,#0x14]
41312A:  VMUL.F32        S4, S4, S2
41312E:  VADD.F32        S0, S4, S0
413132:  VSTR            S0, [R1,#0x24]
413136:  VLDR            S0, [SP,#0x198+var_A8]
41313A:  VLDR            S4, [SP,#0x198+var_F0]
41313E:  VMUL.F32        S0, S0, S18
413142:  LDR             R1, [R5,#0x14]
413144:  VMUL.F32        S2, S4, S2
413148:  VADD.F32        S0, S2, S0
41314C:  VSTR            S0, [R1,#0x28]
413150:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
413154:  MOV             R0, R6; this
413156:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
41315A:  B               loc_41317A
41315C:  VMOV            R1, S0
413160:  LDR             R0, [R5,#0x14]
413162:  VMOV            R2, S2
413166:  VMOV            R3, S4
41316A:  EOR.W           R1, R1, #0x80000000
41316E:  EOR.W           R2, R2, #0x80000000
413172:  EOR.W           R3, R3, #0x80000000
413176:  BLX             j__ZN7CMatrix13ForceUpVectorE7CVector; CMatrix::ForceUpVector(CVector)
41317A:  LDR.W           R0, [R8]
41317E:  MOVS            R4, #0
413180:  CBZ             R0, loc_4131EA
413182:  LDR.W           R2, [R11,#0x314]
413186:  LDR             R1, [R0,#0x14]
413188:  LDR             R0, [R2,#0x14]
41318A:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
41318E:  LDRD.W          R0, R1, [R11,#0x314]
413192:  LDR.W           R2, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4131A0)
413196:  VLDR            D16, [R1,#0x48]
41319A:  LDR             R1, [R1,#0x50]
41319C:  ADD             R2, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
41319E:  STR             R1, [R0,#0x50]
4131A0:  VSTR            D16, [R0,#0x48]
4131A4:  LDRD.W          R5, R0, [R11,#0x314]
4131A8:  LDR             R1, [R0,#0x14]
4131AA:  LDR             R2, [R2]; CModelInfo::ms_modelInfoPtrs ...
4131AC:  LDRSH.W         R0, [R0,#0x26]
4131B0:  LDR.W           R0, [R2,R0,LSL#2]
4131B4:  ADD             R2, SP, #0x198+var_118
4131B6:  LDR             R0, [R0,#0x2C]
4131B8:  LDR             R0, [R0,#0x14]
4131BA:  STRD.W          R4, R4, [SP,#0x198+var_118]
4131BE:  STR             R0, [SP,#0x198+var_110]
4131C0:  ADD             R0, SP, #0x198+var_D0
4131C2:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
4131C6:  LDRD.W          R2, R1, [SP,#0x198+var_D0]
4131CA:  LDR             R3, [R5,#0x14]
4131CC:  LDR             R0, [SP,#0x198+var_C8]
4131CE:  CBZ             R3, loc_4131DC
4131D0:  STR             R2, [R3,#0x30]
4131D2:  LDR             R2, [R5,#0x14]
4131D4:  STR             R1, [R2,#0x34]
4131D6:  LDR             R1, [R5,#0x14]
4131D8:  ADDS            R1, #0x38 ; '8'
4131DA:  B               loc_4131E4
4131DC:  STRD.W          R2, R1, [R5,#4]
4131E0:  ADD.W           R1, R5, #0xC
4131E4:  STR             R0, [R1]
4131E6:  LDR.W           R4, [R8]
4131EA:  CMP             R4, #0
4131EC:  BEQ.W           loc_413304
4131F0:  LDR.W           R0, =(_ZN6CRopes19PlayerControlsCraneE_ptr - 0x4131F8)
4131F4:  ADD             R0, PC; _ZN6CRopes19PlayerControlsCraneE_ptr
4131F6:  LDR             R1, [R0]; CRopes::PlayerControlsCrane ...
4131F8:  LDRB.W          R0, [R11,#0x325]
4131FC:  LDR             R1, [R1]; int
4131FE:  CMP             R0, #4
413200:  IT EQ
413202:  CMPEQ           R1, #1
413204:  BEQ             loc_413218
413206:  CMP             R0, #5
413208:  IT EQ
41320A:  CMPEQ           R1, #2
41320C:  BEQ             loc_413218
41320E:  CMP             R0, #7
413210:  IT EQ
413212:  CMPEQ           R1, #3
413214:  BNE.W           loc_413424
413218:  MOVS            R0, #1
41321A:  CMP             R0, #1
41321C:  BNE             loc_41326C
41321E:  LDR.W           R0, =(_ZN11CTheScripts19bEnableCraneReleaseE_ptr - 0x413226)
413222:  ADD             R0, PC; _ZN11CTheScripts19bEnableCraneReleaseE_ptr
413224:  LDR             R0, [R0]; CTheScripts::bEnableCraneRelease ...
413226:  LDRB            R0, [R0]; CTheScripts::bEnableCraneRelease
413228:  CBZ             R0, loc_41326C
41322A:  MOVS            R0, #0; this
41322C:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
413230:  BLX             j__ZN4CPad20CraneReleaseJustDownEv; CPad::CraneReleaseJustDown(void)
413234:  CBZ             R0, loc_41326C
413236:  LDR.W           R0, [R8]
41323A:  CBZ             R0, loc_413256
41323C:  LDR             R1, [R0,#0x44]
41323E:  BIC.W           R1, R1, #0x2000000
413242:  STR             R1, [R0,#0x44]
413244:  LDR.W           R0, [R8]
413248:  LDR             R1, [R0,#0x44]
41324A:  BIC.W           R1, R1, #0x80000000
41324E:  STR             R1, [R0,#0x44]
413250:  MOVS            R0, #0
413252:  STR.W           R0, [R8]
413256:  LDR.W           R0, [R11,#0x314]
41325A:  LDRD.W          R1, R2, [R0,#0x1C]
41325E:  ORR.W           R1, R1, #1
413262:  STRD.W          R1, R2, [R0,#0x1C]
413266:  MOVS            R0, #0x3C ; '<'
413268:  STRB.W          R0, [R11,#0x326]
41326C:  LDR.W           R0, [R8]
413270:  CMP             R0, #0
413272:  BEQ.W           loc_413A7E
413276:  LDR             R1, [R0,#0x44]
413278:  TST.W           R1, #0x20000000
41327C:  BEQ             loc_4132B2
41327E:  BIC.W           R1, R1, #0x2000000
413282:  STR             R1, [R0,#0x44]
413284:  LDR.W           R0, [R11,#0x318]
413288:  LDR             R1, [R0,#0x44]
41328A:  BIC.W           R1, R1, #0x80000000
41328E:  STR             R1, [R0,#0x44]
413290:  LDR.W           R0, [R11,#0x314]
413294:  MOVS            R1, #0
413296:  STR.W           R1, [R11,#0x318]
41329A:  LDR             R1, [R0,#0x1C]
41329C:  ORR.W           R1, R1, #1
4132A0:  STR             R1, [R0,#0x1C]
4132A2:  LDR.W           R0, [R11,#0x318]
4132A6:  MOVS            R1, #0x3C ; '<'
4132A8:  STRB.W          R1, [R11,#0x326]
4132AC:  CMP             R0, #0
4132AE:  BEQ.W           loc_413A7E
4132B2:  LDRB.W          R1, [R0,#0x3A]
4132B6:  AND.W           R1, R1, #7
4132BA:  CMP             R1, #2
4132BC:  ITT EQ
4132BE:  LDREQ.W         R1, [R0,#0x5A4]
4132C2:  CMPEQ           R1, #9
4132C4:  BNE.W           loc_413A7E
4132C8:  LDR.W           R1, [R0,#0x464]
4132CC:  CMP             R1, #0
4132CE:  BEQ.W           loc_413A7E
4132D2:  LDR             R1, [R0,#0x44]
4132D4:  BIC.W           R1, R1, #0x2000000
4132D8:  STR             R1, [R0,#0x44]
4132DA:  LDR.W           R0, [R11,#0x318]
4132DE:  LDR             R1, [R0,#0x44]
4132E0:  BIC.W           R1, R1, #0x80000000
4132E4:  STR             R1, [R0,#0x44]
4132E6:  LDR.W           R0, [R11,#0x314]
4132EA:  MOVS            R1, #0
4132EC:  STR.W           R1, [R11,#0x318]
4132F0:  LDRD.W          R1, R2, [R0,#0x1C]
4132F4:  ORR.W           R1, R1, #1
4132F8:  STRD.W          R1, R2, [R0,#0x1C]
4132FC:  MOVS            R0, #0x3C ; '<'
4132FE:  STRB.W          R0, [R11,#0x326]
413302:  B               loc_413A7E
413304:  LDRB.W          R0, [R11,#0x326]
413308:  CBZ             R0, loc_413312
41330A:  SUBS            R0, #1
41330C:  STRB.W          R0, [R11,#0x326]
413310:  B               loc_413A7E
413312:  STR.W           R8, [SP,#0x198+var_124]
413316:  MOVS            R4, #0
413318:  LDRB.W          R0, [R11,#0x325]
41331C:  VLDR            S18, [R11,#0x17C]
413320:  SUBS            R0, #1; switch 7 cases
413322:  VLDR            D10, [R11,#0x174]
413326:  CMP             R0, #6
413328:  BHI.W           def_413340; jumptable 00413340 default case
41332C:  MOVW            R12, #0xF5FA
413330:  MOVS            R2, #0
413332:  MOVS            R3, #1
413334:  MOVT            R12, #0xFFFF
413338:  MOV.W           LR, #0
41333C:  MOVS            R5, #0
41333E:  STR             R2, [SP,#0x198+var_11C]
413340:  TBH.W           [PC,R0,LSL#1]; switch jump
413344:  DCW 0x93; jump table for switch statement
413346:  DCW 0xA
413348:  DCW 0x86
41334A:  DCW 0x8B
41334C:  DCW 0x1C1
41334E:  DCW 0x8F
413350:  DCW 0x1CC
413352:  ALIGN 4
413354:  DCFS 0.1
413358:  LDR             R0, [SP,#0x198+var_124]; jumptable 00413340 case 2
41335A:  LDR             R0, [R0]
41335C:  CMP             R0, #0
41335E:  BNE             loc_413418
413360:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x413368)
413364:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
413366:  LDR             R0, [R0]; CPools::ms_pPedPool ...
413368:  LDR.W           R10, [R0]; CPools::ms_pPedPool
41336C:  LDR.W           R0, [R10,#8]
413370:  CMP             R0, #0
413372:  BEQ             loc_413418
413374:  MOVW            R1, #0x7CC
413378:  VMOV.F32        S22, #2.5
41337C:  MULS            R1, R0
41337E:  SUBS            R4, R0, #1
413380:  MOVW            R2, #0x44C
413384:  SUB.W           R5, R1, #0x380
413388:  LDR.W           R0, [R10,#4]
41338C:  LDRSB           R0, [R0,R4]
41338E:  CMP             R0, #0
413390:  BLT             loc_41340E
413392:  LDR.W           R6, [R10]
413396:  ADD.W           R9, R6, R5
41339A:  CMP             R9, R2
41339C:  ITT NE
41339E:  LDRNE           R0, [R6,R5]
4133A0:  CMPNE           R0, #0x37 ; '7'
4133A2:  BEQ             loc_41340E
4133A4:  SUBW            R0, R9, #0x44C; this
4133A8:  STR             R0, [SP,#0x198+var_11C]
4133AA:  MOV             R8, R12
4133AC:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4133B0:  MOVW            R2, #0x44C
4133B4:  MOV             R12, R8
4133B6:  CMP             R0, #1
4133B8:  BEQ             loc_41340E
4133BA:  LDRB.W          R0, [R9,#0x39]
4133BE:  LSLS            R0, R0, #0x1F
4133C0:  BNE             loc_41340E
4133C2:  MOV             R0, #0xFFFFFE9C
4133CA:  ADD.W           R0, R9, R0,LSL#2
4133CE:  LDR.W           R0, [R0,#0x158]
4133D2:  ADD.W           R1, R0, #0x30 ; '0'
4133D6:  CMP             R0, #0
4133D8:  IT EQ
4133DA:  SUBEQ.W         R1, R9, #0x448
4133DE:  VLD1.32         {D16}, [R1]!
4133E2:  VSUB.F32        D16, D16, D10
4133E6:  VLDR            S0, [R1]
4133EA:  VSUB.F32        S0, S0, S18
4133EE:  VMUL.F32        D1, D16, D16
4133F2:  VADD.F32        S2, S2, S3
4133F6:  VMUL.F32        S0, S0, S0
4133FA:  VADD.F32        S0, S2, S0
4133FE:  VSQRT.F32       S0, S0
413402:  VCMPE.F32       S0, S22
413406:  VMRS            APSR_nzcv, FPSCR
41340A:  BLT.W           loc_413C22
41340E:  SUBS            R4, #1
413410:  SUBW            R5, R5, #0x7CC
413414:  ADDS            R0, R4, #1
413416:  BNE             loc_413388
413418:  MOVS            R4, #0
41341A:  MOV.W           LR, #0; jumptable 00413340 default case
41341E:  MOVS            R0, #0
413420:  STR             R0, [SP,#0x198+var_11C]
413422:  B               loc_4136C6; jumptable 00413340 case 5
413424:  EOR.W           R2, R0, #6
413428:  EOR.W           R1, R1, #4
41342C:  SUBS            R0, #1
41342E:  ORRS            R1, R2
413430:  MOV.W           R2, #0
413434:  MOV.W           R1, #0
413438:  IT EQ
41343A:  MOVEQ           R2, #1
41343C:  UXTB            R0, R0
41343E:  CMP             R0, #3
413440:  IT CC
413442:  MOVCC           R1, #1
413444:  ORR.W           R0, R1, R2
413448:  CMP             R0, #1
41344A:  BEQ.W           loc_41321E
41344E:  B               loc_41326C
413450:  MOVS            R5, #1; jumptable 00413340 case 3
413452:  MOVS            R4, #0
413454:  MOV.W           LR, #0
413458:  B               loc_41346A; jumptable 00413340 case 1
41345A:  MOV.W           LR, #1; jumptable 00413340 case 4
41345E:  MOVS            R4, #0
413460:  B               loc_413468
413462:  MOV.W           LR, #0; jumptable 00413340 case 6
413466:  MOVS            R4, #1
413468:  MOVS            R5, #0
41346A:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x413476); jumptable 00413340 case 1
41346E:  STRD.W          R5, R4, [SP,#0x198+var_120]
413472:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
413474:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
413476:  LDR.W           R10, [R0]; CPools::ms_pVehiclePool
41347A:  LDR.W           R0, [R10,#8]
41347E:  CMP             R0, #0
413480:  BEQ.W           loc_4136C4
413484:  MOVW            R1, #0xA2C
413488:  SUB.W           R8, R0, #1
41348C:  MULS            R1, R0
41348E:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x41349A)
413492:  VMOV.F32        S22, #2.5
413496:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
413498:  STR.W           LR, [SP,#0x198+var_128]
41349C:  MOVW            R3, #0xFE9C
4134A0:  MOVW            R5, #0x5A4
4134A4:  LDR.W           LR, [R0]; CModelInfo::ms_modelInfoPtrs ...
4134A8:  MOV             R2, #0xFFFFFE8D
4134AC:  SUB.W           R9, R1, #0x488
4134B0:  MOVT            R3, #0xFFFF
4134B4:  LDR.W           R0, [R10,#4]
4134B8:  LDRSB.W         R0, [R0,R8]
4134BC:  CMP             R0, #0
4134BE:  BLT             loc_41359E
4134C0:  LDR.W           R0, [R10]
4134C4:  ADD.W           R6, R0, R9
4134C8:  CMP             R6, R5
4134CA:  BEQ             loc_41359E
4134CC:  LDR.W           R1, [R0,R9]
4134D0:  CMP             R1, #2
4134D2:  BCC             loc_4134FE
4134D4:  CMP             R1, #9
4134D6:  BNE             loc_4134E4
4134D8:  MOV             R1, #0xFFFFFEC0
4134E0:  LDR             R1, [R6,R1]
4134E2:  CBZ             R1, loc_4134FE
4134E4:  ADD.W           R1, R0, R12
4134E8:  MOVW            R4, #0x21B
4134EC:  ADD             R1, R9
4134EE:  LDRSH.W         R1, [R1,#0x488]
4134F2:  CMP             R1, R4
4134F4:  ITT NE
4134F6:  MOVWNE          R4, #0x1D9
4134FA:  CMPNE           R1, R4
4134FC:  BNE             loc_41359E
4134FE:  ADD.W           R1, R6, R3,LSL#2
413502:  LDRB.W          R1, [R1,#0x33]
413506:  LSLS            R1, R1, #0x1A
413508:  BMI             loc_41359E
41350A:  LDRB            R1, [R6,R2]
41350C:  LSLS            R1, R1, #0x1B
41350E:  BPL             loc_41359E
413510:  LDR             R1, [SP,#0x198+var_120]
413512:  CMP             R1, #1
413514:  BNE             loc_413526
413516:  ADD.W           R1, R0, R12
41351A:  ADD             R1, R9
41351C:  LDRH.W          R1, [R1,#0x488]
413520:  CMP.W           R1, #0x234
413524:  BNE             loc_41359E
413526:  LDRB.W          R1, [R6,#-0xF2]
41352A:  TST.W           R1, #0x60
41352E:  BNE             loc_41359E
413530:  ADD             R0, R12
413532:  LDR.W           R1, [R6,R3,LSL#2]
413536:  ADD             R0, R9
413538:  STR             R0, [SP,#0x198+var_12C]
41353A:  MOVS            R2, #0
41353C:  LDRSH.W         R0, [R0,#0x488]
413540:  MOV             R4, LR
413542:  LDR.W           R0, [LR,R0,LSL#2]
413546:  LDR             R0, [R0,#0x2C]
413548:  LDR             R0, [R0,#0x14]
41354A:  STRD.W          R2, R2, [SP,#0x198+var_118]
41354E:  ADD             R2, SP, #0x198+var_118
413550:  STR             R0, [SP,#0x198+var_110]
413552:  ADD             R0, SP, #0x198+var_D0
413554:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
413558:  ADD             R0, SP, #0x198+var_D0
41355A:  MOVW            R12, #0xF5FA
41355E:  MOVW            R3, #0xFE9C
413562:  MOV             LR, R4
413564:  VLD1.32         {D16}, [R0@64]!
413568:  MOV             R2, #0xFFFFFE8D
41356C:  VSUB.F32        D16, D16, D10
413570:  MOVT            R12, #0xFFFF
413574:  VLDR            S24, [R0]
413578:  MOVT            R3, #0xFFFF
41357C:  VSUB.F32        S0, S24, S18
413580:  VMUL.F32        D1, D16, D16
413584:  VADD.F32        S2, S2, S3
413588:  VMUL.F32        S0, S0, S0
41358C:  VADD.F32        S0, S2, S0
413590:  VSQRT.F32       S0, S0
413594:  VCMPE.F32       S0, S22
413598:  VMRS            APSR_nzcv, FPSCR
41359C:  BLT             loc_4135B6
41359E:  SUB.W           R8, R8, #1
4135A2:  SUBW            R9, R9, #0xA2C
4135A6:  ADDS.W          R0, R8, #1
4135AA:  BNE.W           loc_4134B4
4135AE:  LDR             R4, [SP,#0x198+var_120]
4135B0:  LDR.W           LR, [SP,#0x198+var_128]
4135B4:  B               loc_4136C6; jumptable 00413340 case 5
4135B6:  LDR             R5, [SP,#0x198+var_124]
4135B8:  SUBW            R0, R6, #0x5A4; this
4135BC:  MOV             R1, R5; CEntity **
4135BE:  STR             R0, [R5]
4135C0:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4135C4:  LDR             R0, [R5]
4135C6:  LDR             R1, [R0,#0x44]
4135C8:  ORR.W           R1, R1, #0x80000000
4135CC:  STR             R1, [R0,#0x44]
4135CE:  LDR             R3, [SP,#0x198+var_12C]
4135D0:  LDRB.W          R0, [R3,#0x49C]
4135D4:  AND.W           R1, R0, #0xF8
4135D8:  CMP             R1, #0x10
4135DA:  ITTTT EQ
4135DC:  ADDEQ.W         R1, R3, #0x14
4135E0:  MOVEQ           R2, #3
4135E2:  BFIEQ.W         R0, R2, #3, #0x1D
4135E6:  STRBEQ.W        R0, [R1,#0x488]
4135EA:  LDR.W           R2, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4135F6)
4135EE:  LDRD.W          R5, R0, [R11,#0x314]
4135F2:  ADD             R2, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4135F4:  LDR             R1, [R0,#0x14]
4135F6:  LDR             R0, [R2]; CModelInfo::ms_modelInfoPtrs ...
4135F8:  LDRSH.W         R2, [R3,#0x488]
4135FC:  LDR.W           R0, [R0,R2,LSL#2]
413600:  MOVS            R2, #0
413602:  LDR             R0, [R0,#0x2C]
413604:  LDR             R0, [R0,#0x14]
413606:  STRD.W          R2, R2, [SP,#0x198+var_118]
41360A:  ADD             R2, SP, #0x198+var_118
41360C:  STR             R0, [SP,#0x198+var_110]
41360E:  ADD             R0, SP, #0x198+var_D0
413610:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
413614:  LDRD.W          R2, R1, [SP,#0x198+var_D0]
413618:  LDR             R3, [R5,#0x14]
41361A:  LDR             R0, [SP,#0x198+var_C8]
41361C:  CBZ             R3, loc_413678
41361E:  STR             R2, [R3,#0x30]
413620:  LDR             R2, [R5,#0x14]
413622:  STR             R1, [R2,#0x34]
413624:  LDR             R1, [R5,#0x14]
413626:  ADDS            R1, #0x38 ; '8'
413628:  B               loc_413680
41362A:  ALIGN 4
41362C:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x41281E
413630:  DCD TheCamera_ptr - 0x412824
413634:  DCD _ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x412892
413638:  DCD _ZN6CTimer14m_FrameCounterE_ptr - 0x4128E8
41363C:  DCD MI_OBJECTFORMAGNOCRANE1_ptr - 0x412932
413640:  DCD MI_OBJECTFORMAGNOCRANE2_ptr - 0x412940
413644:  DCD MI_OBJECTFORMAGNOCRANE3_ptr - 0x41294E
413648:  DCD MI_OBJECTFORMAGNOCRANE5_ptr - 0x41295C
41364C:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x4129A6
413650:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x4129C0
413654:  DCD _ZN6CRopes19PlayerControlsCraneE_ptr - 0x412B30
413658:  DCD _ZN11CTheScripts17bEnableCraneRaiseE_ptr - 0x412BDA
41365C:  DCD _ZN11CTheScripts17bEnableCraneLowerE_ptr - 0x412BEA
413660:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x412BFC
413664:  DCD _ZN11CTheScripts17bEnableCraneRaiseE_ptr - 0x412C64
413668:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x412C7E
41366C:  DCD AudioEngine_ptr - 0x412D16
413670:  DCD _ZN11CTheScripts17bEnableCraneLowerE_ptr - 0x412D32
413674:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x412D4C
413678:  STRD.W          R2, R1, [R5,#4]
41367C:  ADD.W           R1, R5, #0xC
413680:  VSUB.F32        S0, S18, S24
413684:  LDR.W           LR, [SP,#0x198+var_128]
413688:  STR             R0, [R1]
41368A:  LDR.W           R0, [R11,#0x314]
41368E:  LDR             R1, [R0,#0x1C]
413690:  VCMPE.F32       S0, #0.0
413694:  BIC.W           R1, R1, #1
413698:  VMRS            APSR_nzcv, FPSCR
41369C:  STR             R1, [R0,#0x1C]
41369E:  BLE             loc_4136C4
4136A0:  VLDR            S2, [R11,#0x308]
4136A4:  VLDR            S4, [R11,#0x30C]
4136A8:  VDIV.F32        S0, S0, S2
4136AC:  VDIV.F32        S2, S4, S2
4136B0:  VLDR            S6, [R11,#0x31C]
4136B4:  VSUB.F32        S0, S6, S0
4136B8:  VSUB.F32        S0, S0, S2
4136BC:  VMAX.F32        D0, D0, D8
4136C0:  VSTR            S0, [R11,#0x31C]
4136C4:  LDR             R4, [SP,#0x198+var_120]
4136C6:  CMP             R4, #0; jumptable 00413340 case 5
4136C8:  MOV.W           R3, #0
4136CC:  IT EQ
4136CE:  CMPEQ.W         LR, #0
4136D2:  BNE             loc_4136DC; jumptable 00413340 case 7
4136D4:  LDR             R0, [SP,#0x198+var_11C]
4136D6:  CMP             R0, #1
4136D8:  BNE.W           loc_413A7E
4136DC:  LDR             R0, [SP,#0x198+var_124]; jumptable 00413340 case 7
4136DE:  LDR             R0, [R0]
4136E0:  CMP             R0, #0
4136E2:  BNE.W           loc_413A7E
4136E6:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x4136EE)
4136EA:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
4136EC:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
4136EE:  LDR             R2, [R0]; CPools::ms_pObjectPool
4136F0:  LDR.W           R8, [R2,#8]
4136F4:  CMP.W           R8, #0
4136F8:  BEQ.W           loc_413A7E
4136FC:  MOV.W           R0, #0x1A4
413700:  VMOV.F32        S22, #2.5
413704:  MUL.W           R0, R8, R0
413708:  SUB.W           R9, R8, #1
41370C:  SUB.W           R6, R0, #0xA4
413710:  LDR.W           R0, =(MI_OBJECTFORMAGNOCRANE1_ptr - 0x413718)
413714:  ADD             R0, PC; MI_OBJECTFORMAGNOCRANE1_ptr
413716:  LDR             R0, [R0]; MI_OBJECTFORMAGNOCRANE1
413718:  STR             R0, [SP,#0x198+var_14C]
41371A:  LDR.W           R0, =(MI_OBJECTFORMAGNOCRANE2_ptr - 0x413722)
41371E:  ADD             R0, PC; MI_OBJECTFORMAGNOCRANE2_ptr
413720:  LDR             R0, [R0]; MI_OBJECTFORMAGNOCRANE2
413722:  STR             R0, [SP,#0x198+var_158]
413724:  LDR.W           R0, =(MI_OBJECTFORMAGNOCRANE3_ptr - 0x41372C)
413728:  ADD             R0, PC; MI_OBJECTFORMAGNOCRANE3_ptr
41372A:  LDR             R0, [R0]; MI_OBJECTFORMAGNOCRANE3
41372C:  STR             R0, [SP,#0x198+var_168]
41372E:  LDR.W           R0, =(MI_OBJECTFORMAGNOCRANE4_ptr - 0x413736)
413732:  ADD             R0, PC; MI_OBJECTFORMAGNOCRANE4_ptr
413734:  LDR             R0, [R0]; MI_OBJECTFORMAGNOCRANE4
413736:  STR             R0, [SP,#0x198+var_178]
413738:  LDR.W           R0, =(MI_OBJECTFORMAGNOCRANE5_ptr - 0x413740)
41373C:  ADD             R0, PC; MI_OBJECTFORMAGNOCRANE5_ptr
41373E:  LDR             R0, [R0]; MI_OBJECTFORMAGNOCRANE5
413740:  STR             R0, [SP,#0x198+var_184]
413742:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x41374A)
413746:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
413748:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
41374A:  STR             R0, [SP,#0x198+var_138]
41374C:  LDR.W           R0, =(MI_OBJECTFORMAGNOCRANE1_ptr - 0x413754)
413750:  ADD             R0, PC; MI_OBJECTFORMAGNOCRANE1_ptr
413752:  LDR             R0, [R0]; MI_OBJECTFORMAGNOCRANE1
413754:  STR             R0, [SP,#0x198+var_13C]
413756:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x41375E)
41375A:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
41375C:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
41375E:  STR             R0, [SP,#0x198+var_140]
413760:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x413768)
413764:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
413766:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
413768:  STR             R0, [SP,#0x198+var_144]
41376A:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x413772)
41376E:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
413770:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
413772:  STR             R0, [SP,#0x198+var_148]
413774:  LDR.W           R0, =(MI_OBJECTFORMAGNOCRANE2_ptr - 0x41377C)
413778:  ADD             R0, PC; MI_OBJECTFORMAGNOCRANE2_ptr
41377A:  LDR             R0, [R0]; MI_OBJECTFORMAGNOCRANE2
41377C:  STR             R0, [SP,#0x198+var_150]
41377E:  LDR.W           R0, =(MI_OBJECTFORMAGNOCRANE3_ptr - 0x413786)
413782:  ADD             R0, PC; MI_OBJECTFORMAGNOCRANE3_ptr
413784:  LDR             R0, [R0]; MI_OBJECTFORMAGNOCRANE3
413786:  STR             R0, [SP,#0x198+var_15C]
413788:  LDR.W           R0, =(MI_OBJECTFORMAGNOCRANE5_ptr - 0x413790)
41378C:  ADD             R0, PC; MI_OBJECTFORMAGNOCRANE5_ptr
41378E:  LDR             R0, [R0]; MI_OBJECTFORMAGNOCRANE5
413790:  STR             R0, [SP,#0x198+var_16C]
413792:  LDR.W           R0, =(MI_OBJECTFORBUILDINGSITECRANE1_ptr - 0x41379A)
413796:  ADD             R0, PC; MI_OBJECTFORBUILDINGSITECRANE1_ptr
413798:  LDR             R0, [R0]; MI_OBJECTFORBUILDINGSITECRANE1
41379A:  STR             R0, [SP,#0x198+var_154]
41379C:  LDR.W           R0, =(MI_QUARY_ROCK1_ptr - 0x4137A4)
4137A0:  ADD             R0, PC; MI_QUARY_ROCK1_ptr
4137A2:  LDR             R0, [R0]; MI_QUARY_ROCK1
4137A4:  STR             R0, [SP,#0x198+var_160]
4137A6:  LDR.W           R0, =(MI_QUARY_ROCK2_ptr - 0x4137AE)
4137AA:  ADD             R0, PC; MI_QUARY_ROCK2_ptr
4137AC:  LDR             R0, [R0]; MI_QUARY_ROCK2
4137AE:  STR             R0, [SP,#0x198+var_170]
4137B0:  LDR.W           R0, =(MI_QUARY_ROCK3_ptr - 0x4137B8)
4137B4:  ADD             R0, PC; MI_QUARY_ROCK3_ptr
4137B6:  LDR             R0, [R0]; MI_QUARY_ROCK3
4137B8:  STR             R0, [SP,#0x198+var_17C]
4137BA:  LDR.W           R0, =(MI_DEAD_TIED_COP_ptr - 0x4137C2)
4137BE:  ADD             R0, PC; MI_DEAD_TIED_COP_ptr
4137C0:  LDR             R0, [R0]; MI_DEAD_TIED_COP
4137C2:  STR             R0, [SP,#0x198+var_188]
4137C4:  LDR.W           R0, =(MI_WONG_DISH_ptr - 0x4137CC)
4137C8:  ADD             R0, PC; MI_WONG_DISH_ptr
4137CA:  LDR             R0, [R0]; MI_WONG_DISH
4137CC:  STR             R0, [SP,#0x198+var_164]
4137CE:  LDR.W           R0, =(MI_KMB_ROCK_ptr - 0x4137D6)
4137D2:  ADD             R0, PC; MI_KMB_ROCK_ptr
4137D4:  LDR             R0, [R0]; MI_KMB_ROCK
4137D6:  STR             R0, [SP,#0x198+var_174]
4137D8:  LDR.W           R0, =(MI_KMB_PLANK_ptr - 0x4137E0)
4137DC:  ADD             R0, PC; MI_KMB_PLANK_ptr
4137DE:  LDR             R0, [R0]; MI_KMB_PLANK
4137E0:  STR             R0, [SP,#0x198+var_180]
4137E2:  LDR.W           R0, =(MI_KMB_BOMB_ptr - 0x4137EA)
4137E6:  ADD             R0, PC; MI_KMB_BOMB_ptr
4137E8:  LDR             R0, [R0]; MI_KMB_BOMB
4137EA:  STR             R0, [SP,#0x198+var_18C]
4137EC:  STRD.W          R2, LR, [SP,#0x198+var_12C]
4137F0:  STRD.W          R4, R3, [SP,#0x198+var_134]
4137F4:  B               loc_4137FC
4137F6:  MOV.W           R10, #0
4137FA:  B               loc_413A40
4137FC:  LDR             R0, [R2,#4]
4137FE:  SUB.W           R8, R8, #1
413802:  LDRSB.W         R0, [R0,R9]
413806:  CMP             R0, #0
413808:  BLT.W           loc_413A6E
41380C:  LDR             R1, [R2]
41380E:  ADDS            R5, R1, R6
413810:  CMP.W           R5, #0x100
413814:  BEQ.W           loc_413A6E
413818:  LDRB.W          R0, [R5,#0x46]
41381C:  LSLS            R0, R0, #0x1D
41381E:  BPL.W           loc_413A6E
413822:  CMP.W           LR, #1
413826:  BNE             loc_41385C
413828:  MOV             R0, R5
41382A:  LDRSH.W         R2, [R0,#-0xDA]!
41382E:  STR             R0, [SP,#0x198+var_120]
413830:  LDR             R0, [SP,#0x198+var_14C]
413832:  LDRH            R3, [R0]
413834:  UXTH            R0, R2
413836:  CMP             R2, R3
413838:  BEQ             loc_4138E6
41383A:  LDR             R3, [SP,#0x198+var_158]
41383C:  LDRH            R3, [R3]
41383E:  CMP             R2, R3
413840:  BEQ             loc_4138E6
413842:  LDR             R3, [SP,#0x198+var_168]
413844:  LDRH            R3, [R3]
413846:  CMP             R2, R3
413848:  BEQ             loc_4138E6
41384A:  LDR             R3, [SP,#0x198+var_178]
41384C:  LDRH            R3, [R3]
41384E:  CMP             R2, R3
413850:  BEQ             loc_4138E6
413852:  LDR             R3, [SP,#0x198+var_184]
413854:  LDRH            R3, [R3]
413856:  CMP             R2, R3
413858:  LDR             R3, [SP,#0x198+var_130]
41385A:  BEQ             loc_4138E6
41385C:  CMP             R3, #1
41385E:  BNE             loc_41386C
413860:  LDR             R2, [SP,#0x198+var_154]
413862:  LDRSH.W         R0, [R5,#-0xDA]
413866:  LDRH            R2, [R2]
413868:  CMP             R0, R2
41386A:  BEQ             loc_4138D8
41386C:  LDR             R0, [SP,#0x198+var_11C]
41386E:  CMP             R0, #1
413870:  BNE             loc_41389A
413872:  LDR             R2, [SP,#0x198+var_160]
413874:  LDRSH.W         R0, [R5,#-0xDA]
413878:  LDRH            R2, [R2]
41387A:  CMP             R0, R2
41387C:  BEQ             loc_413896
41387E:  LDR             R2, [SP,#0x198+var_170]
413880:  LDRH            R2, [R2]
413882:  CMP             R0, R2
413884:  BEQ             loc_413896
413886:  LDR             R2, [SP,#0x198+var_17C]
413888:  LDRH            R2, [R2]
41388A:  CMP             R0, R2
41388C:  BEQ             loc_413896
41388E:  LDR             R2, [SP,#0x198+var_188]
413890:  LDRH            R2, [R2]
413892:  CMP             R0, R2
413894:  BNE             loc_41389A
413896:  LDR             R2, [R1,R6]
413898:  CBZ             R2, loc_4138D8
41389A:  LDR             R2, [SP,#0x198+var_12C]
41389C:  CMP             R4, #1
41389E:  BNE.W           loc_413A6E
4138A2:  MOV.W           R0, #0x1A4
4138A6:  MLA.W           R0, R8, R0, R1
4138AA:  LDRSH.W         R1, [R5,#-0xDA]
4138AE:  ADDS            R0, #0x26 ; '&'
4138B0:  STR             R0, [SP,#0x198+var_120]
4138B2:  LDR             R0, [SP,#0x198+var_164]
4138B4:  LDRH            R2, [R0]
4138B6:  UXTH            R0, R1
4138B8:  CMP             R1, R2
4138BA:  BEQ             loc_4138E6
4138BC:  LDR             R2, [SP,#0x198+var_174]
4138BE:  LDRH            R2, [R2]
4138C0:  CMP             R1, R2
4138C2:  BEQ             loc_4138E6
4138C4:  LDR             R2, [SP,#0x198+var_180]
4138C6:  LDRH            R2, [R2]
4138C8:  CMP             R1, R2
4138CA:  BEQ             loc_4138E6
4138CC:  LDR             R2, [SP,#0x198+var_18C]
4138CE:  LDRH            R2, [R2]
4138D0:  CMP             R1, R2
4138D2:  LDR             R2, [SP,#0x198+var_12C]
4138D4:  BEQ             loc_4138E6
4138D6:  B               loc_413A6E
4138D8:  MOV.W           R2, #0x1A4
4138DC:  UXTH            R0, R0
4138DE:  MLA.W           R1, R8, R2, R1
4138E2:  ADDS            R1, #0x26 ; '&'
4138E4:  STR             R1, [SP,#0x198+var_120]
4138E6:  LDR             R2, [SP,#0x198+var_138]
4138E8:  SXTH            R0, R0
4138EA:  LDR.W           R1, [R5,#-0xEC]
4138EE:  ADD             R4, SP, #0x198+var_D0
4138F0:  LDR.W           R0, [R2,R0,LSL#2]
4138F4:  MOVS            R2, #0
4138F6:  LDR             R0, [R0,#0x2C]
4138F8:  LDR             R0, [R0,#0x14]
4138FA:  STRD.W          R2, R2, [SP,#0x198+var_118]
4138FE:  ADD             R2, SP, #0x198+var_118
413900:  STR             R0, [SP,#0x198+var_110]
413902:  MOV             R0, R4
413904:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
413908:  LDR             R0, [SP,#0x198+var_120]
41390A:  LDR             R1, [SP,#0x198+var_13C]
41390C:  VLD1.32         {D14}, [R4@64]!
413910:  LDRSH.W         R0, [R0]
413914:  LDRH            R1, [R1]
413916:  VLDR            S24, [R4]
41391A:  CMP             R0, R1
41391C:  BEQ             loc_413938
41391E:  LDR             R1, [SP,#0x198+var_150]
413920:  LDRH            R1, [R1]
413922:  CMP             R0, R1
413924:  BEQ             loc_413938
413926:  LDR             R1, [SP,#0x198+var_15C]
413928:  LDRH            R1, [R1]
41392A:  CMP             R0, R1
41392C:  BEQ             loc_413938
41392E:  LDR             R1, [SP,#0x198+var_16C]
413930:  LDRH            R1, [R1]
413932:  CMP             R0, R1
413934:  BNE.W           loc_4137F6
413938:  LDR             R2, [SP,#0x198+var_140]
41393A:  ADD             R4, SP, #0x198+var_D0
41393C:  LDR.W           R1, [R5,#-0xEC]
413940:  LDR.W           R0, [R2,R0,LSL#2]
413944:  ADD             R2, SP, #0x198+var_118
413946:  LDR             R0, [R0,#0x2C]
413948:  VLDR            S0, [R0,#0x14]
41394C:  MOVS            R0, #0
41394E:  STRD.W          R0, R0, [SP,#0x198+var_118]
413952:  MOV             R0, R4
413954:  VNEG.F32        S0, S0
413958:  VSTR            S0, [SP,#0x198+var_110]
41395C:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
413960:  VLD1.32         {D13}, [R4@64]!
413964:  MOV.W           R10, #0
413968:  VLDR            S0, [R4]
41396C:  VCMPE.F32       S0, S24
413970:  VMRS            APSR_nzcv, FPSCR
413974:  IT GT
413976:  VMOVGT.F32      S24, S0
41397A:  ITE GT
41397C:  MOVGT.W         R10, #2
413980:  VMOVLE          D13, D14
413984:  LDR             R0, [SP,#0x198+var_120]
413986:  LDR             R2, [SP,#0x198+var_144]
413988:  LDR.W           R1, [R5,#-0xEC]
41398C:  LDRSH.W         R0, [R0]
413990:  LDR.W           R0, [R2,R0,LSL#2]
413994:  MOVS            R2, #0
413996:  LDR             R0, [R0,#0x2C]
413998:  LDR             R0, [R0,#0x14]
41399A:  STRD.W          R0, R2, [SP,#0x198+var_78]
41399E:  ADD             R0, SP, #0x198+var_118
4139A0:  STR             R2, [SP,#0x198+var_70]
4139A2:  ADD             R2, SP, #0x198+var_78
4139A4:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
4139A8:  VLDR            D16, [SP,#0x198+var_118]
4139AC:  VMOV.F32        S28, S24
4139B0:  LDR             R0, [SP,#0x198+var_110]
4139B2:  STR             R0, [SP,#0x198+var_C8]
4139B4:  VSTR            D16, [SP,#0x198+var_D0]
4139B8:  VLDR            S0, [SP,#0x198+var_C8]
4139BC:  VCMPE.F32       S0, S24
4139C0:  VMRS            APSR_nzcv, FPSCR
4139C4:  VCMPE.F32       S0, S24
4139C8:  ITT GT
4139CA:  VMOVGT.F32      S28, S0
4139CE:  MOVGT.W         R10, #3
4139D2:  VMRS            APSR_nzcv, FPSCR
4139D6:  IT GT
4139D8:  VLDRGT          D13, [SP,#0x198+var_D0]
4139DC:  LDR             R0, [SP,#0x198+var_120]
4139DE:  LDR             R2, [SP,#0x198+var_148]
4139E0:  LDR.W           R1, [R5,#-0xEC]
4139E4:  LDRSH.W         R0, [R0]
4139E8:  LDR.W           R0, [R2,R0,LSL#2]
4139EC:  ADD             R2, SP, #0x198+var_78
4139EE:  LDR             R0, [R0,#0x2C]
4139F0:  VLDR            S0, [R0,#0x14]
4139F4:  MOVS            R0, #0
4139F6:  STRD.W          R0, R0, [SP,#0x198+var_74]
4139FA:  ADD             R0, SP, #0x198+var_118
4139FC:  VNEG.F32        S0, S0
413A00:  VSTR            S0, [SP,#0x198+var_78]
413A04:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
413A08:  VLDR            D16, [SP,#0x198+var_118]
413A0C:  VMOV.F32        S24, S28
413A10:  LDR             R0, [SP,#0x198+var_110]
413A12:  STR             R0, [SP,#0x198+var_C8]
413A14:  VSTR            D16, [SP,#0x198+var_D0]
413A18:  VLDR            S0, [SP,#0x198+var_C8]
413A1C:  VCMPE.F32       S0, S28
413A20:  VMRS            APSR_nzcv, FPSCR
413A24:  VCMPE.F32       S0, S28
413A28:  ITT GT
413A2A:  VMOVGT.F32      S24, S0
413A2E:  MOVGT.W         R10, #1
413A32:  VMRS            APSR_nzcv, FPSCR
413A36:  ITE LE
413A38:  VMOVLE          D14, D13
413A3C:  VLDRGT          D14, [SP,#0x198+var_D0]
413A40:  VSUB.F32        D16, D14, D10
413A44:  LDRD.W          R4, R3, [SP,#0x198+var_134]
413A48:  VSUB.F32        S0, S24, S18
413A4C:  LDRD.W          R2, LR, [SP,#0x198+var_12C]
413A50:  VMUL.F32        D1, D16, D16
413A54:  VMUL.F32        S0, S0, S0
413A58:  VADD.F32        S2, S2, S3
413A5C:  VADD.F32        S0, S2, S0
413A60:  VSQRT.F32       S0, S0
413A64:  VCMPE.F32       S0, S22
413A68:  VMRS            APSR_nzcv, FPSCR
413A6C:  BLT             loc_413B08
413A6E:  SUB.W           R9, R9, #1
413A72:  SUB.W           R6, R6, #0x1A4
413A76:  ADDS.W          R0, R9, #1
413A7A:  BNE.W           loc_4137FC
413A7E:  LDRB.W          R0, [R11,#0x327]
413A82:  LSLS            R0, R0, #0x1F
413A84:  BNE             loc_413AEE
413A86:  VLDR            S0, =-50.0
413A8A:  VLDR            S2, [R11,#8]
413A8E:  VCMPE.F32       S2, S0
413A92:  VMRS            APSR_nzcv, FPSCR
413A96:  BGE             loc_413AEE
413A98:  LDR.W           R1, [R11,#0x318]
413A9C:  MOVS            R0, #0
413A9E:  STRB.W          R0, [R11,#0x325]
413AA2:  CBZ             R1, loc_413AD2
413AA4:  LDR             R2, [R1,#0x44]
413AA6:  BIC.W           R2, R2, #0x2000000
413AAA:  STR             R2, [R1,#0x44]
413AAC:  LDR.W           R1, [R11,#0x318]
413AB0:  LDR             R2, [R1,#0x44]
413AB2:  BIC.W           R2, R2, #0x80000000
413AB6:  STR             R2, [R1,#0x44]
413AB8:  LDR.W           R1, [R11,#0x314]; CEntity *
413ABC:  STR.W           R0, [R11,#0x318]
413AC0:  LDRD.W          R0, R2, [R1,#0x1C]
413AC4:  ORR.W           R0, R0, #1
413AC8:  STRD.W          R0, R2, [R1,#0x1C]
413ACC:  MOVS            R0, #0x3C ; '<'
413ACE:  STRB.W          R0, [R11,#0x326]
413AD2:  ADD.W           R4, R11, #0x314
413AD6:  LDR             R0, [R4]; this
413AD8:  CBZ             R0, loc_413AEE
413ADA:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
413ADE:  LDR             R0, [R4]
413AE0:  CMP             R0, #0
413AE2:  ITTT NE
413AE4:  LDRNE           R1, [R0]
413AE6:  LDRNE           R1, [R1,#4]
413AE8:  BLXNE           R1
413AEA:  MOVS            R0, #0
413AEC:  STR             R0, [R4]
413AEE:  LDRB.W          R0, [R11,#0x327]
413AF2:  AND.W           R0, R0, #0xFE
413AF6:  STRB.W          R0, [R11,#0x327]
413AFA:  ADD             SP, SP, #0x138
413AFC:  VPOP            {D8-D15}
413B00:  ADD             SP, SP, #4
413B02:  POP.W           {R8-R11}
413B06:  POP             {R4-R7,PC}
413B08:  SUB.W           R0, R5, #0x100; this
413B0C:  STR.W           R0, [R11,#0x318]
413B10:  LDR             R5, [SP,#0x198+var_124]
413B12:  MOV             R1, R5; CEntity **
413B14:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
413B18:  LDR.W           R0, [R11,#0x318]
413B1C:  LDR             R1, [R0,#0x44]
413B1E:  ORR.W           R1, R1, #0x80000000
413B22:  STR             R1, [R0,#0x44]
413B24:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x413B2C)
413B26:  LDR             R2, [SP,#0x198+var_120]
413B28:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
413B2A:  LDR.W           R1, [R11,#0x318]
413B2E:  LDR.W           R4, [R11,#0x314]
413B32:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
413B34:  LDRSH.W         R2, [R2]
413B38:  LDR             R1, [R1,#0x14]
413B3A:  LDR.W           R0, [R0,R2,LSL#2]
413B3E:  MOVS            R2, #0
413B40:  LDR             R0, [R0,#0x2C]
413B42:  LDR             R0, [R0,#0x14]
413B44:  STRD.W          R2, R2, [SP,#0x198+var_118]
413B48:  ADD             R2, SP, #0x198+var_118
413B4A:  STR             R0, [SP,#0x198+var_110]
413B4C:  ADD             R0, SP, #0x198+var_D0
413B4E:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
413B52:  LDRD.W          R2, R1, [SP,#0x198+var_D0]
413B56:  LDR             R3, [R4,#0x14]
413B58:  LDR             R0, [SP,#0x198+var_C8]
413B5A:  CBZ             R3, loc_413B68
413B5C:  STR             R2, [R3,#0x30]
413B5E:  LDR             R2, [R4,#0x14]
413B60:  STR             R1, [R2,#0x34]
413B62:  LDR             R1, [R4,#0x14]
413B64:  ADDS            R1, #0x38 ; '8'
413B66:  B               loc_413B70
413B68:  STRD.W          R2, R1, [R4,#4]
413B6C:  ADD.W           R1, R4, #0xC
413B70:  STR             R0, [R1]
413B72:  LDR.W           R0, [R11,#0x314]
413B76:  LDR             R1, [R0,#0x1C]
413B78:  BIC.W           R1, R1, #1
413B7C:  STR             R1, [R0,#0x1C]
413B7E:  LDR.W           R0, [R11,#0x318]
413B82:  LDR             R1, [R0,#0x1C]
413B84:  TST.W           R1, #0x40004
413B88:  BEQ             loc_413B9A
413B8A:  LDR             R1, [R0]
413B8C:  LDR             R2, [R1,#0x14]
413B8E:  MOVS            R1, #0
413B90:  BLX             R2
413B92:  LDR             R0, [R5]; this
413B94:  BLX             j__ZN9CPhysical15AddToMovingListEv; CPhysical::AddToMovingList(void)
413B98:  LDR             R0, [R5]
413B9A:  VSUB.F32        S0, S18, S24
413B9E:  LDR             R1, [R0,#0x44]
413BA0:  ORR.W           R1, R1, #0x2000000
413BA4:  STR             R1, [R0,#0x44]
413BA6:  VCMPE.F32       S0, #0.0
413BAA:  VMRS            APSR_nzcv, FPSCR
413BAE:  BLE             loc_413BD4
413BB0:  VLDR            S2, [R11,#0x308]
413BB4:  VLDR            S4, [R11,#0x30C]
413BB8:  VDIV.F32        S0, S0, S2
413BBC:  VDIV.F32        S2, S4, S2
413BC0:  VLDR            S6, [R11,#0x31C]
413BC4:  VSUB.F32        S0, S6, S0
413BC8:  VSUB.F32        S0, S0, S2
413BCC:  VMAX.F32        D0, D0, D8
413BD0:  VSTR            S0, [R11,#0x31C]
413BD4:  CMP.W           R10, #1
413BD8:  BLT.W           loc_413A7E
413BDC:  LDR             R3, [SP,#0x198+var_124]
413BDE:  ADD.W           R0, R10, #1
413BE2:  LDR             R1, [R3]
413BE4:  SUBS            R0, #1
413BE6:  CMP             R0, #1
413BE8:  LDR             R1, [R1,#0x14]
413BEA:  VLDR            S0, [R1]
413BEE:  VLDR            S2, [R1,#4]
413BF2:  VLDR            S4, [R1,#8]
413BF6:  VNEG.F32        S0, S0
413BFA:  VLDR            D16, [R1,#0x20]
413BFE:  VNEG.F32        S2, S2
413C02:  LDR             R2, [R1,#0x28]
413C04:  VNEG.F32        S4, S4
413C08:  STR             R2, [R1,#8]
413C0A:  VSTR            D16, [R1]
413C0E:  LDR             R1, [R3]
413C10:  LDR             R1, [R1,#0x14]
413C12:  VSTR            S0, [R1,#0x20]
413C16:  VSTR            S2, [R1,#0x24]
413C1A:  VSTR            S4, [R1,#0x28]
413C1E:  BGT             loc_413BE2
413C20:  B               loc_413A7E
413C22:  LDR             R0, [SP,#0x198+var_11C]; this
413C24:  MOV             R8, R12
413C26:  STR.W           R0, [R11,#0x318]
413C2A:  LDR             R1, [SP,#0x198+var_124]; CEntity **
413C2C:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
413C30:  LDR.W           R0, [R11,#0x318]
413C34:  ADD.W           R2, R6, R8
413C38:  ADD             R2, R5
413C3A:  LDR             R1, [R0,#0x44]
413C3C:  ORR.W           R1, R1, #0x80000000
413C40:  STR             R1, [R0,#0x44]
413C42:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x413C4C)
413C44:  LDRSH.W         R2, [R2,#0x5E0]
413C48:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
413C4A:  LDR.W           R1, [R11,#0x318]
413C4E:  LDR.W           R4, [R11,#0x314]
413C52:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
413C54:  LDR             R1, [R1,#0x14]
413C56:  LDR.W           R0, [R0,R2,LSL#2]
413C5A:  MOVS            R2, #0
413C5C:  LDR             R0, [R0,#0x2C]
413C5E:  LDR             R0, [R0,#0x14]
413C60:  STRD.W          R2, R2, [SP,#0x198+var_118]
413C64:  ADD             R2, SP, #0x198+var_118
413C66:  STR             R0, [SP,#0x198+var_110]
413C68:  ADD             R0, SP, #0x198+var_D0
413C6A:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
413C6E:  LDRD.W          R2, R1, [SP,#0x198+var_D0]
413C72:  LDR             R3, [R4,#0x14]
413C74:  LDR             R0, [SP,#0x198+var_C8]
413C76:  CBZ             R3, loc_413C84
413C78:  STR             R2, [R3,#0x30]
413C7A:  LDR             R2, [R4,#0x14]
413C7C:  STR             R1, [R2,#0x34]
413C7E:  LDR             R1, [R4,#0x14]
413C80:  ADDS            R1, #0x38 ; '8'
413C82:  B               loc_413C8C
413C84:  STRD.W          R2, R1, [R4,#4]
413C88:  ADD.W           R1, R4, #0xC
413C8C:  VSUB.F32        S0, S18, S0
413C90:  STR             R0, [R1]
413C92:  LDR.W           R0, [R11,#0x314]
413C96:  LDR             R1, [R0,#0x1C]
413C98:  BIC.W           R1, R1, #1
413C9C:  STR             R1, [R0,#0x1C]
413C9E:  VCMPE.F32       S0, #0.0
413CA2:  VMRS            APSR_nzcv, FPSCR
413CA6:  BLE.W           loc_413418
413CAA:  VLDR            S2, [R11,#0x308]
413CAE:  VLDR            S4, [R11,#0x30C]
413CB2:  VDIV.F32        S0, S0, S2
413CB6:  VDIV.F32        S2, S4, S2
413CBA:  VLDR            S6, [R11,#0x31C]
413CBE:  VSUB.F32        S0, S6, S0
413CC2:  VSUB.F32        S0, S0, S2
413CC6:  VMAX.F32        D0, D0, D8
413CCA:  VSTR            S0, [R11,#0x31C]
413CCE:  B.W             loc_413418
