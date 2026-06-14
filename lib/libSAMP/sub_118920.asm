; =========================================================
; Game Engine Function: sub_118920
; Address            : 0x118920 - 0x11893C
; =========================================================

118920:  PUSH            {R4,R6,R7,LR}
118922:  ADD             R7, SP, #8
118924:  MOV             R4, R0
118926:  LDR             R0, =(_ZTV9SpdWithBGI15CTransparentSpdE - 0x11892C); `vtable for'SpdWithBG<CTransparentSpd> ...
118928:  ADD             R0, PC; `vtable for'SpdWithBG<CTransparentSpd>
11892A:  ADD.W           R1, R0, #8
11892E:  MOV             R0, R4
118930:  STR.W           R1, [R0],#4
118934:  BL              sub_1630A8
118938:  MOV             R0, R4
11893A:  POP             {R4,R6,R7,PC}
