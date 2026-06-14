; =========================================================
; Game Engine Function: _ZNK19CEventScriptCommand10AffectsPedEP4CPed
; Address            : 0x376584 - 0x3765A2
; =========================================================

376584:  PUSH            {R4,R6,R7,LR}
376586:  ADD             R7, SP, #8
376588:  MOV             R4, R0
37658A:  MOV             R0, R1; this
37658C:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
376590:  CMP             R0, #0
376592:  ITT NE
376594:  MOVNE           R0, #1
376596:  POPNE           {R4,R6,R7,PC}
376598:  LDRB            R0, [R4,#0x14]
37659A:  CMP             R0, #0
37659C:  IT NE
37659E:  MOVNE           R0, #1
3765A0:  POP             {R4,R6,R7,PC}
