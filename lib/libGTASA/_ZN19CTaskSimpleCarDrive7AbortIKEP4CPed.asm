; =========================================================
; Game Engine Function: _ZN19CTaskSimpleCarDrive7AbortIKEP4CPed
; Address            : 0x4FA144 - 0x4FA16C
; =========================================================

4FA144:  PUSH            {R4,R6,R7,LR}
4FA146:  ADD             R7, SP, #8
4FA148:  LDR             R0, =(g_ikChainMan_ptr - 0x4FA150)
4FA14A:  MOV             R4, R1
4FA14C:  ADD             R0, PC; g_ikChainMan_ptr
4FA14E:  LDR             R0, [R0]; g_ikChainMan ; this
4FA150:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
4FA154:  CMP             R0, #0
4FA156:  IT EQ
4FA158:  POPEQ           {R4,R6,R7,PC}
4FA15A:  LDR             R0, =(g_ikChainMan_ptr - 0x4FA164)
4FA15C:  MOV             R1, R4; CPed *
4FA15E:  MOVS            R2, #0xFA; int
4FA160:  ADD             R0, PC; g_ikChainMan_ptr
4FA162:  LDR             R0, [R0]; g_ikChainMan ; this
4FA164:  POP.W           {R4,R6,R7,LR}
4FA168:  B.W             sub_1A0F0C
