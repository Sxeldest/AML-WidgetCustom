; =========================================================
; Game Engine Function: _ZN22CTaskComplexPassObject13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x51AD78 - 0x51ADA4
; =========================================================

51AD78:  PUSH            {R4,R6,R7,LR}
51AD7A:  ADD             R7, SP, #8
51AD7C:  LDR             R0, =(g_ikChainMan_ptr - 0x51AD88)
51AD7E:  MOV             R4, R1
51AD80:  MOVS            R1, #0; int
51AD82:  MOV             R2, R4; CPed *
51AD84:  ADD             R0, PC; g_ikChainMan_ptr
51AD86:  LDR             R0, [R0]; g_ikChainMan ; this
51AD88:  BLX             j__ZN16IKChainManager_c13IsArmPointingEiP4CPed; IKChainManager_c::IsArmPointing(int,CPed *)
51AD8C:  CBZ             R0, loc_51ADA0
51AD8E:  LDR             R0, =(g_ikChainMan_ptr - 0x51AD9C)
51AD90:  MOVS            R1, #0; int
51AD92:  MOV             R2, R4; CPed *
51AD94:  MOV.W           R3, #0x1F4; int
51AD98:  ADD             R0, PC; g_ikChainMan_ptr
51AD9A:  LDR             R0, [R0]; g_ikChainMan ; this
51AD9C:  BLX             j__ZN16IKChainManager_c13AbortPointArmEiP4CPedi; IKChainManager_c::AbortPointArm(int,CPed *,int)
51ADA0:  MOVS            R0, #1
51ADA2:  POP             {R4,R6,R7,PC}
