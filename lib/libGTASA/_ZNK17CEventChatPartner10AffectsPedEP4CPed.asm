; =========================================================
; Game Engine Function: _ZNK17CEventChatPartner10AffectsPedEP4CPed
; Address            : 0x3747AC - 0x3747CA
; =========================================================

3747AC:  PUSH            {R4,R6,R7,LR}
3747AE:  ADD             R7, SP, #8
3747B0:  MOV             R4, R0
3747B2:  MOV             R0, R1; this
3747B4:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
3747B8:  CMP             R0, #1
3747BA:  ITT NE
3747BC:  MOVNE           R0, #0
3747BE:  POPNE           {R4,R6,R7,PC}
3747C0:  LDR             R0, [R4,#0xC]
3747C2:  CMP             R0, #0
3747C4:  IT NE
3747C6:  MOVNE           R0, #1
3747C8:  POP             {R4,R6,R7,PC}
