; =========================================================
; Game Engine Function: sub_EC75A
; Address            : 0xEC75A - 0xEC7A8
; =========================================================

EC75A:  PUSH            {R4-R7,LR}
EC75C:  ADD             R7, SP, #0xC
EC75E:  PUSH.W          {R8}
EC762:  MOV             R8, R0
EC764:  LDR.W           R4, [R8,#4]!
EC768:  CBZ             R4, loc_EC79E
EC76A:  MOV             R6, R1
EC76C:  MOV             R5, R8
EC76E:  ADD.W           R0, R4, #0x10; int
EC772:  MOV             R1, R6; s
EC774:  BLX             j__ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEPKc; std::string::compare(char const*)
EC778:  CMP             R0, #0
EC77A:  MOV             R0, R4
EC77C:  IT MI
EC77E:  ADDMI           R0, #4
EC780:  LDR             R0, [R0]
EC782:  IT PL
EC784:  MOVPL           R5, R4
EC786:  CMP             R0, #0
EC788:  MOV             R4, R0
EC78A:  BNE             loc_EC76E
EC78C:  CMP             R5, R8
EC78E:  BEQ             loc_EC79E
EC790:  ADD.W           R0, R5, #0x10; int
EC794:  MOV             R1, R6; s
EC796:  BLX             j__ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEPKc; std::string::compare(char const*)
EC79A:  CMP             R0, #1
EC79C:  BLT             loc_EC7A0
EC79E:  MOV             R5, R8
EC7A0:  MOV             R0, R5
EC7A2:  POP.W           {R8}
EC7A6:  POP             {R4-R7,PC}
