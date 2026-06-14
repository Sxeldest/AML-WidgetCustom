; =========================================================
; Game Engine Function: sub_F9B82
; Address            : 0xF9B82 - 0xF9BBA
; =========================================================

F9B82:  PUSH            {R4-R7,LR}
F9B84:  ADD             R7, SP, #0xC
F9B86:  PUSH.W          {R8}
F9B8A:  CMP             R3, R1
F9B8C:  LDR.W           R8, [R7,#n]
F9B90:  IT CC
F9B92:  ADDCC           R1, R3, #1
F9B94:  SUBS            R5, R0, #4
F9B96:  MOV             R4, R2
F9B98:  LSLS            R6, R1, #2
F9B9A:  CBZ             R6, loc_F9BB0
F9B9C:  ADDS            R2, R5, R6
F9B9E:  MOV             R0, R4; int
F9BA0:  MOV             R1, R8; n
F9BA2:  BLX             j__ZNSt6__ndk111char_traitsIwE4findEPKwjRS2_; std::char_traits<wchar_t>::find(wchar_t const*,uint,wchar_t const&)
F9BA6:  SUBS            R6, #4
F9BA8:  CMP             R0, #0
F9BAA:  BNE             loc_F9B9A
F9BAC:  ASRS            R0, R6, #2
F9BAE:  B               loc_F9BB4
F9BB0:  MOV.W           R0, #0xFFFFFFFF
F9BB4:  POP.W           {R8}
F9BB8:  POP             {R4-R7,PC}
