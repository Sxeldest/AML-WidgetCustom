; =========================================================
; Game Engine Function: _ZN6CStats19UpdateSexAppealStatEv
; Address            : 0x41A9A4 - 0x41AB10
; =========================================================

41A9A4:  PUSH            {R4,R5,R7,LR}
41A9A6:  ADD             R7, SP, #8
41A9A8:  VPUSH           {D8-D10}
41A9AC:  SUB             SP, SP, #0x10
41A9AE:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41A9BE)
41A9B0:  VMOV.F32        S18, #0.5
41A9B4:  MOVS            R1, #0; bool
41A9B6:  VLDR            S16, =0.0
41A9BA:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41A9BC:  LDR             R0, [R0]; CStats::StatTypesFloat ...
41A9BE:  VLDR            S0, [R0,#0x140]
41A9C2:  MOV.W           R0, #0xFFFFFFFF; int
41A9C6:  VMUL.F32        S20, S0, S18
41A9CA:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
41A9CE:  CBZ             R0, loc_41A9E4
41A9D0:  MOV.W           R0, #0xFFFFFFFF; int
41A9D4:  MOVS            R1, #0; bool
41A9D6:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
41A9DA:  LDR             R1, =(dword_965AE8 - 0x41A9E0)
41A9DC:  ADD             R1, PC; dword_965AE8 ; CEntity **
41A9DE:  STR             R0, [R1]
41A9E0:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
41A9E4:  LDR             R0, =(dword_965AE8 - 0x41A9F2)
41A9E6:  VADD.F32        S20, S20, S16
41A9EA:  VMOV            D0, D8
41A9EE:  ADD             R0, PC; dword_965AE8
41A9F0:  LDR             R4, [R0]
41A9F2:  CMP             R4, #0
41A9F4:  BEQ             loc_41AAA2
41A9F6:  MOV             R0, SP; int
41A9F8:  MOV.W           R1, #0xFFFFFFFF
41A9FC:  LDR             R5, [R4,#0x14]
41A9FE:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
41AA02:  ADD.W           R0, R5, #0x30 ; '0'
41AA06:  CMP             R5, #0
41AA08:  VLDR            D16, [SP,#0x30+var_30]
41AA0C:  IT EQ
41AA0E:  ADDEQ           R0, R4, #4
41AA10:  VLDR            D17, [R0]
41AA14:  VSUB.F32        D16, D17, D16
41AA18:  VLDR            S2, =35.0
41AA1C:  VMUL.F32        D0, D16, D16
41AA20:  VADD.F32        S0, S0, S1
41AA24:  VSQRT.F32       S0, S0
41AA28:  VCMPE.F32       S0, S2
41AA2C:  VMOV            D0, D8
41AA30:  VMRS            APSR_nzcv, FPSCR
41AA34:  BGE             loc_41AAA2
41AA36:  LDR             R0, =(dword_965AE8 - 0x41AA40)
41AA38:  VLDR            S2, =-1000.0
41AA3C:  ADD             R0, PC; dword_965AE8
41AA3E:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x41AA4A)
41AA40:  VLDR            S4, =1000.0
41AA44:  LDR             R0, [R0]
41AA46:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
41AA48:  ADDW            R2, R0, #0x4CC
41AA4C:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
41AA4E:  LDRSH.W         R0, [R0,#0x26]
41AA52:  VLDR            S0, [R2]
41AA56:  VADD.F32        S0, S0, S0
41AA5A:  LDR.W           R0, [R1,R0,LSL#2]
41AA5E:  LDRSB.W         R0, [R0,#0x65]
41AA62:  CMP             R0, #0xB
41AA64:  VADD.F32        S0, S0, S2
41AA68:  VLDR            S2, =0.0
41AA6C:  VMIN.F32        D16, D0, D2
41AA70:  VMAX.F32        D0, D16, D1
41AA74:  BHI             loc_41AB0A
41AA76:  MOVS            R1, #1
41AA78:  MOVW            R2, #0x8A2
41AA7C:  LSLS            R1, R0
41AA7E:  TST             R1, R2
41AA80:  BNE             loc_41AA9A
41AA82:  TST.W           R1, #0x20C
41AA86:  BNE             loc_41AAA2
41AA88:  MOVS            R1, #1
41AA8A:  LSL.W           R0, R1, R0
41AA8E:  TST.W           R0, #0x450
41AA92:  BEQ             loc_41AB0A
41AA94:  VLDR            S2, =0.3
41AA98:  B               loc_41AA9E
41AA9A:  VLDR            S2, =0.1
41AA9E:  VMUL.F32        S0, S0, S2
41AAA2:  VMUL.F32        S2, S0, S18
41AAA6:  LDR             R0, =(_ZN14CLoadingScreen9m_bActiveE_ptr - 0x41AAB0)
41AAA8:  VLDR            S0, =1000.0
41AAAC:  ADD             R0, PC; _ZN14CLoadingScreen9m_bActiveE_ptr
41AAAE:  LDR             R0, [R0]; CLoadingScreen::m_bActive ...
41AAB0:  VADD.F32        S2, S20, S2
41AAB4:  LDRB            R0, [R0]; CLoadingScreen::m_bActive
41AAB6:  CMP             R0, #0
41AAB8:  VMAX.F32        D16, D1, D8
41AABC:  VMIN.F32        D1, D16, D0
41AAC0:  BEQ             loc_41AAC8
41AAC2:  VMOV            D0, D1
41AAC6:  B               loc_41AAF2
41AAC8:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x41AACE)
41AACA:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
41AACC:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
41AACE:  LDRB.W          R0, [R0,#(byte_79684C - 0x7967F4)]
41AAD2:  CBZ             R0, loc_41AAD8
41AAD4:  MOVS            R0, #1
41AAD6:  B               loc_41AAEA
41AAD8:  LDR             R0, =(_ZN6CStats13usingSexCheatE_ptr - 0x41AADE)
41AADA:  ADD             R0, PC; _ZN6CStats13usingSexCheatE_ptr
41AADC:  LDR             R0, [R0]; CStats::usingSexCheat ...
41AADE:  LDRB            R0, [R0]; CStats::usingSexCheat
41AAE0:  CMP             R0, #0
41AAE2:  BEQ             loc_41AAC2
41AAE4:  VMOV            D0, D1
41AAE8:  MOVS            R0, #0
41AAEA:  LDR             R1, =(_ZN6CStats13usingSexCheatE_ptr - 0x41AAF0)
41AAEC:  ADD             R1, PC; _ZN6CStats13usingSexCheatE_ptr
41AAEE:  LDR             R1, [R1]; bool
41AAF0:  STRB            R0, [R1]; CStats::usingSexCheat
41AAF2:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41AAF8)
41AAF4:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
41AAF6:  LDR             R0, [R0]; CStats::StatTypesFloat ...
41AAF8:  VSTR            S0, [R0,#0x64]
41AAFC:  MOVS            R0, #0; this
41AAFE:  BLX             j__ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
41AB02:  ADD             SP, SP, #0x10
41AB04:  VPOP            {D8-D10}
41AB08:  POP             {R4,R5,R7,PC}
41AB0A:  VMUL.F32        S0, S0, S18
41AB0E:  B               loc_41AAA2
