; =========================================================
; Game Engine Function: sub_210672
; Address            : 0x210672 - 0x2106AA
; =========================================================

210672:  PUSH            {R4-R7,LR}
210674:  ADD             R7, SP, #0xC
210676:  PUSH.W          {R8,R9,R11}
21067A:  CMP             R3, R1
21067C:  BCS             loc_21069E
21067E:  LDR.W           R9, [R7,#n]
210682:  MOV             R4, R3
210684:  MOV             R8, R2
210686:  MOV             R6, R1
210688:  MOV             R5, R0
21068A:  CMP             R6, R4
21068C:  BEQ             loc_21069E
21068E:  ADDS            R2, R5, R4
210690:  MOV             R0, R8; int
210692:  MOV             R1, R9; n
210694:  BLX             j__ZNSt6__ndk111char_traitsIcE4findEPKcjRS2_; std::char_traits<char>::find(char const*,uint,char const&)
210698:  CBZ             R0, loc_2106A2
21069A:  ADDS            R4, #1
21069C:  B               loc_21068A
21069E:  MOV.W           R4, #0xFFFFFFFF
2106A2:  MOV             R0, R4
2106A4:  POP.W           {R8,R9,R11}
2106A8:  POP             {R4-R7,PC}
