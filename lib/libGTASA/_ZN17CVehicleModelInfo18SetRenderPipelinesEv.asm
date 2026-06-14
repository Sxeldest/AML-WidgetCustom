; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo18SetRenderPipelinesEv
; Address            : 0x387120 - 0x387172
; =========================================================

387120:  PUSH            {R4,R6,R7,LR}
387122:  ADD             R7, SP, #8
387124:  SUB             SP, SP, #0x10
387126:  LDR             R0, [R0,#0x34]
387128:  BLX             j__ZN14CCarFXRenderer23CustomCarPipeClumpSetupEP7RpClump; CCarFXRenderer::CustomCarPipeClumpSetup(RpClump *)
38712C:  LDR             R0, =(dword_932090 - 0x387132)
38712E:  ADD             R0, PC; dword_932090
387130:  LDR             R0, [R0]
387132:  CBZ             R0, loc_387138
387134:  ADD             SP, SP, #0x10
387136:  POP             {R4,R6,R7,PC}
387138:  LDR             R0, =(unk_610A48 - 0x38713E)
38713A:  ADD             R0, PC; unk_610A48
38713C:  VLDR            D16, [R0]
387140:  LDR             R0, [R0,#(dword_610A50 - 0x610A48)]
387142:  STR             R0, [SP,#0x18+var_10]
387144:  VSTR            D16, [SP,#0x18+var_18]
387148:  BLX             j__Z13RwFrameCreatev; RwFrameCreate(void)
38714C:  LDR             R4, =(dword_932090 - 0x38715A)
38714E:  MOVS            R2, #0x42700000
387154:  MOV             R1, SP
387156:  ADD             R4, PC; dword_932090
387158:  MOVS            R3, #0
38715A:  STR             R0, [R4]
38715C:  ADDS            R0, #0x10
38715E:  BLX             j__Z14RwMatrixRotateP11RwMatrixTagPK5RwV3df15RwOpCombineType; RwMatrixRotate(RwMatrixTag *,RwV3d const*,float,RwOpCombineType)
387162:  LDR             R0, [R4]
387164:  BLX             j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
387168:  LDR             R0, [R4]
38716A:  BLX             j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
38716E:  ADD             SP, SP, #0x10
387170:  POP             {R4,R6,R7,PC}
