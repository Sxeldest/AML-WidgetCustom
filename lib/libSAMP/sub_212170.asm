; =========================================================
; Game Engine Function: sub_212170
; Address            : 0x212170 - 0x2121AE
; =========================================================

212170:  PUSH            {R4-R7,LR}
212172:  ADD             R7, SP, #0xC
212174:  PUSH.W          {R8}
212178:  LDR.W           R8, [R7,#n]
21217C:  CMP.W           R8, #0
212180:  BEQ             loc_2121A4
212182:  CMP             R3, R1
212184:  IT CC
212186:  ADDCC           R1, R3, #1
212188:  SUBS            R5, R0, #4
21218A:  MOV             R4, R2
21218C:  LSLS            R6, R1, #2
21218E:  CBZ             R6, loc_2121A4
212190:  ADDS            R2, R5, R6
212192:  MOV             R0, R4; int
212194:  MOV             R1, R8; n
212196:  BLX             j__ZNSt6__ndk111char_traitsIwE4findEPKwjRS2_; std::char_traits<wchar_t>::find(wchar_t const*,uint,wchar_t const&)
21219A:  SUBS            R6, #4
21219C:  CMP             R0, #0
21219E:  BEQ             loc_21218E
2121A0:  ASRS            R0, R6, #2
2121A2:  B               loc_2121A8
2121A4:  MOV.W           R0, #0xFFFFFFFF
2121A8:  POP.W           {R8}
2121AC:  POP             {R4-R7,PC}
