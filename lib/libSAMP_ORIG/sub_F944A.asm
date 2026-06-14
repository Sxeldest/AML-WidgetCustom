; =========================================================
; Game Engine Function: sub_F944A
; Address            : 0xF944A - 0xF9480
; =========================================================

F944A:  PUSH            {R4-R7,LR}
F944C:  ADD             R7, SP, #0xC
F944E:  PUSH.W          {R11}
F9452:  CMP             R3, R1
F9454:  BLS             loc_F945C
F9456:  MOV.W           R3, #0xFFFFFFFF
F945A:  B               loc_F9478
F945C:  LDR             R6, [R7,#arg_0]
F945E:  CBZ             R6, loc_F9478
F9460:  MOV             R4, R0
F9462:  ADDS            R5, R4, R1
F9464:  ADD             R0, R3; int
F9466:  ADDS            R3, R2, R6
F9468:  MOV             R1, R5
F946A:  BLX             j__ZNSt6__ndk118__search_substringIcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_; std::__search_substring<char,std::char_traits<char>>(char const*,char const*,char const*,char const*)
F946E:  SUBS            R3, R0, R4
F9470:  CMP             R0, R5
F9472:  IT EQ
F9474:  MOVEQ.W         R3, #0xFFFFFFFF
F9478:  MOV             R0, R3
F947A:  POP.W           {R11}
F947E:  POP             {R4-R7,PC}
