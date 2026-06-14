; =========================================================
; Game Engine Function: sub_1603B4
; Address            : 0x1603B4 - 0x16045C
; =========================================================

1603B4:  PUSH            {R4-R7,LR}
1603B6:  ADD             R7, SP, #0xC
1603B8:  PUSH.W          {R8-R11}
1603BC:  SUB             SP, SP, #0xC
1603BE:  LDR.W           R6, [R0,#0x804]
1603C2:  LDR.W           R8, [R0,#0x808]
1603C6:  STR             R3, [SP,#0x28+var_28]
1603C8:  CMP             R6, R8
1603CA:  BEQ             loc_16044C
1603CC:  MOV             R10, R2
1603CE:  MOV             R11, R1
1603D0:  MOV.W           R9, #2
1603D4:  LDR             R0, [R6,#4]; this
1603D6:  CBZ             R0, loc_160444
1603D8:  BLX             j__ZNSt6__ndk119__shared_weak_count4lockEv; std::__shared_weak_count::lock(void)
1603DC:  STR             R0, [SP,#0x28+var_20]
1603DE:  CBZ             R0, loc_160444
1603E0:  LDR             R5, [R6]
1603E2:  MOV             R4, R0
1603E4:  STR             R5, [SP,#0x28+var_24]
1603E6:  CBZ             R5, loc_160418
1603E8:  LDR             R0, [R5]
1603EA:  LDR             R1, [R0,#0x10]
1603EC:  MOV             R0, R5
1603EE:  BLX             R1
1603F0:  CMP             R0, R11
1603F2:  BNE             loc_160418
1603F4:  LDR             R0, [R5]
1603F6:  LDR.W           R12, [R0,#8]
1603FA:  LDR             R2, [SP,#0x28+var_28]
1603FC:  MOV             R0, R5
1603FE:  LDR             R3, [R7,#arg_0]
160400:  MOV             R1, R10
160402:  BLX             R12
160404:  MOV             R5, R9
160406:  UXTB.W          R1, R9
16040A:  CMP             R1, #1
16040C:  IT NE
16040E:  MOVNE           R5, R0
160410:  CMP             R0, #2
160412:  IT EQ
160414:  MOVEQ           R5, R9
160416:  B               loc_16041A
160418:  MOV             R5, R9
16041A:  ADDS            R0, R4, #4
16041C:  DMB.W           ISH
160420:  LDREX.W         R1, [R0]
160424:  SUBS            R2, R1, #1
160426:  STREX.W         R3, R2, [R0]
16042A:  CMP             R3, #0
16042C:  BNE             loc_160420
16042E:  DMB.W           ISH
160432:  CBNZ            R1, loc_160442
160434:  LDR             R0, [R4]
160436:  LDR             R1, [R0,#8]
160438:  MOV             R0, R4
16043A:  BLX             R1
16043C:  MOV             R0, R4; this
16043E:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
160442:  MOV             R9, R5
160444:  ADDS            R6, #8
160446:  CMP             R6, R8
160448:  BNE             loc_1603D4
16044A:  B               loc_160450
16044C:  MOV.W           R9, #2
160450:  UXTB.W          R0, R9
160454:  ADD             SP, SP, #0xC
160456:  POP.W           {R8-R11}
16045A:  POP             {R4-R7,PC}
