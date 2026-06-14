; =========================================================
; Game Engine Function: _ZN7CCamera7ProcessEv
; Address            : 0x3DC780 - 0x3DDBE6
; =========================================================

3DC780:  PUSH            {R4-R7,LR}
3DC782:  ADD             R7, SP, #0xC
3DC784:  PUSH.W          {R8-R11}
3DC788:  SUB             SP, SP, #4
3DC78A:  VPUSH           {D8-D15}
3DC78E:  SUB             SP, SP, #0xB8
3DC790:  MOV             R4, R0
3DC792:  BLX             j__Z25ResetMadeInvisibleObjectsv; ResetMadeInvisibleObjects(void)
3DC796:  MOV.W           R0, #0x3F800000
3DC79A:  ADD.W           R10, R4, #4
3DC79E:  STR             R0, [SP,#0x118+var_B4]
3DC7A0:  MOVS            R1, #0
3DC7A2:  LDR             R0, [R4,#0x14]
3DC7A4:  STRB.W          R1, [R4,#0x28]
3DC7A8:  MOV             R1, R10
3DC7AA:  CMP             R0, #0
3DC7AC:  IT NE
3DC7AE:  ADDNE.W         R1, R0, #0x30 ; '0'
3DC7B2:  LDRB.W          R0, [R4,#0x29]
3DC7B6:  VLDR            D16, [R1]
3DC7BA:  LDR             R1, [R1,#8]
3DC7BC:  CMP             R0, #0
3DC7BE:  STR.W           R1, [R4,#0x7D4]
3DC7C2:  ADDW            R1, R4, #0x7CC
3DC7C6:  VSTR            D16, [R1]
3DC7CA:  ITT EQ
3DC7CC:  LDRBEQ.W        R0, [R4,#0x32]
3DC7D0:  CMPEQ           R0, #0
3DC7D2:  BEQ             loc_3DC8C2
3DC7D4:  MOV             R0, R4; this
3DC7D6:  BLX             j__ZN7CCamera18UpdateTargetEntityEv; CCamera::UpdateTargetEntity(void)
3DC7DA:  LDR.W           R0, [R4,#0x8DC]
3DC7DE:  ADDW            R11, R4, #0x8DC
3DC7E2:  CBNZ            R0, loc_3DC7F6
3DC7E4:  MOV.W           R0, #0xFFFFFFFF; int
3DC7E8:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3DC7EC:  MOV             R1, R11; CEntity **
3DC7EE:  STR.W           R0, [R11]
3DC7F2:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3DC7F6:  LDRB.W          R0, [R4,#0x57]
3DC7FA:  ADD.W           R1, R0, R0,LSL#5
3DC7FE:  ADD.W           R1, R4, R1,LSL#4
3DC802:  LDR.W           R2, [R1,#0x364]
3DC806:  CBNZ            R2, loc_3DC81A
3DC808:  LDR.W           R0, [R4,#0x8DC]; this
3DC80C:  ADD.W           R1, R1, #0x364; CEntity **
3DC810:  STR             R0, [R1]
3DC812:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3DC816:  LDRB.W          R0, [R4,#0x57]
3DC81A:  MOVS            R1, #1
3DC81C:  BIC.W           R0, R1, R0
3DC820:  ORR.W           R0, R0, R0,LSL#5
3DC824:  ADD.W           R0, R4, R0,LSL#4
3DC828:  LDR.W           R1, [R0,#0x364]
3DC82C:  CBNZ            R1, loc_3DC83C
3DC82E:  ADD.W           R1, R0, #0x364; CEntity **
3DC832:  LDR.W           R0, [R11]; this
3DC836:  STR             R0, [R1]
3DC838:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3DC83C:  MOV             R0, R4; this
3DC83E:  BLX             j__ZN7CCamera10CamControlEv; CCamera::CamControl(void)
3DC842:  LDR.W           R0, =(TheCamera_ptr - 0x3DC84A)
3DC846:  ADD             R0, PC; TheCamera_ptr
3DC848:  LDR             R0, [R0]; TheCamera ; this
3DC84A:  BLX             j__ZN7CCamera23ProcessScriptedCommandsEv; CCamera::ProcessScriptedCommands(void)
3DC84E:  LDRB.W          R0, [R4,#0x4F]
3DC852:  CMP             R0, #0
3DC854:  BEQ.W           loc_3DC960
3DC858:  LDRH.W          R0, [R4,#0xBB8]
3DC85C:  CBZ             R0, loc_3DC880
3DC85E:  CMP             R0, #1
3DC860:  BNE             loc_3DC8B8
3DC862:  ADDW            R0, R4, #0xB8C
3DC866:  VLDR            S0, [R0]
3DC86A:  VCMP.F32        S0, #0.0
3DC86E:  VMRS            APSR_nzcv, FPSCR
3DC872:  BNE             loc_3DC8CE
3DC874:  MOVS            R0, #0
3DC876:  STR.W           R0, [R4,#0xB84]
3DC87A:  ADDW            R0, R4, #0xB84
3DC87E:  B               loc_3DC908
3DC880:  ADDW            R0, R4, #0xB84
3DC884:  VLDR            S0, =255.0
3DC888:  VLDR            S2, [R0]
3DC88C:  VCMPE.F32       S2, S0
3DC890:  VMRS            APSR_nzcv, FPSCR
3DC894:  ITT GE
3DC896:  MOVGE           R1, #0
3DC898:  STRBGE.W        R1, [R4,#0x4F]
3DC89C:  ADDW            R1, R4, #0xB8C
3DC8A0:  VLDR            S4, [R1]
3DC8A4:  VCMP.F32        S4, #0.0
3DC8A8:  VMRS            APSR_nzcv, FPSCR
3DC8AC:  BNE             loc_3DC914
3DC8AE:  MOVS            R1, #0x437F0000
3DC8B4:  STR             R1, [R0]
3DC8B6:  B               loc_3DC942
3DC8B8:  ADDW            R0, R4, #0xB84
3DC8BC:  VLDR            S2, [R0]
3DC8C0:  B               loc_3DC94E
3DC8C2:  LDR.W           R0, [R4,#0xAC]
3DC8C6:  CMP             R0, #2
3DC8C8:  BEQ.W           loc_3DC7D4
3DC8CC:  B               loc_3DC7DA
3DC8CE:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3DC8DA)
3DC8D2:  VLDR            S2, =-50.0
3DC8D6:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3DC8D8:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3DC8DA:  VLDR            S4, [R0]
3DC8DE:  ADDW            R0, R4, #0xB84
3DC8E2:  VDIV.F32        S2, S4, S2
3DC8E6:  VLDR            S4, =255.0
3DC8EA:  VMUL.F32        S2, S2, S4
3DC8EE:  VDIV.F32        S0, S2, S0
3DC8F2:  VLDR            S2, [R0]
3DC8F6:  VADD.F32        S2, S2, S0
3DC8FA:  VCMPE.F32       S2, #0.0
3DC8FE:  VSTR            S2, [R0]
3DC902:  VMRS            APSR_nzcv, FPSCR
3DC906:  BGT             loc_3DC94E
3DC908:  MOVS            R1, #0
3DC90A:  VLDR            S2, =0.0
3DC90E:  STRB.W          R1, [R4,#0x4F]
3DC912:  B               loc_3DC94C
3DC914:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3DC920)
3DC918:  VLDR            S6, =50.0
3DC91C:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3DC91E:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
3DC920:  VLDR            S8, [R1]
3DC924:  VDIV.F32        S6, S8, S6
3DC928:  VMUL.F32        S6, S6, S0
3DC92C:  VDIV.F32        S4, S6, S4
3DC930:  VADD.F32        S2, S2, S4
3DC934:  VCMPE.F32       S2, S0
3DC938:  VSTR            S2, [R0]
3DC93C:  VMRS            APSR_nzcv, FPSCR
3DC940:  BLT             loc_3DC94E
3DC942:  VMOV.F32        S2, S0
3DC946:  MOVS            R1, #0x437F0000
3DC94C:  STR             R1, [R0]
3DC94E:  VCVT.U32.F32    S0, S2
3DC952:  LDR.W           R0, =(_ZN5CDraw9FadeValueE_ptr - 0x3DC95A)
3DC956:  ADD             R0, PC; _ZN5CDraw9FadeValueE_ptr
3DC958:  LDR             R0, [R0]; CDraw::FadeValue ...
3DC95A:  VMOV            R1, S0
3DC95E:  STRB            R1, [R0]; CDraw::FadeValue
3DC960:  LDRB.W          R0, [R4,#0x50]
3DC964:  CMP             R0, #0
3DC966:  ITT NE
3DC968:  MOVNE           R0, R4; this
3DC96A:  BLXNE           j__ZN7CCamera16ProcessMusicFadeEv; CCamera::ProcessMusicFade(void)
3DC96E:  LDRB.W          R0, [R4,#0x3B]
3DC972:  CBZ             R0, loc_3DC9B8
3DC974:  LDRB.W          R0, [R4,#0x3A]
3DC978:  CBZ             R0, loc_3DC98C
3DC97A:  VLDR            S0, =0.0
3DC97E:  MOVS            R0, #0
3DC980:  STRH            R0, [R4,#0x3A]
3DC982:  VMOV.F32        S4, S0
3DC986:  VMOV.F32        S2, S0
3DC98A:  B               loc_3DC9AC
3DC98C:  LDRB.W          R0, [R4,#0x57]
3DC990:  VMOV.F32        S2, #1.0
3DC994:  VLDR            S4, =0.3
3DC998:  VMOV.F32        S0, #30.0
3DC99C:  ADD.W           R0, R0, R0,LSL#5
3DC9A0:  ADD.W           R0, R4, R0,LSL#4
3DC9A4:  VLDR            S6, [R0,#0x1FC]
3DC9A8:  VMUL.F32        S4, S6, S4
3DC9AC:  VSTR            S4, [R4,#0x130]
3DC9B0:  VSTR            S0, [R4,#0x140]
3DC9B4:  VSTR            S2, [R4,#0x168]
3DC9B8:  LDR.W           R0, =(Scene_ptr - 0x3DC9C8)
3DC9BC:  MOV             R1, #0x3E99999A
3DC9C4:  ADD             R0, PC; Scene_ptr
3DC9C6:  LDR             R0, [R0]; Scene
3DC9C8:  LDR             R0, [R0,#(dword_9FC93C - 0x9FC938)]
3DC9CA:  BLX             j__Z24RwCameraSetNearClipPlaneP8RwCameraf; RwCameraSetNearClipPlane(RwCamera *,float)
3DC9CE:  LDRB.W          R0, [R4,#0x57]
3DC9D2:  MOVS            R2, #0
3DC9D4:  VLDR            S16, =0.0
3DC9D8:  MOVS            R5, #0
3DC9DA:  ADD.W           R1, R0, R0,LSL#5
3DC9DE:  VMOV.F32        S18, S16
3DC9E2:  ADD.W           R1, R4, R1,LSL#4
3DC9E6:  VLDR            S2, [R1,#0x2DC]
3DC9EA:  VLDR            S0, [R1,#0x2D8]
3DC9EE:  MOVS            R1, #0
3DC9F0:  VCMP.F32        S2, #0.0
3DC9F4:  VMRS            APSR_nzcv, FPSCR
3DC9F8:  VCMP.F32        S0, #0.0
3DC9FC:  IT EQ
3DC9FE:  MOVEQ           R1, #1
3DCA00:  VMRS            APSR_nzcv, FPSCR
3DCA04:  IT EQ
3DCA06:  MOVEQ           R2, #1; float
3DCA08:  TST             R2, R1
3DCA0A:  BNE             loc_3DCA20
3DCA0C:  VMOV            R0, S0; this
3DCA10:  VMOV            R1, S2; float
3DCA14:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
3DCA18:  VMOV            S18, R0
3DCA1C:  LDRB.W          R0, [R4,#0x57]
3DCA20:  ADD.W           R0, R0, R0,LSL#5
3DCA24:  ADD.W           R6, R4, #0x170
3DCA28:  ADD.W           R0, R6, R0,LSL#4; this
3DCA2C:  BLX             j__ZN4CCam7ProcessEv; CCam::Process(void)
3DCA30:  LDRB.W          R0, [R4,#0x57]
3DCA34:  STR             R6, [SP,#0x118+var_EC]
3DCA36:  ADD.W           R0, R0, R0,LSL#5
3DCA3A:  ADD.W           R0, R6, R0,LSL#4
3DCA3E:  VLDR            S2, [R0,#0x16C]
3DCA42:  VLDR            S0, [R0,#0x168]
3DCA46:  MOVS            R0, #0
3DCA48:  VCMP.F32        S2, #0.0
3DCA4C:  VMRS            APSR_nzcv, FPSCR
3DCA50:  VCMP.F32        S0, #0.0
3DCA54:  IT EQ
3DCA56:  MOVEQ           R0, #1
3DCA58:  VMRS            APSR_nzcv, FPSCR
3DCA5C:  IT EQ
3DCA5E:  MOVEQ           R5, #1
3DCA60:  TST             R5, R0
3DCA62:  BNE             loc_3DCA74
3DCA64:  VMOV            R0, S0; this
3DCA68:  VMOV            R1, S2; float
3DCA6C:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
3DCA70:  VMOV            S16, R0
3DCA74:  LDRB.W          R0, [R4,#0x56]
3DCA78:  CBZ             R0, loc_3DCA9C
3DCA7A:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3DCA86)
3DCA7E:  LDRD.W          R1, R2, [R4,#0x74]
3DCA82:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3DCA84:  ADD             R1, R2
3DCA86:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3DCA88:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3DCA8A:  CMP             R0, R1
3DCA8C:  ITTTT HI
3DCA8E:  MOVHI           R0, #0
3DCA90:  STRBHI.W        R0, [R4,#0x4D]
3DCA94:  STRBHI.W        R0, [R4,#0x56]
3DCA98:  STRBHI.W        R0, [R4,#0x38]
3DCA9C:  LDRB.W          R0, [R4,#0x2F]
3DCAA0:  CBZ             R0, loc_3DCAB4
3DCAA2:  LDR.W           R0, =(Scene_ptr - 0x3DCAAE)
3DCAA6:  LDR.W           R1, [R4,#0x134]
3DCAAA:  ADD             R0, PC; Scene_ptr
3DCAAC:  LDR             R0, [R0]; Scene
3DCAAE:  LDR             R0, [R0,#(dword_9FC93C - 0x9FC938)]
3DCAB0:  BLX             j__Z24RwCameraSetNearClipPlaneP8RwCameraf; RwCameraSetNearClipPlane(RwCamera *,float)
3DCAB4:  VSUB.F32        S0, S16, S18
3DCAB8:  VLDR            S16, =3.1416
3DCABC:  VCMPE.F32       S0, S16
3DCAC0:  VMRS            APSR_nzcv, FPSCR
3DCAC4:  BLT             loc_3DCAD8
3DCAC6:  VLDR            S2, =-6.2832
3DCACA:  VADD.F32        S0, S0, S2
3DCACE:  VCMPE.F32       S0, S16
3DCAD2:  VMRS            APSR_nzcv, FPSCR
3DCAD6:  BGE             loc_3DCACA
3DCAD8:  VLDR            S18, =-3.1416
3DCADC:  VCMPE.F32       S0, S18
3DCAE0:  VMRS            APSR_nzcv, FPSCR
3DCAE4:  BGE             loc_3DCAF8
3DCAE6:  VLDR            S2, =6.2832
3DCAEA:  VADD.F32        S0, S0, S2
3DCAEE:  VCMPE.F32       S0, S18
3DCAF2:  VMRS            APSR_nzcv, FPSCR
3DCAF6:  BLT             loc_3DCAEA
3DCAF8:  VABS.F32        S0, S0
3DCAFC:  VLDR            S2, =0.3
3DCB00:  MOVS            R5, #0
3DCB02:  VCMPE.F32       S0, S2
3DCB06:  VMRS            APSR_nzcv, FPSCR
3DCB0A:  ITT GT
3DCB0C:  MOVGT           R0, #1
3DCB0E:  STRBGT.W        R0, [R4,#0x28]
3DCB12:  LDRB.W          R0, [R4,#0x57]
3DCB16:  ADD.W           R0, R0, R0,LSL#5
3DCB1A:  ADD.W           R0, R4, R0,LSL#4
3DCB1E:  LDR.W           R0, [R0,#0x190]
3DCB22:  CMP             R0, #3
3DCB24:  BEQ             loc_3DCB38
3DCB26:  LDR.W           R0, [R11]
3DCB2A:  LDRB.W          R0, [R0,#0x3A]
3DCB2E:  AND.W           R0, R0, #7
3DCB32:  CMP             R0, #2
3DCB34:  IT EQ
3DCB36:  MOVEQ           R5, #1
3DCB38:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3DCB40)
3DCB3C:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3DCB3E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3DCB40:  VLDR            S0, [R0]
3DCB44:  ADD.W           R0, R4, #0xC20
3DCB48:  VCVT.F32.U32    S0, S0
3DCB4C:  VLDR            S2, [R0]
3DCB50:  VCMPE.F32       S2, S0
3DCB54:  VMRS            APSR_nzcv, FPSCR
3DCB58:  ITT GE
3DCB5A:  MOVGE           R0, R4; this
3DCB5C:  BLXGE           j__ZN7CCamera12ProcessShakeEf; CCamera::ProcessShake(float)
3DCB60:  LDRB.W          R0, [R4,#0x56]
3DCB64:  MOVS            R1, #0
3DCB66:  CMP             R0, #0
3DCB68:  IT EQ
3DCB6A:  MOVEQ           R1, #1
3DCB6C:  ORRS.W          R0, R5, R1
3DCB70:  BEQ             loc_3DCC6C
3DCB72:  LDRB.W          R1, [R4,#0x57]
3DCB76:  ADD.W           R0, R1, R1,LSL#5
3DCB7A:  ADD.W           R0, R4, R0,LSL#4
3DCB7E:  VLDR            D16, [R0,#0x2E4]
3DCB82:  LDR.W           R2, [R0,#0x2EC]
3DCB86:  STR             R2, [SP,#0x118+var_68]
3DCB88:  VSTR            D16, [SP,#0x118+var_70]
3DCB8C:  VLDR            D16, [R0,#0x2FC]
3DCB90:  LDR.W           R2, [R0,#0x304]
3DCB94:  STR             R2, [SP,#0x118+var_88]
3DCB96:  VSTR            D16, [SP,#0x118+var_90]
3DCB9A:  LDRB.W          R2, [R4,#0x2B]
3DCB9E:  CMP             R2, #0
3DCBA0:  BEQ.W           loc_3DCCE8
3DCBA4:  ADD.W           R1, R4, #0x880
3DCBA8:  VLDR            S0, [SP,#0x118+var_70]
3DCBAC:  VLDR            S2, [SP,#0x118+var_70+4]
3DCBB0:  ADD             R5, SP, #0x118+var_80
3DCBB2:  VLDR            S6, [R1]
3DCBB6:  ADDW            R1, R4, #0x884
3DCBBA:  VLDR            S4, [SP,#0x118+var_68]
3DCBBE:  VADD.F32        S0, S6, S0
3DCBC2:  VSTR            S0, [SP,#0x118+var_70]
3DCBC6:  VLDR            S6, [R1]
3DCBCA:  ADDW            R1, R4, #0x888
3DCBCE:  VADD.F32        S2, S6, S2
3DCBD2:  VSTR            S2, [SP,#0x118+var_70+4]
3DCBD6:  VLDR            S6, [R1]
3DCBDA:  VADD.F32        S4, S6, S4
3DCBDE:  VSTR            S4, [SP,#0x118+var_68]
3DCBE2:  VLDR            S6, [R0,#0x290]
3DCBE6:  VLDR            S8, [R0,#0x294]
3DCBEA:  VLDR            S10, [R0,#0x298]
3DCBEE:  VSUB.F32        S0, S6, S0
3DCBF2:  VSUB.F32        S2, S8, S2
3DCBF6:  MOV             R0, R5; this
3DCBF8:  VSUB.F32        S4, S10, S4
3DCBFC:  VSTR            S2, [SP,#0x118+var_80+4]
3DCC00:  VSTR            S0, [SP,#0x118+var_80]
3DCC04:  VSTR            S4, [SP,#0x118+var_78]
3DCC08:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3DCC0C:  ADD             R6, SP, #0x118+var_E8
3DCC0E:  ADD.W           R9, SP, #0x118+var_90
3DCC12:  MOV             R1, R5; CVector *
3DCC14:  MOV             R0, R6; CVector *
3DCC16:  MOV             R2, R9
3DCC18:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3DCC1C:  MOV             R0, R6; this
3DCC1E:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3DCC22:  ADD             R0, SP, #0x118+var_A0; CVector *
3DCC24:  MOV             R1, R6; CVector *
3DCC26:  MOV             R2, R5
3DCC28:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3DCC2C:  LDR             R0, [SP,#0x118+var_98]
3DCC2E:  VLDR            D16, [SP,#0x118+var_A0]
3DCC32:  STR             R0, [SP,#0x118+var_88]
3DCC34:  MOV             R0, R9; this
3DCC36:  VSTR            D16, [SP,#0x118+var_90]
3DCC3A:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3DCC3E:  LDRB.W          R1, [R4,#0x57]
3DCC42:  B               loc_3DCD06
3DCC44:  DCFS 255.0
3DCC48:  DCFS -50.0
3DCC4C:  DCFS 0.0
3DCC50:  DCFS 50.0
3DCC54:  DCFS 0.3
3DCC58:  DCFS 3.1416
3DCC5C:  DCFS -6.2832
3DCC60:  DCFS -3.1416
3DCC64:  DCFS 6.2832
3DCC68:  DCFS 1.3
3DCC6C:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3DCC7C)
3DCC70:  VMOV.F32        S20, #1.0
3DCC74:  LDRD.W          R1, R2, [R4,#0x74]
3DCC78:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3DCC7A:  VLDR            S0, [R4,#0x7C]
3DCC7E:  VMOV            S4, R2
3DCC82:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3DCC84:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3DCC86:  VCVT.F32.U32    S0, S0
3DCC8A:  SUBS            R0, R0, R1
3DCC8C:  CMP             R0, R2
3DCC8E:  IT CS
3DCC90:  MOVCS           R0, R2
3DCC92:  VMOV            S2, R0
3DCC96:  ADD.W           R0, R4, #0xBA0
3DCC9A:  VCVT.F32.U32    S2, S2
3DCC9E:  VCVT.F32.U32    S4, S4
3DCCA2:  VLDR            S24, [R0]
3DCCA6:  VDIV.F32        S0, S2, S0
3DCCAA:  VDIV.F32        S22, S2, S4
3DCCAE:  VMIN.F32        D0, D0, D10
3DCCB2:  VCMPE.F32       S0, S24
3DCCB6:  VMRS            APSR_nzcv, FPSCR
3DCCBA:  BLE             loc_3DCCD8
3DCCBC:  BLE.W           loc_3DCE52
3DCCC0:  ADDW            R0, R4, #0xBA4
3DCCC4:  VLDR            S2, [R0]
3DCCC8:  VCMP.F32        S2, #0.0
3DCCCC:  VMRS            APSR_nzcv, FPSCR
3DCCD0:  BNE             loc_3DCDAA
3DCCD2:  VMOV.F32        S0, #1.0
3DCCD6:  B               loc_3DCDB2
3DCCD8:  VCMP.F32        S24, #0.0
3DCCDC:  VMRS            APSR_nzcv, FPSCR
3DCCE0:  BNE             loc_3DCD16
3DCCE2:  VLDR            S0, =0.0
3DCCE6:  B               loc_3DCD1E
3DCCE8:  VLDR            D16, [R0,#0x2D8]
3DCCEC:  ADD.W           R2, R0, #0x2FC
3DCCF0:  LDR.W           R0, [R0,#0x2E0]
3DCCF4:  STR             R0, [SP,#0x118+var_78]
3DCCF6:  VSTR            D16, [SP,#0x118+var_80]
3DCCFA:  VLDR            D16, [R2]
3DCCFE:  LDR             R0, [R2,#8]
3DCD00:  STR             R0, [SP,#0x118+var_88]
3DCD02:  VSTR            D16, [SP,#0x118+var_90]
3DCD06:  ADD.W           R0, R1, R1,LSL#5
3DCD0A:  ADD.W           R0, R4, R0,LSL#4
3DCD0E:  LDR.W           R0, [R0,#0x1FC]
3DCD12:  STR             R0, [SP,#0x118+var_B4]
3DCD14:  B               loc_3DD4D2
3DCD16:  VSUB.F32        S0, S24, S0
3DCD1A:  VDIV.F32        S0, S0, S24
3DCD1E:  VMUL.F32        S0, S0, S16
3DCD22:  VMOV            R0, S0; x
3DCD26:  BLX             cosf
3DCD2A:  VMOV.F32        S0, #0.5
3DCD2E:  ADDW            R1, R4, #0x84C
3DCD32:  VMOV            S2, R0
3DCD36:  ADDW            R0, R4, #0x848
3DCD3A:  VLDR            S6, [R1]
3DCD3E:  VMUL.F32        S2, S2, S0
3DCD42:  VSUB.F32        S0, S0, S2
3DCD46:  VLDR            S2, [R0]
3DCD4A:  ADDW            R0, R4, #0x844
3DCD4E:  VLDR            S4, [R0]
3DCD52:  ADDW            R0, R4, #0x824
3DCD56:  VLDR            S8, [R0]
3DCD5A:  ADD.W           R0, R4, #0x820
3DCD5E:  VMUL.F32        S2, S2, S0
3DCD62:  VMUL.F32        S4, S4, S0
3DCD66:  VMUL.F32        S0, S0, S6
3DCD6A:  VLDR            S6, [R0]
3DCD6E:  ADDW            R0, R4, #0x828
3DCD72:  VADD.F32        S2, S2, S8
3DCD76:  VADD.F32        S4, S4, S6
3DCD7A:  VLDR            S6, [R0]
3DCD7E:  ADDW            R0, R4, #0x86C
3DCD82:  VADD.F32        S0, S0, S6
3DCD86:  VSTR            S2, [R0]
3DCD8A:  ADDW            R0, R4, #0x868
3DCD8E:  VSTR            S4, [R0]
3DCD92:  VLDR            D16, [R0]
3DCD96:  ADD.W           R0, R4, #0x870
3DCD9A:  VSTR            S0, [R0]
3DCD9E:  LDR.W           R0, [R4,#0x870]
3DCDA2:  STR             R0, [SP,#0x118+var_A8]
3DCDA4:  VSTR            D16, [SP,#0x118+var_B0]
3DCDA8:  B               loc_3DCE52
3DCDAA:  VSUB.F32        S0, S0, S24
3DCDAE:  VDIV.F32        S0, S0, S2
3DCDB2:  VMUL.F32        S0, S0, S16
3DCDB6:  VMOV            R0, S0; x
3DCDBA:  BLX             cosf
3DCDBE:  VCMP.F32        S24, #0.0
3DCDC2:  ADD.W           R1, R4, #0x870
3DCDC6:  VMRS            APSR_nzcv, FPSCR
3DCDCA:  VMOV            S2, R0
3DCDCE:  VMOV.F32        S0, #0.5
3DCDD2:  ADDW            R2, R4, #0x86C
3DCDD6:  VMUL.F32        S2, S2, S0
3DCDDA:  VSUB.F32        S0, S0, S2
3DCDDE:  ITTTT EQ
3DCDE0:  LDREQ.W         R0, [R4,#0x828]
3DCDE4:  STREQ.W         R0, [R4,#0x870]
3DCDE8:  ADDEQ.W         R0, R4, #0x820
3DCDEC:  VLDREQ          D16, [R0]
3DCDF0:  ITT EQ
3DCDF2:  ADDWEQ          R0, R4, #0x868
3DCDF6:  VSTREQ          D16, [R0]
3DCDFA:  LDRB.W          R0, [R4,#0x57]
3DCDFE:  VLDR            S2, [R2]
3DCE02:  VLDR            S12, [R1]
3DCE06:  ADD.W           R0, R0, R0,LSL#5
3DCE0A:  ADD.W           R0, R4, R0,LSL#4
3DCE0E:  VLDR            S6, [R0,#0x294]
3DCE12:  VLDR            S8, [R0,#0x298]
3DCE16:  VLDR            S4, [R0,#0x290]
3DCE1A:  ADDW            R0, R4, #0x868
3DCE1E:  VSUB.F32        S6, S6, S2
3DCE22:  VLDR            S10, [R0]
3DCE26:  VSUB.F32        S8, S8, S12
3DCE2A:  VSUB.F32        S4, S4, S10
3DCE2E:  VMUL.F32        S6, S0, S6
3DCE32:  VMUL.F32        S4, S0, S4
3DCE36:  VMUL.F32        S0, S0, S8
3DCE3A:  VADD.F32        S2, S2, S6
3DCE3E:  VADD.F32        S4, S10, S4
3DCE42:  VADD.F32        S0, S12, S0
3DCE46:  VSTR            S2, [SP,#0x118+var_B0+4]
3DCE4A:  VSTR            S4, [SP,#0x118+var_B0]
3DCE4E:  VSTR            S0, [SP,#0x118+var_A8]
3DCE52:  ADDW            R0, R4, #0xB98
3DCE56:  VLDR            S0, [R0]
3DCE5A:  VCMPE.F32       S22, S0
3DCE5E:  VMRS            APSR_nzcv, FPSCR
3DCE62:  BLE.W           loc_3DD11A
3DCE66:  VCMPE.F32       S22, S20
3DCE6A:  VMRS            APSR_nzcv, FPSCR
3DCE6E:  BGT.W           loc_3DD12A
3DCE72:  VCMPE.F32       S22, S0
3DCE76:  VMRS            APSR_nzcv, FPSCR
3DCE7A:  BLE.W           loc_3DD12A
3DCE7E:  ADDW            R0, R4, #0xB9C
3DCE82:  VLDR            S2, [R0]
3DCE86:  VCMP.F32        S2, #0.0
3DCE8A:  VMRS            APSR_nzcv, FPSCR
3DCE8E:  BEQ             loc_3DCE98
3DCE90:  VSUB.F32        S0, S22, S0
3DCE94:  VDIV.F32        S20, S0, S2
3DCE98:  VMUL.F32        S0, S20, S16
3DCE9C:  VMOV            R0, S0; x
3DCEA0:  BLX             cosf
3DCEA4:  VMOV.F32        S0, #0.5
3DCEA8:  LDRB.W          R1, [R4,#0x57]
3DCEAC:  VMOV            S2, R0
3DCEB0:  ADD.W           R0, R4, #0x860
3DCEB4:  ADDW            R2, R4, #0x864; float
3DCEB8:  VLDR            S4, [R0]
3DCEBC:  ADD.W           R0, R1, R1,LSL#5
3DCEC0:  VLDR            S14, [R2]
3DCEC4:  ADD.W           R0, R4, R0,LSL#4
3DCEC8:  VMUL.F32        S2, S2, S0
3DCECC:  VLDR            S8, [R0,#0x2E8]
3DCED0:  VLDR            S6, [R0,#0x2E4]
3DCED4:  VLDR            S10, [R0,#0x2EC]
3DCED8:  ADDW            R0, R4, #0x85C
3DCEDC:  VSUB.F32        S8, S8, S4
3DCEE0:  VLDR            S12, [R0]
3DCEE4:  VSUB.F32        S22, S0, S2
3DCEE8:  VSUB.F32        S0, S6, S12
3DCEEC:  VSUB.F32        S2, S10, S14
3DCEF0:  VMUL.F32        S6, S22, S8
3DCEF4:  VMUL.F32        S0, S22, S0
3DCEF8:  VMUL.F32        S8, S22, S2
3DCEFC:  VADD.F32        S2, S4, S6
3DCF00:  VADD.F32        S0, S12, S0
3DCF04:  VADD.F32        S20, S14, S8
3DCF08:  VSTR            S2, [SP,#0x118+var_70+4]
3DCF0C:  VSTR            S0, [SP,#0x118+var_70]
3DCF10:  VSTR            S20, [SP,#0x118+var_68]
3DCF14:  LDRB.W          R0, [R4,#0x29]
3DCF18:  CBZ             R0, loc_3DCF84
3DCF1A:  VLDR            S24, [SP,#0x118+var_B0]
3DCF1E:  VLDR            S26, [SP,#0x118+var_B0+4]
3DCF22:  VSUB.F32        S6, S0, S24
3DCF26:  VLDR            S28, =1.3
3DCF2A:  VSUB.F32        S4, S2, S26
3DCF2E:  VMUL.F32        S10, S6, S6
3DCF32:  VMUL.F32        S8, S4, S4
3DCF36:  VADD.F32        S8, S10, S8
3DCF3A:  VSQRT.F32       S8, S8
3DCF3E:  VCMPE.F32       S8, S28
3DCF42:  VMRS            APSR_nzcv, FPSCR
3DCF46:  BGE             loc_3DCF84
3DCF48:  VMOV            R0, S6; this
3DCF4C:  VMOV            R1, S4; float
3DCF50:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
3DCF54:  MOV             R5, R0
3DCF56:  BLX             cosf
3DCF5A:  VMOV            S30, R0
3DCF5E:  MOV             R0, R5; x
3DCF60:  BLX             sinf
3DCF64:  VMOV            S0, R0
3DCF68:  VMUL.F32        S2, S30, S28
3DCF6C:  VMUL.F32        S4, S0, S28
3DCF70:  VADD.F32        S0, S24, S2
3DCF74:  VADD.F32        S2, S26, S4
3DCF78:  VSTR            S0, [SP,#0x118+var_70]
3DCF7C:  VSTR            S2, [SP,#0x118+var_70+4]
3DCF80:  LDRB.W          R1, [R4,#0x57]
3DCF84:  ADD.W           R0, R1, R1,LSL#5
3DCF88:  VLDR            S4, [R4,#0x10C]
3DCF8C:  ADDW            R2, R4, #0x878
3DCF90:  ADDW            R1, R4, #0x87C
3DCF94:  ADD.W           R0, R4, R0,LSL#4
3DCF98:  VLDR            S6, [R0,#0x1FC]
3DCF9C:  VSUB.F32        S6, S6, S4
3DCFA0:  VMUL.F32        S6, S22, S6
3DCFA4:  VADD.F32        S4, S4, S6
3DCFA8:  VSTR            S4, [SP,#0x118+var_B4]
3DCFAC:  VLDR            S12, [R2]
3DCFB0:  ADDW            R2, R4, #0x874
3DCFB4:  VLDR            S8, [R0,#0x300]
3DCFB8:  VLDR            S6, [R0,#0x2FC]
3DCFBC:  VLDR            S14, [R2]
3DCFC0:  VSUB.F32        S8, S8, S12
3DCFC4:  VLDR            S10, [R0,#0x304]
3DCFC8:  VLDR            S1, [R1]
3DCFCC:  VSUB.F32        S6, S6, S14
3DCFD0:  VSUB.F32        S10, S10, S1
3DCFD4:  VMUL.F32        S8, S22, S8
3DCFD8:  VMUL.F32        S6, S22, S6
3DCFDC:  VMUL.F32        S10, S22, S10
3DCFE0:  VADD.F32        S8, S12, S8
3DCFE4:  VADD.F32        S6, S14, S6
3DCFE8:  VADD.F32        S10, S1, S10
3DCFEC:  VSTR            S8, [SP,#0x118+var_90+4]
3DCFF0:  VSTR            S6, [SP,#0x118+var_90]
3DCFF4:  VSTR            S10, [SP,#0x118+var_88]
3DCFF8:  VLDR            S6, [R0,#0x1E8]
3DCFFC:  VLDR            S8, [R4,#0x108]
3DD000:  VSUB.F32        S6, S6, S8
3DD004:  VCMPE.F32       S6, S16
3DD008:  VMRS            APSR_nzcv, FPSCR
3DD00C:  BLT             loc_3DD020
3DD00E:  VLDR            S8, =-6.2832
3DD012:  VADD.F32        S6, S6, S8
3DD016:  VCMPE.F32       S6, S16
3DD01A:  VMRS            APSR_nzcv, FPSCR
3DD01E:  BGE             loc_3DD012
3DD020:  VCMPE.F32       S6, S18
3DD024:  ADD             R0, SP, #0x118+var_70
3DD026:  VMRS            APSR_nzcv, FPSCR
3DD02A:  STR.W           R11, [SP,#0x118+var_F0]
3DD02E:  BGE             loc_3DD042
3DD030:  VLDR            S8, =6.2832
3DD034:  VADD.F32        S6, S6, S8
3DD038:  VCMPE.F32       S6, S18
3DD03C:  VMRS            APSR_nzcv, FPSCR
3DD040:  BLT             loc_3DD034
3DD042:  VLDR            S6, [SP,#0x118+var_B0+4]
3DD046:  ADD.W           R11, R0, #8
3DD04A:  VLDR            S8, [SP,#0x118+var_A8]
3DD04E:  ORR.W           R6, R0, #4
3DD052:  VLDR            S18, [SP,#0x118+var_B0]
3DD056:  VSUB.F32        S6, S6, S2
3DD05A:  VSUB.F32        S8, S8, S20
3DD05E:  LDR             R0, [SP,#0x118+var_68]
3DD060:  VSUB.F32        S10, S18, S0
3DD064:  VLDR            D16, [SP,#0x118+var_70]
3DD068:  ADDW            R1, R4, #0x8A8
3DD06C:  ADD.W           R9, R4, #0x10C
3DD070:  VSTR            S10, [SP,#0x118+var_80]
3DD074:  VSTR            S6, [SP,#0x118+var_80+4]
3DD078:  VSTR            S8, [SP,#0x118+var_78]
3DD07C:  STR.W           R0, [R4,#0x8A0]
3DD080:  ADDW            R0, R4, #0x898
3DD084:  VSTR            D16, [R0]
3DD088:  ADDW            R0, R4, #0x8A4
3DD08C:  VLDR            D16, [SP,#0x118+var_B0]
3DD090:  VSTR            D16, [R0]
3DD094:  VLDR            S6, [R1]
3DD098:  VLDR            S8, [R0]
3DD09C:  VSUB.F32        S2, S2, S6
3DD0A0:  LDR             R2, [SP,#0x118+var_A8]
3DD0A2:  VSUB.F32        S0, S0, S8
3DD0A6:  STR.W           R2, [R4,#0x8AC]
3DD0AA:  LDR             R2, [SP,#0x118+var_88]
3DD0AC:  VLDR            D16, [SP,#0x118+var_90]
3DD0B0:  STR.W           R2, [R4,#0x8B8]
3DD0B4:  ADD.W           R2, R4, #0x8B0
3DD0B8:  VSTR            D16, [R2]
3DD0BC:  ADDW            R2, R4, #0x8AC; float
3DD0C0:  VMOV            R1, S2; float
3DD0C4:  VSTR            S4, [R4,#0xE8]
3DD0C8:  VMOV            R0, S0; this
3DD0CC:  VLDR            S24, [R2]
3DD0D0:  VMUL.F32        S6, S2, S2
3DD0D4:  VMUL.F32        S8, S0, S0
3DD0D8:  VADD.F32        S6, S8, S6
3DD0DC:  VSQRT.F32       S22, S6
3DD0E0:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
3DD0E4:  VSUB.F32        S0, S20, S24
3DD0E8:  STR.W           R0, [R4,#0x100]
3DD0EC:  VMOV            R2, S22; float
3DD0F0:  VMOV            R1, S0; float
3DD0F4:  MOV             R0, R2; this
3DD0F6:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
3DD0FA:  STR.W           R0, [R4,#0xFC]
3DD0FE:  ADD             R0, SP, #0x118+var_80; this
3DD100:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3DD104:  LDRB.W          R0, [R4,#0x29]
3DD108:  CMP             R0, #0
3DD10A:  ITTTT NE
3DD10C:  MOVNE           R0, #0
3DD10E:  STRDNE.W        R0, R0, [SP,#0x118+var_90]
3DD112:  MOVNE.W         R0, #0x3F800000
3DD116:  STRNE           R0, [SP,#0x118+var_88]
3DD118:  B               loc_3DD3B0
3DD11A:  VCMP.F32        S0, #0.0
3DD11E:  VMRS            APSR_nzcv, FPSCR
3DD122:  BNE             loc_3DD130
3DD124:  VLDR            S0, =0.0
3DD128:  B               loc_3DD138
3DD12A:  VLDR            S18, [SP,#0x118+var_B0]
3DD12E:  B               loc_3DD46A
3DD130:  VSUB.F32        S2, S0, S22
3DD134:  VDIV.F32        S0, S2, S0
3DD138:  VMUL.F32        S0, S0, S16
3DD13C:  VMOV            R0, S0; x
3DD140:  BLX             cosf
3DD144:  VMOV.F32        S0, #0.5
3DD148:  ADDW            R1, R4, #0x838
3DD14C:  VMOV            S2, R0
3DD150:  ADDW            R0, R4, #0x83C
3DD154:  ADDW            R6, R4, #0x85C
3DD158:  ADD.W           R5, R4, #0x860
3DD15C:  VLDR            S4, [R0]
3DD160:  ADDW            R0, R4, #0x814
3DD164:  VLDR            S6, [R0]
3DD168:  ADDW            R0, R4, #0x81C
3DD16C:  VMUL.F32        S2, S2, S0
3DD170:  VLDR            S8, [R0]
3DD174:  ADDW            R0, R4, #0x818
3DD178:  VSUB.F32        S22, S0, S2
3DD17C:  VLDR            S0, [R1]
3DD180:  ADD.W           R1, R4, #0x840
3DD184:  VLDR            S2, [R1]
3DD188:  ADDW            R1, R4, #0x864
3DD18C:  VMUL.F32        S0, S0, S22
3DD190:  VMUL.F32        S2, S22, S2
3DD194:  VMUL.F32        S4, S4, S22
3DD198:  VADD.F32        S0, S0, S6
3DD19C:  VLDR            S6, [R0]
3DD1A0:  VADD.F32        S8, S2, S8
3DD1A4:  LDRB.W          R0, [R4,#0x29]
3DD1A8:  VADD.F32        S2, S4, S6
3DD1AC:  CMP             R0, #0
3DD1AE:  VSTR            S0, [R6]
3DD1B2:  VSTR            S8, [R1]
3DD1B6:  VSTR            S2, [R5]
3DD1BA:  VLDR            S18, [SP,#0x118+var_B0]
3DD1BE:  STR.W           R11, [SP,#0x118+var_F0]
3DD1C2:  BEQ             loc_3DD228
3DD1C4:  VLDR            S24, [SP,#0x118+var_B0+4]
3DD1C8:  VSUB.F32        S0, S0, S18
3DD1CC:  VLDR            S26, =1.3
3DD1D0:  VSUB.F32        S2, S2, S24
3DD1D4:  VMUL.F32        S4, S0, S0
3DD1D8:  VMUL.F32        S6, S2, S2
3DD1DC:  VADD.F32        S4, S4, S6
3DD1E0:  VSQRT.F32       S4, S4
3DD1E4:  VCMPE.F32       S4, S26
3DD1E8:  VMRS            APSR_nzcv, FPSCR
3DD1EC:  BGE             loc_3DD22C
3DD1EE:  VMOV            R0, S0; this
3DD1F2:  VMOV            R1, S2; float
3DD1F6:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
3DD1FA:  MOV             R8, R0
3DD1FC:  BLX             cosf
3DD200:  VMOV            S28, R0
3DD204:  MOV             R0, R8; x
3DD206:  BLX             sinf
3DD20A:  VMOV            S0, R0
3DD20E:  VMUL.F32        S2, S28, S26
3DD212:  VMUL.F32        S0, S0, S26
3DD216:  VADD.F32        S2, S18, S2
3DD21A:  VADD.F32        S0, S24, S0
3DD21E:  VSTR            S2, [R6]
3DD222:  VSTR            S0, [R5]
3DD226:  B               loc_3DD22C
3DD228:  VLDR            S24, [SP,#0x118+var_B0+4]
3DD22C:  VLDR            S0, [R4,#0x110]
3DD230:  ADD.W           R1, R4, #0x850
3DD234:  VLDR            S2, [R4,#0x16C]
3DD238:  ADDW            R0, R4, #0x854
3DD23C:  VMUL.F32        S0, S22, S0
3DD240:  VLDR            S4, [R1]
3DD244:  ADDW            R1, R4, #0x858
3DD248:  VLDR            S8, [R0]
3DD24C:  VMUL.F32        S4, S22, S4
3DD250:  ADDW            R0, R4, #0x82C
3DD254:  VLDR            S6, [R1]
3DD258:  VMUL.F32        S8, S22, S8
3DD25C:  VLDR            S10, [R0]
3DD260:  ADDW            R0, R4, #0x834
3DD264:  VMUL.F32        S6, S22, S6
3DD268:  ADDW            R5, R4, #0x874
3DD26C:  ADDW            R1, R4, #0x868
3DD270:  ADD.W           R2, R4, #0x8B0
3DD274:  VADD.F32        S0, S2, S0
3DD278:  VLDR            S2, [R0]
3DD27C:  ADD.W           R0, R4, #0x830
3DD280:  VADD.F32        S4, S4, S10
3DD284:  VLDR            S10, [R0]
3DD288:  ADDW            R0, R4, #0x87C
3DD28C:  VADD.F32        S2, S6, S2
3DD290:  VADD.F32        S6, S8, S10
3DD294:  VCMP.F32        S0, #0.0
3DD298:  VMRS            APSR_nzcv, FPSCR
3DD29C:  IT EQ
3DD29E:  VMOVEQ.F32      S0, S20
3DD2A2:  VSTR            S4, [R5]
3DD2A6:  VSTR            S2, [R0]
3DD2AA:  ADDW            R0, R4, #0x878
3DD2AE:  VSTR            S6, [R0]
3DD2B2:  VSTR            S0, [R4,#0x10C]
3DD2B6:  LDR             R0, [R6,#8]
3DD2B8:  VLDR            D16, [R6]
3DD2BC:  STR             R0, [SP,#0x118+var_68]
3DD2BE:  VLDR            S20, [SP,#0x118+var_68]
3DD2C2:  VSTR            D16, [SP,#0x118+var_70]
3DD2C6:  VLDR            S2, [SP,#0x118+var_A8]
3DD2CA:  VLDR            S4, [SP,#0x118+var_70]
3DD2CE:  VLDR            S6, [SP,#0x118+var_70+4]
3DD2D2:  VSUB.F32        S2, S2, S20
3DD2D6:  VSUB.F32        S8, S18, S4
3DD2DA:  LDR             R0, [SP,#0x118+var_68]
3DD2DC:  VSUB.F32        S10, S24, S6
3DD2E0:  VLDR            D16, [SP,#0x118+var_70]
3DD2E4:  VSTR            S2, [SP,#0x118+var_78]
3DD2E8:  VSTR            S8, [SP,#0x118+var_80]
3DD2EC:  VSTR            S10, [SP,#0x118+var_80+4]
3DD2F0:  VLDR            D17, [R1]
3DD2F4:  STR.W           R0, [R4,#0x8A0]
3DD2F8:  LDR.W           R0, [R4,#0x870]
3DD2FC:  STR.W           R0, [R4,#0x8AC]
3DD300:  ADDW            R0, R4, #0x898
3DD304:  VSTR            D16, [R0]
3DD308:  ADDW            R0, R4, #0x8A4
3DD30C:  VSTR            D17, [R0]
3DD310:  LDR.W           R1, [R4,#0x87C]
3DD314:  STR.W           R1, [R4,#0x8B8]
3DD318:  ADDW            R1, R4, #0x8A8
3DD31C:  VLDR            S8, [R0]
3DD320:  VLDR            S2, [R1]
3DD324:  VSUB.F32        S4, S4, S8
3DD328:  VLDR            D16, [R5]
3DD32C:  VSUB.F32        S2, S6, S2
3DD330:  VSTR            D16, [R2]
3DD334:  ADDW            R2, R4, #0x8AC; float
3DD338:  VSTR            S0, [R4,#0xE8]
3DD33C:  VLDR            S24, [R2]
3DD340:  VMOV            R0, S4; this
3DD344:  VMOV            R1, S2; float
3DD348:  VMUL.F32        S6, S2, S2
3DD34C:  VMUL.F32        S8, S4, S4
3DD350:  VADD.F32        S6, S8, S6
3DD354:  VSQRT.F32       S22, S6
3DD358:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
3DD35C:  VSUB.F32        S0, S20, S24
3DD360:  STR.W           R0, [R4,#0x100]
3DD364:  VMOV            R2, S22; float
3DD368:  VMOV            R1, S0; float
3DD36C:  MOV             R0, R2; this
3DD36E:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
3DD372:  STR.W           R0, [R4,#0xFC]
3DD376:  ADD             R0, SP, #0x118+var_80; this
3DD378:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3DD37C:  ADD             R0, SP, #0x118+var_70
3DD37E:  ADD.W           R9, R4, #0x10C
3DD382:  ADD.W           R11, R0, #8
3DD386:  ORR.W           R6, R0, #4
3DD38A:  LDRB.W          R0, [R4,#0x29]
3DD38E:  CBZ             R0, loc_3DD39E
3DD390:  MOVS            R0, #0
3DD392:  STRD.W          R0, R0, [SP,#0x118+var_90]
3DD396:  MOV.W           R0, #0x3F800000
3DD39A:  STR             R0, [SP,#0x118+var_88]
3DD39C:  B               loc_3DD3AA
3DD39E:  VLDR            D16, [R5]
3DD3A2:  LDR             R0, [R5,#8]
3DD3A4:  STR             R0, [SP,#0x118+var_88]
3DD3A6:  VSTR            D16, [SP,#0x118+var_90]
3DD3AA:  ADD             R0, SP, #0x118+var_90; this
3DD3AC:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3DD3B0:  LDRB.W          R0, [R4,#0x57]
3DD3B4:  ADD.W           R0, R0, R0,LSL#5
3DD3B8:  ADD.W           R0, R4, R0,LSL#4
3DD3BC:  LDRH.W          R0, [R0,#0x17E]
3DD3C0:  CMP             R0, #1
3DD3C2:  IT NE
3DD3C4:  CMPNE           R0, #0x25 ; '%'
3DD3C6:  BNE             loc_3DD404
3DD3C8:  ADD             R5, SP, #0x118+var_80
3DD3CA:  MOV             R0, R5; this
3DD3CC:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3DD3D0:  MOVS            R1, #0
3DD3D2:  MOVS            R0, #0
3DD3D4:  MOVT            R1, #0xBF80
3DD3D8:  STR             R0, [SP,#0x118+var_A0+4]
3DD3DA:  STR             R1, [SP,#0x118+var_A0]
3DD3DC:  ADD             R2, SP, #0x118+var_A0
3DD3DE:  STR             R0, [SP,#0x118+var_98]
3DD3E0:  ADD             R0, SP, #0x118+var_E8; CVector *
3DD3E2:  MOV             R1, R5; CVector *
3DD3E4:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3DD3E8:  LDR             R0, [SP,#0x118+var_E0]
3DD3EA:  STR             R0, [SP,#0x118+var_88]
3DD3EC:  ADD             R0, SP, #0x118+var_90
3DD3EE:  VLDR            D16, [SP,#0x118+var_E8]
3DD3F2:  VSTR            D16, [SP,#0x118+var_90]
3DD3F6:  B               loc_3DD450
3DD3F8:  DCFS 0.0
3DD3FC:  DCFS 1.3
3DD400:  DCD TheCamera_ptr - 0x3DC84A
3DD404:  ADD.W           R8, SP, #0x118+var_80
3DD408:  MOV             R0, R8; this
3DD40A:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3DD40E:  STR             R6, [SP,#0x118+var_F4]
3DD410:  ADD             R6, SP, #0x118+var_90
3DD412:  MOV             R0, R6; this
3DD414:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3DD418:  ADD             R0, SP, #0x118+var_E8; CVector *
3DD41A:  MOV             R1, R8; CVector *
3DD41C:  MOV             R2, R6
3DD41E:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3DD422:  ADD             R5, SP, #0x118+var_A0
3DD424:  LDR             R0, [SP,#0x118+var_E0]
3DD426:  VLDR            D16, [SP,#0x118+var_E8]
3DD42A:  STR             R0, [SP,#0x118+var_98]
3DD42C:  MOV             R0, R5; this
3DD42E:  VSTR            D16, [SP,#0x118+var_A0]
3DD432:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3DD436:  ADD             R0, SP, #0x118+var_E8; CVector *
3DD438:  MOV             R1, R5; CVector *
3DD43A:  MOV             R2, R8
3DD43C:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3DD440:  VLDR            D16, [SP,#0x118+var_E8]
3DD444:  LDR             R0, [SP,#0x118+var_E0]
3DD446:  STR             R0, [SP,#0x118+var_88]
3DD448:  MOV             R0, R6; this
3DD44A:  VSTR            D16, [SP,#0x118+var_90]
3DD44E:  LDR             R6, [SP,#0x118+var_F4]
3DD450:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3DD454:  VLDR            S0, [R11]
3DD458:  LDR.W           R11, [SP,#0x118+var_F0]
3DD45C:  VLDR            S2, [R6]
3DD460:  VLDR            S4, [SP,#0x118+var_70]
3DD464:  LDR.W           R0, [R9]
3DD468:  STR             R0, [SP,#0x118+var_B4]
3DD46A:  VLDR            S6, [SP,#0x118+var_B0+4]
3DD46E:  VSUB.F32        S18, S4, S18
3DD472:  VLDR            S8, [SP,#0x118+var_A8]
3DD476:  VSUB.F32        S20, S2, S6
3DD47A:  VSUB.F32        S0, S0, S8
3DD47E:  VMUL.F32        S2, S18, S18
3DD482:  VMUL.F32        S4, S20, S20
3DD486:  VMOV            R1, S0; float
3DD48A:  VADD.F32        S2, S2, S4
3DD48E:  VSQRT.F32       S2, S2
3DD492:  VMOV            R0, S2; this
3DD496:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
3DD49A:  VMOV            R2, S18; float
3DD49E:  STR             R0, [SP,#0x118+var_E8]
3DD4A0:  VMOV            R1, S20; float
3DD4A4:  MOV             R0, R2; this
3DD4A6:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
3DD4AA:  STR             R0, [SP,#0x118+var_B8]
3DD4AC:  ADD             R2, SP, #0x118+var_B8
3DD4AE:  LDRB.W          R0, [R4,#0x57]
3DD4B2:  ADD             R3, SP, #0x118+var_E8
3DD4B4:  ADD             R1, SP, #0x118+var_B4
3DD4B6:  STRD.W          R3, R2, [SP,#0x118+var_118]; float *
3DD4BA:  STR             R1, [SP,#0x118+var_110]; CVector *
3DD4BC:  ADD             R1, SP, #0x118+var_70; CVector *
3DD4BE:  ADD.W           R0, R0, R0,LSL#5
3DD4C2:  ADD             R2, SP, #0x118+var_B0; CVector *
3DD4C4:  ADD             R3, SP, #0x118+var_90; CVector *
3DD4C6:  ADD.W           R0, R4, R0,LSL#4
3DD4CA:  ADD.W           R0, R0, #0x170; this
3DD4CE:  BLX             j__ZN4CCam19KeepTrackOfTheSpeedERK7CVectorS2_S2_RKfS4_S4_; CCam::KeepTrackOfTheSpeed(CVector const&,CVector const&,CVector const&,float const&,float const&,float const&)
3DD4D2:  LDRB.W          R0, [R4,#0x56]
3DD4D6:  CBZ             R0, loc_3DD4F6
3DD4D8:  LDRB.W          R0, [R4,#0x2A]
3DD4DC:  CBNZ            R0, loc_3DD4F6
3DD4DE:  LDRB.W          R0, [R4,#0x29]; this
3DD4E2:  CBZ             R0, loc_3DD4F6
3DD4E4:  BLX             j__ZN10CCullZones18CamStairsForPlayerEv; CCullZones::CamStairsForPlayer(void)
3DD4E8:  CMP             R0, #0
3DD4EA:  ITT EQ
3DD4EC:  LDRBEQ.W        R0, [R4,#0x24]
3DD4F0:  CMPEQ           R0, #0
3DD4F2:  BEQ.W           loc_3DDB8E
3DD4F6:  LDR.W           R0, =(_ZN6CMBlur9DrunknessE_ptr - 0x3DD4FE)
3DD4FA:  ADD             R0, PC; _ZN6CMBlur9DrunknessE_ptr
3DD4FC:  LDR             R0, [R0]; CMBlur::Drunkness ...
3DD4FE:  VLDR            S0, [R0]
3DD502:  VCMPE.F32       S0, #0.0
3DD506:  VMRS            APSR_nzcv, FPSCR
3DD50A:  BLE.W           loc_3DD63C
3DD50E:  LDR.W           R8, =(unk_952EF0 - 0x3DD51A)
3DD512:  VLDR            S4, =180.0
3DD516:  ADD             R8, PC; unk_952EF0
3DD518:  VLDR            S2, [R8]
3DD51C:  VMUL.F32        S2, S2, S16
3DD520:  VDIV.F32        S2, S2, S4
3DD524:  VMOV            R5, S2
3DD528:  VLDR            S2, =-0.02
3DD52C:  VMUL.F32        S18, S0, S2
3DD530:  MOV             R0, R5; x
3DD532:  BLX             cosf
3DD536:  VMOV            S20, R0
3DD53A:  MOV             R0, R5; x
3DD53C:  BLX             sinf
3DD540:  VMOV            S22, R0
3DD544:  VLDR            S4, [SP,#0x118+var_70]
3DD548:  VMUL.F32        S0, S18, S20
3DD54C:  VLDR            S6, [SP,#0x118+var_68]
3DD550:  VMUL.F32        S2, S18, S22
3DD554:  ADD.W           R9, SP, #0x118+var_90
3DD558:  MOV             R0, R9; this
3DD55A:  VADD.F32        S0, S4, S0
3DD55E:  VADD.F32        S2, S6, S2
3DD562:  VSTR            S0, [SP,#0x118+var_70]
3DD566:  VSTR            S2, [SP,#0x118+var_68]
3DD56A:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3DD56E:  LDR.W           R0, =(_ZN6CMBlur9DrunknessE_ptr - 0x3DD57A)
3DD572:  VLDR            S0, =0.05
3DD576:  ADD             R0, PC; _ZN6CMBlur9DrunknessE_ptr
3DD578:  VLDR            S4, [SP,#0x118+var_90]
3DD57C:  VLDR            S6, [SP,#0x118+var_90+4]
3DD580:  LDR             R6, [R0]; CMBlur::Drunkness ...
3DD582:  MOV             R0, R9; this
3DD584:  VLDR            S2, [R6]
3DD588:  VMUL.F32        S0, S2, S0
3DD58C:  VMUL.F32        S2, S20, S0
3DD590:  VMUL.F32        S0, S22, S0
3DD594:  VADD.F32        S2, S4, S2
3DD598:  VADD.F32        S0, S0, S6
3DD59C:  VSTR            S2, [SP,#0x118+var_90]
3DD5A0:  VSTR            S0, [SP,#0x118+var_90+4]
3DD5A4:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3DD5A8:  ADD             R5, SP, #0x118+var_80
3DD5AA:  MOV             R0, R5; this
3DD5AC:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3DD5B0:  VLDR            S0, =-0.1
3DD5B4:  MOV             R0, R5; this
3DD5B6:  VLDR            S2, [R6]
3DD5BA:  VLDR            S4, [SP,#0x118+var_80]
3DD5BE:  VMUL.F32        S0, S2, S0
3DD5C2:  VLDR            S6, [SP,#0x118+var_80+4]
3DD5C6:  VMUL.F32        S2, S20, S0
3DD5CA:  VMUL.F32        S0, S22, S0
3DD5CE:  VADD.F32        S2, S4, S2
3DD5D2:  VADD.F32        S0, S0, S6
3DD5D6:  VSTR            S2, [SP,#0x118+var_80]
3DD5DA:  VSTR            S0, [SP,#0x118+var_80+4]
3DD5DE:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3DD5E2:  ADD             R0, SP, #0x118+var_E8; CVector *
3DD5E4:  MOV             R1, R5; CVector *
3DD5E6:  MOV             R2, R9
3DD5E8:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3DD5EC:  ADD             R6, SP, #0x118+var_A0
3DD5EE:  LDR             R0, [SP,#0x118+var_E0]
3DD5F0:  VLDR            D16, [SP,#0x118+var_E8]
3DD5F4:  STR             R0, [SP,#0x118+var_98]
3DD5F6:  MOV             R0, R6; this
3DD5F8:  VSTR            D16, [SP,#0x118+var_A0]
3DD5FC:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3DD600:  ADD             R0, SP, #0x118+var_E8; CVector *
3DD602:  MOV             R1, R6; CVector *
3DD604:  MOV             R2, R5
3DD606:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3DD60A:  LDR             R0, [SP,#0x118+var_E0]
3DD60C:  VLDR            D16, [SP,#0x118+var_E8]
3DD610:  STR             R0, [SP,#0x118+var_88]
3DD612:  MOV             R0, R9; this
3DD614:  VSTR            D16, [SP,#0x118+var_90]
3DD618:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3DD61C:  VMOV.F32        S0, #5.0
3DD620:  VLDR            S2, [R8]
3DD624:  ADD             R0, SP, #0x118+var_70
3DD626:  ORR.W           R5, R5, #4
3DD62A:  ORR.W           R9, R9, #4
3DD62E:  VADD.F32        S0, S2, S0
3DD632:  VSTR            S0, [R8]
3DD636:  ADD.W           R8, R0, #8
3DD63A:  B               loc_3DD64E
3DD63C:  ADD             R0, SP, #0x118+var_70
3DD63E:  ADD.W           R8, R0, #8
3DD642:  ADD             R0, SP, #0x118+var_90
3DD644:  ORR.W           R9, R0, #4
3DD648:  ADD             R0, SP, #0x118+var_80
3DD64A:  ORR.W           R5, R0, #4
3DD64E:  ADD             R0, SP, #0x118+var_E8; CVector *
3DD650:  ADD             R1, SP, #0x118+var_90; CVector *
3DD652:  ADD             R2, SP, #0x118+var_80
3DD654:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3DD658:  ADD             R2, SP, #0x118+var_E8
3DD65A:  VLDR            S2, =-0.00028
3DD65E:  VLDR            S18, =0.0
3DD662:  VMOV.F32        S22, #2.0
3DD666:  LDM             R2, {R0-R2}
3DD668:  LDR             R6, [SP,#0x118+var_90]
3DD66A:  LDR             R3, [SP,#0x118+var_80]
3DD66C:  STR.W           R6, [R4,#0x91C]
3DD670:  LDR             R6, [R5]
3DD672:  LDR.W           R5, [R9]
3DD676:  STR.W           R0, [R4,#0x8FC]
3DD67A:  STR.W           R1, [R4,#0x900]
3DD67E:  STR.W           R2, [R4,#0x904]
3DD682:  STR.W           R5, [R4,#0x920]
3DD686:  LDR             R0, [SP,#0x118+var_78]
3DD688:  STR.W           R3, [R4,#0x90C]
3DD68C:  STR.W           R6, [R4,#0x910]
3DD690:  STR.W           R0, [R4,#0x914]
3DD694:  LDR             R0, [SP,#0x118+var_88]
3DD696:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3DD6A4)
3DD69A:  STR.W           R0, [R4,#0x924]
3DD69E:  LDR             R0, [SP,#0x118+var_70]
3DD6A0:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3DD6A2:  STR.W           R0, [R4,#0x92C]
3DD6A6:  LDR             R0, [SP,#0x118+var_70+4]
3DD6A8:  STR.W           R0, [R4,#0x930]
3DD6AC:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
3DD6AE:  LDR.W           R0, [R8]
3DD6B2:  STR.W           R0, [R4,#0x934]
3DD6B6:  LDR             R0, [R4,#0x58]
3DD6B8:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
3DD6BA:  VLDR            S26, =0.1
3DD6BE:  SUBS            R0, R1, R0
3DD6C0:  VMOV            S0, R0
3DD6C4:  VCVT.F32.U32    S0, S0
3DD6C8:  VLDR            S24, [R4,#0x128]
3DD6CC:  VMUL.F32        S20, S0, S2
3DD6D0:  BLX             rand
3DD6D4:  VADD.F32        S0, S24, S20
3DD6D8:  UBFX.W          R1, R0, #8, #4
3DD6DC:  UBFX.W          R2, R0, #4, #4; bool
3DD6E0:  AND.W           R0, R0, #0xF
3DD6E4:  SUBS            R0, #7
3DD6E6:  ADDW            R8, R4, #0x934
3DD6EA:  ADDW            R6, R4, #0x92C
3DD6EE:  ADD.W           R5, R4, #0x930
3DD6F2:  VMIN.F32        D16, D0, D11
3DD6F6:  VMOV            S0, R0
3DD6FA:  SUBS            R0, R2, #7
3DD6FC:  VCVT.F32.S32    S2, S0
3DD700:  VMAX.F32        D0, D16, D9
3DD704:  VMOV            S4, R0
3DD708:  SUBS            R0, R1, #7
3DD70A:  VMOV            S8, R0
3DD70E:  VCVT.F32.S32    S4, S4
3DD712:  VMUL.F32        S6, S0, S26
3DD716:  VCVT.F32.S32    S8, S8
3DD71A:  VLDR            S10, [R6]
3DD71E:  VLDR            S12, [R5]
3DD722:  VLDR            S14, [R8]
3DD726:  VMUL.F32        S2, S6, S2
3DD72A:  VMUL.F32        S4, S6, S4
3DD72E:  VMUL.F32        S8, S6, S8
3DD732:  VCMPE.F32       S6, #0.0
3DD736:  VMRS            APSR_nzcv, FPSCR
3DD73A:  VADD.F32        S2, S10, S2
3DD73E:  VADD.F32        S4, S12, S4
3DD742:  VADD.F32        S8, S14, S8
3DD746:  VSTR            S2, [R6]
3DD74A:  VSTR            S4, [R5]
3DD74E:  VSTR            S8, [R8]
3DD752:  BLE             loc_3DD778
3DD754:  LDR.W           R0, [R4,#0x8C]
3DD758:  CMP             R0, #1
3DD75A:  BEQ             loc_3DD778
3DD75C:  VLDR            S2, =255.0
3DD760:  VMUL.F32        S0, S0, S2
3DD764:  VCVT.S32.F32    S0, S0
3DD768:  VMOV            R0, S0
3DD76C:  ADDS            R0, #0x19
3DD76E:  CMP             R0, #0x96
3DD770:  IT GE
3DD772:  MOVGE           R0, #0x96
3DD774:  STR.W           R0, [R4,#0xA0]
3DD778:  LDRB.W          R0, [R4,#0x57]
3DD77C:  ADD.W           R0, R0, R0,LSL#5
3DD780:  ADD.W           R0, R4, R0,LSL#4
3DD784:  LDRH.W          R0, [R0,#0x17E]
3DD788:  CMP             R0, #0x10
3DD78A:  BNE             loc_3DD810
3DD78C:  MOV.W           R0, #0xFFFFFFFF; int
3DD790:  MOVS            R1, #0; bool
3DD792:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3DD796:  CBZ             R0, loc_3DD810
3DD798:  MOV.W           R0, #0xFFFFFFFF; int
3DD79C:  MOVS            R1, #0; bool
3DD79E:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3DD7A2:  LDR             R0, [R0,#0x14]
3DD7A4:  VLDR            S0, =0.2
3DD7A8:  VLDR            S2, [R0,#0x28]
3DD7AC:  VCMPE.F32       S2, S0
3DD7B0:  VMRS            APSR_nzcv, FPSCR
3DD7B4:  BGE             loc_3DD810
3DD7B6:  ADR.W           R0, dword_3DDBF0
3DD7BA:  VLD1.64         {D16-D17}, [R0@128]
3DD7BE:  MOVS            R0, #0xF0
3DD7C0:  STR.W           R0, [R4,#0x9C]
3DD7C4:  ADD.W           R0, R4, #0x80
3DD7C8:  VST1.32         {D16-D17}, [R0]
3DD7CC:  MOVS            R0, #1
3DD7CE:  B               loc_3DD81C
3DD7D0:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x3DC8DA
3DD7D4:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x3DC920
3DD7D8:  DCD _ZN5CDraw9FadeValueE_ptr - 0x3DC95A
3DD7DC:  DCD Scene_ptr - 0x3DC9C8
3DD7E0:  DCD _ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3DCA86
3DD7E4:  DCD Scene_ptr - 0x3DCAAE
3DD7E8:  DCD _ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3DCB40
3DD7EC:  DCFS 180.0
3DD7F0:  DCFS -0.02
3DD7F4:  DCFS 0.05
3DD7F8:  DCFS -0.1
3DD7FC:  DCFS -0.00028
3DD800:  DCFS 0.1
3DD804:  DCFS 255.0
3DD808:  DCFS 0.2
3DD80C:  DCD _ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3DCC7C
3DD810:  LDR.W           R0, =(byte_952EF4 - 0x3DD818)
3DD814:  ADD             R0, PC; byte_952EF4
3DD816:  LDRB            R0, [R0]
3DD818:  CBZ             R0, loc_3DD824
3DD81A:  MOVS            R0, #0
3DD81C:  LDR.W           R1, =(byte_952EF4 - 0x3DD824)
3DD820:  ADD             R1, PC; byte_952EF4
3DD822:  STRB            R0, [R1]
3DD824:  LDR             R0, [SP,#0x118+var_B4]; this
3DD826:  LDRB.W          R1, [R4,#0x3B]; float
3DD82A:  BLX             j__ZN5CDraw6SetFOVEfb; CDraw::SetFOV(float,bool)
3DD82E:  MOV             R0, R4; this
3DD830:  MOVS            R1, #0; bool
3DD832:  MOVS            R2, #1; bool
3DD834:  BLX             j__ZN7CCamera22CalculateDerivedValuesEbb; CCamera::CalculateDerivedValues(bool,bool)
3DD838:  MOV             R0, R4; this
3DD83A:  MOVS            R1, #0; bool
3DD83C:  BLX             j__ZN7CCamera23CopyCameraMatrixToRWCamEb; CCamera::CopyCameraMatrixToRWCam(bool)
3DD840:  LDR.W           R0, [R4,#0x92C]
3DD844:  LDR.W           R1, [R4,#0x930]
3DD848:  LDR.W           R2, [R4,#0x934]
3DD84C:  STR.W           R0, [R4,#0x88C]
3DD850:  MOV             R0, R4; this
3DD852:  STR.W           R1, [R4,#0x890]
3DD856:  STR.W           R2, [R4,#0x894]
3DD85A:  BLX             j__ZN7CCamera20UpdateSoundDistancesEv; CCamera::UpdateSoundDistances(void)
3DD85E:  LDR.W           R0, =(_ZN12CCutsceneMgr10ms_runningE_ptr - 0x3DD866)
3DD862:  ADD             R0, PC; _ZN12CCutsceneMgr10ms_runningE_ptr
3DD864:  LDR             R0, [R0]; CCutsceneMgr::ms_running ...
3DD866:  LDRB            R0, [R0]; CCutsceneMgr::ms_running
3DD868:  CBZ             R0, loc_3DD87A
3DD86A:  LDR             R0, =(_ZN12CCutsceneMgr19ms_useLodMultiplierE_ptr - 0x3DD870)
3DD86C:  ADD             R0, PC; _ZN12CCutsceneMgr19ms_useLodMultiplierE_ptr
3DD86E:  LDR             R0, [R0]; CCutsceneMgr::ms_useLodMultiplier ...
3DD870:  LDRB            R0, [R0]; CCutsceneMgr::ms_useLodMultiplier
3DD872:  CBNZ            R0, loc_3DD87A
3DD874:  VMOV.F32        S0, #1.0
3DD878:  B               loc_3DD88C
3DD87A:  LDR             R0, =(_ZN5CDraw7ms_fFOVE_ptr - 0x3DD884)
3DD87C:  VLDR            S0, =70.0
3DD880:  ADD             R0, PC; _ZN5CDraw7ms_fFOVE_ptr
3DD882:  LDR             R0, [R0]; CDraw::ms_fFOV ...
3DD884:  VLDR            S2, [R0]
3DD888:  VDIV.F32        S0, S0, S2
3DD88C:  LDR             R0, =(_ZN9CRenderer15ms_lodDistScaleE_ptr - 0x3DD89A)
3DD88E:  VMOV.F32        S6, #0.875
3DD892:  VLDR            S2, =0.8
3DD896:  ADD             R0, PC; _ZN9CRenderer15ms_lodDistScaleE_ptr
3DD898:  LDR             R0, [R0]; CRenderer::ms_lodDistScale ...
3DD89A:  VLDR            S4, [R0]
3DD89E:  LDR             R0, =(Scene_ptr - 0x3DD8AC)
3DD8A0:  VMUL.F32        S2, S4, S2
3DD8A4:  VMUL.F32        S4, S0, S6
3DD8A8:  ADD             R0, PC; Scene_ptr
3DD8AA:  LDR             R0, [R0]; Scene
3DD8AC:  VMUL.F32        S0, S0, S2
3DD8B0:  VSTR            S0, [R4,#0xEC]
3DD8B4:  VSTR            S4, [R4,#0xF0]
3DD8B8:  LDR             R0, [R0,#(dword_9FC93C - 0x9FC938)]
3DD8BA:  VLDR            S0, =100.0
3DD8BE:  VLDR            S2, [R0,#0x84]
3DD8C2:  VMUL.F32        S2, S2, S0
3DD8C6:  VCVT.S32.F32    S2, S2
3DD8CA:  VCVT.F32.S32    S2, S2
3DD8CE:  VDIV.F32        S0, S2, S0
3DD8D2:  VMOV            R1, S0
3DD8D6:  BLX             j__Z23RwCameraSetFarClipPlaneP8RwCameraf; RwCameraSetFarClipPlane(RwCamera *,float)
3DD8DA:  LDR             R0, =(_ZN5CDraw13ms_fNearClipZE_ptr - 0x3DD8E2)
3DD8DC:  LDR             R1, =(_ZN5CDraw12ms_fFarClipZE_ptr - 0x3DD8E8)
3DD8DE:  ADD             R0, PC; _ZN5CDraw13ms_fNearClipZE_ptr
3DD8E0:  LDR.W           R2, [R4,#0x8D8]
3DD8E4:  ADD             R1, PC; _ZN5CDraw12ms_fFarClipZE_ptr
3DD8E6:  LDR             R0, [R0]; CDraw::ms_fNearClipZ ...
3DD8E8:  LDR             R1, [R1]; CDraw::ms_fFarClipZ ...
3DD8EA:  LDRD.W          R3, R2, [R2,#0x80]
3DD8EE:  STR             R3, [R0]; CDraw::ms_fNearClipZ
3DD8F0:  STR             R2, [R1]; CDraw::ms_fFarClipZ
3DD8F2:  LDRB.W          R0, [R4,#0x27]
3DD8F6:  CBNZ            R0, loc_3DD902
3DD8F8:  LDRB.W          R0, [R4,#0x28]
3DD8FC:  CMP             R0, #1
3DD8FE:  BNE.W           loc_3DDAF6
3DD902:  LDR.W           R2, [R4,#0x92C]
3DD906:  ADD.W           LR, R4, #0x7C0
3DD90A:  LDR.W           R1, [R4,#0x930]
3DD90E:  ADD.W           R12, R4, #0x7C8
3DD912:  LDR.W           R0, [R4,#0x934]
3DD916:  ADDW            R6, R4, #0x7C4
3DD91A:  VMOV            S6, R2
3DD91E:  MOVS            R3, #0
3DD920:  VMOV            S2, R1
3DD924:  STRB.W          R3, [R4,#0x27]
3DD928:  VMOV            S0, R0
3DD92C:  STR.W           R2, [R4,#0x7C0]
3DD930:  VMOV.F32        S8, S2
3DD934:  STR.W           R1, [R4,#0x7C4]
3DD938:  VMOV.F32        S4, S0
3DD93C:  STR.W           R0, [R4,#0x7C8]
3DD940:  VMOV.F32        S10, S6
3DD944:  VSUB.F32        S2, S8, S2
3DD948:  VSUB.F32        S6, S10, S6
3DD94C:  VSUB.F32        S0, S4, S0
3DD950:  VMUL.F32        S2, S2, S2
3DD954:  VMUL.F32        S4, S6, S6
3DD958:  VMUL.F32        S0, S0, S0
3DD95C:  VADD.F32        S2, S4, S2
3DD960:  VADD.F32        S0, S2, S0
3DD964:  VLDR            S2, [R4,#0x124]
3DD968:  LDRD.W          R5, R3, [R4,#0x90]
3DD96C:  ADDS            R3, #1
3DD96E:  STR.W           R3, [R4,#0x94]
3DD972:  CMP             R3, R5
3DD974:  VSQRT.F32       S0, S0
3DD978:  VADD.F32        S0, S2, S0
3DD97C:  VSTR            S0, [R4,#0x124]
3DD980:  BNE             loc_3DD99C
3DD982:  VMOV            S2, R3
3DD986:  MOVS            R3, #0
3DD988:  VCVT.F32.S32    S2, S2
3DD98C:  STR.W           R3, [R4,#0x124]
3DD990:  STR.W           R3, [R4,#0x94]
3DD994:  VDIV.F32        S0, S0, S2
3DD998:  VSTR            S0, [R4,#0x120]
3DD99C:  STR.W           R2, [LR]
3DD9A0:  STR             R1, [R6]
3DD9A2:  STR.W           R0, [R12]
3DD9A6:  LDRB.W          R1, [R4,#0x57]
3DD9AA:  VLDR            S0, [R4,#0x14C]
3DD9AE:  ADD.W           R0, R1, R1,LSL#5
3DD9B2:  VADD.F32        S0, S0, S16
3DD9B6:  ADD.W           R0, R4, R0,LSL#4
3DD9BA:  LDR.W           R2, [R0,#0x190]
3DD9BE:  CMP             R2, #3
3DD9C0:  ITT NE
3DD9C2:  LDRHNE.W        R2, [R0,#0x17E]
3DD9C6:  CMPNE           R2, #0x25 ; '%'
3DD9C8:  BEQ             loc_3DD9DE
3DD9CA:  VLDR            D16, [R0,#0x2F0]
3DD9CE:  LDR.W           R2, [R0,#0x2F8]
3DD9D2:  STR.W           R2, [R0,#0x2EC]
3DD9D6:  VSTR            D16, [R0,#0x2E4]
3DD9DA:  VSTR            S0, [R4,#0x14C]
3DD9DE:  LDRB.W          R2, [R4,#0x56]
3DD9E2:  CBZ             R2, loc_3DDA26
3DD9E4:  AND.W           R1, R1, #1
3DD9E8:  EOR.W           R2, R1, #1
3DD9EC:  ORR.W           R3, R2, R2,LSL#5
3DD9F0:  ADD.W           R3, R4, R3,LSL#4
3DD9F4:  LDR.W           R3, [R3,#0x364]
3DD9F8:  CMP             R3, #0
3DD9FA:  ITT NE
3DD9FC:  LDRNE.W         R6, [R11]
3DDA00:  CMPNE           R6, #0
3DDA02:  BEQ             loc_3DDA26
3DDA04:  LDRB.W          R6, [R6,#0x3A]
3DDA08:  AND.W           R6, R6, #7
3DDA0C:  CMP             R6, #3
3DDA0E:  BNE             loc_3DDA26
3DDA10:  LDRB.W          R3, [R3,#0x3A]
3DDA14:  AND.W           R3, R3, #7
3DDA18:  CMP             R3, #2
3DDA1A:  ITT NE
3DDA1C:  LDRHNE.W        R0, [R0,#0x17E]
3DDA20:  CMPNE           R0, #0x25 ; '%'
3DDA22:  BNE.W           loc_3DDB58
3DDA26:  MOVS            R0, #0
3DDA28:  STRB.W          R0, [R4,#0x2B]
3DDA2C:  STRB            R0, [R4,#0x1C]
3DDA2E:  LDR             R0, [R4,#0x14]
3DDA30:  CMP             R0, #0
3DDA32:  IT NE
3DDA34:  ADDNE.W         R10, R0, #0x30 ; '0'
3DDA38:  BEQ             loc_3DDA50
3DDA3A:  VLDR            S0, =0.4
3DDA3E:  VLDR            S6, [R0,#0x18]
3DDA42:  VLDR            S4, [R0,#0x10]
3DDA46:  VLDR            S2, [R0,#0x14]
3DDA4A:  VMUL.F32        S0, S6, S0
3DDA4E:  B               loc_3DDA70
3DDA50:  LDR             R4, [R4,#0x10]
3DDA52:  MOV             R0, R4; x
3DDA54:  BLX             sinf
3DDA58:  MOV             R5, R0
3DDA5A:  MOV             R0, R4; x
3DDA5C:  BLX             cosf
3DDA60:  VMOV            S2, R0
3DDA64:  EOR.W           R0, R5, #0x80000000
3DDA68:  VLDR            S0, =0.0
3DDA6C:  VMOV            S4, R0
3DDA70:  VLDR            S6, =0.4
3DDA74:  MOVS            R3, #0
3DDA76:  VLDR            S10, [R10,#8]
3DDA7A:  MOVS            R6, #(stderr+1)
3DDA7C:  VMUL.F32        S4, S4, S6
3DDA80:  VLDR            S8, [R10,#4]
3DDA84:  VMUL.F32        S2, S2, S6
3DDA88:  VLDR            S6, [R10]
3DDA8C:  VADD.F32        S16, S0, S10
3DDA90:  STRD.W          R6, R3, [SP,#0x118+var_118]; float *
3DDA94:  ADD             R3, SP, #0x118+var_E8; float
3DDA96:  VADD.F32        S0, S6, S4
3DDA9A:  VADD.F32        S2, S2, S8
3DDA9E:  VMOV            R2, S16; float
3DDAA2:  VMOV            R0, S0; this
3DDAA6:  VMOV            R1, S2; float
3DDAAA:  BLX             j__ZN11CWaterLevel13GetWaterLevelEfffPfbP7CVector; CWaterLevel::GetWaterLevel(float,float,float,float *,bool,CVector *)
3DDAAE:  CMP             R0, #1
3DDAB0:  BNE             loc_3DDB40
3DDAB2:  VLDR            S0, =-0.6
3DDAB6:  VLDR            S2, [SP,#0x118+var_E8]
3DDABA:  VADD.F32        S4, S16, S0
3DDABE:  VCMPE.F32       S2, S4
3DDAC2:  VMRS            APSR_nzcv, FPSCR
3DDAC6:  BLT             loc_3DDB40
3DDAC8:  VLDR            S4, =0.6
3DDACC:  VSUB.F32        S8, S2, S16
3DDAD0:  LDR             R0, =(_ZN8CWeather10WaterDepthE_ptr - 0x3DDADE)
3DDAD2:  VADD.F32        S4, S16, S4
3DDAD6:  VLDR            S6, =0.0
3DDADA:  ADD             R0, PC; _ZN8CWeather10WaterDepthE_ptr
3DDADC:  LDR             R0, [R0]; CWeather::WaterDepth ...
3DDADE:  VMAX.F32        D3, D4, D3
3DDAE2:  VCMPE.F32       S2, S4
3DDAE6:  VMRS            APSR_nzcv, FPSCR
3DDAEA:  VSTR            S6, [R0]
3DDAEE:  BLE             loc_3DDB28
3DDAF0:  VMOV.F32        S18, #1.0
3DDAF4:  B               loc_3DDB40
3DDAF6:  VLDR            S10, [R6]
3DDAFA:  ADDW            R6, R4, #0x7C4
3DDAFE:  VLDR            S4, [R8]
3DDB02:  ADD.W           R12, R4, #0x7C8
3DDB06:  VLDR            S8, [R5]
3DDB0A:  ADD.W           LR, R4, #0x7C0
3DDB0E:  VMOV            R0, S4
3DDB12:  VLDR            S0, [R12]
3DDB16:  VMOV            R1, S8
3DDB1A:  VLDR            S2, [R6]
3DDB1E:  VMOV            R2, S10
3DDB22:  VLDR            S6, [LR]
3DDB26:  B               loc_3DD944
3DDB28:  VADD.F32        S0, S2, S0
3DDB2C:  VLDR            S2, =-1.2
3DDB30:  VSUB.F32        S0, S16, S0
3DDB34:  VDIV.F32        S0, S0, S2
3DDB38:  VMOV.F32        S2, #1.0
3DDB3C:  VADD.F32        S18, S0, S2
3DDB40:  LDR             R0, =(_ZN8CWeather14UnderWaternessE_ptr - 0x3DDB46)
3DDB42:  ADD             R0, PC; _ZN8CWeather14UnderWaternessE_ptr
3DDB44:  LDR             R0, [R0]; CWeather::UnderWaterness ...
3DDB46:  VSTR            S18, [R0]
3DDB4A:  ADD             SP, SP, #0xB8
3DDB4C:  VPOP            {D8-D15}
3DDB50:  ADD             SP, SP, #4
3DDB52:  POP.W           {R8-R11}
3DDB56:  POP             {R4-R7,PC}
3DDB58:  ADD.W           R0, R2, R2,LSL#5
3DDB5C:  ADD.W           R2, R4, R0,LSL#4
3DDB60:  LDR.W           R2, [R2,#0x190]
3DDB64:  CMP             R2, #3
3DDB66:  BEQ.W           loc_3DDA26
3DDB6A:  LDR             R2, [SP,#0x118+var_EC]
3DDB6C:  ADD.W           R1, R1, R1,LSL#5
3DDB70:  ADD.W           R1, R2, R1,LSL#4
3DDB74:  ADD.W           R0, R2, R0,LSL#4
3DDB78:  VLDR            D16, [R1,#0x180]
3DDB7C:  LDR.W           R1, [R1,#0x188]
3DDB80:  STR.W           R1, [R0,#0x17C]
3DDB84:  VSTR            D16, [R0,#0x174]
3DDB88:  VSTR            S0, [R4,#0x14C]
3DDB8C:  B               loc_3DDA26
3DDB8E:  MOVS            R0, #0
3DDB90:  MOVS            R3, #1
3DDB92:  STR             R0, [SP,#0x118+var_B8]
3DDB94:  LDR.W           R1, [R11]
3DDB98:  LDR             R2, [R1,#0x14]
3DDB9A:  STRD.W          R3, R0, [SP,#0x118+var_118]
3DDB9E:  STRD.W          R0, R3, [SP,#0x118+var_110]
3DDBA2:  CMP             R2, #0
3DDBA4:  STRD.W          R0, R3, [SP,#0x118+var_108]
3DDBA8:  STRD.W          R3, R0, [SP,#0x118+var_100]
3DDBAC:  ADD.W           R0, R2, #0x30 ; '0'
3DDBB0:  IT EQ
3DDBB2:  ADDEQ           R0, R1, #4
3DDBB4:  ADD             R1, SP, #0x118+var_70
3DDBB6:  ADD             R2, SP, #0x118+var_E8
3DDBB8:  ADD             R3, SP, #0x118+var_B8
3DDBBA:  BLX             j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
3DDBBE:  CMP             R0, #1
3DDBC0:  BNE.W           loc_3DD4F6
3DDBC4:  LDR             R0, =(Scene_ptr - 0x3DDBCC)
3DDBC6:  LDR             R1, [SP,#0x118+var_E0]
3DDBC8:  ADD             R0, PC; Scene_ptr
3DDBCA:  STR             R1, [SP,#0x118+var_68]
3DDBCC:  MOVW            R1, #0xCCCD
3DDBD0:  VLDR            D16, [SP,#0x118+var_E8]
3DDBD4:  LDR             R0, [R0]; Scene
3DDBD6:  MOVT            R1, #0x3D4C
3DDBDA:  VSTR            D16, [SP,#0x118+var_70]
3DDBDE:  LDR             R0, [R0,#(dword_9FC93C - 0x9FC938)]
3DDBE0:  BLX             j__Z24RwCameraSetNearClipPlaneP8RwCameraf; RwCameraSetNearClipPlane(RwCamera *,float)
3DDBE4:  B               loc_3DD4F6
