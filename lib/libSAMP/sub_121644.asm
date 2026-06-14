; =========================================================
; Game Engine Function: sub_121644
; Address            : 0x121644 - 0x121672
; =========================================================

121644:  PUSH            {R4-R7,LR}
121646:  ADD             R7, SP, #0xC
121648:  PUSH.W          {R11}
12164C:  MOV             R6, R0
12164E:  LDR             R0, =(dword_263960 - 0x121658)
121650:  MOV             R5, R1
121652:  LDR             R1, [R1,#4]; s
121654:  ADD             R0, PC; dword_263960 ; int
121656:  MOV             R4, R2
121658:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
12165C:  LDR             R0, =(dword_26396C - 0x121666)
12165E:  MOV             R1, R4
121660:  LDR             R2, [R6,#4]
121662:  ADD             R0, PC; dword_26396C
121664:  STR             R4, [R0]
121666:  MOV             R0, R5
121668:  POP.W           {R11}
12166C:  POP.W           {R4-R7,LR}
121670:  BX              R2
