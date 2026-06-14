; =========================================================
; Game Engine Function: _Z25GetCompiledShaderWithCodePKcR8TDBArrayI16RQCompiledShaderE
; Address            : 0x1CC60E - 0x1CC63A
; =========================================================

1CC60E:  PUSH            {R4,R6,R7,LR}
1CC610:  ADD             R7, SP, #8
1CC612:  MOV             R4, R1
1CC614:  BLX             j__Z10HashStringPKc; HashString(char const*)
1CC618:  LDR             R2, [R4,#4]
1CC61A:  MOV             R1, R0
1CC61C:  CBZ             R2, loc_1CC634
1CC61E:  LDR             R0, [R4,#8]
1CC620:  MOVS            R3, #0
1CC622:  LDR             R4, [R0]
1CC624:  CMP             R4, R1
1CC626:  BEQ             locret_1CC638
1CC628:  ADDS            R3, #1
1CC62A:  ADDS            R0, #8
1CC62C:  CMP             R3, R2
1CC62E:  BCC             loc_1CC622
1CC630:  MOVS            R0, #0
1CC632:  POP             {R4,R6,R7,PC}
1CC634:  MOVS            R0, #0
1CC636:  POP             {R4,R6,R7,PC}
1CC638:  POP             {R4,R6,R7,PC}
