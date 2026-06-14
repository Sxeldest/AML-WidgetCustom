; =========================================================
; Game Engine Function: sub_12417C
; Address            : 0x12417C - 0x1241B8
; =========================================================

12417C:  PUSH            {R4,R5,R7,LR}
12417E:  ADD             R7, SP, #8
124180:  SUB             SP, SP, #8
124182:  LDR             R5, =(a16ccollisionli - 0x12418A); "16CCollisionLimits" ...
124184:  MOV             R4, R0
124186:  ADD             R5, PC; "16CCollisionLimits"
124188:  MOV             R1, R5; s
12418A:  BL              sub_DC6DC
12418E:  MOVS            R0, #0
124190:  STR             R0, [SP,#0x10+status]
124192:  ADD             R3, SP, #0x10+status; lpstatus
124194:  MOV             R0, R5; lpmangled
124196:  MOVS            R1, #0; lpout
124198:  MOVS            R2, #0; lpoutlen
12419A:  BLX             j___cxa_demangle
12419E:  MOV             R5, R0
1241A0:  CBZ             R0, loc_1241B4
1241A2:  LDR             R0, [SP,#0x10+status]
1241A4:  CBNZ            R0, loc_1241AE
1241A6:  MOV             R0, R4; int
1241A8:  MOV             R1, R5; s
1241AA:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
1241AE:  MOV             R0, R5; ptr
1241B0:  BLX             free
1241B4:  ADD             SP, SP, #8
1241B6:  POP             {R4,R5,R7,PC}
