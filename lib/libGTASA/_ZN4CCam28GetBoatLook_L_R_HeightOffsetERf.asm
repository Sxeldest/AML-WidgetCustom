; =========================================================
; Game Engine Function: _ZN4CCam28GetBoatLook_L_R_HeightOffsetERf
; Address            : 0x3D21B0 - 0x3D21E8
; =========================================================

3D21B0:  PUSH            {R4,R6,R7,LR}
3D21B2:  ADD             R7, SP, #8
3D21B4:  LDR.W           R0, [R0,#0x1F4]
3D21B8:  MOV             R4, R1
3D21BA:  CBZ             R0, loc_3D21E4
3D21BC:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3D21C6)
3D21BE:  LDRSH.W         R0, [R0,#0x26]
3D21C2:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3D21C4:  LDR             R2, =(mod_HandlingManager_ptr - 0x3D21CC)
3D21C6:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
3D21C8:  ADD             R2, PC; mod_HandlingManager_ptr
3D21CA:  LDR.W           R0, [R1,R0,LSL#2]
3D21CE:  LDRH.W          R1, [R0,#0x62]; unsigned __int8
3D21D2:  LDR             R0, [R2]; mod_HandlingManager ; this
3D21D4:  BLX             j__ZN16cHandlingDataMgr14GetBoatPointerEh; cHandlingDataMgr::GetBoatPointer(uchar)
3D21D8:  CMP             R0, #0
3D21DA:  ITTTT NE
3D21DC:  LDRNE           R0, [R0,#0x20]
3D21DE:  STRNE           R0, [R4]
3D21E0:  MOVNE           R0, #1
3D21E2:  POPNE           {R4,R6,R7,PC}
3D21E4:  MOVS            R0, #0
3D21E6:  POP             {R4,R6,R7,PC}
