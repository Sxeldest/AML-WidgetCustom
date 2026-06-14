; =========================================================
; Game Engine Function: sub_EC70C
; Address            : 0xEC70C - 0xEC75A
; =========================================================

EC70C:  PUSH            {R4-R7,LR}
EC70E:  ADD             R7, SP, #0xC
EC710:  PUSH.W          {R8}
EC714:  MOV             R8, R0
EC716:  LDR.W           R4, [R8,#4]!
EC71A:  CBZ             R4, loc_EC750
EC71C:  MOV             R6, R1
EC71E:  MOV             R5, R8
EC720:  ADD.W           R0, R4, #0x10; int
EC724:  MOV             R1, R6; s
EC726:  BLX             j__ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEPKc; std::string::compare(char const*)
EC72A:  CMP             R0, #0
EC72C:  MOV             R0, R4
EC72E:  IT MI
EC730:  ADDMI           R0, #4
EC732:  LDR             R0, [R0]
EC734:  IT PL
EC736:  MOVPL           R5, R4
EC738:  CMP             R0, #0
EC73A:  MOV             R4, R0
EC73C:  BNE             loc_EC720
EC73E:  CMP             R5, R8
EC740:  BEQ             loc_EC750
EC742:  ADD.W           R0, R5, #0x10; int
EC746:  MOV             R1, R6; s
EC748:  BLX             j__ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEPKc; std::string::compare(char const*)
EC74C:  CMP             R0, #1
EC74E:  BLT             loc_EC752
EC750:  MOV             R5, R8
EC752:  MOV             R0, R5
EC754:  POP.W           {R8}
EC758:  POP             {R4-R7,PC}
