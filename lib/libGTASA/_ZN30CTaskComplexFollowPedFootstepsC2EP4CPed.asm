; =========================================================
; Game Engine Function: _ZN30CTaskComplexFollowPedFootstepsC2EP4CPed
; Address            : 0x545928 - 0x54598C
; =========================================================

545928:  PUSH            {R4-R7,LR}
54592A:  ADD             R7, SP, #0xC
54592C:  PUSH.W          {R11}
545930:  MOV             R5, R1
545932:  MOV             R4, R0
545934:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
545938:  LDR             R0, =(_ZTV30CTaskComplexFollowPedFootsteps_ptr - 0x545944)
54593A:  MOVS            R6, #0
54593C:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x545948)
54593E:  CMP             R5, #0
545940:  ADD             R0, PC; _ZTV30CTaskComplexFollowPedFootsteps_ptr
545942:  LDRB            R2, [R4,#0x1E]
545944:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
545946:  LDR             R0, [R0]; `vtable for'CTaskComplexFollowPedFootsteps ...
545948:  LDR             R3, [R1]; CTimer::m_snTimeInMilliseconds ...
54594A:  MOV             R1, R4
54594C:  ADD.W           R0, R0, #8
545950:  STR             R0, [R4]
545952:  STR.W           R5, [R1,#0xC]!; CEntity **
545956:  LDR             R0, [R3]; CTimer::m_snTimeInMilliseconds
545958:  STRD.W          R0, R6, [R4,#0x10]
54595C:  MOV.W           R0, #4
545960:  STR             R6, [R4,#0x18]
545962:  STRH            R0, [R4,#0x1C]
545964:  AND.W           R0, R2, #0xFE
545968:  STRB            R0, [R4,#0x1E]
54596A:  ITT NE
54596C:  MOVNE           R0, R5; this
54596E:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
545972:  MOVS            R0, #dword_64; this
545974:  BLX             j__ZN11CPointRoutenwEj; CPointRoute::operator new(uint)
545978:  CMP             R0, #0
54597A:  STR             R6, [R0]
54597C:  STR             R0, [R4,#0x18]
54597E:  ITT NE
545980:  MOVNE           R1, #0
545982:  STRNE           R1, [R0]
545984:  MOV             R0, R4
545986:  POP.W           {R11}
54598A:  POP             {R4-R7,PC}
