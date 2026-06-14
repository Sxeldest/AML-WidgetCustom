; =========================================================
; Game Engine Function: _ZN19CAnimBlendHierarchy7SetNameEPKc
; Address            : 0x38A28E - 0x38A29E
; =========================================================

38A28E:  PUSH            {R4,R6,R7,LR}
38A290:  ADD             R7, SP, #8
38A292:  MOV             R4, R0
38A294:  MOV             R0, R1; this
38A296:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
38A29A:  STR             R0, [R4]
38A29C:  POP             {R4,R6,R7,PC}
