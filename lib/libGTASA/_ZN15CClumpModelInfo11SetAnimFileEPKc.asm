; =========================================================
; Game Engine Function: _ZN15CClumpModelInfo11SetAnimFileEPKc
; Address            : 0x38551C - 0x38554A
; =========================================================

38551C:  PUSH            {R4,R5,R7,LR}
38551E:  ADD             R7, SP, #8
385520:  MOV             R4, R1
385522:  ADR             R1, aNull_0; "null"
385524:  MOV             R5, R0
385526:  MOV             R0, R4; char *
385528:  BLX             strcasecmp
38552C:  CMP             R0, #0
38552E:  IT EQ
385530:  POPEQ           {R4,R5,R7,PC}
385532:  MOV             R0, R4; char *
385534:  BLX             strlen
385538:  ADDS            R0, #1; unsigned int
38553A:  BLX             _Znaj; operator new[](uint)
38553E:  STR             R0, [R5,#0x38]
385540:  MOV             R1, R4; char *
385542:  POP.W           {R4,R5,R7,LR}
385546:  B.W             j_strcpy
