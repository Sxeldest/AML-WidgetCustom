; =========================================================
; Game Engine Function: _ZN19CInformFriendsEvent3SetEP4CPedP6CEventi
; Address            : 0x36FDDC - 0x36FE0C
; =========================================================

36FDDC:  PUSH            {R4-R7,LR}
36FDDE:  ADD             R7, SP, #0xC
36FDE0:  PUSH.W          {R11}
36FDE4:  MOV             R6, R0
36FDE6:  CMP             R1, #0
36FDE8:  MOV             R5, R3
36FDEA:  MOV             R4, R2
36FDEC:  STR             R1, [R6]
36FDEE:  ITTT NE
36FDF0:  MOVNE           R0, R1; this
36FDF2:  MOVNE           R1, R6; CEntity **
36FDF4:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
36FDF8:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x36FDFE)
36FDFA:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
36FDFC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
36FDFE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
36FE00:  ADD             R0, R5
36FE02:  STRD.W          R4, R0, [R6,#4]
36FE06:  POP.W           {R11}
36FE0A:  POP             {R4-R7,PC}
