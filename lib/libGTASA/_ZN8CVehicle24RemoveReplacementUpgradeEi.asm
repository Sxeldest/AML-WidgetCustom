; =========================================================
; Game Engine Function: _ZN8CVehicle24RemoveReplacementUpgradeEi
; Address            : 0x58CFF8 - 0x58D064
; =========================================================

58CFF8:  PUSH            {R4-R7,LR}
58CFFA:  ADD             R7, SP, #0xC
58CFFC:  PUSH.W          {R8}
58D000:  SUB             SP, SP, #8
58D002:  MOV             R4, R0
58D004:  MOV             R6, R1
58D006:  LDR             R0, [R4,#0x18]
58D008:  BLX             j__ZN15CClumpModelInfo14GetFrameFromIdEP7RpClumpi; CClumpModelInfo::GetFrameFromId(RpClump *,int)
58D00C:  MOV             R5, R0
58D00E:  LDR             R0, =(_Z15RemoveObjectsCBP8RwObjectPv_ptr - 0x58D018)
58D010:  ADD.W           R8, SP, #0x18+var_14
58D014:  ADD             R0, PC; _Z15RemoveObjectsCBP8RwObjectPv_ptr
58D016:  MOV             R2, R8
58D018:  LDR             R1, [R0]; RemoveObjectsCB(RwObject *,void *)
58D01A:  MOVS            R0, #0
58D01C:  STR             R0, [SP,#0x18+var_14]
58D01E:  MOV             R0, R5
58D020:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
58D024:  LDR             R0, =(_Z15RemoveObjectsCBP7RwFramePv_ptr - 0x58D02C)
58D026:  MOV             R2, R8
58D028:  ADD             R0, PC; _Z15RemoveObjectsCBP7RwFramePv_ptr
58D02A:  LDR             R1, [R0]; RemoveObjectsCB(RwFrame *,void *)
58D02C:  MOV             R0, R5
58D02E:  BLX             j__Z21RwFrameForAllChildrenP7RwFramePFS0_S0_PvES1_; RwFrameForAllChildren(RwFrame *,RwFrame * (*)(RwFrame *,void *),void *)
58D032:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x58D03C)
58D034:  LDRSH.W         R1, [R4,#0x26]
58D038:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
58D03A:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
58D03C:  LDR.W           R0, [R0,R1,LSL#2]
58D040:  MOV             R1, R6
58D042:  LDR             R0, [R0,#0x34]
58D044:  BLX             j__ZN15CClumpModelInfo14GetFrameFromIdEP7RpClumpi; CClumpModelInfo::GetFrameFromId(RpClump *,int)
58D048:  LDR             R1, =(_Z13CopyObjectsCBP8RwObjectPv_ptr - 0x58D050)
58D04A:  LDR             R2, =(dword_A130E8 - 0x58D054)
58D04C:  ADD             R1, PC; _Z13CopyObjectsCBP8RwObjectPv_ptr
58D04E:  LDR             R3, [R4,#0x18]
58D050:  ADD             R2, PC; dword_A130E8
58D052:  LDR             R1, [R1]; CopyObjectsCB(RwObject *,void *)
58D054:  STR             R3, [R2]
58D056:  MOV             R2, R5
58D058:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
58D05C:  ADD             SP, SP, #8
58D05E:  POP.W           {R8}
58D062:  POP             {R4-R7,PC}
