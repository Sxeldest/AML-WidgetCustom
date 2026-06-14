; =========================================================
; Game Engine Function: sub_1F2288
; Address            : 0x1F2288 - 0x1F2334
; =========================================================

1F2288:  PUSH            {R4-R7,LR}
1F228A:  ADD             R7, SP, #0xC
1F228C:  PUSH.W          {R11}
1F2290:  SUB             SP, SP, #0x18
1F2292:  MOV             R4, R0
1F2294:  LDR             R0, =(__stack_chk_guard_ptr - 0x1F229E)
1F2296:  MOV             R5, R1
1F2298:  MOVS            R3, #1; n
1F229A:  ADD             R0, PC; __stack_chk_guard_ptr
1F229C:  LDR             R0, [R0]; __stack_chk_guard
1F229E:  LDR             R0, [R0]
1F22A0:  STR             R0, [SP,#0x28+var_14]
1F22A2:  LDRD.W          R0, R1, [R1]; int
1F22A6:  LDR             R2, =(asc_836CD - 0x1F22AC); "." ...
1F22A8:  ADD             R2, PC; "."
1F22AA:  BL              sub_1EE408
1F22AE:  CBNZ            R0, loc_1F22E8
1F22B0:  LDRD.W          R0, R1, [R5]; int
1F22B4:  MOVS            R3, #2; n
1F22B6:  LDR             R2, =(asc_8FF74 - 0x1F22BC); ".." ...
1F22B8:  ADD             R2, PC; ".."
1F22BA:  BL              sub_1EE408
1F22BE:  CBNZ            R0, loc_1F22E8
1F22C0:  LDR             R0, [R5,#4]
1F22C2:  CBZ             R0, loc_1F22E8
1F22C4:  MOV             R0, R5
1F22C6:  MOVS            R1, #0x2E ; '.'
1F22C8:  MOV.W           R2, #0xFFFFFFFF
1F22CC:  BL              sub_1F3068
1F22D0:  MOV             R6, R0
1F22D2:  ADDS            R0, #1
1F22D4:  CMP             R0, #1
1F22D6:  BHI             loc_1F230E
1F22D8:  LDRD.W          R1, R2, [R5]
1F22DC:  MOVS            R0, #0
1F22DE:  STRD.W          R1, R2, [R4]
1F22E2:  STRD.W          R0, R0, [R4,#8]
1F22E6:  B               loc_1F22F4
1F22E8:  LDR             R2, =(byte_8F794 - 0x1F22F2)
1F22EA:  MOV             R0, R4; int
1F22EC:  MOV             R1, R5; int
1F22EE:  ADD             R2, PC; byte_8F794 ; s
1F22F0:  BLX             j__ZNSt6__ndk14pairINS_17basic_string_viewIcNS_11char_traitsIcEEEES4_EC2IRKS4_RA1_KcLb0EEEOT_OT0_; std::pair<std::string_view,std::string_view>::pair<std::string_view const&,char const(&)[1],false>(std::string_view const&,char const(&)[1] &&)
1F22F4:  LDR             R0, [SP,#0x28+var_14]
1F22F6:  LDR             R1, =(__stack_chk_guard_ptr - 0x1F22FC)
1F22F8:  ADD             R1, PC; __stack_chk_guard_ptr
1F22FA:  LDR             R1, [R1]; __stack_chk_guard
1F22FC:  LDR             R1, [R1]
1F22FE:  CMP             R1, R0
1F2300:  ITTT EQ
1F2302:  ADDEQ           SP, SP, #0x18
1F2304:  POPEQ.W         {R11}
1F2308:  POPEQ           {R4-R7,PC}
1F230A:  BLX             __stack_chk_fail
1F230E:  ADD             R0, SP, #0x28+var_20
1F2310:  MOV             R1, R5
1F2312:  MOVS            R2, #0
1F2314:  MOV             R3, R6
1F2316:  BL              sub_1F3040
1F231A:  MOV             R0, SP
1F231C:  MOV             R1, R5
1F231E:  MOV             R2, R6
1F2320:  MOV.W           R3, #0xFFFFFFFF
1F2324:  BL              sub_1F3040
1F2328:  LDRD.W          R0, R1, [SP,#0x28+var_20]
1F232C:  LDRD.W          R2, R3, [SP,#0x28+var_28]
1F2330:  STM             R4!, {R0-R3}
1F2332:  B               loc_1F22F4
