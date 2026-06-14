; =========================================================
; Game Engine Function: _ZN5CHeli6RenderEv
; Address            : 0x572CBC - 0x572DA0
; =========================================================

572CBC:  PUSH            {R4,R5,R7,LR}
572CBE:  ADD             R7, SP, #8
572CC0:  SUB             SP, SP, #8
572CC2:  MOV             R4, R0
572CC4:  LDR             R0, =(gVehicleDistanceFromCamera_ptr - 0x572CCE)
572CC6:  VLDR            S0, =0.6
572CCA:  ADD             R0, PC; gVehicleDistanceFromCamera_ptr
572CCC:  LDR             R2, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x572CD6)
572CCE:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x572CD8)
572CD0:  LDR             R0, [R0]; gVehicleDistanceFromCamera
572CD2:  ADD             R2, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
572CD4:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
572CD6:  LDR             R2, [R2]; CModelInfo::ms_modelInfoPtrs ...
572CD8:  VLDR            S2, [R0]
572CDC:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
572CDE:  VMUL.F32        S0, S2, S0
572CE2:  LDR.W           R12, [R1]; CTimer::m_snTimeInMilliseconds
572CE6:  ADDW            R5, R12, #0xBB8
572CEA:  VSTR            S0, [R0]
572CEE:  LDRSH.W         R0, [R4,#0x26]
572CF2:  LDRB.W          R3, [R4,#0x43A]; unsigned __int8
572CF6:  LDRB.W          R1, [R4,#0x438]; unsigned __int8
572CFA:  LDR.W           R0, [R2,R0,LSL#2]; this
572CFE:  LDRB.W          R2, [R4,#0x439]; unsigned __int8
572D02:  LDRB.W          LR, [R4,#0x43B]
572D06:  STR.W           R5, [R4,#0x4E0]
572D0A:  STR.W           LR, [SP,#0x10+var_10]; unsigned __int8
572D0E:  BLX             j__ZN17CVehicleModelInfo16SetVehicleColourEhhhh; CVehicleModelInfo::SetVehicleColour(uchar,uchar,uchar,uchar)
572D12:  MOVS            R5, #0
572D14:  STR             R5, [SP,#0x10+var_C]
572D16:  LDR.W           R0, [R4,#0x68C]
572D1A:  CBZ             R0, loc_572D34
572D1C:  LDR             R1, =(_Z24GetCurrentAtomicObjectCBP8RwObjectPv_ptr - 0x572D24)
572D1E:  ADD             R2, SP, #0x10+var_C
572D20:  ADD             R1, PC; _Z24GetCurrentAtomicObjectCBP8RwObjectPv_ptr
572D22:  LDR             R1, [R1]; GetCurrentAtomicObjectCB(RwObject *,void *)
572D24:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
572D28:  LDR             R0, [SP,#0x10+var_C]
572D2A:  CMP             R0, #0
572D2C:  ITT NE
572D2E:  MOVNE           R1, #0xFF
572D30:  BLXNE           j__ZN8CVehicle23SetComponentAtomicAlphaEP8RpAtomici; CVehicle::SetComponentAtomicAlpha(RpAtomic *,int)
572D34:  STR             R5, [SP,#0x10+var_C]
572D36:  LDR.W           R0, [R4,#0x694]
572D3A:  CBZ             R0, loc_572D54
572D3C:  LDR             R1, =(_Z24GetCurrentAtomicObjectCBP8RwObjectPv_ptr - 0x572D44)
572D3E:  ADD             R2, SP, #0x10+var_C
572D40:  ADD             R1, PC; _Z24GetCurrentAtomicObjectCBP8RwObjectPv_ptr
572D42:  LDR             R1, [R1]; GetCurrentAtomicObjectCB(RwObject *,void *)
572D44:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
572D48:  LDR             R0, [SP,#0x10+var_C]
572D4A:  CMP             R0, #0
572D4C:  ITT NE
572D4E:  MOVNE           R1, #0xFF
572D50:  BLXNE           j__ZN8CVehicle23SetComponentAtomicAlphaEP8RpAtomici; CVehicle::SetComponentAtomicAlpha(RpAtomic *,int)
572D54:  MOVS            R5, #0
572D56:  STR             R5, [SP,#0x10+var_C]
572D58:  LDR.W           R0, [R4,#0x690]
572D5C:  CBZ             R0, loc_572D76
572D5E:  LDR             R1, =(_Z24GetCurrentAtomicObjectCBP8RwObjectPv_ptr - 0x572D66)
572D60:  ADD             R2, SP, #0x10+var_C
572D62:  ADD             R1, PC; _Z24GetCurrentAtomicObjectCBP8RwObjectPv_ptr
572D64:  LDR             R1, [R1]; GetCurrentAtomicObjectCB(RwObject *,void *)
572D66:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
572D6A:  LDR             R0, [SP,#0x10+var_C]
572D6C:  CMP             R0, #0
572D6E:  ITT NE
572D70:  MOVNE           R1, #0
572D72:  BLXNE           j__ZN8CVehicle23SetComponentAtomicAlphaEP8RpAtomici; CVehicle::SetComponentAtomicAlpha(RpAtomic *,int)
572D76:  STR             R5, [SP,#0x10+var_C]
572D78:  LDR.W           R0, [R4,#0x698]
572D7C:  CBZ             R0, loc_572D96
572D7E:  LDR             R1, =(_Z24GetCurrentAtomicObjectCBP8RwObjectPv_ptr - 0x572D86)
572D80:  ADD             R2, SP, #0x10+var_C
572D82:  ADD             R1, PC; _Z24GetCurrentAtomicObjectCBP8RwObjectPv_ptr
572D84:  LDR             R1, [R1]; GetCurrentAtomicObjectCB(RwObject *,void *)
572D86:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
572D8A:  LDR             R0, [SP,#0x10+var_C]
572D8C:  CMP             R0, #0
572D8E:  ITT NE
572D90:  MOVNE           R1, #0
572D92:  BLXNE           j__ZN8CVehicle23SetComponentAtomicAlphaEP8RpAtomici; CVehicle::SetComponentAtomicAlpha(RpAtomic *,int)
572D96:  MOV             R0, R4; this
572D98:  BLX             j__ZN7CEntity6RenderEv; CEntity::Render(void)
572D9C:  ADD             SP, SP, #8
572D9E:  POP             {R4,R5,R7,PC}
