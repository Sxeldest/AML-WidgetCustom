; =========================================================
; Game Engine Function: sub_1524F4
; Address            : 0x1524F4 - 0x152542
; =========================================================

1524F4:  PUSH            {R4-R7,LR}
1524F6:  ADD             R7, SP, #0xC
1524F8:  PUSH.W          {R11}
1524FC:  SUB             SP, SP, #0x118
1524FE:  MOV             R4, R0
152500:  MOV             R0, SP
152502:  MOV             R5, R2
152504:  MOV             R6, R1
152506:  BL              sub_17D4A8
15250A:  STRB.W          R6, [R7,#var_11]
15250E:  SUB.W           R1, R7, #-var_11
152512:  MOVS            R2, #8
152514:  MOVS            R3, #1
152516:  BL              sub_17D628
15251A:  CBZ             R5, loc_152524
15251C:  MOV             R0, SP
15251E:  BL              sub_17D84A
152522:  B               loc_15252A
152524:  MOV             R0, SP
152526:  BL              sub_17D828
15252A:  LDR             R0, [R4]
15252C:  MOV             R2, SP
15252E:  MOVS            R1, #5
152530:  BL              sub_15535A
152534:  MOV             R0, SP
152536:  BL              sub_17D542
15253A:  ADD             SP, SP, #0x118
15253C:  POP.W           {R11}
152540:  POP             {R4-R7,PC}
