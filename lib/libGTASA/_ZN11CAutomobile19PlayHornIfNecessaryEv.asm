; =========================================================
; Game Engine Function: _ZN11CAutomobile19PlayHornIfNecessaryEv
; Address            : 0x558EE0 - 0x558F08
; =========================================================

558EE0:  PUSH            {R4,R6,R7,LR}
558EE2:  ADD             R7, SP, #8
558EE4:  MOV             R4, R0
558EE6:  LDRB.W          R0, [R4,#0x3DF]
558EEA:  LSLS            R0, R0, #0x1E
558EEC:  IT EQ
558EEE:  POPEQ           {R4,R6,R7,PC}
558EF0:  MOV             R0, R4; this
558EF2:  BLX             j__ZNK11CAutomobile27HasCarStoppedBecauseOfLightEv; CAutomobile::HasCarStoppedBecauseOfLight(void)
558EF6:  CBZ             R0, loc_558EFA
558EF8:  POP             {R4,R6,R7,PC}
558EFA:  LDR             R0, [R4]
558EFC:  LDR.W           R1, [R0,#0xDC]
558F00:  MOV             R0, R4
558F02:  POP.W           {R4,R6,R7,LR}
558F06:  BX              R1
