; =========================================================
; Game Engine Function: sub_2105F4
; Address            : 0x2105F4 - 0x21062C
; =========================================================

2105F4:  PUSH            {R4-R7,LR}
2105F6:  ADD             R7, SP, #0xC
2105F8:  PUSH.W          {R8}
2105FC:  MOV             R4, R1
2105FE:  CMP             R3, R1
210600:  LDR.W           R8, [R7,#n]
210604:  IT CC
210606:  ADDCC           R4, R3, #1
210608:  SUBS            R6, R0, #1
21060A:  MOV             R5, R2
21060C:  CBZ             R4, loc_210620
21060E:  ADDS            R2, R6, R4
210610:  MOV             R0, R5; int
210612:  MOV             R1, R8; n
210614:  BLX             j__ZNSt6__ndk111char_traitsIcE4findEPKcjRS2_; std::char_traits<char>::find(char const*,uint,char const&)
210618:  SUBS            R4, #1
21061A:  CMP             R0, #0
21061C:  BNE             loc_21060C
21061E:  B               loc_210624
210620:  MOV.W           R4, #0xFFFFFFFF
210624:  MOV             R0, R4
210626:  POP.W           {R8}
21062A:  POP             {R4-R7,PC}
