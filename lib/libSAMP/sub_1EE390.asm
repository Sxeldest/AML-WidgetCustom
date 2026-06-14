; =========================================================
; Game Engine Function: sub_1EE390
; Address            : 0x1EE390 - 0x1EE3FE
; =========================================================

1EE390:  PUSH            {R0-R5,R7,LR}
1EE392:  ADD             R7, SP, #0x18
1EE394:  MOV             R4, R0
1EE396:  LDR             R0, =(__stack_chk_guard_ptr - 0x1EE3A0)
1EE398:  MOV             R5, R1
1EE39A:  MOVS            R1, #1
1EE39C:  ADD             R0, PC; __stack_chk_guard_ptr
1EE39E:  LDR             R0, [R0]; __stack_chk_guard
1EE3A0:  LDR             R0, [R0]
1EE3A2:  STR             R0, [SP,#0x18+var_C]
1EE3A4:  LDRB.W          R0, [R4,#0x31]
1EE3A8:  LSL.W           R0, R1, R0
1EE3AC:  TST.W           R0, #0x13
1EE3B0:  BEQ             loc_1EE3C2
1EE3B2:  ADD             R0, SP, #0x18+var_14; this
1EE3B4:  MOV             R1, R4; std::__fs::filesystem::path *
1EE3B6:  MOV             R2, R5; std::error_code *
1EE3B8:  BLX             j__ZNSt6__ndk14__fs10filesystem8__statusERKNS1_4pathEPNS_10error_codeE; std::__fs::filesystem::__status(std::__fs::filesystem::path const&,std::error_code *)
1EE3BC:  LDRB.W          R0, [SP,#0x18+var_14]
1EE3C0:  B               loc_1EE3E6
1EE3C2:  CBZ             R5, loc_1EE3E2
1EE3C4:  LDRB.W          R0, [R4,#0x30]
1EE3C8:  ADDS            R0, #1
1EE3CA:  UXTB            R0, R0; this
1EE3CC:  CMP             R0, #1
1EE3CE:  BHI             loc_1EE3DC
1EE3D0:  BLX             j__ZNSt6__ndk116generic_categoryEv; std::generic_category(void)
1EE3D4:  MOVS            R1, #2
1EE3D6:  STRD.W          R1, R0, [R5]
1EE3DA:  B               loc_1EE3E2
1EE3DC:  MOV             R0, R5
1EE3DE:  BL              sub_1EE05A
1EE3E2:  LDRB.W          R0, [R4,#0x30]
1EE3E6:  LDR             R1, [SP,#0x18+var_C]
1EE3E8:  LDR             R2, =(__stack_chk_guard_ptr - 0x1EE3EE)
1EE3EA:  ADD             R2, PC; __stack_chk_guard_ptr
1EE3EC:  LDR             R2, [R2]; __stack_chk_guard
1EE3EE:  LDR             R2, [R2]
1EE3F0:  CMP             R2, R1
1EE3F2:  ITTT EQ
1EE3F4:  SXTBEQ          R0, R0
1EE3F6:  ADDEQ           SP, SP, #0x10
1EE3F8:  POPEQ           {R4,R5,R7,PC}
1EE3FA:  BLX             __stack_chk_fail
