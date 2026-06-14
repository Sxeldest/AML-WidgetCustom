; =========================================================
; Game Engine Function: _ZN39CTaskComplexAvoidOtherPedWhileWandering6QuitIKEP4CPed
; Address            : 0x521C64 - 0x521C96
; =========================================================

521C64:  PUSH            {R4,R6,R7,LR}
521C66:  ADD             R7, SP, #8
521C68:  LDRB.W          R0, [R0,#0x5C]
521C6C:  MOV             R4, R1
521C6E:  LSLS            R0, R0, #0x1F
521C70:  IT EQ
521C72:  POPEQ           {R4,R6,R7,PC}
521C74:  LDR             R0, =(g_ikChainMan_ptr - 0x521C7C)
521C76:  MOV             R1, R4; CPed *
521C78:  ADD             R0, PC; g_ikChainMan_ptr
521C7A:  LDR             R0, [R0]; g_ikChainMan ; this
521C7C:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
521C80:  CBZ             R0, locret_521C94
521C82:  LDR             R0, =(g_ikChainMan_ptr - 0x521C8C)
521C84:  MOV             R1, R4; CPed *
521C86:  MOVS            R2, #0xFA; int
521C88:  ADD             R0, PC; g_ikChainMan_ptr
521C8A:  LDR             R0, [R0]; g_ikChainMan ; this
521C8C:  POP.W           {R4,R6,R7,LR}
521C90:  B.W             sub_1A0F0C
521C94:  POP             {R4,R6,R7,PC}
