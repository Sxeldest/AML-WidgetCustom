; =========================================================
; Game Engine Function: sub_FE30C
; Address            : 0xFE30C - 0xFE322
; =========================================================

FE30C:  PUSH            {R4,R6,R7,LR}
FE30E:  ADD             R7, SP, #8
FE310:  MOV             R4, R0
FE312:  ADDS            R0, #4
FE314:  BL              sub_100A36
FE318:  MOV             R0, R4
FE31A:  POP.W           {R4,R6,R7,LR}
FE31E:  B.W             sub_2242F8
