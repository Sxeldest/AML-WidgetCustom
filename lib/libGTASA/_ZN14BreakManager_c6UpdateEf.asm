; =========================================================
; Game Engine Function: _ZN14BreakManager_c6UpdateEf
; Address            : 0x45262C - 0x452656
; =========================================================

45262C:  PUSH            {R4-R7,LR}
45262E:  ADD             R7, SP, #0xC
452630:  PUSH.W          {R11}
452634:  MOV             R4, R1
452636:  MOV             R5, R0
452638:  MOVS            R6, #0
45263A:  ADDS            R0, R5, R6; this
45263C:  LDRB            R1, [R0,#1]
45263E:  CMP             R1, #0
452640:  ITT NE
452642:  MOVNE           R1, R4; float
452644:  BLXNE           j__ZN13BreakObject_c6UpdateEf; BreakObject_c::Update(float)
452648:  ADDS            R6, #0x20 ; ' '
45264A:  CMP.W           R6, #0x800
45264E:  BNE             loc_45263A
452650:  POP.W           {R11}
452654:  POP             {R4-R7,PC}
