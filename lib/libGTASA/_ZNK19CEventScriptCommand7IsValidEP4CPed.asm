; =========================================================
; Game Engine Function: _ZNK19CEventScriptCommand7IsValidEP4CPed
; Address            : 0x376558 - 0x376584
; =========================================================

376558:  CMP             R1, #0
37655A:  ITT NE
37655C:  MOVNE           R0, R1; this
37655E:  BNE.W           sub_196874
376562:  LDRB            R1, [R0,#8]
376564:  CMP             R1, #0
376566:  ITT NE
376568:  MOVNE           R0, #1
37656A:  BXNE            LR
37656C:  PUSH            {R4,R6,R7,LR}
37656E:  ADD             R7, SP, #0x10+var_8
376570:  LDRD.W          R1, R4, [R0]
376574:  LDR             R1, [R1,#0x10]
376576:  BLX             R1
376578:  MOV             R1, R0
37657A:  MOVS            R0, #0
37657C:  CMP             R4, R1
37657E:  IT LE
376580:  MOVLE           R0, #1
376582:  POP             {R4,R6,R7,PC}
