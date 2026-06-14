; =========================================================
; Game Engine Function: _ZNK15CEventEscalator10AffectsPedEP4CPed
; Address            : 0x377DB8 - 0x377E00
; =========================================================

377DB8:  PUSH            {R4,R6,R7,LR}
377DBA:  ADD             R7, SP, #8
377DBC:  MOV             R4, R1
377DBE:  MOV             R0, R4; this
377DC0:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
377DC4:  CMP             R0, #1
377DC6:  BNE             loc_377DFC
377DC8:  MOV             R0, R4; this
377DCA:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
377DCE:  CBNZ            R0, loc_377DFC
377DD0:  LDR.W           R0, [R4,#0x588]
377DD4:  CBZ             R0, loc_377DFC
377DD6:  LDR             R1, =(MI_ESCALATORSTEP_ptr - 0x377DDC)
377DD8:  ADD             R1, PC; MI_ESCALATORSTEP_ptr
377DDA:  LDR             R2, [R1]; MI_ESCALATORSTEP
377DDC:  LDRSH.W         R1, [R0,#0x26]
377DE0:  LDRH            R0, [R2]
377DE2:  CMP             R1, R0
377DE4:  ITT EQ
377DE6:  MOVEQ           R0, #1
377DE8:  POPEQ           {R4,R6,R7,PC}
377DEA:  LDR             R0, =(MI_ESCALATORSTEP8_ptr - 0x377DF0)
377DEC:  ADD             R0, PC; MI_ESCALATORSTEP8_ptr
377DEE:  LDR             R0, [R0]; MI_ESCALATORSTEP8
377DF0:  LDRH            R2, [R0]
377DF2:  MOVS            R0, #0
377DF4:  CMP             R1, R2
377DF6:  IT EQ
377DF8:  MOVEQ           R0, #1
377DFA:  POP             {R4,R6,R7,PC}
377DFC:  MOVS            R0, #0
377DFE:  POP             {R4,R6,R7,PC}
