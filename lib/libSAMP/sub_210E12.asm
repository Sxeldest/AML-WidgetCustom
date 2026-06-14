; =========================================================
; Game Engine Function: sub_210E12
; Address            : 0x210E12 - 0x210E50
; =========================================================

210E12:  PUSH            {R4-R7,LR}
210E14:  ADD             R7, SP, #0xC
210E16:  PUSH.W          {R8}
210E1A:  LDR.W           R8, [R7,#n]
210E1E:  CMP.W           R8, #0
210E22:  BEQ             loc_210E44
210E24:  MOV             R4, R1
210E26:  CMP             R3, R1
210E28:  IT CC
210E2A:  ADDCC           R4, R3, #1
210E2C:  SUBS            R6, R0, #1
210E2E:  MOV             R5, R2
210E30:  CBZ             R4, loc_210E44
210E32:  ADDS            R2, R6, R4
210E34:  MOV             R0, R5; int
210E36:  MOV             R1, R8; n
210E38:  BLX             j__ZNSt6__ndk111char_traitsIcE4findEPKcjRS2_; std::char_traits<char>::find(char const*,uint,char const&)
210E3C:  SUBS            R4, #1
210E3E:  CMP             R0, #0
210E40:  BEQ             loc_210E30
210E42:  B               loc_210E48
210E44:  MOV.W           R4, #0xFFFFFFFF
210E48:  MOV             R0, R4
210E4A:  POP.W           {R8}
210E4E:  POP             {R4-R7,PC}
