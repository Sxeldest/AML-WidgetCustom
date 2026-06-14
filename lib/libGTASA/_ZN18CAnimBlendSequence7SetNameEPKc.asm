; =========================================================
; Game Engine Function: _ZN18CAnimBlendSequence7SetNameEPKc
; Address            : 0x38B850 - 0x38B860
; =========================================================

38B850:  PUSH            {R4,R6,R7,LR}
38B852:  ADD             R7, SP, #8
38B854:  MOV             R4, R0
38B856:  MOV             R0, R1; this
38B858:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
38B85C:  STR             R0, [R4]
38B85E:  POP             {R4,R6,R7,PC}
