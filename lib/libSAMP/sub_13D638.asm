; =========================================================
; Game Engine Function: sub_13D638
; Address            : 0x13D638 - 0x13D66C
; =========================================================

13D638:  PUSH            {R4,R5,R7,LR}
13D63A:  ADD             R7, SP, #8
13D63C:  SUB             SP, SP, #8
13D63E:  MOV             R5, R0
13D640:  MOV             R4, R1
13D642:  LDR             R1, [R5,#0x74]
13D644:  ADD.W           R2, R5, #0x60 ; '`'; int
13D648:  LDRB.W          R0, [R0,#0x70]
13D64C:  ADD.W           R3, R5, #0x54 ; 'T'; int
13D650:  STRD.W          R0, R1, [SP,#0x10+var_10]; int
13D654:  ADD.W           R1, R5, #0x2C ; ','; int
13D658:  MOV             R0, R4; int
13D65A:  BL              sub_12AE34
13D65E:  MOV             R0, R5
13D660:  MOV             R1, R4
13D662:  ADD             SP, SP, #8
13D664:  POP.W           {R4,R5,R7,LR}
13D668:  B.W             sub_12C0B6
