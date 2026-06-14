; =========================================================
; Game Engine Function: _ZN6CRadar9DrawBlipsEf
; Address            : 0x43E99C - 0x43F1BA
; =========================================================

43E99C:  PUSH            {R4-R7,LR}
43E99E:  ADD             R7, SP, #0xC
43E9A0:  PUSH.W          {R8-R11}
43E9A4:  SUB             SP, SP, #4
43E9A6:  VPUSH           {D8-D12}
43E9AA:  SUB             SP, SP, #0x48; float
43E9AC:  STR             R0, [SP,#0x90+var_68]
43E9AE:  MOVS            R2, #0xFF
43E9B0:  LDR.W           R0, =(gMobileMenu_ptr - 0x43E9BA)
43E9B4:  STR             R2, [SP,#0x90+var_64]
43E9B6:  ADD             R0, PC; gMobileMenu_ptr
43E9B8:  LDR             R0, [R0]; gMobileMenu
43E9BA:  LDR             R1, [R0,#(dword_6E0090 - 0x6E006C)]
43E9BC:  CMP             R1, #0
43E9BE:  ITT EQ
43E9C0:  LDREQ           R0, [R0,#(dword_6E0098 - 0x6E006C)]
43E9C2:  CMPEQ           R0, #0
43E9C4:  BNE             loc_43E9DE
43E9C6:  LDR.W           R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x43E9CE)
43E9CA:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
43E9CC:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
43E9CE:  LDR.W           R0, [R0,#(dword_6F3A18 - 0x6F3794)]
43E9D2:  CMP             R0, #0
43E9D4:  ITE NE
43E9D6:  LDRBNE.W        R0, [R0,#0x4C]
43E9DA:  MOVEQ           R0, #(elf_hash_bucket+3); this
43E9DC:  STR             R0, [SP,#0x90+var_64]
43E9DE:  BLX             j__ZN6CRadar18SetupAirstripBlipsEv; CRadar::SetupAirstripBlips(void)
43E9E2:  MOVS            R0, #8
43E9E4:  MOVS            R1, #0
43E9E6:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
43E9EA:  MOVS            R0, #6
43E9EC:  MOVS            R1, #0
43E9EE:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
43E9F2:  MOVS            R0, #0xC
43E9F4:  MOVS            R1, #1
43E9F6:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
43E9FA:  MOVS            R0, #0xA
43E9FC:  MOVS            R1, #5
43E9FE:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
43EA02:  MOVS            R0, #0xB
43EA04:  MOVS            R1, #6
43EA06:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
43EA0A:  MOVS            R0, #0xE
43EA0C:  MOVS            R1, #0
43EA0E:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
43EA12:  LDR.W           R0, =(gMobileMenu_ptr - 0x43EA1A)
43EA16:  ADD             R0, PC; gMobileMenu_ptr
43EA18:  LDR             R0, [R0]; gMobileMenu
43EA1A:  LDRB.W          R0, [R0,#(byte_6E00D8 - 0x6E006C)]
43EA1E:  CBZ             R0, loc_43EA46
43EA20:  LDR.W           R0, =(gMobileMenu_ptr - 0x43EA2C)
43EA24:  VLDR            S0, =0.0
43EA28:  ADD             R0, PC; gMobileMenu_ptr
43EA2A:  LDR             R0, [R0]; gMobileMenu
43EA2C:  VLDR            S2, [R0,#0x58]
43EA30:  VLDR            S4, [R0,#0x5C]
43EA34:  VMUL.F32        S0, S2, S0
43EA38:  VLDR            S6, [R0,#0x60]
43EA3C:  VSUB.F32        S18, S6, S0
43EA40:  VADD.F32        S16, S4, S0
43EA44:  B               loc_43EBAA
43EA46:  LDR.W           R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x43EA4E)
43EA4A:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
43EA4C:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
43EA4E:  LDR.W           R0, [R0,#(dword_6F3A18 - 0x6F3794)]
43EA52:  CBZ             R0, loc_43EAA6
43EA54:  VLDR            S0, [R0,#0x20]
43EA58:  VMOV.F32        S14, #0.5
43EA5C:  VLDR            S4, [R0,#0x28]
43EA60:  VLDR            S2, [R0,#0x24]
43EA64:  VLDR            S6, [R0,#0x2C]
43EA68:  VSUB.F32        S10, S4, S0
43EA6C:  VLDR            S12, =0.0
43EA70:  VADD.F32        S0, S0, S4
43EA74:  VSUB.F32        S8, S2, S6
43EA78:  VADD.F32        S2, S2, S6
43EA7C:  VABS.F32        S10, S10
43EA80:  VMUL.F32        S0, S0, S14
43EA84:  VABS.F32        S8, S8
43EA88:  VMUL.F32        S2, S2, S14
43EA8C:  VMUL.F32        S4, S10, S12
43EA90:  VMUL.F32        S6, S8, S12
43EA94:  VMUL.F32        S4, S4, S14
43EA98:  VMUL.F32        S6, S6, S14
43EA9C:  VADD.F32        S16, S0, S4
43EAA0:  VSUB.F32        S18, S2, S6
43EAA4:  B               loc_43EAA6
43EAA6:  LDR.W           R0, =(_ZN6CRadar12m_radarRangeE_ptr - 0x43EAB6)
43EAAA:  VMOV.F32        S4, #1.0
43EAAE:  VLDR            S2, =1.4142
43EAB2:  ADD             R0, PC; _ZN6CRadar12m_radarRangeE_ptr
43EAB4:  LDR.W           R1, =(dword_994EE8 - 0x43EABE)
43EAB8:  LDR             R0, [R0]; CRadar::m_radarRange ...
43EABA:  ADD             R1, PC; dword_994EE8
43EABC:  VLDR            S0, [R0]
43EAC0:  LDR.W           R0, =(_ZN6CRadar16vec2DRadarOriginE_ptr - 0x43EACC)
43EAC4:  VDIV.F32        S6, S4, S0
43EAC8:  ADD             R0, PC; _ZN6CRadar16vec2DRadarOriginE_ptr
43EACA:  LDR             R0, [R0]; CRadar::vec2DRadarOrigin ...
43EACC:  VMUL.F32        S0, S0, S2
43EAD0:  VLDR            S10, [R0,#4]
43EAD4:  VLDR            S8, [R0]
43EAD8:  VLDR            S2, =0.0
43EADC:  LDR.W           R0, =(dword_994EEC - 0x43EAE8)
43EAE0:  VADD.F32        S2, S8, S2
43EAE4:  ADD             R0, PC; dword_994EEC
43EAE6:  VADD.F32        S0, S0, S10
43EAEA:  VSUB.F32        S2, S2, S8
43EAEE:  VLDR            S8, [R1]
43EAF2:  VSUB.F32        S0, S0, S10
43EAF6:  VMUL.F32        S2, S6, S2
43EAFA:  VMUL.F32        S0, S6, S0
43EAFE:  VLDR            S6, [R0]
43EB02:  VMUL.F32        S10, S6, S2
43EB06:  VMUL.F32        S12, S8, S0
43EB0A:  VMUL.F32        S8, S8, S2
43EB0E:  VMUL.F32        S0, S6, S0
43EB12:  VSUB.F32        S2, S12, S10
43EB16:  VADD.F32        S0, S8, S0
43EB1A:  MOV             R0, #0
43EB22:  VSTR            S0, [R0]
43EB26:  VSTR            S2, [R0,#4]
43EB2A:  BLX             j__ZN6CRadar15LimitRadarPointER9CVector2D; CRadar::LimitRadarPoint(CVector2D &)
43EB2E:  MOV             R0, #0
43EB36:  VLDR            S0, [R0]
43EB3A:  VLDR            S2, [R0,#4]
43EB3E:  NOP
43EB40:  LDR.W           R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x43EB48)
43EB44:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
43EB46:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
43EB48:  LDR.W           R0, [R0,#(dword_6F3A18 - 0x6F3794)]
43EB4C:  CBZ             R0, loc_43EB9A
43EB4E:  VLDR            S4, [R0,#0x20]
43EB52:  VMOV.F32        S1, #0.5
43EB56:  VLDR            S8, [R0,#0x28]
43EB5A:  VLDR            S6, [R0,#0x24]
43EB5E:  VLDR            S10, [R0,#0x2C]
43EB62:  VSUB.F32        S14, S8, S4
43EB66:  VADD.F32        S4, S4, S8
43EB6A:  VSUB.F32        S12, S6, S10
43EB6E:  VADD.F32        S6, S6, S10
43EB72:  VABS.F32        S14, S14
43EB76:  VMUL.F32        S4, S4, S1
43EB7A:  VABS.F32        S12, S12
43EB7E:  VMUL.F32        S6, S6, S1
43EB82:  VMUL.F32        S0, S0, S14
43EB86:  VMUL.F32        S2, S2, S12
43EB8A:  VMUL.F32        S0, S0, S1
43EB8E:  VMUL.F32        S2, S2, S1
43EB92:  VADD.F32        S16, S4, S0
43EB96:  VSUB.F32        S18, S6, S2
43EB9A:  VMOV            R1, S16; unsigned __int16
43EB9E:  LDR             R3, [SP,#0x90+var_64]; float
43EBA0:  VMOV            R2, S18; float
43EBA4:  MOVS            R0, #byte_4; this
43EBA6:  BLX             j__ZN6CRadar15DrawRadarSpriteEtffh; CRadar::DrawRadarSprite(ushort,float,float,uchar)
43EBAA:  LDR.W           R0, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x43EBBA)
43EBAE:  MOV.W           R8, #1
43EBB2:  LDR.W           R1, =(_ZN11CTheScripts18bPlayerIsOffTheMapE_ptr - 0x43EBBC)
43EBB6:  ADD             R0, PC; _ZN6CRadar13ms_RadarTraceE_ptr
43EBB8:  ADD             R1, PC; _ZN11CTheScripts18bPlayerIsOffTheMapE_ptr
43EBBA:  LDR             R0, [R0]; CRadar::ms_RadarTrace ...
43EBBC:  STR             R0, [SP,#0x90+var_78]
43EBBE:  LDR.W           R0, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x43EBC6)
43EBC2:  ADD             R0, PC; _ZN6CRadar13ms_RadarTraceE_ptr
43EBC4:  LDR             R0, [R0]; CRadar::ms_RadarTrace ...
43EBC6:  STR             R0, [SP,#0x90+var_80]
43EBC8:  LDR.W           R0, =(_ZN5CGame8currAreaE_ptr - 0x43EBD0)
43EBCC:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
43EBCE:  LDR.W           R10, [R0]; CGame::currArea ...
43EBD2:  LDR.W           R0, =(gMobileMenu_ptr - 0x43EBDA)
43EBD6:  ADD             R0, PC; gMobileMenu_ptr
43EBD8:  LDR.W           R11, [R0]; gMobileMenu
43EBDC:  LDR.W           R0, =(_ZN5CGame8currAreaE_ptr - 0x43EBE4)
43EBE0:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
43EBE2:  LDR             R0, [R0]; CGame::currArea ...
43EBE4:  STR             R0, [SP,#0x90+var_6C]
43EBE6:  LDR.W           R0, =(_ZN5CGame8currAreaE_ptr - 0x43EBEE)
43EBEA:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
43EBEC:  LDR             R0, [R0]; CGame::currArea ...
43EBEE:  STR             R0, [SP,#0x90+var_7C]
43EBF0:  LDR.W           R0, =(gMobileMenu_ptr - 0x43EBF8)
43EBF4:  ADD             R0, PC; gMobileMenu_ptr
43EBF6:  LDR             R0, [R0]; gMobileMenu
43EBF8:  STR             R0, [SP,#0x90+var_74]
43EBFA:  LDR             R0, [R1]; CTheScripts::bPlayerIsOffTheMap ...
43EBFC:  STR             R0, [SP,#0x90+var_70]
43EBFE:  STRD.W          R11, R10, [SP,#0x90+var_88]
43EC02:  MOV.W           R9, #1
43EC06:  UXTB.W          R11, R9
43EC0A:  CMP.W           R11, #3
43EC0E:  MOV.W           R5, #0
43EC12:  MOV.W           R6, #0
43EC16:  IT EQ
43EC18:  MOVEQ           R5, #1
43EC1A:  LDR             R0, [SP,#0x90+var_78]
43EC1C:  ADD.W           R10, R0, #0x24 ; '$'
43EC20:  B               loc_43ECE6
43EC22:  LDRSB.W         R4, [R10]
43EC26:  CMP             R4, #0x29 ; ')'
43EC28:  BEQ.W           def_43EC68; jumptable 0043EC68 default case, cases 5-24,26-35,37-40,42,43,45-51
43EC2C:  SUB.W           R0, R4, #8
43EC30:  CMP             R0, #0x26 ; '&'
43EC32:  BHI             loc_43EC44
43EC34:  LDR.W           R1, =(unk_618EF0 - 0x43EC3C)
43EC38:  ADD             R1, PC; unk_618EF0
43EC3A:  LDR.W           R0, [R1,R0,LSL#2]
43EC3E:  CMP             R0, R5
43EC40:  BEQ             loc_43EC4C
43EC42:  B               def_43EC68; jumptable 0043EC68 default case, cases 5-24,26-35,37-40,42,43,45-51
43EC44:  MOVS            R0, #0
43EC46:  CMP             R0, R5
43EC48:  BNE.W           def_43EC68; jumptable 0043EC68 default case, cases 5-24,26-35,37-40,42,43,45-51
43EC4C:  LDR             R0, [SP,#0x90+var_7C]
43EC4E:  LDR             R0, [R0]
43EC50:  CBNZ            R0, loc_43EC62
43EC52:  MOV.W           R0, #0xFFFFFFFF; int
43EC56:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
43EC5A:  LDRB.W          R0, [R0,#0x33]
43EC5E:  CMP             R0, #0
43EC60:  BEQ             loc_43ECD6; jumptable 0043EC68 cases 0-4,25,36,41,44,52
43EC62:  CMP             R4, #0x34 ; '4'; switch 53 cases
43EC64:  BHI.W           def_43EC68; jumptable 0043EC68 default case, cases 5-24,26-35,37-40,42,43,45-51
43EC68:  TBH.W           [PC,R4,LSL#1]; switch jump
43EC6C:  DCW 0x35; jump table for switch statement
43EC6E:  DCW 0x35
43EC70:  DCW 0x35
43EC72:  DCW 0x35
43EC74:  DCW 0x35
43EC76:  DCW 0xA6
43EC78:  DCW 0xA6
43EC7A:  DCW 0xA6
43EC7C:  DCW 0xA6
43EC7E:  DCW 0xA6
43EC80:  DCW 0xA6
43EC82:  DCW 0xA6
43EC84:  DCW 0xA6
43EC86:  DCW 0xA6
43EC88:  DCW 0xA6
43EC8A:  DCW 0xA6
43EC8C:  DCW 0xA6
43EC8E:  DCW 0xA6
43EC90:  DCW 0xA6
43EC92:  DCW 0xA6
43EC94:  DCW 0xA6
43EC96:  DCW 0xA6
43EC98:  DCW 0xA6
43EC9A:  DCW 0xA6
43EC9C:  DCW 0xA6
43EC9E:  DCW 0x35
43ECA0:  DCW 0xA6
43ECA2:  DCW 0xA6
43ECA4:  DCW 0xA6
43ECA6:  DCW 0xA6
43ECA8:  DCW 0xA6
43ECAA:  DCW 0xA6
43ECAC:  DCW 0xA6
43ECAE:  DCW 0xA6
43ECB0:  DCW 0xA6
43ECB2:  DCW 0xA6
43ECB4:  DCW 0x35
43ECB6:  DCW 0xA6
43ECB8:  DCW 0xA6
43ECBA:  DCW 0xA6
43ECBC:  DCW 0xA6
43ECBE:  DCW 0x35
43ECC0:  DCW 0xA6
43ECC2:  DCW 0xA6
43ECC4:  DCW 0x35
43ECC6:  DCW 0xA6
43ECC8:  DCW 0xA6
43ECCA:  DCW 0xA6
43ECCC:  DCW 0xA6
43ECCE:  DCW 0xA6
43ECD0:  DCW 0xA6
43ECD2:  DCW 0xA6
43ECD4:  DCW 0x35
43ECD6:  LDRD.W          R3, R2, [SP,#0x90+var_68]; jumptable 0043EC68 cases 0-4,25,36,41,44,52
43ECDA:  UXTB.W          R1, R8; int
43ECDE:  MOV             R0, R6; this
43ECE0:  BLX             j__ZN6CRadar13DrawCoordBlipEihif; CRadar::DrawCoordBlip(int,uchar,int,float)
43ECE4:  B               def_43EC68; jumptable 0043EC68 default case, cases 5-24,26-35,37-40,42,43,45-51
43ECE6:  LDRH.W          R0, [R10,#1]
43ECEA:  TST.W           R0, #2
43ECEE:  BEQ.W           def_43EC68; jumptable 0043EC68 default case, cases 5-24,26-35,37-40,42,43,45-51
43ECF2:  UBFX.W          R0, R0, #0xA, #4
43ECF6:  CMP             R0, #8
43ECF8:  BHI.W           def_43EC68; jumptable 0043EC68 default case, cases 5-24,26-35,37-40,42,43,45-51
43ECFC:  MOVS            R1, #1
43ECFE:  LSL.W           R0, R1, R0
43ED02:  TST.W           R0, #0x8E
43ED06:  BNE             loc_43ED44
43ED08:  TST.W           R0, #0x30
43ED0C:  BNE.W           loc_43EC22
43ED10:  TST.W           R0, #0x140
43ED14:  BEQ.W           def_43EC68; jumptable 0043EC68 default case, cases 5-24,26-35,37-40,42,43,45-51
43ED18:  CMP.W           R11, #3
43ED1C:  BNE.W           def_43EC68; jumptable 0043EC68 default case, cases 5-24,26-35,37-40,42,43,45-51
43ED20:  LDR             R0, [SP,#0x90+var_70]
43ED22:  LDRB            R0, [R0]
43ED24:  CMP             R0, #0
43ED26:  ITTT NE
43ED28:  LDRNE           R0, [SP,#0x90+var_74]
43ED2A:  LDRBNE.W        R0, [R0,#0x6C]
43ED2E:  CMPNE           R0, #0
43ED30:  BNE.W           def_43EC68; jumptable 0043EC68 default case, cases 5-24,26-35,37-40,42,43,45-51
43ED34:  MOVS            R3, #0
43ED36:  UXTB.W          R1, R8
43ED3A:  MOV             R0, R6
43ED3C:  LDR             R2, [SP,#0x90+var_64]
43ED3E:  MOVT            R3, #0xBF80
43ED42:  B               loc_43EDB4
43ED44:  LDR             R0, [SP,#0x90+var_6C]
43ED46:  LDRSB.W         R4, [R10]
43ED4A:  LDR             R0, [R0]
43ED4C:  CBNZ            R0, loc_43ED5E
43ED4E:  MOV.W           R0, #0xFFFFFFFF; int
43ED52:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
43ED56:  LDRB.W          R0, [R0,#0x33]
43ED5A:  CMP             R0, #0
43ED5C:  BEQ             loc_43EDAA; jumptable 0043ED66 cases 0-4,25,36,41,44,52
43ED5E:  CMP             R4, #0x34 ; '4'; switch 53 cases
43ED60:  BHI             def_43EC68; jumptable 0043EC68 default case, cases 5-24,26-35,37-40,42,43,45-51
43ED62:  ADR.W           R0, jpt_43ED66
43ED66:  TBB.W           [R0,R4]; switch jump
43ED6A:  ALIGN 4
43ED6C:  DCFS 0.0
43ED70:  DCFS 1.4142
43ED74:  DCB 0x20; jump table for switch statement
43ED75:  DCB 0x20
43ED76:  DCB 0x20
43ED77:  DCB 0x20
43ED78:  DCB 0x20
43ED79:  DCB 0x27
43ED7A:  DCB 0x27
43ED7B:  DCB 0x27
43ED7C:  DCB 0x27
43ED7D:  DCB 0x27
43ED7E:  DCB 0x27
43ED7F:  DCB 0x27
43ED80:  DCB 0x27
43ED81:  DCB 0x27
43ED82:  DCB 0x27
43ED83:  DCB 0x27
43ED84:  DCB 0x27
43ED85:  DCB 0x27
43ED86:  DCB 0x27
43ED87:  DCB 0x27
43ED88:  DCB 0x27
43ED89:  DCB 0x27
43ED8A:  DCB 0x27
43ED8B:  DCB 0x27
43ED8C:  DCB 0x27
43ED8D:  DCB 0x20
43ED8E:  DCB 0x27
43ED8F:  DCB 0x27
43ED90:  DCB 0x27
43ED91:  DCB 0x27
43ED92:  DCB 0x27
43ED93:  DCB 0x27
43ED94:  DCB 0x27
43ED95:  DCB 0x27
43ED96:  DCB 0x27
43ED97:  DCB 0x27
43ED98:  DCB 0x20
43ED99:  DCB 0x27
43ED9A:  DCB 0x27
43ED9B:  DCB 0x27
43ED9C:  DCB 0x27
43ED9D:  DCB 0x20
43ED9E:  DCB 0x27
43ED9F:  DCB 0x27
43EDA0:  DCB 0x20
43EDA1:  DCB 0x27
43EDA2:  DCB 0x27
43EDA3:  DCB 0x27
43EDA4:  DCB 0x27
43EDA5:  DCB 0x27
43EDA6:  DCB 0x27
43EDA7:  DCB 0x27
43EDA8:  DCB 0x20
43EDA9:  ALIGN 2
43EDAA:  LDRD.W          R3, R2, [SP,#0x90+var_68]; jumptable 0043ED66 cases 0-4,25,36,41,44,52
43EDAE:  UXTB.W          R1, R8; int
43EDB2:  MOV             R0, R6; this
43EDB4:  BLX             j__ZN6CRadar14DrawEntityBlipEihif; CRadar::DrawEntityBlip(int,uchar,int,float)
43EDB8:  ADDS            R6, #1; jumptable 0043EC68 default case, cases 5-24,26-35,37-40,42,43,45-51
43EDBA:  ADD.W           R10, R10, #0x28 ; '('
43EDBE:  CMP             R6, #0xFA
43EDC0:  BNE.W           loc_43ECE6
43EDC4:  ADD.W           R9, R9, #1
43EDC8:  UXTB.W          R0, R9
43EDCC:  CMP             R0, #4
43EDCE:  BCC.W           loc_43EC06
43EDD2:  LDR             R0, [SP,#0x90+var_80]
43EDD4:  MOVS            R6, #0
43EDD6:  LDRD.W          R11, R10, [SP,#0x90+var_88]
43EDDA:  MOVW            R9, #0x3802
43EDDE:  ADD.W           R5, R0, #0x25 ; '%'
43EDE2:  MOVW            R4, #0x1002
43EDE6:  LDRH            R0, [R5]
43EDE8:  AND.W           R0, R0, R9
43EDEC:  CMP             R0, R4
43EDEE:  ITT EQ
43EDF0:  LDRBEQ.W        R0, [R5,#-1]
43EDF4:  CMPEQ           R0, #0x29 ; ')'
43EDF6:  BNE             loc_43EE22
43EDF8:  LDR.W           R0, [R10]
43EDFC:  CBZ             R0, loc_43EE0C
43EDFE:  LDR.W           R0, [R11,#0x24]
43EE02:  CBNZ            R0, loc_43EE14
43EE04:  LDR.W           R0, [R11,#0x2C]
43EE08:  CBZ             R0, loc_43EE22
43EE0A:  B               loc_43EE14
43EE0C:  MOV.W           R0, #0xFFFFFFFF; int
43EE10:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
43EE14:  LDRD.W          R3, R2, [SP,#0x90+var_68]; int
43EE18:  UXTB.W          R1, R8; int
43EE1C:  MOV             R0, R6; this
43EE1E:  BLX             j__ZN6CRadar13DrawCoordBlipEihif; CRadar::DrawCoordBlip(int,uchar,int,float)
43EE22:  ADDS            R6, #1
43EE24:  ADDS            R5, #0x28 ; '('
43EE26:  CMP             R6, #0xFA
43EE28:  BNE             loc_43EDE6
43EE2A:  UXTB.W          R0, R8
43EE2E:  CMP             R0, #0
43EE30:  MOV.W           R8, #0
43EE34:  IT EQ
43EE36:  MOVEQ.W         R8, #1
43EE3A:  BNE.W           loc_43EC02
43EE3E:  LDR.W           R0, =(gMobileMenu_ptr - 0x43EE46)
43EE42:  ADD             R0, PC; gMobileMenu_ptr
43EE44:  LDR             R0, [R0]; gMobileMenu
43EE46:  LDRB.W          R0, [R0,#(byte_6E00D8 - 0x6E006C)]
43EE4A:  CMP             R0, #0
43EE4C:  BEQ.W           loc_43EF80
43EE50:  ADD             R0, SP, #0x90+var_54; int
43EE52:  MOVS            R1, #0
43EE54:  BLX             j__Z29FindPlayerCentreOfWorldForMapi; FindPlayerCentreOfWorldForMap(int)
43EE58:  LDR.W           R0, =(_ZN6CRadar12m_radarRangeE_ptr - 0x43EE68)
43EE5C:  VMOV.F32        S4, #1.0
43EE60:  VLDR            S2, [SP,#0x90+var_54]
43EE64:  ADD             R0, PC; _ZN6CRadar12m_radarRangeE_ptr
43EE66:  VLDR            S6, [SP,#0x90+var_50]
43EE6A:  LDR             R1, =(dword_994EE8 - 0x43EE72)
43EE6C:  LDR             R0, [R0]; CRadar::m_radarRange ...
43EE6E:  ADD             R1, PC; dword_994EE8
43EE70:  VLDR            S0, [R0]
43EE74:  LDR             R0, =(_ZN6CRadar16vec2DRadarOriginE_ptr - 0x43EE7E)
43EE76:  VDIV.F32        S0, S4, S0
43EE7A:  ADD             R0, PC; _ZN6CRadar16vec2DRadarOriginE_ptr
43EE7C:  LDR             R0, [R0]; CRadar::vec2DRadarOrigin ...
43EE7E:  VLDR            S8, [R0]
43EE82:  VLDR            S10, [R0,#4]
43EE86:  VSUB.F32        S2, S2, S8
43EE8A:  LDR             R0, =(dword_994EEC - 0x43EE98)
43EE8C:  VSUB.F32        S6, S6, S10
43EE90:  VLDR            S8, [R1]
43EE94:  ADD             R0, PC; dword_994EEC
43EE96:  VMUL.F32        S2, S2, S0
43EE9A:  VMUL.F32        S0, S6, S0
43EE9E:  VLDR            S6, [R0]
43EEA2:  LDR             R0, =(gMobileMenu_ptr - 0x43EEA8)
43EEA4:  ADD             R0, PC; gMobileMenu_ptr
43EEA6:  LDR             R0, [R0]; gMobileMenu
43EEA8:  VMUL.F32        S10, S6, S2
43EEAC:  VMUL.F32        S12, S8, S0
43EEB0:  VMUL.F32        S6, S6, S0
43EEB4:  LDRB.W          R0, [R0,#(byte_6E00D8 - 0x6E006C)]
43EEB8:  VMUL.F32        S2, S8, S2
43EEBC:  CMP             R0, #0
43EEBE:  VSUB.F32        S0, S12, S10
43EEC2:  VADD.F32        S2, S2, S6
43EEC6:  BNE             loc_43EEEE
43EEC8:  MOV             R0, #0
43EED0:  VSTR            S0, [R0]
43EED4:  VSTR            S2, [R0,#4]
43EED8:  BLX             j__ZN6CRadar15LimitRadarPointER9CVector2D; CRadar::LimitRadarPoint(CVector2D &)
43EEDC:  MOV             R0, #0
43EEE4:  VLDR            S0, [R0]
43EEE8:  VLDR            S2, [R0,#4]
43EEEC:  NOP
43EEEE:  CBZ             R0, loc_43EF0C
43EEF0:  LDR             R0, =(gMobileMenu_ptr - 0x43EEF6)
43EEF2:  ADD             R0, PC; gMobileMenu_ptr
43EEF4:  LDR             R0, [R0]; gMobileMenu
43EEF6:  VLDR            S6, [R0,#0x58]
43EEFA:  VLDR            S8, [R0,#0x5C]
43EEFE:  VLDR            S4, [R0,#0x60]
43EF02:  VMUL.F32        S2, S2, S6
43EF06:  VMUL.F32        S0, S0, S6
43EF0A:  B               loc_43EF5C
43EF0C:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x43EF12)
43EF0E:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
43EF10:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
43EF12:  LDR.W           R0, [R0,#(dword_6F3A18 - 0x6F3794)]
43EF16:  CBZ             R0, loc_43EF64
43EF18:  VLDR            S4, [R0,#0x20]
43EF1C:  VMOV.F32        S1, #0.5
43EF20:  VLDR            S8, [R0,#0x28]
43EF24:  VLDR            S6, [R0,#0x24]
43EF28:  VLDR            S10, [R0,#0x2C]
43EF2C:  VSUB.F32        S12, S8, S4
43EF30:  VADD.F32        S4, S4, S8
43EF34:  VSUB.F32        S14, S6, S10
43EF38:  VADD.F32        S6, S6, S10
43EF3C:  VABS.F32        S12, S12
43EF40:  VMUL.F32        S8, S4, S1
43EF44:  VABS.F32        S14, S14
43EF48:  VMUL.F32        S4, S6, S1
43EF4C:  VMUL.F32        S2, S2, S12
43EF50:  VMUL.F32        S0, S0, S14
43EF54:  VMUL.F32        S2, S2, S1
43EF58:  VMUL.F32        S0, S0, S1
43EF5C:  VADD.F32        S16, S8, S2
43EF60:  VSUB.F32        S18, S4, S0
43EF64:  VMOV            R0, S16; this
43EF68:  VMOV            R1, S18; float
43EF6C:  BLX             j__ZN6CRadar20DrawYouAreHereSpriteEff; CRadar::DrawYouAreHereSprite(float,float)
43EF70:  LDR             R0, =(gMobileMenu_ptr - 0x43EF76)
43EF72:  ADD             R0, PC; gMobileMenu_ptr
43EF74:  LDR             R0, [R0]; gMobileMenu
43EF76:  LDRB.W          R0, [R0,#(byte_6E00D8 - 0x6E006C)]
43EF7A:  CMP             R0, #0
43EF7C:  BNE.W           loc_43F1AC
43EF80:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x43EF92)
43EF82:  VMOV.F32        S20, #1.0
43EF86:  VMOV.F32        S22, #0.5
43EF8A:  ADD.W           R11, SP, #0x90+var_54
43EF8E:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
43EF90:  VLDR            S24, =3.1416
43EF94:  MOVS            R5, #0
43EF96:  LDR.W           R8, [R0]; CWorld::Players ...
43EF9A:  LDR             R0, =(_ZN6CRadar12m_radarRangeE_ptr - 0x43EFA0)
43EF9C:  ADD             R0, PC; _ZN6CRadar12m_radarRangeE_ptr
43EF9E:  LDR             R0, [R0]; CRadar::m_radarRange ...
43EFA0:  STR             R0, [SP,#0x90+var_68]
43EFA2:  LDR             R0, =(_ZN6CRadar16vec2DRadarOriginE_ptr - 0x43EFA8)
43EFA4:  ADD             R0, PC; _ZN6CRadar16vec2DRadarOriginE_ptr
43EFA6:  LDR.W           R10, [R0]; CRadar::vec2DRadarOrigin ...
43EFAA:  LDR             R0, =(gMobileMenu_ptr - 0x43EFB0)
43EFAC:  ADD             R0, PC; gMobileMenu_ptr
43EFAE:  LDR             R0, [R0]; gMobileMenu
43EFB0:  STR             R0, [SP,#0x90+var_6C]
43EFB2:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x43EFB8)
43EFB4:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
43EFB6:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
43EFB8:  STR             R0, [SP,#0x90+var_78]
43EFBA:  LDR             R0, =(TheCamera_ptr - 0x43EFC0)
43EFBC:  ADD             R0, PC; TheCamera_ptr
43EFBE:  LDR.W           R9, [R0]; TheCamera
43EFC2:  LDR             R0, =(_ZN6CRadar16RadarBlipSpritesE_ptr - 0x43EFC8)
43EFC4:  ADD             R0, PC; _ZN6CRadar16RadarBlipSpritesE_ptr
43EFC6:  LDR             R0, [R0]; CRadar::RadarBlipSprites ...
43EFC8:  ADDS            R0, #8
43EFCA:  STR             R0, [SP,#0x90+var_70]
43EFCC:  LDR             R0, =(_ZN6CRadar16RadarBlipSpritesE_ptr - 0x43EFD2)
43EFCE:  ADD             R0, PC; _ZN6CRadar16RadarBlipSpritesE_ptr
43EFD0:  LDR             R0, [R0]; CRadar::RadarBlipSprites ...
43EFD2:  ADDS            R0, #8
43EFD4:  STR             R0, [SP,#0x90+var_74]
43EFD6:  LDR             R0, =(gMobileMenu_ptr - 0x43EFDC)
43EFD8:  ADD             R0, PC; gMobileMenu_ptr
43EFDA:  LDR             R4, [R0]; gMobileMenu
43EFDC:  MOV             R0, R5; int
43EFDE:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
43EFE2:  CMP             R0, #0
43EFE4:  BEQ.W           loc_43F1A0
43EFE8:  MOV             R0, R5; int
43EFEA:  MOVS            R1, #0; bool
43EFEC:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
43EFF0:  CBZ             R0, loc_43F016
43EFF2:  MOV             R0, R5; int
43EFF4:  MOVS            R1, #0; bool
43EFF6:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
43EFFA:  LDR.W           R0, [R0,#0x5A4]
43EFFE:  CMP             R0, #4
43F000:  BNE             loc_43F016
43F002:  MOV             R0, R5; int
43F004:  MOVS            R1, #0; bool
43F006:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
43F00A:  LDRH            R0, [R0,#0x26]
43F00C:  MOVW            R1, #0x21B
43F010:  CMP             R0, R1
43F012:  BNE.W           loc_43F1A0
43F016:  MOV             R0, R11; int
43F018:  MOVS            R1, #0
43F01A:  BLX             j__Z29FindPlayerCentreOfWorldForMapi; FindPlayerCentreOfWorldForMap(int)
43F01E:  LDR             R0, [SP,#0x90+var_68]
43F020:  VLDR            S2, [SP,#0x90+var_54]
43F024:  VLDR            S6, [R10]
43F028:  VLDR            S0, [R0]
43F02C:  VLDR            S4, [SP,#0x90+var_50]
43F030:  VSUB.F32        S2, S2, S6
43F034:  VDIV.F32        S0, S20, S0
43F038:  LDR             R0, =(dword_994EEC - 0x43F03E)
43F03A:  ADD             R0, PC; dword_994EEC
43F03C:  VLDR            S8, [R10,#4]
43F040:  VMUL.F32        S2, S2, S0
43F044:  VSUB.F32        S4, S4, S8
43F048:  VMUL.F32        S0, S4, S0
43F04C:  VLDR            S4, [R0]
43F050:  LDR             R0, =(dword_994EE8 - 0x43F05A)
43F052:  VMUL.F32        S8, S4, S2
43F056:  ADD             R0, PC; dword_994EE8
43F058:  VLDR            S6, [R0]
43F05C:  LDR             R0, [SP,#0x90+var_6C]
43F05E:  VMUL.F32        S10, S6, S0
43F062:  VMUL.F32        S4, S4, S0
43F066:  VMUL.F32        S2, S6, S2
43F06A:  LDRB.W          R0, [R0,#0x6C]
43F06E:  CMP             R0, #0
43F070:  VSUB.F32        S0, S10, S8
43F074:  VADD.F32        S2, S2, S4
43F078:  BNE             loc_43F0A0
43F07A:  VMUL.F32        S4, S0, S0
43F07E:  VMUL.F32        S6, S2, S2
43F082:  VADD.F32        S4, S6, S4
43F086:  VSQRT.F32       S4, S4
43F08A:  VCMPE.F32       S4, S20
43F08E:  VMRS            APSR_nzcv, FPSCR
43F092:  BLE             loc_43F0A0
43F094:  VDIV.F32        S4, S20, S4
43F098:  VMUL.F32        S0, S0, S4
43F09C:  VMUL.F32        S2, S2, S4
43F0A0:  CBZ             R0, loc_43F0B8
43F0A2:  VLDR            S6, [R4,#0x58]
43F0A6:  VLDR            S8, [R4,#0x5C]
43F0AA:  VLDR            S4, [R4,#0x60]
43F0AE:  VMUL.F32        S2, S2, S6
43F0B2:  VMUL.F32        S0, S0, S6
43F0B6:  B               loc_43F100
43F0B8:  LDR             R0, [SP,#0x90+var_78]
43F0BA:  LDR.W           R0, [R0,#0x284]
43F0BE:  CBZ             R0, loc_43F108
43F0C0:  VLDR            S4, [R0,#0x20]
43F0C4:  VLDR            S8, [R0,#0x28]
43F0C8:  VLDR            S6, [R0,#0x24]
43F0CC:  VLDR            S10, [R0,#0x2C]
43F0D0:  VSUB.F32        S12, S8, S4
43F0D4:  VADD.F32        S4, S4, S8
43F0D8:  VSUB.F32        S14, S6, S10
43F0DC:  VADD.F32        S6, S6, S10
43F0E0:  VABS.F32        S12, S12
43F0E4:  VMUL.F32        S8, S4, S22
43F0E8:  VABS.F32        S14, S14
43F0EC:  VMUL.F32        S4, S6, S22
43F0F0:  VMUL.F32        S2, S2, S12
43F0F4:  VMUL.F32        S0, S0, S14
43F0F8:  VMUL.F32        S2, S2, S22
43F0FC:  VMUL.F32        S0, S0, S22
43F100:  VADD.F32        S16, S8, S2
43F104:  VSUB.F32        S18, S4, S0
43F108:  MOV             R0, R5; int
43F10A:  BLX             j__Z17FindPlayerHeadingi; FindPlayerHeading(int)
43F10E:  MOV             R6, R0
43F110:  LDR.W           R0, [R8]; this
43F114:  BLX             j__ZNK10CPlayerPed8IsHiddenEv; CPlayerPed::IsHidden(void)
43F118:  CMP             R0, #1
43F11A:  BNE             loc_43F12A
43F11C:  LDR             R0, [SP,#0x90+var_64]
43F11E:  MOVS            R1, #0x32 ; '2'
43F120:  STR             R0, [SP,#0x90+var_90]
43F122:  ADD             R0, SP, #0x90+var_58
43F124:  MOVS            R2, #0x32 ; '2'
43F126:  MOVS            R3, #0x50 ; 'P'
43F128:  B               loc_43F136
43F12A:  LDR             R0, [SP,#0x90+var_64]
43F12C:  MOVS            R1, #0xFF; unsigned __int8
43F12E:  STR             R0, [SP,#0x90+var_90]; unsigned __int8
43F130:  ADD             R0, SP, #0x90+var_58; this
43F132:  MOVS            R2, #0xFF; unsigned __int8
43F134:  MOVS            R3, #0xFF; unsigned __int8
43F136:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
43F13A:  LDRB.W          R0, [R9,#(byte_951FFF - 0x951FA8)]
43F13E:  VMOV            S0, R6
43F142:  ADD.W           R0, R0, R0,LSL#5
43F146:  ADD.W           R0, R9, R0,LSL#4
43F14A:  LDRH.W          R0, [R0,#0x17E]
43F14E:  CMP             R0, #1
43F150:  BNE             loc_43F170
43F152:  VADD.F32        S0, S0, S24
43F156:  LDR             R0, [SP,#0x90+var_58]
43F158:  STR             R0, [SP,#0x90+var_5C]
43F15A:  MOV.W           R0, #0x3F800000
43F15E:  STR             R0, [SP,#0x90+var_90]
43F160:  ADD             R0, SP, #0x90+var_5C
43F162:  STR             R0, [SP,#0x90+var_8C]
43F164:  VMOV            R1, S16
43F168:  VMOV            R2, S18
43F16C:  LDR             R0, [SP,#0x90+var_70]
43F16E:  B               loc_43F198
43F170:  LDR             R0, =(dword_994EC8 - 0x43F17E)
43F172:  VMOV            R1, S16
43F176:  VMOV            R2, S18
43F17A:  ADD             R0, PC; dword_994EC8
43F17C:  VLDR            S2, [R0]
43F180:  LDR             R0, [SP,#0x90+var_58]
43F182:  VADD.F32        S2, S2, S24
43F186:  STR             R0, [SP,#0x90+var_60]
43F188:  MOV.W           R0, #0x3F800000
43F18C:  STR             R0, [SP,#0x90+var_90]
43F18E:  ADD             R0, SP, #0x90+var_60
43F190:  STR             R0, [SP,#0x90+var_8C]
43F192:  LDR             R0, [SP,#0x90+var_74]
43F194:  VSUB.F32        S0, S0, S2
43F198:  VMOV            R3, S0
43F19C:  BLX             j__ZN6CRadar23DrawRotatingRadarSpriteEP9CSprite2dffff5CRGBA; CRadar::DrawRotatingRadarSprite(CSprite2d *,float,float,float,float,CRGBA)
43F1A0:  ADDS            R5, #1
43F1A2:  ADD.W           R8, R8, #0x194
43F1A6:  CMP             R5, #2
43F1A8:  BNE.W           loc_43EFDC
43F1AC:  ADD             SP, SP, #0x48 ; 'H'
43F1AE:  VPOP            {D8-D12}
43F1B2:  ADD             SP, SP, #4
43F1B4:  POP.W           {R8-R11}
43F1B8:  POP             {R4-R7,PC}
