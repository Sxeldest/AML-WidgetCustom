; =========================================================
; Game Engine Function: _ZN6CRadar26SetMapCentreToPlayerCoordsEv
; Address            : 0x441EF4 - 0x44200E
; =========================================================

441EF4:  PUSH            {R4,R6,R7,LR}
441EF6:  ADD             R7, SP, #8
441EF8:  SUB             SP, SP, #0x10
441EFA:  MOV.W           R0, #0xFFFFFFFF; int
441EFE:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
441F02:  CMP             R0, #0
441F04:  BEQ.W           loc_44200A
441F08:  LDR             R0, =(gMobileMenu_ptr - 0x441F10)
441F0A:  MOVS            R1, #1
441F0C:  ADD             R0, PC; gMobileMenu_ptr
441F0E:  LDR             R0, [R0]; gMobileMenu ; this
441F10:  STRB.W          R1, [R0,#(byte_6E00D8 - 0x6E006C)]
441F14:  BLX             j__ZN6CRadar15InitFrontEndMapEv; CRadar::InitFrontEndMap(void)
441F18:  ADD             R0, SP, #0x18+var_14; int
441F1A:  MOVS            R1, #0
441F1C:  MOVS            R4, #0
441F1E:  BLX             j__Z29FindPlayerCentreOfWorldForMapi; FindPlayerCentreOfWorldForMap(int)
441F22:  LDR             R0, =(_ZN11CTheScripts23HideAllFrontEndMapBlipsE_ptr - 0x441F2A)
441F24:  LDR             R1, =(_ZN11CTheScripts18bPlayerIsOffTheMapE_ptr - 0x441F2C)
441F26:  ADD             R0, PC; _ZN11CTheScripts23HideAllFrontEndMapBlipsE_ptr
441F28:  ADD             R1, PC; _ZN11CTheScripts18bPlayerIsOffTheMapE_ptr
441F2A:  LDR             R0, [R0]; CTheScripts::HideAllFrontEndMapBlips ...
441F2C:  LDR             R1, [R1]; CTheScripts::bPlayerIsOffTheMap ...
441F2E:  LDRB            R0, [R0]; CTheScripts::HideAllFrontEndMapBlips
441F30:  LDRB            R1, [R1]; CTheScripts::bPlayerIsOffTheMap
441F32:  ORRS            R0, R1
441F34:  LSLS            R0, R0, #0x18
441F36:  BEQ             loc_441F46
441F38:  VLDR            S2, =0.0
441F3C:  STRD.W          R4, R4, [SP,#0x18+var_14]
441F40:  VMOV.F32        S4, S2
441F44:  B               loc_441F4E
441F46:  VLDR            S4, [SP,#0x18+var_14]
441F4A:  VLDR            S2, [SP,#0x18+var_10]
441F4E:  LDR             R0, =(_ZN6CRadar12m_radarRangeE_ptr - 0x441F5A)
441F50:  VMOV.F32        S0, #1.0
441F54:  LDR             R1, =(dword_994EE8 - 0x441F5C)
441F56:  ADD             R0, PC; _ZN6CRadar12m_radarRangeE_ptr
441F58:  ADD             R1, PC; dword_994EE8
441F5A:  LDR             R0, [R0]; CRadar::m_radarRange ...
441F5C:  VLDR            S6, [R0]
441F60:  LDR             R0, =(_ZN6CRadar16vec2DRadarOriginE_ptr - 0x441F6A)
441F62:  VDIV.F32        S6, S0, S6
441F66:  ADD             R0, PC; _ZN6CRadar16vec2DRadarOriginE_ptr
441F68:  LDR             R0, [R0]; CRadar::vec2DRadarOrigin ...
441F6A:  VLDR            S8, [R0]
441F6E:  VLDR            S10, [R0,#4]
441F72:  VSUB.F32        S4, S4, S8
441F76:  LDR             R0, =(dword_994EEC - 0x441F84)
441F78:  VSUB.F32        S2, S2, S10
441F7C:  VLDR            S8, [R1]
441F80:  ADD             R0, PC; dword_994EEC
441F82:  VMUL.F32        S4, S4, S6
441F86:  VMUL.F32        S2, S2, S6
441F8A:  VLDR            S6, [R0]
441F8E:  LDR             R0, =(gMobileMenu_ptr - 0x441F94)
441F90:  ADD             R0, PC; gMobileMenu_ptr
441F92:  LDR             R0, [R0]; gMobileMenu
441F94:  VMUL.F32        S10, S6, S4
441F98:  VMUL.F32        S12, S8, S2
441F9C:  VMUL.F32        S6, S6, S2
441FA0:  LDRB.W          R0, [R0,#(byte_6E00D8 - 0x6E006C)]
441FA4:  VMUL.F32        S4, S8, S4
441FA8:  CMP             R0, #0
441FAA:  VSUB.F32        S2, S12, S10
441FAE:  VADD.F32        S4, S4, S6
441FB2:  BNE             loc_441FDA
441FB4:  VMUL.F32        S6, S2, S2
441FB8:  VMUL.F32        S8, S4, S4
441FBC:  VADD.F32        S6, S8, S6
441FC0:  VSQRT.F32       S6, S6
441FC4:  VCMPE.F32       S6, S0
441FC8:  VMRS            APSR_nzcv, FPSCR
441FCC:  BLE             loc_441FDA
441FCE:  VDIV.F32        S0, S0, S6
441FD2:  VMUL.F32        S2, S2, S0
441FD6:  VMUL.F32        S4, S4, S0
441FDA:  LDR             R0, =(gMobileMenu_ptr - 0x441FE6)
441FDC:  MOVS            R1, #0
441FDE:  VLDR            S6, =224.0
441FE2:  ADD             R0, PC; gMobileMenu_ptr
441FE4:  LDR             R0, [R0]; gMobileMenu
441FE6:  VLDR            S0, [R0,#0x58]
441FEA:  STRB.W          R1, [R0,#(byte_6E00D8 - 0x6E006C)]
441FEE:  VMUL.F32        S4, S4, S0
441FF2:  VMUL.F32        S0, S2, S0
441FF6:  VLDR            S2, =320.0
441FFA:  VSUB.F32        S2, S2, S4
441FFE:  VADD.F32        S0, S0, S6
442002:  VSTR            S2, [R0,#0x5C]
442006:  VSTR            S0, [R0,#0x60]
44200A:  ADD             SP, SP, #0x10
44200C:  POP             {R4,R6,R7,PC}
