; =========================================================
; Game Engine Function: _ZN6CRadar15DrawAreaOnRadarERK5CRectRK5CRGBAb
; Address            : 0x443C10 - 0x443EA4
; =========================================================

443C10:  PUSH            {R4-R7,LR}
443C12:  ADD             R7, SP, #0xC
443C14:  PUSH.W          {R8,R9,R11}
443C18:  SUB             SP, SP, #0xE8; CRGBA *
443C1A:  MOV             R8, R1
443C1C:  CMP             R2, #1
443C1E:  BNE.W           loc_443E2A
443C22:  LDRD.W          R1, R3, [R0]
443C26:  LDRD.W          R2, R0, [R0,#8]
443C2A:  VMOV            S5, R3
443C2E:  VMOV            S2, R2
443C32:  VMOV            S1, R0
443C36:  VMOV            S0, R1
443C3A:  LDR             R6, =(_ZN6CRadar12m_radarRangeE_ptr - 0x443C48)
443C3C:  VMOV.F32        S8, #1.0
443C40:  VMOV            S7, R3
443C44:  ADD             R6, PC; _ZN6CRadar12m_radarRangeE_ptr
443C46:  VMOV            S3, R0
443C4A:  VMOV            S6, R1
443C4E:  LDR             R0, =(dword_994EE8 - 0x443C5C)
443C50:  LDR             R6, [R6]; CRadar::m_radarRange ...
443C52:  VMOV            S4, R2
443C56:  LDR             R1, =(dword_994EEC - 0x443C62)
443C58:  ADD             R0, PC; dword_994EE8
443C5A:  VLDR            S10, [R6]
443C5E:  ADD             R1, PC; dword_994EEC
443C60:  LDR             R6, =(_ZN6CRadar16vec2DRadarOriginE_ptr - 0x443C6A)
443C62:  VDIV.F32        S12, S8, S10
443C66:  ADD             R6, PC; _ZN6CRadar16vec2DRadarOriginE_ptr
443C68:  LDR             R6, [R6]; CRadar::vec2DRadarOrigin ...
443C6A:  VLDM            R6, {S8-S9}
443C6E:  ADD             R6, SP, #0x100+var_D8
443C70:  VLD1.32         {D24[]-D25[]}, [R1@32]
443C74:  ADD             R1, SP, #0x100+var_F8
443C76:  VMOV.F32        S10, S8
443C7A:  VMOV.F32        S11, S9
443C7E:  VLD1.32         {D22[]-D23[]}, [R0@32]
443C82:  MOV             R0, R1
443C84:  VSUB.F32        Q8, Q0, Q2
443C88:  VSUB.F32        Q9, Q1, Q2
443C8C:  VMUL.F32        Q8, Q8, D6[0]
443C90:  VMUL.F32        Q9, Q9, D6[0]
443C94:  VREV64.32       Q10, Q8
443C98:  VMUL.F32        Q8, Q11, Q8
443C9C:  VREV64.32       Q13, Q9
443CA0:  VMUL.F32        Q9, Q11, Q9
443CA4:  VMUL.F32        Q10, Q12, Q10
443CA8:  VMUL.F32        Q11, Q12, Q13
443CAC:  VADD.F32        Q12, Q8, Q10
443CB0:  VADD.F32        Q13, Q9, Q11
443CB4:  VSUB.F32        Q8, Q8, Q10
443CB8:  VSUB.F32        Q9, Q9, Q11
443CBC:  VREV64.32       Q10, Q12
443CC0:  VREV64.32       Q11, Q13
443CC4:  VTRN.32         Q10, Q8
443CC8:  VTRN.32         Q11, Q9
443CCC:  VST1.32         {D16-D17}, [R0]!
443CD0:  VST1.32         {D18-D19}, [R0]
443CD4:  MOV             R0, R6
443CD6:  BLX             j__ZN6CRadar13ClipRadarPolyEP9CVector2DPKS0_; CRadar::ClipRadarPoly(CVector2D *,CVector2D const*)
443CDA:  MOV             R9, R0
443CDC:  CMP.W           R9, #0
443CE0:  BEQ.W           loc_443E8A
443CE4:  CMP.W           R9, #1
443CE8:  BLT.W           loc_443DEC
443CEC:  LDR             R0, =(RsGlobal_ptr - 0x443CFA)
443CEE:  ADD             R3, SP, #0x100+var_98
443CF0:  VLDR            S2, =448.0
443CF4:  ADD             R1, SP, #0x100+var_58
443CF6:  ADD             R0, PC; RsGlobal_ptr
443CF8:  ADDS            R1, #4
443CFA:  MOV             R5, R9
443CFC:  LDR             R0, [R0]; RsGlobal
443CFE:  VLDR            S0, [R0,#8]
443D02:  LDR             R0, =(gMobileMenu_ptr - 0x443D0C)
443D04:  VCVT.F32.S32    S0, S0
443D08:  ADD             R0, PC; gMobileMenu_ptr
443D0A:  LDR             R2, [R0]; gMobileMenu
443D0C:  ADDS            R0, R6, #4
443D0E:  LDRB.W          R6, [R2,#(byte_6E00D8 - 0x6E006C)]
443D12:  ADDS            R2, R3, #4
443D14:  VDIV.F32        S0, S0, S2
443D18:  LDR             R3, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x443D1E)
443D1A:  ADD             R3, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
443D1C:  LDR.W           R12, [R3]; CTouchInterface::m_pWidgets ...
443D20:  LDR             R3, =(gMobileMenu_ptr - 0x443D26)
443D22:  ADD             R3, PC; gMobileMenu_ptr
443D24:  LDR             R4, [R3]; gMobileMenu
443D26:  MOV             R3, R6
443D28:  VMOV.F32        S2, #0.5
443D2C:  VLDR            S4, [R0,#-4]
443D30:  LSLS            R3, R3, #0x18
443D32:  VLDR            S6, [R0]
443D36:  BEQ             loc_443D56
443D38:  VLDR            S8, [R4,#0x58]
443D3C:  VLDR            S10, [R4,#0x5C]
443D40:  VMUL.F32        S4, S4, S8
443D44:  VMUL.F32        S6, S6, S8
443D48:  VLDR            S8, [R4,#0x60]
443D4C:  VADD.F32        S4, S10, S4
443D50:  VSTR            S4, [R2,#-4]
443D54:  B               loc_443DA6
443D56:  LDR.W           R3, [R12,#(dword_6F3A18 - 0x6F3794)]
443D5A:  CMP             R3, #0
443D5C:  BEQ             loc_443DE0
443D5E:  VLDR            S8, [R3,#0x20]
443D62:  VLDR            S10, [R3,#0x28]
443D66:  VSUB.F32        S12, S10, S8
443D6A:  VADD.F32        S8, S8, S10
443D6E:  VABS.F32        S12, S12
443D72:  VMUL.F32        S8, S8, S2
443D76:  VMUL.F32        S4, S4, S12
443D7A:  VMUL.F32        S4, S4, S2
443D7E:  VADD.F32        S4, S8, S4
443D82:  VSTR            S4, [R2,#-4]
443D86:  VLDR            S8, [R3,#0x24]
443D8A:  VLDR            S10, [R3,#0x2C]
443D8E:  VSUB.F32        S12, S8, S10
443D92:  VADD.F32        S8, S8, S10
443D96:  VABS.F32        S12, S12
443D9A:  VMUL.F32        S8, S8, S2
443D9E:  VMUL.F32        S6, S6, S12
443DA2:  VMUL.F32        S6, S6, S2
443DA6:  VSUB.F32        S6, S8, S6
443DAA:  LSLS            R3, R6, #0x18
443DAC:  VSTR            S6, [R2]
443DB0:  BEQ             loc_443DDE
443DB2:  VLDR            S8, [R1,#-4]
443DB6:  VMUL.F32        S4, S4, S0
443DBA:  VMUL.F32        S6, S6, S0
443DBE:  MOV             R3, R6
443DC0:  VMUL.F32        S8, S8, S0
443DC4:  VSTR            S4, [R2,#-4]
443DC8:  VSTR            S6, [R2]
443DCC:  VSTR            S8, [R1,#-4]
443DD0:  VLDR            S4, [R1]
443DD4:  VMUL.F32        S4, S4, S0
443DD8:  VSTR            S4, [R1]
443DDC:  B               loc_443DE2
443DDE:  MOVS            R6, #0
443DE0:  MOVS            R3, #0
443DE2:  ADDS            R0, #8
443DE4:  ADDS            R1, #8
443DE6:  ADDS            R2, #8
443DE8:  SUBS            R5, #1
443DEA:  BNE             loc_443D2C
443DEC:  MOVS            R0, #0xC
443DEE:  MOVS            R1, #1
443DF0:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
443DF4:  MOVS            R0, #1
443DF6:  MOVS            R1, #0
443DF8:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
443DFC:  ADD             R1, SP, #0x100+var_98; int
443DFE:  ADD             R2, SP, #0x100+var_58; float *
443E00:  MOV             R0, R9; this
443E02:  MOV             R3, R8; float *
443E04:  BLX             j__ZN9CSprite2d11SetVerticesEiPfS0_RK5CRGBA; CSprite2d::SetVertices(int,float *,float *,CRGBA const&)
443E08:  CMP.W           R9, #3
443E0C:  BLT             loc_443E8A
443E0E:  LDR             R0, =(_ZN9CSprite2d10maVerticesE_ptr - 0x443E1C)
443E10:  ADD.W           R1, R9, R9,LSL#1
443E14:  LDR             R3, =(unk_6AE3CA - 0x443E20)
443E16:  SUBS            R1, #6
443E18:  ADD             R0, PC; _ZN9CSprite2d10maVerticesE_ptr
443E1A:  STR             R1, [SP,#0x100+var_100]
443E1C:  ADD             R3, PC; unk_6AE3CA
443E1E:  MOVS            R2, #8
443E20:  LDR             R1, [R0]; CSprite2d::maVertices ...
443E22:  MOVS            R0, #3
443E24:  BLX             j__Z35RwIm2DRenderIndexedPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexiPti; RwIm2DRenderIndexedPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int,ushort *,int)
443E28:  B               loc_443E8A
443E2A:  LDR             R1, =(_ZN6CRadar11m_radarRectE_ptr - 0x443E34)
443E2C:  VLDR            S0, [R0]
443E30:  ADD             R1, PC; _ZN6CRadar11m_radarRectE_ptr
443E32:  LDR             R1, [R1]; CRadar::m_radarRect ...
443E34:  VLDR            S4, [R1,#8]
443E38:  VCMPE.F32       S0, S4
443E3C:  VMRS            APSR_nzcv, FPSCR
443E40:  BGT             loc_443E8A
443E42:  LDR             R1, =(_ZN6CRadar11m_radarRectE_ptr - 0x443E4C)
443E44:  VLDR            S2, [R0,#8]
443E48:  ADD             R1, PC; _ZN6CRadar11m_radarRectE_ptr
443E4A:  LDR             R1, [R1]; CRadar::m_radarRect ...
443E4C:  VLDR            S4, [R1]
443E50:  VCMPE.F32       S2, S4
443E54:  VMRS            APSR_nzcv, FPSCR
443E58:  BLT             loc_443E8A
443E5A:  LDR             R1, =(_ZN6CRadar11m_radarRectE_ptr - 0x443E64)
443E5C:  VLDR            S1, [R0,#0xC]
443E60:  ADD             R1, PC; _ZN6CRadar11m_radarRectE_ptr
443E62:  LDR             R1, [R1]; CRadar::m_radarRect ...
443E64:  VLDR            S4, [R1,#4]
443E68:  VCMPE.F32       S1, S4
443E6C:  VMRS            APSR_nzcv, FPSCR
443E70:  BGT             loc_443E8A
443E72:  VLDR            S5, [R0,#4]
443E76:  LDR             R0, =(_ZN6CRadar11m_radarRectE_ptr - 0x443E7C)
443E78:  ADD             R0, PC; _ZN6CRadar11m_radarRectE_ptr
443E7A:  LDR             R0, [R0]; CRadar::m_radarRect ...
443E7C:  VLDR            S8, [R0,#0xC]
443E80:  VCMPE.F32       S5, S8
443E84:  VMRS            APSR_nzcv, FPSCR
443E88:  BGE             loc_443E92
443E8A:  ADD             SP, SP, #0xE8
443E8C:  POP.W           {R8,R9,R11}
443E90:  POP             {R4-R7,PC}
443E92:  VMOV            R1, S0
443E96:  VMOV            R2, S2
443E9A:  VMOV            R0, S1
443E9E:  VMOV            R3, S5
443EA2:  B               loc_443C3A
