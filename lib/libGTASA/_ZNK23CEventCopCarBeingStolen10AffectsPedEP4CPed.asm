; =========================================================
; Game Engine Function: _ZNK23CEventCopCarBeingStolen10AffectsPedEP4CPed
; Address            : 0x376FC4 - 0x37700A
; =========================================================

376FC4:  PUSH            {R4,R5,R7,LR}
376FC6:  ADD             R7, SP, #8
376FC8:  MOV             R5, R0
376FCA:  MOV             R4, R1
376FCC:  LDR             R0, [R5,#0xC]; this
376FCE:  CMP             R0, #0
376FD0:  ITT NE
376FD2:  LDRNE           R1, [R5,#0x10]
376FD4:  CMPNE           R1, #0
376FD6:  BEQ             loc_376FFC
376FD8:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
376FDC:  CMP             R0, #1
376FDE:  BNE             loc_376FFC
376FE0:  MOV             R0, R4; this
376FE2:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
376FE6:  CMP             R0, #1
376FE8:  ITT EQ
376FEA:  LDREQ.W         R0, [R4,#0x59C]
376FEE:  CMPEQ           R0, #6
376FF0:  BNE             loc_376FFC
376FF2:  LDR.W           R0, [R4,#0x590]
376FF6:  LDR             R1, [R5,#0x10]
376FF8:  CMP             R1, R0
376FFA:  BEQ             loc_377000
376FFC:  MOVS            R0, #0
376FFE:  POP             {R4,R5,R7,PC}
377000:  LDRB.W          R0, [R4,#0x485]
377004:  AND.W           R0, R0, #1
377008:  POP             {R4,R5,R7,PC}
