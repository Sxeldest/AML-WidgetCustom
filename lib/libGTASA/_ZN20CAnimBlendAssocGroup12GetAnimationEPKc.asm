; =========================================================
; Game Engine Function: _ZN20CAnimBlendAssocGroup12GetAnimationEPKc
; Address            : 0x3897E6 - 0x389818
; =========================================================

3897E6:  PUSH            {R4,R6,R7,LR}
3897E8:  ADD             R7, SP, #8
3897EA:  MOV             R4, R0
3897EC:  MOV             R0, R1; this
3897EE:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
3897F2:  LDR             R2, [R4,#8]
3897F4:  MOV             R1, R0
3897F6:  CMP             R2, #1
3897F8:  BLT             loc_389812
3897FA:  LDR             R0, [R4,#4]
3897FC:  MOVS            R3, #0
3897FE:  LDR             R4, [R0,#0x10]
389800:  LDR             R4, [R4]
389802:  CMP             R4, R1
389804:  BEQ             locret_389816
389806:  ADDS            R3, #1
389808:  ADDS            R0, #0x14
38980A:  CMP             R3, R2
38980C:  BLT             loc_3897FE
38980E:  MOVS            R0, #0
389810:  POP             {R4,R6,R7,PC}
389812:  MOVS            R0, #0
389814:  POP             {R4,R6,R7,PC}
389816:  POP             {R4,R6,R7,PC}
