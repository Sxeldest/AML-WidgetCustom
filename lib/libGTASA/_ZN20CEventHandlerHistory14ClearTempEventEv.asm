; =========================================================
; Game Engine Function: _ZN20CEventHandlerHistory14ClearTempEventEv
; Address            : 0x37B47C - 0x37B494
; =========================================================

37B47C:  PUSH            {R4,R6,R7,LR}
37B47E:  ADD             R7, SP, #8
37B480:  MOV             R4, R0
37B482:  LDR             R0, [R4,#8]
37B484:  CMP             R0, #0
37B486:  ITTT NE
37B488:  LDRNE           R1, [R0]
37B48A:  LDRNE           R1, [R1,#4]
37B48C:  BLXNE           R1
37B48E:  MOVS            R0, #0
37B490:  STR             R0, [R4,#8]
37B492:  POP             {R4,R6,R7,PC}
