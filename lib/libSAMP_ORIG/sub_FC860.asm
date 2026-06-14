; =========================================================
; Game Engine Function: sub_FC860
; Address            : 0xFC860 - 0xFC88E
; =========================================================

FC860:  PUSH            {R4-R7,LR}
FC862:  ADD             R7, SP, #0xC
FC864:  PUSH.W          {R11}
FC868:  MOV             R5, R0
FC86A:  MOV             R4, R1
FC86C:  MOV             R0, R1
FC86E:  MOVS            R1, #0x64 ; 'd'
FC870:  MOVS            R6, #0x64 ; 'd'
FC872:  BLX             sub_108874
FC876:  MLS.W           R1, R0, R6, R4
FC87A:  ADDS            R0, #0x30 ; '0'
FC87C:  STRB.W          R0, [R5],#1
FC880:  MOV             R0, R5
FC882:  POP.W           {R11}
FC886:  POP.W           {R4-R7,LR}
FC88A:  B.W             sub_FC84C
