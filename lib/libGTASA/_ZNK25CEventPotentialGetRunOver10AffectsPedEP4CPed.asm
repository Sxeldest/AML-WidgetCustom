; =========================================================
; Game Engine Function: _ZNK25CEventPotentialGetRunOver10AffectsPedEP4CPed
; Address            : 0x373EBC - 0x373EFA
; =========================================================

373EBC:  PUSH            {R4,R5,R7,LR}
373EBE:  ADD             R7, SP, #8
373EC0:  MOV             R5, R1
373EC2:  MOV             R4, R0
373EC4:  MOV             R0, R5; this
373EC6:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
373ECA:  CMP             R0, #1
373ECC:  BNE             loc_373EE0
373ECE:  LDR.W           R0, [R5,#0x100]
373ED2:  CMP             R0, #0
373ED4:  ITT EQ
373ED6:  LDRBEQ.W        R0, [R5,#0x485]
373EDA:  MOVSEQ.W        R0, R0,LSL#31
373EDE:  BEQ             loc_373EE4
373EE0:  MOVS            R0, #0
373EE2:  POP             {R4,R5,R7,PC}
373EE4:  LDR             R1, [R4,#0x10]
373EE6:  MOVS            R0, #0
373EE8:  CMP             R1, #0
373EEA:  IT EQ
373EEC:  POPEQ           {R4,R5,R7,PC}
373EEE:  LDR.W           R1, [R1,#0x5A0]
373EF2:  CMP             R1, #5
373EF4:  IT NE
373EF6:  MOVNE           R0, #1
373EF8:  POP             {R4,R5,R7,PC}
