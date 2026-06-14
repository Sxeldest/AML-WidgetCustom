; =========================================================
; Game Engine Function: sub_F9062
; Address            : 0xF9062 - 0xF90A0
; =========================================================

F9062:  PUSH            {R4-R7,LR}
F9064:  ADD             R7, SP, #0xC
F9066:  PUSH.W          {R8}
F906A:  LDR.W           R8, [R7,#n]
F906E:  CMP.W           R8, #0
F9072:  BEQ             loc_F9094
F9074:  MOV             R4, R1
F9076:  CMP             R3, R1
F9078:  IT CC
F907A:  ADDCC           R4, R3, #1
F907C:  SUBS            R6, R0, #1
F907E:  MOV             R5, R2
F9080:  CBZ             R4, loc_F9094
F9082:  ADDS            R2, R6, R4
F9084:  MOV             R0, R5; int
F9086:  MOV             R1, R8; n
F9088:  BLX             j__ZNSt6__ndk111char_traitsIcE4findEPKcjRS2_; std::char_traits<char>::find(char const*,uint,char const&)
F908C:  SUBS            R4, #1
F908E:  CMP             R0, #0
F9090:  BEQ             loc_F9080
F9092:  B               loc_F9098
F9094:  MOV.W           R4, #0xFFFFFFFF
F9098:  MOV             R0, R4
F909A:  POP.W           {R8}
F909E:  POP             {R4-R7,PC}
