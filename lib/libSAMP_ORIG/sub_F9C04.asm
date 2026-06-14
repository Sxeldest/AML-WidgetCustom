; =========================================================
; Game Engine Function: sub_F9C04
; Address            : 0xF9C04 - 0xF9C3E
; =========================================================

F9C04:  PUSH            {R4-R7,LR}
F9C06:  ADD             R7, SP, #0xC
F9C08:  PUSH.W          {R8,R9,R11}
F9C0C:  CMP             R3, R1
F9C0E:  BCS             loc_F9C30
F9C10:  LDR.W           R8, [R7,#n]
F9C14:  MOV             R9, R2
F9C16:  MOV             R5, R0
F9C18:  LSLS            R4, R1, #2
F9C1A:  LSLS            R6, R3, #2
F9C1C:  CMP             R4, R6
F9C1E:  BEQ             loc_F9C30
F9C20:  ADDS            R2, R5, R6
F9C22:  MOV             R0, R9; int
F9C24:  MOV             R1, R8; n
F9C26:  BLX             j__ZNSt6__ndk111char_traitsIwE4findEPKwjRS2_; std::char_traits<wchar_t>::find(wchar_t const*,uint,wchar_t const&)
F9C2A:  CBZ             R0, loc_F9C36
F9C2C:  ADDS            R6, #4
F9C2E:  B               loc_F9C1C
F9C30:  MOV.W           R0, #0xFFFFFFFF
F9C34:  B               loc_F9C38
F9C36:  ASRS            R0, R6, #2
F9C38:  POP.W           {R8,R9,R11}
F9C3C:  POP             {R4-R7,PC}
