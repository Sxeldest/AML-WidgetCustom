; =========================================================
; Game Engine Function: ConfigValueStr
; Address            : 0x24D620 - 0x24D63C
; =========================================================

24D620:  PUSH            {R4,R6,R7,LR}
24D622:  ADD             R7, SP, #8
24D624:  MOV             R4, R2
24D626:  LDR             R2, =(byte_61CD7E - 0x24D62C)
24D628:  ADD             R2, PC; byte_61CD7E
24D62A:  BLX             j_GetConfigValue
24D62E:  LDRB            R1, [R0]
24D630:  CMP             R1, #0
24D632:  ITEE EQ
24D634:  MOVEQ           R0, #0
24D636:  STRNE           R0, [R4]
24D638:  MOVNE           R0, #1
24D63A:  POP             {R4,R6,R7,PC}
