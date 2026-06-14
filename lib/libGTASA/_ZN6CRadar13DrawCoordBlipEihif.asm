; =========================================================
; Game Engine Function: _ZN6CRadar13DrawCoordBlipEihif
; Address            : 0x43FA18 - 0x43FBF2
; =========================================================

43FA18:  PUSH            {R4-R7,LR}
43FA1A:  ADD             R7, SP, #0xC
43FA1C:  PUSH.W          {R8-R11}
43FA20:  SUB             SP, SP, #4
43FA22:  VPUSH           {D8-D11}
43FA26:  SUB             SP, SP, #0x48
43FA28:  MOV             R10, R0
43FA2A:  LDR.W           R0, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x43FA3A)
43FA2E:  ADD.W           R4, R10, R10,LSL#2
43FA32:  STRD.W          R3, R2, [SP,#0x88+var_78]
43FA36:  ADD             R0, PC; _ZN6CRadar13ms_RadarTraceE_ptr
43FA38:  MOV             R11, R1
43FA3A:  LDR             R0, [R0]; CRadar::ms_RadarTrace ...
43FA3C:  ADD.W           R5, R0, R4,LSL#3
43FA40:  LDRH.W          R0, [R5,#0x25]!; this
43FA44:  AND.W           R1, R0, #0x3C00
43FA48:  CMP.W           R1, #0x1400
43FA4C:  BNE             loc_43FA58
43FA4E:  BLX             j__ZN11CTheScripts18IsPlayerOnAMissionEv; CTheScripts::IsPlayerOnAMission(void)
43FA52:  CMP             R0, #0
43FA54:  BNE             loc_43FAF6
43FA56:  LDRH            R0, [R5]
43FA58:  UBFX.W          R2, R0, #6, #2
43FA5C:  CMP             R2, #0
43FA5E:  BEQ             loc_43FB04
43FA60:  MOVS            R1, #0
43FA62:  CMP             R2, #1
43FA64:  IT EQ
43FA66:  MOVEQ           R1, #0xE
43FA68:  B               loc_43FB30; jumptable 0043FB1A case 8
43FA6A:  UBFX.W          R0, R0, #8, #2
43FA6E:  CMP             R0, #3
43FA70:  BNE             loc_43FA7A
43FA72:  LDR.W           R0, =(_ZN11CTheScripts7DbgFlagE_ptr - 0x43FA7A)
43FA76:  ADD             R0, PC; _ZN11CTheScripts7DbgFlagE_ptr
43FA78:  B               loc_43FA84
43FA7A:  CMP             R0, #1
43FA7C:  BNE             loc_43FAD4
43FA7E:  LDR.W           R0, =(_ZN11CTheScripts7DbgFlagE_ptr - 0x43FA86)
43FA82:  ADD             R0, PC; _ZN11CTheScripts7DbgFlagE_ptr
43FA84:  LDR             R0, [R0]; CTheScripts::DbgFlag ...
43FA86:  LDRB            R0, [R0]; CTheScripts::DbgFlag
43FA88:  CBZ             R0, loc_43FAD4
43FA8A:  LDR.W           R0, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x43FA94)
43FA8E:  MOV             R3, R9
43FA90:  ADD             R0, PC; _ZN6CRadar13ms_RadarTraceE_ptr
43FA92:  LDR             R0, [R0]; CRadar::ms_RadarTrace ...
43FA94:  ADD.W           R6, R0, R4,LSL#3
43FA98:  ADD.W           R2, R6, #8
43FA9C:  LDM             R2, {R0-R2}
43FA9E:  VLDR            S0, [R6,#0x18]
43FAA2:  VSTR            S0, [SP,#0x88+var_88]
43FAA6:  BLX             j__ZN6CRadar15ShowRadarMarkerE7CVectorjf; CRadar::ShowRadarMarker(CVector,uint,float)
43FAAA:  VLDR            S0, =-0.1
43FAAE:  VLDR            S2, [R6,#0x18]
43FAB2:  VADD.F32        S0, S2, S0
43FAB6:  VMOV.F32        S2, #1.0
43FABA:  VSTR            S0, [R6,#0x18]
43FABE:  VCMPE.F32       S0, S2
43FAC2:  VMRS            APSR_nzcv, FPSCR
43FAC6:  ITTTT LT
43FAC8:  ADDLT.W         R0, R6, #0x18
43FACC:  MOVLT           R1, #0
43FACE:  MOVTLT          R1, #0x40A0
43FAD2:  STRLT           R1, [R0]
43FAD4:  LDR.W           R0, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x43FADE)
43FAD8:  MOVS            R1, #0
43FADA:  ADD             R0, PC; _ZN6CRadar13ms_RadarTraceE_ptr
43FADC:  LDR             R0, [R0]; CRadar::ms_RadarTrace ...
43FADE:  ADD.W           R8, R0, R4,LSL#3
43FAE2:  LDRB.W          R0, [R8,#0x24]!
43FAE6:  CMP             R0, #0
43FAE8:  IT EQ
43FAEA:  MOVEQ           R1, #1
43FAEC:  CMP             R11, R1
43FAEE:  BEQ             loc_43FAF6
43FAF0:  LDRB            R0, [R5,#1]
43FAF2:  LSLS            R0, R0, #0x1E
43FAF4:  BMI             loc_43FB4C
43FAF6:  ADD             SP, SP, #0x48 ; 'H'
43FAF8:  VPOP            {D8-D11}
43FAFC:  ADD             SP, SP, #4
43FAFE:  POP.W           {R8-R11}
43FB02:  POP             {R4-R7,PC}
43FB04:  LDR             R1, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x43FB0A)
43FB06:  ADD             R1, PC; _ZN6CRadar13ms_RadarTraceE_ptr
43FB08:  LDR             R1, [R1]; CRadar::ms_RadarTrace ...
43FB0A:  LDR.W           R9, [R1,R4,LSL#3]
43FB0E:  B               loc_43FB36
43FB10:  LSRS            R0, R1, #0x1C
43FB12:  BHI             loc_43FA6A
43FB14:  AND.W           R0, R0, #1
43FB18:  MOVS            R1, #0xC
43FB1A:  TBH.W           [PC,R9,LSL#1]; switch 9 cases
43FB1E:  DCW 0x12; jump table for switch statement
43FB20:  DCW 0x199
43FB22:  DCW 0x196
43FB24:  DCW 0x19E
43FB26:  DCW 0x1A3
43FB28:  DCW 0x12
43FB2A:  DCW 0x196
43FB2C:  DCW 0x1A8
43FB2E:  DCW 9
43FB30:  LDR             R0, =(HudColour_ptr - 0x43FB38); jumptable 0043FB1A case 8
43FB32:  UXTB            R1, R1; unsigned __int8
43FB34:  ADD             R0, PC; HudColour_ptr
43FB36:  MOV             R0, R9; this
43FB38:  BLX             j__ZN11CHudColours12GetIntColourEh; CHudColours::GetIntColour(uchar)
43FB3C:  MOV             R9, R0
43FB3E:  LDRH            R0, [R5]
43FB40:  B               loc_43FA6A
43FB42:  MOVS            R1, #0; jumptable 0043FB1A cases 0,5
43FB44:  CMP             R0, #0
43FB46:  IT EQ
43FB48:  MOVEQ           R1, #0xA
43FB4A:  B               loc_43FB30; jumptable 0043FB1A case 8
43FB4C:  LDR             R0, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x43FB52)
43FB4E:  ADD             R0, PC; _ZN6CRadar13ms_RadarTraceE_ptr
43FB50:  LDR             R0, [R0]; CRadar::ms_RadarTrace ...
43FB52:  ADD.W           R0, R0, R4,LSL#3
43FB56:  LDR             R1, [R0,#0x10]
43FB58:  VLDR            D16, [R0,#8]
43FB5C:  LDR             R0, [R0,#0x20]; this
43FB5E:  STR             R1, [SP,#0x88+var_48]
43FB60:  CMP             R0, #0
43FB62:  VSTR            D16, [SP,#0x88+var_50]
43FB66:  ITT NE
43FB68:  ADDNE.W         R1, SP, #0x88+var_50; CVector *
43FB6C:  BLXNE           j__ZN10CEntryExit33GetPositionRelativeToOutsideWorldER7CVector; CEntryExit::GetPositionRelativeToOutsideWorld(CVector &)
43FB70:  LDR             R0, =(_ZN6CRadar12m_radarRangeE_ptr - 0x43FB7E)
43FB72:  VMOV.F32        S0, #1.0
43FB76:  VLDR            S4, [SP,#0x88+var_50]
43FB7A:  ADD             R0, PC; _ZN6CRadar12m_radarRangeE_ptr
43FB7C:  VLDR            S6, [SP,#0x88+var_50+4]
43FB80:  LDR             R1, =(dword_994EE8 - 0x43FB88)
43FB82:  LDR             R0, [R0]; CRadar::m_radarRange ...
43FB84:  ADD             R1, PC; dword_994EE8
43FB86:  VLDR            S2, [R0]
43FB8A:  LDR             R0, =(_ZN6CRadar16vec2DRadarOriginE_ptr - 0x43FB94)
43FB8C:  VDIV.F32        S2, S0, S2
43FB90:  ADD             R0, PC; _ZN6CRadar16vec2DRadarOriginE_ptr
43FB92:  LDR             R0, [R0]; CRadar::vec2DRadarOrigin ...
43FB94:  VLDR            S8, [R0]
43FB98:  VLDR            S10, [R0,#4]
43FB9C:  VSUB.F32        S4, S4, S8
43FBA0:  LDR             R0, =(dword_994EEC - 0x43FBAE)
43FBA2:  VSUB.F32        S6, S6, S10
43FBA6:  VLDR            S8, [R1]
43FBAA:  ADD             R0, PC; dword_994EEC
43FBAC:  VMUL.F32        S4, S4, S2
43FBB0:  VMUL.F32        S2, S6, S2
43FBB4:  VLDR            S6, [R0]
43FBB8:  LDR             R0, =(gMobileMenu_ptr - 0x43FBBE)
43FBBA:  ADD             R0, PC; gMobileMenu_ptr
43FBBC:  LDR             R0, [R0]; gMobileMenu
43FBBE:  VMUL.F32        S10, S6, S4
43FBC2:  VMUL.F32        S12, S8, S2
43FBC6:  VMUL.F32        S6, S6, S2
43FBCA:  LDRB.W          R0, [R0,#(byte_6E00D8 - 0x6E006C)]
43FBCE:  VMUL.F32        S4, S8, S4
43FBD2:  CMP             R0, #0
43FBD4:  VSUB.F32        S2, S12, S10
43FBD8:  VADD.F32        S4, S4, S6
43FBDC:  VMUL.F32        S6, S2, S2
43FBE0:  VMUL.F32        S8, S4, S4
43FBE4:  VADD.F32        S6, S8, S6
43FBE8:  VSQRT.F32       S8, S6
43FBEC:  NOP
43FBEE:  B.W             loc_3F66E6; unsigned __int8
