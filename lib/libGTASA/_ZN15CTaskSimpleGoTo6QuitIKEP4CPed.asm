; =========================================================
; Game Engine Function: _ZN15CTaskSimpleGoTo6QuitIKEP4CPed
; Address            : 0x51CA54 - 0x51CA84
; =========================================================

51CA54:  PUSH            {R4,R6,R7,LR}
51CA56:  ADD             R7, SP, #8
51CA58:  LDRB            R0, [R0,#0x1C]
51CA5A:  MOV             R4, R1
51CA5C:  LSLS            R0, R0, #0x1B
51CA5E:  IT PL
51CA60:  POPPL           {R4,R6,R7,PC}
51CA62:  LDR             R0, =(g_ikChainMan_ptr - 0x51CA6A)
51CA64:  MOV             R1, R4; CPed *
51CA66:  ADD             R0, PC; g_ikChainMan_ptr
51CA68:  LDR             R0, [R0]; g_ikChainMan ; this
51CA6A:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
51CA6E:  CBZ             R0, locret_51CA82
51CA70:  LDR             R0, =(g_ikChainMan_ptr - 0x51CA7A)
51CA72:  MOV             R1, R4; CPed *
51CA74:  MOVS            R2, #0xFA; int
51CA76:  ADD             R0, PC; g_ikChainMan_ptr
51CA78:  LDR             R0, [R0]; g_ikChainMan ; this
51CA7A:  POP.W           {R4,R6,R7,LR}
51CA7E:  B.W             sub_1A0F0C
51CA82:  POP             {R4,R6,R7,PC}
