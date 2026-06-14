; =========================================================
; Game Engine Function: sub_F8844
; Address            : 0xF8844 - 0xF887C
; =========================================================

F8844:  PUSH            {R4-R7,LR}
F8846:  ADD             R7, SP, #0xC
F8848:  PUSH.W          {R8}
F884C:  MOV             R4, R1
F884E:  CMP             R3, R1
F8850:  LDR.W           R8, [R7,#n]
F8854:  IT CC
F8856:  ADDCC           R4, R3, #1
F8858:  SUBS            R6, R0, #1
F885A:  MOV             R5, R2
F885C:  CBZ             R4, loc_F8870
F885E:  ADDS            R2, R6, R4
F8860:  MOV             R0, R5; int
F8862:  MOV             R1, R8; n
F8864:  BLX             j__ZNSt6__ndk111char_traitsIcE4findEPKcjRS2_; std::char_traits<char>::find(char const*,uint,char const&)
F8868:  SUBS            R4, #1
F886A:  CMP             R0, #0
F886C:  BNE             loc_F885C
F886E:  B               loc_F8874
F8870:  MOV.W           R4, #0xFFFFFFFF
F8874:  MOV             R0, R4
F8876:  POP.W           {R8}
F887A:  POP             {R4-R7,PC}
