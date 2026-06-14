; =========================================================
; Game Engine Function: _ZN9CQuadBike3FixEv
; Address            : 0x57ADF4 - 0x57AE72
; =========================================================

57ADF4:  PUSH            {R4,R5,R7,LR}
57ADF6:  ADD             R7, SP, #8
57ADF8:  MOV             R5, R0
57ADFA:  ADDW            R4, R5, #0x5B4
57ADFE:  MOV             R0, R4; this
57AE00:  BLX             j__ZN14CDamageManager17ResetDamageStatusEv; CDamageManager::ResetDamageStatus(void)
57AE04:  MOV             R0, R4
57AE06:  MOVS            R1, #2
57AE08:  MOVS            R2, #4
57AE0A:  BLX             j__ZN14CDamageManager13SetDoorStatusE6eDoorsj; CDamageManager::SetDoorStatus(eDoors,uint)
57AE0E:  MOV             R0, R4
57AE10:  MOVS            R1, #3
57AE12:  MOVS            R2, #4
57AE14:  BLX             j__ZN14CDamageManager13SetDoorStatusE6eDoorsj; CDamageManager::SetDoorStatus(eDoors,uint)
57AE18:  MOV             R0, R4
57AE1A:  MOVS            R1, #4
57AE1C:  MOVS            R2, #4
57AE1E:  BLX             j__ZN14CDamageManager13SetDoorStatusE6eDoorsj; CDamageManager::SetDoorStatus(eDoors,uint)
57AE22:  MOV             R0, R4
57AE24:  MOVS            R1, #5
57AE26:  MOVS            R2, #4
57AE28:  BLX             j__ZN14CDamageManager13SetDoorStatusE6eDoorsj; CDamageManager::SetDoorStatus(eDoors,uint)
57AE2C:  LDR             R0, =(_ZN17CVehicleModelInfo25HideAllComponentsAtomicCBEP8RpAtomicPv_ptr - 0x57AE36)
57AE2E:  LDR.W           R2, [R5,#0x42C]
57AE32:  ADD             R0, PC; _ZN17CVehicleModelInfo25HideAllComponentsAtomicCBEP8RpAtomicPv_ptr
57AE34:  BIC.W           R2, R2, #0x10000
57AE38:  LDR             R1, [R0]; CVehicleModelInfo::HideAllComponentsAtomicCB(RpAtomic *,void *)
57AE3A:  LDR             R0, [R5,#0x18]
57AE3C:  STR.W           R2, [R5,#0x42C]
57AE40:  MOVS            R2, #2
57AE42:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
57AE46:  MOV             R0, R4; this
57AE48:  MOVS            R1, #0; int
57AE4A:  MOVS            R2, #0; unsigned int
57AE4C:  BLX             j__ZN14CDamageManager14SetWheelStatusEij; CDamageManager::SetWheelStatus(int,uint)
57AE50:  MOV             R0, R4; this
57AE52:  MOVS            R1, #1; int
57AE54:  MOVS            R2, #0; unsigned int
57AE56:  BLX             j__ZN14CDamageManager14SetWheelStatusEij; CDamageManager::SetWheelStatus(int,uint)
57AE5A:  MOV             R0, R4; this
57AE5C:  MOVS            R1, #2; int
57AE5E:  MOVS            R2, #0; unsigned int
57AE60:  BLX             j__ZN14CDamageManager14SetWheelStatusEij; CDamageManager::SetWheelStatus(int,uint)
57AE64:  MOV             R0, R4; this
57AE66:  MOVS            R1, #3; int
57AE68:  MOVS            R2, #0; unsigned int
57AE6A:  POP.W           {R4,R5,R7,LR}
57AE6E:  B.W             j_j__ZN14CDamageManager14SetWheelStatusEij; j_CDamageManager::SetWheelStatus(int,uint)
