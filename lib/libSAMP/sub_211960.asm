; =========================================================
; Game Engine Function: sub_211960
; Address            : 0x211960 - 0x21199A
; =========================================================

211960:  PUSH            {R4-R7,LR}
211962:  ADD             R7, SP, #0xC
211964:  PUSH.W          {R8,R9,R11}
211968:  CMP             R3, R1
21196A:  BCS             loc_21198C
21196C:  LDR.W           R8, [R7,#n]
211970:  MOV             R9, R2
211972:  MOV             R5, R0
211974:  LSLS            R4, R1, #2
211976:  LSLS            R6, R3, #2
211978:  CMP             R4, R6
21197A:  BEQ             loc_21198C
21197C:  ADDS            R2, R5, R6
21197E:  MOV             R0, R9; int
211980:  MOV             R1, R8; n
211982:  BLX             j__ZNSt6__ndk111char_traitsIwE4findEPKwjRS2_; std::char_traits<wchar_t>::find(wchar_t const*,uint,wchar_t const&)
211986:  CBZ             R0, loc_211992
211988:  ADDS            R6, #4
21198A:  B               loc_211978
21198C:  MOV.W           R0, #0xFFFFFFFF
211990:  B               loc_211994
211992:  ASRS            R0, R6, #2
211994:  POP.W           {R8,R9,R11}
211998:  POP             {R4-R7,PC}
