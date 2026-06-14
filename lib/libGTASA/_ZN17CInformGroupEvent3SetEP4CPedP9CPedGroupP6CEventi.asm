; =========================================================
; Game Engine Function: _ZN17CInformGroupEvent3SetEP4CPedP9CPedGroupP6CEventi
; Address            : 0x3701B8 - 0x3701EE
; =========================================================

3701B8:  PUSH            {R4-R7,LR}
3701BA:  ADD             R7, SP, #0xC
3701BC:  PUSH.W          {R8}
3701C0:  MOV             R5, R0
3701C2:  CMP             R1, #0
3701C4:  MOV             R4, R3
3701C6:  MOV             R6, R2
3701C8:  LDR.W           R8, [R7,#arg_0]
3701CC:  STR             R1, [R5]
3701CE:  ITTT NE
3701D0:  MOVNE           R0, R1; this
3701D2:  MOVNE           R1, R5; CEntity **
3701D4:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3701D8:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3701DE)
3701DA:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3701DC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3701DE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3701E0:  STRD.W          R6, R4, [R5,#4]
3701E4:  ADD             R0, R8
3701E6:  STR             R0, [R5,#0xC]
3701E8:  POP.W           {R8}
3701EC:  POP             {R4-R7,PC}
