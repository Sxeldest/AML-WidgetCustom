; =========================================================
; Game Engine Function: _ZN39CTaskComplexAvoidOtherPedWhileWandering13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x521CA0 - 0x521CFA
; =========================================================

521CA0:  PUSH            {R4-R7,LR}
521CA2:  ADD             R7, SP, #0xC
521CA4:  PUSH.W          {R11}
521CA8:  MOV             R5, R0
521CAA:  MOV             R6, R1
521CAC:  LDR             R0, [R5,#8]
521CAE:  LDR             R1, [R0]
521CB0:  LDR             R4, [R1,#0x1C]
521CB2:  MOV             R1, R6
521CB4:  BLX             R4
521CB6:  CMP             R0, #1
521CB8:  BNE             loc_521CF2
521CBA:  LDRB.W          R0, [R5,#0x5C]
521CBE:  LSLS            R0, R0, #0x1F
521CC0:  BEQ             loc_521CDE
521CC2:  LDR             R0, =(g_ikChainMan_ptr - 0x521CCA)
521CC4:  MOV             R1, R6; CPed *
521CC6:  ADD             R0, PC; g_ikChainMan_ptr
521CC8:  LDR             R0, [R0]; g_ikChainMan ; this
521CCA:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
521CCE:  CBZ             R0, loc_521CDE
521CD0:  LDR             R0, =(g_ikChainMan_ptr - 0x521CDA)
521CD2:  MOV             R1, R6; CPed *
521CD4:  MOVS            R2, #0xFA; int
521CD6:  ADD             R0, PC; g_ikChainMan_ptr
521CD8:  LDR             R0, [R0]; g_ikChainMan ; this
521CDA:  BLX             j__ZN16IKChainManager_c11AbortLookAtEP4CPedi; IKChainManager_c::AbortLookAt(CPed *,int)
521CDE:  LDR.W           R0, [R6,#0x490]
521CE2:  BIC.W           R0, R0, #0x40 ; '@'
521CE6:  STR.W           R0, [R6,#0x490]
521CEA:  MOVS            R0, #1
521CEC:  POP.W           {R11}
521CF0:  POP             {R4-R7,PC}
521CF2:  MOVS            R0, #0
521CF4:  POP.W           {R11}
521CF8:  POP             {R4-R7,PC}
