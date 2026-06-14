; =========================================================
; Game Engine Function: sub_1EE308
; Address            : 0x1EE308 - 0x1EE388
; =========================================================

1EE308:  PUSH            {R0-R5,R7,LR}
1EE30A:  ADD             R7, SP, #0x18
1EE30C:  MOV             R5, R0
1EE30E:  LDR             R0, =(__stack_chk_guard_ptr - 0x1EE318)
1EE310:  MOV             R4, R1
1EE312:  MOVS            R1, #1
1EE314:  ADD             R0, PC; __stack_chk_guard_ptr
1EE316:  LDR             R0, [R0]; __stack_chk_guard
1EE318:  LDR             R0, [R0]
1EE31A:  STR             R0, [SP,#0x18+var_C]
1EE31C:  LDRB.W          R0, [R5,#0x31]
1EE320:  LSL.W           R0, R1, R0
1EE324:  TST.W           R0, #0x1A
1EE328:  BEQ             loc_1EE336
1EE32A:  CBZ             R4, loc_1EE332
1EE32C:  MOV             R0, R4
1EE32E:  BL              sub_1EE05A
1EE332:  MOVS            R0, #3
1EE334:  B               loc_1EE370
1EE336:  TST.W           R0, #0x24
1EE33A:  BEQ             loc_1EE356
1EE33C:  CBZ             R4, loc_1EE36C
1EE33E:  LDRB.W          R0, [R5,#0x30]
1EE342:  ADDS            R0, #1
1EE344:  UXTB            R0, R0; this
1EE346:  CMP             R0, #1
1EE348:  BHI             loc_1EE366
1EE34A:  BLX             j__ZNSt6__ndk116generic_categoryEv; std::generic_category(void)
1EE34E:  MOVS            R1, #2
1EE350:  STRD.W          R1, R0, [R4]
1EE354:  B               loc_1EE36C
1EE356:  ADD             R0, SP, #0x18+var_14; this
1EE358:  MOV             R1, R5; std::__fs::filesystem::path *
1EE35A:  MOV             R2, R4; std::error_code *
1EE35C:  BLX             j__ZNSt6__ndk14__fs10filesystem16__symlink_statusERKNS1_4pathEPNS_10error_codeE; std::__fs::filesystem::__symlink_status(std::__fs::filesystem::path const&,std::error_code *)
1EE360:  LDRB.W          R0, [SP,#0x18+var_14]
1EE364:  B               loc_1EE370
1EE366:  MOV             R0, R4
1EE368:  BL              sub_1EE05A
1EE36C:  LDRB.W          R0, [R5,#0x30]
1EE370:  LDR             R1, [SP,#0x18+var_C]
1EE372:  LDR             R2, =(__stack_chk_guard_ptr - 0x1EE378)
1EE374:  ADD             R2, PC; __stack_chk_guard_ptr
1EE376:  LDR             R2, [R2]; __stack_chk_guard
1EE378:  LDR             R2, [R2]
1EE37A:  CMP             R2, R1
1EE37C:  ITTT EQ
1EE37E:  SXTBEQ          R0, R0
1EE380:  ADDEQ           SP, SP, #0x10
1EE382:  POPEQ           {R4,R5,R7,PC}
1EE384:  BLX             __stack_chk_fail
