; =========================================================
; Game Engine Function: _ZN7CPickup23PickUpShouldBeInvisibleEv
; Address            : 0x31FA70 - 0x31FBAE
; =========================================================

31FA70:  PUSH            {R4,R5,R7,LR}
31FA72:  ADD             R7, SP, #8
31FA74:  MOV             R4, R0
31FA76:  LDR             R0, =(_ZN12CCutsceneMgr10ms_runningE_ptr - 0x31FA7C)
31FA78:  ADD             R0, PC; _ZN12CCutsceneMgr10ms_runningE_ptr
31FA7A:  LDR             R0, [R0]; CCutsceneMgr::ms_running ...
31FA7C:  LDRB            R0, [R0]; CCutsceneMgr::ms_running
31FA7E:  CBZ             R0, loc_31FA86
31FA80:  MOVS            R5, #1
31FA82:  MOV             R0, R5
31FA84:  POP             {R4,R5,R7,PC}
31FA86:  LDR             R0, =(MI_PICKUP_KILLFRENZY_ptr - 0x31FA8E)
31FA88:  LDRH            R1, [R4,#0x18]
31FA8A:  ADD             R0, PC; MI_PICKUP_KILLFRENZY_ptr
31FA8C:  LDR             R0, [R0]; MI_PICKUP_KILLFRENZY
31FA8E:  LDRH            R0, [R0]; this
31FA90:  CMP             R1, R0
31FA92:  BNE             loc_31FAAC
31FA94:  BLX             j__ZN11CTheScripts18IsPlayerOnAMissionEv; CTheScripts::IsPlayerOnAMission(void)
31FA98:  CMP             R0, #0
31FA9A:  BNE             loc_31FA80
31FA9C:  BLX             j__ZN7CDarkel13FrenzyOnGoingEv; CDarkel::FrenzyOnGoing(void)
31FAA0:  CMP             R0, #0
31FAA2:  BNE             loc_31FA80
31FAA4:  BLX             j__ZN13CLocalisation10KillFrenzyEv; CLocalisation::KillFrenzy(void)
31FAA8:  CMP             R0, #0
31FAAA:  BEQ             loc_31FA80
31FAAC:  LDRB            R0, [R4,#0x1C]
31FAAE:  CMP             R0, #0x15
31FAB0:  BNE             loc_31FAC0
31FAB2:  MOVS            R0, #1; int
31FAB4:  MOVS            R5, #1
31FAB6:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
31FABA:  CBZ             R0, loc_31FAC0
31FABC:  MOV             R0, R5
31FABE:  POP             {R4,R5,R7,PC}
31FAC0:  LDR             R0, =(MI_PICKUP_2P_KILLFRENZY_ptr - 0x31FAC8)
31FAC2:  LDRH            R1, [R4,#0x18]
31FAC4:  ADD             R0, PC; MI_PICKUP_2P_KILLFRENZY_ptr
31FAC6:  LDR             R0, [R0]; MI_PICKUP_2P_KILLFRENZY
31FAC8:  LDRH            R0, [R0]; this
31FACA:  CMP             R1, R0
31FACC:  BNE             loc_31FB2C
31FACE:  BLX             j__ZN13CLocalisation10GermanGameEv; CLocalisation::GermanGame(void)
31FAD2:  CBZ             R0, loc_31FB2C
31FAD4:  ADD.W           R0, R4, #0x10
31FAD8:  VLD1.32         {D16[0]}, [R0@32]
31FADC:  VMOVL.S16       Q8, D16
31FAE0:  VCVT.F32.S32    D16, D16
31FAE4:  VMOV.I32        D17, #0x3E000000
31FAE8:  VMUL.F32        D16, D16, D17
31FAEC:  VLDR            D17, =2.95148016e23
31FAF0:  VADD.F32        D17, D16, D17
31FAF4:  VMUL.F32        D0, D17, D17
31FAF8:  VADD.F32        S0, S0, S1
31FAFC:  VSQRT.F32       S2, S0
31FB00:  VMOV.F32        S0, #10.0
31FB04:  VCMPE.F32       S2, S0
31FB08:  VMRS            APSR_nzcv, FPSCR
31FB0C:  BLT             loc_31FA80
31FB0E:  VLDR            D17, =-2.71536211e22
31FB12:  VADD.F32        D16, D16, D17
31FB16:  VMUL.F32        D1, D16, D16
31FB1A:  VADD.F32        S2, S2, S3
31FB1E:  VSQRT.F32       S2, S2
31FB22:  VCMPE.F32       S2, S0
31FB26:  VMRS            APSR_nzcv, FPSCR
31FB2A:  BLT             loc_31FA80
31FB2C:  LDR             R0, =(TheCamera_ptr - 0x31FB32)
31FB2E:  ADD             R0, PC; TheCamera_ptr
31FB30:  LDR             R0, [R0]; TheCamera
31FB32:  LDRB.W          R0, [R0,#(byte_951FE3 - 0x951FA8)]
31FB36:  CMP             R0, #0
31FB38:  ITT NE
31FB3A:  LDRBNE          R0, [R4,#0x1C]
31FB3C:  CMPNE           R0, #0x10
31FB3E:  BEQ             loc_31FB48
31FB40:  LDRH            R0, [R4,#0x18]; this
31FB42:  CMP.W           R0, #0x16E
31FB46:  BNE             loc_31FA80
31FB48:  BLX             j__ZN10CGameLogic17IsCoopGameGoingOnEv; CGameLogic::IsCoopGameGoingOn(void)
31FB4C:  CMP             R0, #1
31FB4E:  BNE             loc_31FB8C
31FB50:  LDR             R0, =(MI_PICKUP_BODYARMOUR_ptr - 0x31FB56)
31FB52:  ADD             R0, PC; MI_PICKUP_BODYARMOUR_ptr
31FB54:  LDR             R1, [R0]; MI_PICKUP_BODYARMOUR
31FB56:  LDRH            R0, [R4,#0x18]
31FB58:  LDRH            R1, [R1]
31FB5A:  CMP             R1, R0
31FB5C:  BEQ             loc_31FB76
31FB5E:  LDR             R1, =(MI_PICKUP_HEALTH_ptr - 0x31FB64)
31FB60:  ADD             R1, PC; MI_PICKUP_HEALTH_ptr
31FB62:  LDR             R1, [R1]; MI_PICKUP_HEALTH
31FB64:  LDRH            R1, [R1]
31FB66:  CMP             R1, R0
31FB68:  BEQ             loc_31FB80
31FB6A:  LDR             R1, =(MI_PICKUP_ADRENALINE_ptr - 0x31FB70)
31FB6C:  ADD             R1, PC; MI_PICKUP_ADRENALINE_ptr
31FB6E:  LDR             R1, [R1]; MI_PICKUP_ADRENALINE
31FB70:  LDRH            R1, [R1]
31FB72:  CMP             R1, R0
31FB74:  BNE             loc_31FB7A
31FB76:  MOVS            R0, #0x30 ; '0'
31FB78:  B               loc_31FB82
31FB7A:  CMP.W           R0, #0x172
31FB7E:  BNE             loc_31FB92
31FB80:  MOVS            R0, #0x2F ; '/'
31FB82:  BLX             j__ZN7CWeapon19CanBeUsedFor2PlayerE11eWeaponType; CWeapon::CanBeUsedFor2Player(eWeaponType)
31FB86:  CMP             R0, #1
31FB88:  BNE.W           loc_31FA80
31FB8C:  MOVS            R5, #0
31FB8E:  MOV             R0, R5
31FB90:  POP             {R4,R5,R7,PC}
31FB92:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x31FB98)
31FB94:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
31FB96:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
31FB98:  LDR.W           R4, [R1,R0,LSL#2]
31FB9C:  LDR             R0, [R4]
31FB9E:  LDR             R1, [R0,#0x14]
31FBA0:  MOV             R0, R4
31FBA2:  BLX             R1
31FBA4:  CMP             R0, #4
31FBA6:  ITE EQ
31FBA8:  LDREQ           R0, [R4,#0x3C]
31FBAA:  MOVNE           R0, #0
31FBAC:  B               loc_31FB82
