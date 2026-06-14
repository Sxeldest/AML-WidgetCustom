; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo8SetClumpEP7RpClump
; Address            : 0x386EF8 - 0x3870A4
; =========================================================

386EF8:  PUSH            {R4-R7,LR}
386EFA:  ADD             R7, SP, #0xC
386EFC:  PUSH.W          {R8}
386F00:  SUB             SP, SP, #0x10
386F02:  MOV             R8, R1
386F04:  LDR             R1, =(__stack_chk_guard_ptr - 0x386F0E)
386F06:  MOV             R4, R0
386F08:  LDR             R0, =(_ZN17CVehicleModelInfo17CVehicleStructure11m_pInfoPoolE_ptr - 0x386F12)
386F0A:  ADD             R1, PC; __stack_chk_guard_ptr
386F0C:  MOVS            R2, #0
386F0E:  ADD             R0, PC; _ZN17CVehicleModelInfo17CVehicleStructure11m_pInfoPoolE_ptr
386F10:  LDR             R1, [R1]; __stack_chk_guard
386F12:  LDR             R0, [R0]; CVehicleModelInfo::CVehicleStructure::m_pInfoPool ...
386F14:  LDR             R0, [R0]; CVehicleModelInfo::CVehicleStructure::m_pInfoPool
386F16:  LDR             R1, [R1]
386F18:  STR             R1, [SP,#0x20+var_14]
386F1A:  LDRD.W          R1, R6, [R0,#8]
386F1E:  ADDS            R6, #1
386F20:  STR             R6, [R0,#0xC]
386F22:  CMP             R6, R1
386F24:  BNE             loc_386F30
386F26:  MOVS            R6, #0
386F28:  LSLS            R2, R2, #0x1F
386F2A:  STR             R6, [R0,#0xC]
386F2C:  BNE             loc_386F60
386F2E:  MOVS            R2, #1
386F30:  LDR             R3, [R0,#4]
386F32:  LDRSB           R5, [R3,R6]
386F34:  CMP.W           R5, #0xFFFFFFFF
386F38:  BGT             loc_386F1E
386F3A:  AND.W           R1, R5, #0x7F
386F3E:  STRB            R1, [R3,R6]
386F40:  LDR             R1, [R0,#4]
386F42:  LDR             R2, [R0,#0xC]
386F44:  LDRB            R3, [R1,R2]
386F46:  AND.W           R6, R3, #0x80
386F4A:  ADDS            R3, #1
386F4C:  AND.W           R3, R3, #0x7F
386F50:  ORRS            R3, R6
386F52:  STRB            R3, [R1,R2]
386F54:  MOV.W           R2, #0x32C
386F58:  LDR             R1, [R0]
386F5A:  LDR             R0, [R0,#0xC]
386F5C:  MLA.W           R6, R0, R2, R1
386F60:  MOV             R0, R6
386F62:  MOVS            R1, #0xB4
386F64:  BLX             j___aeabi_memclr8_0
386F68:  MOV.W           R0, #0xFFFFFFFF
386F6C:  VMOV.I32        Q8, #0
386F70:  STR.W           R0, [R6,#0xF0]
386F74:  MOVS            R5, #0
386F76:  STR.W           R0, [R6,#0xD0]
386F7A:  MOV             R1, R8
386F7C:  STR.W           R0, [R6,#0x110]
386F80:  STR.W           R0, [R6,#0x130]
386F84:  STR.W           R0, [R6,#0x150]
386F88:  STR.W           R0, [R6,#0x170]
386F8C:  STR.W           R0, [R6,#0x190]
386F90:  STR.W           R0, [R6,#0x1B0]
386F94:  STR.W           R0, [R6,#0x1D0]
386F98:  STR.W           R0, [R6,#0x1F0]
386F9C:  STR.W           R0, [R6,#0x210]
386FA0:  STR.W           R0, [R6,#0x230]
386FA4:  STR.W           R0, [R6,#0x250]
386FA8:  STR.W           R0, [R6,#0x270]
386FAC:  STR.W           R0, [R6,#0x290]
386FB0:  STR.W           R0, [R6,#0x2B0]
386FB4:  STR.W           R0, [R6,#0x2D0]
386FB8:  STR.W           R0, [R6,#0x2F0]
386FBC:  ADD.W           R0, R6, #0x314
386FC0:  STR.W           R5, [R6,#0x328]
386FC4:  VST1.32         {D16-D17}, [R0]
386FC8:  ADD.W           R0, R6, #0x304
386FCC:  VST1.32         {D16-D17}, [R0]
386FD0:  ADD.W           R0, R6, #0x2F4
386FD4:  VST1.32         {D16-D17}, [R0]
386FD8:  MOV             R0, R4
386FDA:  STRB.W          R5, [R6,#0x324]
386FDE:  STR             R6, [R4,#0x74]
386FE0:  BLX             j__ZN15CClumpModelInfo8SetClumpEP7RpClump; CClumpModelInfo::SetClump(RpClump *)
386FE4:  MOV             R0, R4; this
386FE6:  BLX             j__ZN17CVehicleModelInfo24SetAtomicRenderCallbacksEv; CVehicleModelInfo::SetAtomicRenderCallbacks(void)
386FEA:  LDR             R0, =(_ZN17CVehicleModelInfo15ms_vehicleDescsE_ptr - 0x386FF2)
386FEC:  LDR             R1, [R4,#0x54]
386FEE:  ADD             R0, PC; _ZN17CVehicleModelInfo15ms_vehicleDescsE_ptr
386FF0:  LDR             R0, [R0]; CVehicleModelInfo::ms_vehicleDescs ...
386FF2:  LDR.W           R1, [R0,R1,LSL#2]
386FF6:  MOV             R0, R4
386FF8:  BLX             j__ZN15CClumpModelInfo11SetFrameIdsEP24RwObjectNameIdAssocation; CClumpModelInfo::SetFrameIds(RwObjectNameIdAssocation *)
386FFC:  LDR             R0, [R4,#0x34]
386FFE:  BLX             j__ZN14CCarFXRenderer23CustomCarPipeClumpSetupEP7RpClump; CCarFXRenderer::CustomCarPipeClumpSetup(RpClump *)
387002:  LDR             R0, =(dword_932090 - 0x387008)
387004:  ADD             R0, PC; dword_932090
387006:  LDR             R0, [R0]
387008:  CBNZ            R0, loc_387040
38700A:  LDR             R0, =(unk_610A48 - 0x387010)
38700C:  ADD             R0, PC; unk_610A48
38700E:  VLDR            D16, [R0]
387012:  LDR             R0, [R0,#(dword_610A50 - 0x610A48)]
387014:  STR             R0, [SP,#0x20+var_18]
387016:  VSTR            D16, [SP,#0x20+var_20]
38701A:  BLX             j__Z13RwFrameCreatev; RwFrameCreate(void)
38701E:  LDR             R6, =(dword_932090 - 0x38702C)
387020:  MOVS            R2, #0x42700000
387026:  MOV             R1, SP
387028:  ADD             R6, PC; dword_932090
38702A:  MOVS            R3, #0
38702C:  STR             R0, [R6]
38702E:  ADDS            R0, #0x10
387030:  BLX             j__Z14RwMatrixRotateP11RwMatrixTagPK5RwV3df15RwOpCombineType; RwMatrixRotate(RwMatrixTag *,RwV3d const*,float,RwOpCombineType)
387034:  LDR             R0, [R6]
387036:  BLX             j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
38703A:  LDR             R0, [R6]
38703C:  BLX             j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
387040:  MOV             R0, R4; this
387042:  BLX             j__ZN17CVehicleModelInfo19PreprocessHierarchyEv; CVehicleModelInfo::PreprocessHierarchy(void)
387046:  MOV             R0, R4; this
387048:  BLX             j__ZN17CVehicleModelInfo24ReduceMaterialsInVehicleEv; CVehicleModelInfo::ReduceMaterialsInVehicle(void)
38704C:  MOV             R0, R4; this
38704E:  BLX             j__ZN17CVehicleModelInfo24FindEditableMaterialListEv; CVehicleModelInfo::FindEditableMaterialList(void)
387052:  LDR             R0, =(aDefault_1 - 0x38705E); "DEFAULT"
387054:  MOVS            R1, #0xFF
387056:  STRB.W          R5, [R4,#0x40]
38705A:  ADD             R0, PC; "DEFAULT"
38705C:  STR             R5, [R4,#0x3C]
38705E:  STRB.W          R1, [R4,#0x49]
387062:  MOVS            R1, #byte_8; char *
387064:  STRB.W          R5, [SP,#0x20+var_18]
387068:  MOV             R5, SP
38706A:  VLDR            D16, [R0]
38706E:  MOV             R0, R5; this
387070:  VSTR            D16, [SP,#0x20+var_20]
387074:  BLX             j__ZN18CCustomCarPlateMgr17GeneratePlateTextEPci; CCustomCarPlateMgr::GeneratePlateText(char *,int)
387078:  LDR             R0, [R4,#0x34]
38707A:  MOV             R1, R5
38707C:  LDRB.W          R2, [R4,#0x49]
387080:  BLX             j__ZN18CCustomCarPlateMgr10SetupClumpEP7RpClumpPch; CCustomCarPlateMgr::SetupClump(RpClump *,char *,uchar)
387084:  CMP             R0, #0
387086:  IT NE
387088:  STRNE           R0, [R4,#0x3C]
38708A:  LDR             R0, =(__stack_chk_guard_ptr - 0x387092)
38708C:  LDR             R1, [SP,#0x20+var_14]
38708E:  ADD             R0, PC; __stack_chk_guard_ptr
387090:  LDR             R0, [R0]; __stack_chk_guard
387092:  LDR             R0, [R0]
387094:  SUBS            R0, R0, R1
387096:  ITTT EQ
387098:  ADDEQ           SP, SP, #0x10
38709A:  POPEQ.W         {R8}
38709E:  POPEQ           {R4-R7,PC}
3870A0:  BLX             __stack_chk_fail
