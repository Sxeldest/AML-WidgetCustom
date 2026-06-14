; =========================================================
; Game Engine Function: _ZN9CRenderer19GetObjectsInFrustumEPP7CEntityfP11RwMatrixTag
; Address            : 0x41210C - 0x4122DA
; =========================================================

41210C:  PUSH            {R4-R7,LR}
41210E:  ADD             R7, SP, #0xC
412110:  PUSH.W          {R8}
412114:  SUB             SP, SP, #0xC0
412116:  MOV             R8, R0
412118:  LDR             R0, =(TheCamera_ptr - 0x412122)
41211A:  MOV             R5, R2
41211C:  MOVS            R2, #0
41211E:  ADD             R0, PC; TheCamera_ptr
412120:  VMOV            S0, R1
412124:  VMOV.I32        Q8, #0
412128:  LDR             R0, [R0]; TheCamera
41212A:  LDR.W           R0, [R0,#(dword_952880 - 0x951FA8)]
41212E:  STRD.W          R2, R2, [SP,#0xD0+var_B0]
412132:  STR             R2, [SP,#0xD0+var_A8]
412134:  VLDR            S2, [R0,#0x68]
412138:  VLDR            S4, [R0,#0x6C]
41213C:  VNMUL.F32       S6, S2, S0
412140:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x41214E)
412142:  VMUL.F32        S2, S2, S0
412146:  VMUL.F32        S8, S4, S0
41214A:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
41214C:  VNMUL.F32       S0, S4, S0
412150:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
412152:  VSTR            S6, [SP,#0xD0+var_A4]
412156:  STR             R1, [SP,#0xD0+var_9C]
412158:  STR             R1, [SP,#0xD0+var_90]
41215A:  VSTR            S2, [SP,#0xD0+var_98]
41215E:  STR             R1, [SP,#0xD0+var_84]
412160:  VSTR            S2, [SP,#0xD0+var_8C]
412164:  STR             R1, [SP,#0xD0+var_78]
412166:  ADD             R1, SP, #0xD0+var_B0
412168:  ADD.W           R2, R1, #0x8C
41216C:  VSTR            S6, [SP,#0xD0+var_80]
412170:  VSTR            S8, [SP,#0xD0+var_A4+4]
412174:  VSTR            S8, [SP,#0xD0+var_98+4]
412178:  VSTR            S0, [SP,#0xD0+var_8C+4]
41217C:  VSTR            S0, [SP,#0xD0+var_80+4]
412180:  VST1.32         {D16-D17}, [R2]
412184:  ADD.W           R2, R1, #0x7C ; '|'
412188:  VST1.32         {D16-D17}, [R2]
41218C:  ADD.W           R2, R1, #0x6C ; 'l'
412190:  VST1.32         {D16-D17}, [R2]
412194:  ADD.W           R2, R1, #0x5C ; '\'
412198:  VST1.32         {D16-D17}, [R2]
41219C:  ADD.W           R2, R1, #0x4C ; 'L'
4121A0:  ADDS            R1, #0x3C ; '<'
4121A2:  LDRH            R0, [R0]; this
4121A4:  VST1.32         {D16-D17}, [R2]
4121A8:  VST1.32         {D16-D17}, [R1]
4121AC:  MOVW            R1, #0xFFFF
4121B0:  CMP             R0, R1
4121B2:  BEQ             loc_4121B8
4121B4:  ADDS            R0, #1
4121B6:  B               loc_4121BE
4121B8:  BLX             j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
4121BC:  MOVS            R0, #1
4121BE:  LDR             R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x4121C8)
4121C0:  CMP             R5, #0
4121C2:  MOV             R3, R5
4121C4:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
4121C6:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
4121C8:  STRH            R0, [R1]; CWorld::ms_nCurrentScanCode
4121CA:  BNE             loc_4121DC
4121CC:  LDR             R0, =(TheCamera_ptr - 0x4121D2)
4121CE:  ADD             R0, PC; TheCamera_ptr
4121D0:  LDR             R0, [R0]; TheCamera
4121D2:  LDR.W           R0, [R0,#(dword_952880 - 0x951FA8)]
4121D6:  LDR             R0, [R0,#4]
4121D8:  ADD.W           R3, R0, #0x10
4121DC:  LDR             R0, =(TheCamera_ptr - 0x4121E4)
4121DE:  LDR             R2, =(_ZN9CRenderer20ms_vecCameraPositionE_ptr - 0x4121E8)
4121E0:  ADD             R0, PC; TheCamera_ptr
4121E2:  LDR             R1, =(_ZN9CRenderer16ms_fFarClipPlaneE_ptr - 0x4121EC)
4121E4:  ADD             R2, PC; _ZN9CRenderer20ms_vecCameraPositionE_ptr
4121E6:  LDR             R0, [R0]; TheCamera
4121E8:  ADD             R1, PC; _ZN9CRenderer16ms_fFarClipPlaneE_ptr
4121EA:  LDR             R2, [R2]; CRenderer::ms_vecCameraPosition ...
4121EC:  LDR             R1, [R1]; CRenderer::ms_fFarClipPlane ...
4121EE:  LDR             R4, [R0,#(dword_951FBC - 0x951FA8)]
4121F0:  ADD.W           R6, R4, #0x30 ; '0'
4121F4:  CMP             R4, #0
4121F6:  IT EQ
4121F8:  ADDEQ           R6, R0, #4
4121FA:  LDR             R0, [R6,#(dword_951FB4 - 0x951FAC)]
4121FC:  VLDR            D16, [R6]
412200:  STR             R0, [R2,#(dword_960B58 - 0x960B50)]
412202:  MOVS            R0, #0x43960000
412208:  VSTR            D16, [R2]
41220C:  STR             R0, [R1]; CRenderer::ms_fFarClipPlane
41220E:  VLDR            S0, [R3,#0x28]
412212:  VCMPE.F32       S0, #0.0
412216:  VMRS            APSR_nzcv, FPSCR
41221A:  BLE             loc_412234
41221C:  VLDR            D16, [SP,#0xD0+var_8C]
412220:  VLDR            D17, [SP,#0xD0+var_80]
412224:  LDR             R0, [SP,#0xD0+var_78]
412226:  LDR             R1, [SP,#0xD0+var_84]
412228:  STR             R0, [SP,#0xD0+var_9C]
41222A:  STR             R1, [SP,#0xD0+var_90]
41222C:  VSTR            D16, [SP,#0xD0+var_98]
412230:  VSTR            D17, [SP,#0xD0+var_A4]
412234:  ADD             R0, SP, #0xD0+var_B0
412236:  MOVS            R2, #0xD
412238:  MOV             R1, R0
41223A:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
41223E:  VLDR            S0, =50.0
412242:  CMP             R5, #0
412244:  VLDR            S2, [SP,#0xD0+var_B0]
412248:  VLDR            S4, [SP,#0xD0+var_AC]
41224C:  VLDR            S6, [SP,#0xD0+var_A4]
412250:  VLDR            S8, [SP,#0xD0+var_A4+4]
412254:  VLDR            S10, [SP,#0xD0+var_98]
412258:  VLDR            S12, [SP,#0xD0+var_98+4]
41225C:  VDIV.F32        S2, S2, S0
412260:  LDR             R0, =(dword_962E94 - 0x412266)
412262:  ADD             R0, PC; dword_962E94
412264:  STR.W           R8, [R0]
412268:  VDIV.F32        S4, S4, S0
41226C:  VDIV.F32        S8, S8, S0
412270:  VDIV.F32        S6, S6, S0
412274:  VDIV.F32        S10, S10, S0
412278:  VDIV.F32        S0, S12, S0
41227C:  VLDR            S12, =60.0
412280:  VADD.F32        S2, S2, S12
412284:  VADD.F32        S4, S4, S12
412288:  VADD.F32        S8, S8, S12
41228C:  VADD.F32        S6, S6, S12
412290:  VADD.F32        S10, S10, S12
412294:  VADD.F32        S0, S0, S12
412298:  VSTR            S2, [SP,#0xD0+var_D0]
41229C:  VSTR            S4, [SP,#0xD0+var_CC]
4122A0:  VSTR            S8, [SP,#0xD0+var_C4]
4122A4:  VSTR            S6, [SP,#0xD0+var_C8]
4122A8:  VSTR            S10, [SP,#0xD0+var_C0]
4122AC:  VSTR            S0, [SP,#0xD0+var_BC]
4122B0:  BEQ             loc_4122B8
4122B2:  LDR             R1, =(_ZN9CRenderer25ScanSectorList_ListModelsEii_ptr - 0x4122B8)
4122B4:  ADD             R1, PC; _ZN9CRenderer25ScanSectorList_ListModelsEii_ptr
4122B6:  B               loc_4122BC
4122B8:  LDR             R1, =(_ZN9CRenderer32ScanSectorList_ListModelsVisibleEii_ptr - 0x4122BE)
4122BA:  ADD             R1, PC; _ZN9CRenderer32ScanSectorList_ListModelsVisibleEii_ptr
4122BC:  LDR             R2, [R1]; CRenderer::ScanSectorList_ListModels(int,int)
4122BE:  MOV             R0, SP
4122C0:  MOVS            R1, #3
4122C2:  BLX             j__ZN10CWorldScan9ScanWorldEP5RwV2diPFviiE; CWorldScan::ScanWorld(RwV2d *,int,void (*)(int,int))
4122C6:  LDR             R0, =(dword_962E94 - 0x4122CC)
4122C8:  ADD             R0, PC; dword_962E94
4122CA:  LDR             R0, [R0]
4122CC:  SUB.W           R0, R0, R8
4122D0:  ASRS            R0, R0, #2
4122D2:  ADD             SP, SP, #0xC0
4122D4:  POP.W           {R8}
4122D8:  POP             {R4-R7,PC}
