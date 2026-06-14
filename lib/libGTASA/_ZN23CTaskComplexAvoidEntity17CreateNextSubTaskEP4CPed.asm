; =========================================================
; Game Engine Function: _ZN23CTaskComplexAvoidEntity17CreateNextSubTaskEP4CPed
; Address            : 0x522D04 - 0x522D32
; =========================================================

522D04:  PUSH            {R4,R6,R7,LR}
522D06:  ADD             R7, SP, #8
522D08:  LDRB.W          R0, [R0,#0x50]
522D0C:  MOV             R4, R1
522D0E:  LSLS            R0, R0, #0x1F
522D10:  BEQ             loc_522D2E
522D12:  LDR             R0, =(g_ikChainMan_ptr - 0x522D1A)
522D14:  MOV             R1, R4; CPed *
522D16:  ADD             R0, PC; g_ikChainMan_ptr
522D18:  LDR             R0, [R0]; g_ikChainMan ; this
522D1A:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
522D1E:  CBZ             R0, loc_522D2E
522D20:  LDR             R0, =(g_ikChainMan_ptr - 0x522D2A)
522D22:  MOV             R1, R4; CPed *
522D24:  MOVS            R2, #0xFA; int
522D26:  ADD             R0, PC; g_ikChainMan_ptr
522D28:  LDR             R0, [R0]; g_ikChainMan ; this
522D2A:  BLX             j__ZN16IKChainManager_c11AbortLookAtEP4CPedi; IKChainManager_c::AbortLookAt(CPed *,int)
522D2E:  MOVS            R0, #0
522D30:  POP             {R4,R6,R7,PC}
