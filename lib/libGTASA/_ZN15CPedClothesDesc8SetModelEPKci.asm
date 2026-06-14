; =========================================================
; Game Engine Function: _ZN15CPedClothesDesc8SetModelEPKci
; Address            : 0x457426 - 0x457440
; =========================================================

457426:  PUSH            {R4,R5,R7,LR}
457428:  ADD             R7, SP, #8
45742A:  MOV             R4, R2
45742C:  MOV             R5, R0
45742E:  CMP             R1, #0
457430:  ITEE EQ
457432:  MOVEQ           R0, #0
457434:  MOVNE           R0, R1; this
457436:  BLXNE           j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
45743A:  STR.W           R0, [R5,R4,LSL#2]
45743E:  POP             {R4,R5,R7,PC}
