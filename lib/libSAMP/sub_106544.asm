; =========================================================
; Game Engine Function: sub_106544
; Address            : 0x106544 - 0x10657C
; =========================================================

106544:  PUSH            {R4,R5,R7,LR}
106546:  ADD             R7, SP, #8
106548:  MOV             R5, R0
10654A:  LDR             R0, [R0,#0x5C]
10654C:  CBZ             R0, locret_10657A
10654E:  LDRB.W          R0, [R0,#0x485]
106552:  LSLS            R0, R0, #0x1B
106554:  BMI             locret_10657A
106556:  MOV             R0, R5
106558:  MOV             R4, R1
10655A:  BL              sub_F8C70
10655E:  CBZ             R0, locret_10657A
106560:  LDR             R0, [R5,#8]
106562:  BL              sub_1082F4
106566:  CBZ             R0, locret_10657A
106568:  LDR             R0, =(aIi_1 - 0x106574); ")\aii" ...
10656A:  LDRB            R2, [R4]
10656C:  STRB.W          R2, [R5,#0x41]
106570:  ADD             R0, PC; ")\aii"
106572:  LDR             R1, [R5,#8]
106574:  LDRB            R2, [R4]
106576:  BL              sub_107188
10657A:  POP             {R4,R5,R7,PC}
