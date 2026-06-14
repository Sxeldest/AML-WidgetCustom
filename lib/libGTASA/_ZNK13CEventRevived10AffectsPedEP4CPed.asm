; =========================================================
; Game Engine Function: _ZNK13CEventRevived10AffectsPedEP4CPed
; Address            : 0x3746E0 - 0x3746FC
; =========================================================

3746E0:  LDRB.W          R0, [R1,#0x448]
3746E4:  CMP             R0, #2
3746E6:  ITT EQ
3746E8:  MOVEQ           R0, #0
3746EA:  BXEQ            LR
3746EC:  PUSH            {R7,LR}
3746EE:  MOV             R7, SP
3746F0:  MOV             R0, R1; this
3746F2:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
3746F6:  EOR.W           R0, R0, #1
3746FA:  POP             {R7,PC}
