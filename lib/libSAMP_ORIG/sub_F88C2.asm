; =========================================================
; Game Engine Function: sub_F88C2
; Address            : 0xF88C2 - 0xF88FA
; =========================================================

F88C2:  PUSH            {R4-R7,LR}
F88C4:  ADD             R7, SP, #0xC
F88C6:  PUSH.W          {R8,R9,R11}
F88CA:  CMP             R3, R1
F88CC:  BCS             loc_F88EE
F88CE:  LDR.W           R9, [R7,#n]
F88D2:  MOV             R4, R3
F88D4:  MOV             R8, R2
F88D6:  MOV             R6, R1
F88D8:  MOV             R5, R0
F88DA:  CMP             R6, R4
F88DC:  BEQ             loc_F88EE
F88DE:  ADDS            R2, R5, R4
F88E0:  MOV             R0, R8; int
F88E2:  MOV             R1, R9; n
F88E4:  BLX             j__ZNSt6__ndk111char_traitsIcE4findEPKcjRS2_; std::char_traits<char>::find(char const*,uint,char const&)
F88E8:  CBZ             R0, loc_F88F2
F88EA:  ADDS            R4, #1
F88EC:  B               loc_F88DA
F88EE:  MOV.W           R4, #0xFFFFFFFF
F88F2:  MOV             R0, R4
F88F4:  POP.W           {R8,R9,R11}
F88F8:  POP             {R4-R7,PC}
