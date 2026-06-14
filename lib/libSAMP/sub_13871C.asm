; =========================================================
; Game Engine Function: sub_13871C
; Address            : 0x13871C - 0x13873E
; =========================================================

13871C:  PUSH            {R4,R6,R7,LR}
13871E:  ADD             R7, SP, #8
138720:  MOV             R4, R0
138722:  LDR             R0, =(_ZTV11ButtonVoice - 0x138728); `vtable for'ButtonVoice ...
138724:  ADD             R0, PC; `vtable for'ButtonVoice
138726:  ADD.W           R1, R0, #8
13872A:  MOV             R0, R4
13872C:  STR.W           R1, [R0],#0x54
138730:  BL              sub_138A84
138734:  MOV             R0, R4
138736:  POP.W           {R4,R6,R7,LR}
13873A:  B.W             sub_12BCE4
