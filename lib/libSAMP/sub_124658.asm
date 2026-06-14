; =========================================================
; Game Engine Function: sub_124658
; Address            : 0x124658 - 0x12469E
; =========================================================

124658:  PUSH            {R7,LR}
12465A:  MOV             R7, SP
12465C:  LDR             R0, =(byte_263D24 - 0x124662)
12465E:  ADD             R0, PC; byte_263D24
124660:  LDRB            R0, [R0]
124662:  DMB.W           ISH
124666:  LSLS            R0, R0, #0x1F
124668:  BEQ             loc_12466C
12466A:  POP             {R7,PC}
12466C:  LDR             R0, =(byte_263D24 - 0x124672)
12466E:  ADD             R0, PC; byte_263D24 ; __guard *
124670:  BLX             j___cxa_guard_acquire
124674:  CMP             R0, #0
124676:  IT EQ
124678:  POPEQ           {R7,PC}
12467A:  LDR             R0, =(dword_263C74 - 0x124680)
12467C:  ADD             R0, PC; dword_263C74
12467E:  BL              sub_125EB4
124682:  LDR             R0, =(sub_EDE5C+1 - 0x12468C)
124684:  LDR             R1, =(dword_263C74 - 0x12468E)
124686:  LDR             R2, =(off_22A540 - 0x124690)
124688:  ADD             R0, PC; sub_EDE5C ; lpfunc
12468A:  ADD             R1, PC; dword_263C74 ; obj
12468C:  ADD             R2, PC; off_22A540 ; lpdso_handle
12468E:  BLX             __cxa_atexit
124692:  LDR             R0, =(byte_263D24 - 0x124698)
124694:  ADD             R0, PC; byte_263D24
124696:  POP.W           {R7,LR}
12469A:  B.W             sub_2242B0
