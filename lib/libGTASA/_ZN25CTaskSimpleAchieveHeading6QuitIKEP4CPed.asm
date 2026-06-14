; =========================================================
; Game Engine Function: _ZN25CTaskSimpleAchieveHeading6QuitIKEP4CPed
; Address            : 0x51D044 - 0x51D074
; =========================================================

51D044:  PUSH            {R4,R6,R7,LR}
51D046:  ADD             R7, SP, #8
51D048:  LDRB            R0, [R0,#0x14]
51D04A:  MOV             R4, R1
51D04C:  LSLS            R0, R0, #0x1F
51D04E:  IT EQ
51D050:  POPEQ           {R4,R6,R7,PC}
51D052:  LDR             R0, =(g_ikChainMan_ptr - 0x51D05A)
51D054:  MOV             R1, R4; CPed *
51D056:  ADD             R0, PC; g_ikChainMan_ptr
51D058:  LDR             R0, [R0]; g_ikChainMan ; this
51D05A:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
51D05E:  CBZ             R0, locret_51D072
51D060:  LDR             R0, =(g_ikChainMan_ptr - 0x51D06A)
51D062:  MOV             R1, R4; CPed *
51D064:  MOVS            R2, #0xFA; int
51D066:  ADD             R0, PC; g_ikChainMan_ptr
51D068:  LDR             R0, [R0]; g_ikChainMan ; this
51D06A:  POP.W           {R4,R6,R7,LR}
51D06E:  B.W             sub_1A0F0C
51D072:  POP             {R4,R6,R7,PC}
