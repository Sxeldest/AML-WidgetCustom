; =========================================================
; Game Engine Function: _ZN5CBoatC2Eih
; Address            : 0x56AE6C - 0x56B0B2
; =========================================================

56AE6C:  PUSH            {R4-R7,LR}; Alternative name is 'CBoat::CBoat(int, unsigned char)'
56AE6E:  ADD             R7, SP, #0xC
56AE70:  PUSH.W          {R8-R10}
56AE74:  VPUSH           {D8-D9}
56AE78:  SUB             SP, SP, #8
56AE7A:  MOV             R5, R1
56AE7C:  MOV             R1, R2; unsigned __int8
56AE7E:  MOV             R4, R0
56AE80:  BLX             j__ZN8CVehicleC2Eh; CVehicle::CVehicle(uchar)
56AE84:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x56AE94)
56AE86:  VMOV.I32        Q4, #0
56AE8A:  LDR             R1, =(_ZTV5CBoat_ptr - 0x56AE98)
56AE8C:  ADDW            R10, R4, #0x5F4
56AE90:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
56AE92:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x56AEA0)
56AE94:  ADD             R1, PC; _ZTV5CBoat_ptr
56AE96:  MOV.W           R9, #0
56AE9A:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
56AE9C:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
56AE9E:  LDR             R1, [R1]; `vtable for'CBoat ...
56AEA0:  STR.W           R9, [R4,#0x608]
56AEA4:  VST1.32         {D8-D9}, [R10]
56AEA8:  ADDS            R1, #8
56AEAA:  STR.W           R9, [R4,#0x604]
56AEAE:  STR             R1, [R4]
56AEB0:  ADDW            R1, R4, #0x624
56AEB4:  LDR.W           R8, [R0,R5,LSL#2]
56AEB8:  LDR             R0, [R2]; CTimer::m_snTimeInMilliseconds ...
56AEBA:  LDRH.W          R6, [R8,#0x62]
56AEBE:  VST1.32         {D8-D9}, [R1]
56AEC2:  MOVS            R1, #5
56AEC4:  STR.W           R9, [R4,#0x634]
56AEC8:  STR.W           R9, [R4,#0x638]
56AECC:  STR.W           R1, [R4,#0x5A0]
56AED0:  STR.W           R1, [R4,#0x5A4]
56AED4:  MOV             R1, R5; unsigned int
56AED6:  STRB.W          R9, [R4,#0x651]
56AEDA:  STR.W           R9, [R4,#0x5B4]
56AEDE:  STR.W           R9, [R4,#0x5B8]
56AEE2:  STR.W           R9, [R4,#0x5BC]
56AEE6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
56AEE8:  STR.W           R0, [R4,#0x614]
56AEEC:  MOV             R0, R4; this
56AEEE:  BLX             j__ZN8CVehicle13SetModelIndexEj; CVehicle::SetModelIndex(uint)
56AEF2:  ADDW            R0, R4, #0x5E4
56AEF6:  ADDW            R1, R4, #0x5C4
56AEFA:  VST1.32         {D8-D9}, [R0]
56AEFE:  ADDW            R0, R4, #0x5D4
56AF02:  VST1.32         {D8-D9}, [R0]
56AF06:  LDR             R0, [R4,#0x18]
56AF08:  VST1.32         {D8-D9}, [R1]
56AF0C:  BLX             j__ZN15CClumpModelInfo14FillFrameArrayEP7RpClumpPP7RwFrame; CClumpModelInfo::FillFrameArray(RpClump *,RwFrame **)
56AF10:  LDR             R0, =(mod_HandlingManager_ptr - 0x56AF16)
56AF12:  ADD             R0, PC; mod_HandlingManager_ptr
56AF14:  LDR             R5, [R0]; mod_HandlingManager
56AF16:  RSB.W           R0, R6, R6,LSL#3
56AF1A:  ADD.W           R0, R5, R0,LSL#5
56AF1E:  ADD.W           R1, R0, #0x14
56AF22:  STR.W           R1, [R4,#0x388]
56AF26:  LDR.W           R0, [R0,#0xE4]
56AF2A:  MOV             R1, R6; unsigned __int8
56AF2C:  STR.W           R0, [R4,#0x390]
56AF30:  MOV             R0, R5; this
56AF32:  BLX             j__ZN16cHandlingDataMgr16GetFlyingPointerEh; cHandlingDataMgr::GetFlyingPointer(uchar)
56AF36:  STR.W           R0, [R4,#0x38C]
56AF3A:  MOV             R0, R5; this
56AF3C:  MOV             R1, R6; unsigned __int8
56AF3E:  BLX             j__ZN16cHandlingDataMgr14GetBoatPointerEh; cHandlingDataMgr::GetBoatPointer(uchar)
56AF42:  STR.W           R0, [R4,#0x60C]
56AF46:  MOVS            R0, #1
56AF48:  ADDW            R1, R4, #0x43B
56AF4C:  STRD.W          R1, R0, [SP,#0x30+var_30]; unsigned __int8 *
56AF50:  ADD.W           R1, R4, #0x438; unsigned __int8 *
56AF54:  ADDW            R2, R4, #0x439; unsigned __int8 *
56AF58:  ADDW            R3, R4, #0x43A; unsigned __int8 *
56AF5C:  MOV             R0, R8; this
56AF5E:  BLX             j__ZN17CVehicleModelInfo19ChooseVehicleColourERhS0_S0_S0_i; CVehicleModelInfo::ChooseVehicleColour(uchar &,uchar &,uchar &,uchar &,int)
56AF62:  LDR.W           R0, [R4,#0x388]
56AF66:  VMOV.F32        S0, #0.5
56AF6A:  VLDR            S4, =0.01
56AF6E:  LDR             R1, [R0,#4]
56AF70:  STR.W           R1, [R4,#0x90]
56AF74:  VLDR            S2, [R0,#0xC]
56AF78:  VMUL.F32        S2, S2, S0
56AF7C:  VSTR            S2, [R4,#0x94]
56AF80:  LDR             R1, [R0,#0x1C]
56AF82:  VLDR            D16, [R0,#0x14]
56AF86:  STR.W           R1, [R4,#0xB0]
56AF8A:  MOV             R1, #0x3DCCCCCD
56AF92:  STR.W           R1, [R4,#0xA0]
56AF96:  VSTR            D16, [R4,#0xA8]
56AF9A:  LDR             R1, [R0,#0x24]
56AF9C:  STR.W           R1, [R4,#0xA4]
56AFA0:  VLDR            S2, [R0,#0x10]
56AFA4:  VCMPE.F32       S2, S4
56AFA8:  VMRS            APSR_nzcv, FPSCR
56AFAC:  BLE             loc_56AFBA
56AFAE:  VMUL.F32        S0, S2, S0
56AFB2:  VLDR            S2, =1000.0
56AFB6:  VDIV.F32        S2, S0, S2
56AFBA:  MOVS            R0, #0
56AFBC:  STR.W           R9, [R4,#0x498]
56AFC0:  MOVT            R0, #0x40E0
56AFC4:  VSTR            S2, [R4,#0x9C]
56AFC8:  STR.W           R9, [R4,#0x4A0]
56AFCC:  ADDW            R2, R4, #0x7CC
56AFD0:  STR.W           R9, [R4,#0x4A4]
56AFD4:  STR.W           R9, [R4,#0x59C]
56AFD8:  STRB.W          R9, [R4,#0x650]
56AFDC:  STR.W           R0, [R4,#0x654]
56AFE0:  MOV             R0, #0xC61C3FF6
56AFE8:  STR.W           R0, [R4,#0x610]
56AFEC:  STR.W           R9, [R4,#0x618]
56AFF0:  STR.W           R9, [R4,#0x61C]
56AFF4:  STR.W           R9, [R4,#0x620]
56AFF8:  STRH.W          R9, [R4,#0x658]
56AFFC:  LDRB.W          R0, [R4,#0x5C0]
56B000:  LDR             R1, [R4,#0x44]
56B002:  VST1.32         {D8-D9}, [R2]
56B006:  ADDW            R2, R4, #0x7BC
56B00A:  ORR.W           R1, R1, #0x8000000
56B00E:  ORR.W           R0, R0, #7
56B012:  VST1.32         {D8-D9}, [R2]
56B016:  ADDW            R2, R4, #0x7AC
56B01A:  ORR.W           R1, R1, #0x100
56B01E:  VST1.32         {D8-D9}, [R2]
56B022:  ADDW            R2, R4, #0x79C
56B026:  VST1.32         {D8-D9}, [R2]
56B02A:  ADDW            R2, R4, #0x78C
56B02E:  VST1.32         {D8-D9}, [R2]
56B032:  ADDW            R2, R4, #0x77C
56B036:  VST1.32         {D8-D9}, [R2]
56B03A:  ADDW            R2, R4, #0x76C
56B03E:  VST1.32         {D8-D9}, [R2]
56B042:  ADDW            R2, R4, #0x75C
56B046:  VST1.32         {D8-D9}, [R2]
56B04A:  ADR             R2, dword_56B0D4
56B04C:  STR             R1, [R4,#0x44]
56B04E:  ADR             R1, dword_56B0CC
56B050:  STRB.W          R0, [R4,#0x5C0]
56B054:  MOVS            R0, #0x14
56B056:  STRB.W          R0, [R4,#0x4B5]
56B05A:  LDRH            R0, [R4,#0x26]
56B05C:  CMP.W           R0, #0x1E4
56B060:  IT EQ
56B062:  ADDEQ           R1, #4
56B064:  IT EQ
56B066:  ADDEQ           R2, #4
56B068:  VLDR            S0, [R2]
56B06C:  MOVS            R2, #2
56B06E:  VLDR            S2, [R1]
56B072:  ADD.W           R1, R4, #0x5F8
56B076:  VSTR            S0, [R10]
56B07A:  CMP.W           R0, #0x1E4
56B07E:  STRB.W          R2, [R4,#0x5FE]
56B082:  ADD.W           R0, R4, #0x13C; this
56B086:  VSTR            S2, [R1]
56B08A:  MOV.W           R1, #3
56B08E:  IT EQ
56B090:  MOVEQ           R1, #4
56B092:  STRH.W          R1, [R4,#0x5FC]
56B096:  MOV             R1, R4; CEntity *
56B098:  BLX             j__ZN21CAEVehicleAudioEntity10InitialiseEP7CEntity; CAEVehicleAudioEntity::Initialise(CEntity *)
56B09C:  STR.W           R9, [R4,#0x63C]
56B0A0:  MOV             R0, R4
56B0A2:  STR.W           R9, [R4,#0x640]
56B0A6:  ADD             SP, SP, #8
56B0A8:  VPOP            {D8-D9}
56B0AC:  POP.W           {R8-R10}
56B0B0:  POP             {R4-R7,PC}
