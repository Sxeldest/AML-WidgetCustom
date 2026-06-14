; =========================================================
; Game Engine Function: _ZN23CTaskComplexAvoidEntity6QuitIKEP4CPed
; Address            : 0x522C90 - 0x522CC2
; =========================================================

522C90:  PUSH            {R4,R6,R7,LR}
522C92:  ADD             R7, SP, #8
522C94:  LDRB.W          R0, [R0,#0x50]
522C98:  MOV             R4, R1
522C9A:  LSLS            R0, R0, #0x1F
522C9C:  IT EQ
522C9E:  POPEQ           {R4,R6,R7,PC}
522CA0:  LDR             R0, =(g_ikChainMan_ptr - 0x522CA8)
522CA2:  MOV             R1, R4; CPed *
522CA4:  ADD             R0, PC; g_ikChainMan_ptr
522CA6:  LDR             R0, [R0]; g_ikChainMan ; this
522CA8:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
522CAC:  CBZ             R0, locret_522CC0
522CAE:  LDR             R0, =(g_ikChainMan_ptr - 0x522CB8)
522CB0:  MOV             R1, R4; CPed *
522CB2:  MOVS            R2, #0xFA; int
522CB4:  ADD             R0, PC; g_ikChainMan_ptr
522CB6:  LDR             R0, [R0]; g_ikChainMan ; this
522CB8:  POP.W           {R4,R6,R7,LR}
522CBC:  B.W             sub_1A0F0C
522CC0:  POP             {R4,R6,R7,PC}
