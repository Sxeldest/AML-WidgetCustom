; =========================================================
; Game Engine Function: _ZN39CTaskComplexAvoidOtherPedWhileWandering17CreateNextSubTaskEP4CPed
; Address            : 0x521D04 - 0x521D5A
; =========================================================

521D04:  PUSH            {R4,R5,R7,LR}
521D06:  ADD             R7, SP, #8
521D08:  MOV             R5, R0
521D0A:  MOV             R4, R1
521D0C:  LDR             R0, [R5,#8]
521D0E:  LDR             R1, [R0]
521D10:  LDR             R1, [R1,#0x14]
521D12:  BLX             R1
521D14:  CMP             R0, #0xCB
521D16:  BNE             loc_521D26
521D18:  LDR             R0, [R5]
521D1A:  MOV             R1, R4
521D1C:  LDR             R2, [R0,#0x2C]
521D1E:  MOV             R0, R5
521D20:  POP.W           {R4,R5,R7,LR}
521D24:  BX              R2
521D26:  LDRB.W          R0, [R5,#0x5C]
521D2A:  LSLS            R0, R0, #0x1F
521D2C:  BEQ             loc_521D4A
521D2E:  LDR             R0, =(g_ikChainMan_ptr - 0x521D36)
521D30:  MOV             R1, R4; CPed *
521D32:  ADD             R0, PC; g_ikChainMan_ptr
521D34:  LDR             R0, [R0]; g_ikChainMan ; this
521D36:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
521D3A:  CBZ             R0, loc_521D4A
521D3C:  LDR             R0, =(g_ikChainMan_ptr - 0x521D46)
521D3E:  MOV             R1, R4; CPed *
521D40:  MOVS            R2, #0xFA; int
521D42:  ADD             R0, PC; g_ikChainMan_ptr
521D44:  LDR             R0, [R0]; g_ikChainMan ; this
521D46:  BLX             j__ZN16IKChainManager_c11AbortLookAtEP4CPedi; IKChainManager_c::AbortLookAt(CPed *,int)
521D4A:  LDR.W           R0, [R4,#0x490]
521D4E:  BIC.W           R0, R0, #0x40 ; '@'
521D52:  STR.W           R0, [R4,#0x490]
521D56:  MOVS            R0, #0
521D58:  POP             {R4,R5,R7,PC}
