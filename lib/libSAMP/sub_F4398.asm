; =========================================================
; Game Engine Function: sub_F4398
; Address            : 0xF4398 - 0xF45C0
; =========================================================

F4398:  PUSH            {R4-R7,LR}
F439A:  ADD             R7, SP, #0xC
F439C:  PUSH.W          {R8-R11}
F43A0:  SUB             SP, SP, #0x64
F43A2:  ADD.W           R9, R0, #0x3F8
F43A6:  MOV             R4, R0
F43A8:  MOVW            R1, #0x7FC; n
F43AC:  MOV             R0, R9; int
F43AE:  BLX             sub_22178C
F43B2:  BL              sub_E4FB8
F43B6:  CBZ             R0, loc_F43C2
F43B8:  BL              sub_E4FB8
F43BC:  CMP             R0, #4
F43BE:  BNE.W           loc_F45B6
F43C2:  LDR             R0, =(off_23494C - 0xF43CA)
F43C4:  ADD             R5, SP, #0x80+var_38
F43C6:  ADD             R0, PC; off_23494C
F43C8:  LDR.W           R10, [R0]; dword_23DF24
F43CC:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN13CustomMapIconC1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0xF43D4); `vtable for'std::__function::__func<CustomMapIcon::CustomMapIcon(void)::$_0,std::allocator<CustomMapIcon::CustomMapIcon(void)::$_0>,void ()(void)> ...
F43CE:  STR             R5, [SP,#0x80+var_28]
F43D0:  ADD             R0, PC; `vtable for'std::__function::__func<CustomMapIcon::CustomMapIcon(void)::$_0,std::allocator<CustomMapIcon::CustomMapIcon(void)::$_0>,void ()(void)>
F43D2:  LDR.W           R1, [R10]
F43D6:  ADDS            R0, #8
F43D8:  STR             R0, [SP,#0x80+var_38]
F43DA:  ADD.W           R0, R1, #0x400000
F43DE:  ADD.W           R0, R0, #0x3E000
F43E2:  MOV             R1, R5
F43E4:  BL              sub_1642EC
F43E8:  MOV             R6, R0
F43EA:  LDR             R0, [SP,#0x80+var_28]
F43EC:  CMP             R5, R0
F43EE:  BEQ             loc_F43F6
F43F0:  CBZ             R0, loc_F4400
F43F2:  MOVS            R1, #5
F43F4:  B               loc_F43F8
F43F6:  MOVS            R1, #4
F43F8:  LDR             R2, [R0]
F43FA:  LDR.W           R1, [R2,R1,LSL#2]
F43FE:  BLX             R1
F4400:  CBZ             R6, loc_F4412
F4402:  LDR             R1, =(aAxl - 0xF440A); "AXL" ...
F4404:  LDR             R2, =(aCustommapiconC - 0xF440C); "CustomMapIcon: Can't remap page 0x43E00"... ...
F4406:  ADD             R1, PC; "AXL"
F4408:  ADD             R2, PC; "CustomMapIcon: Can't remap page 0x43E00"...
F440A:  MOVS            R0, #6; prio
F440C:  BLX             __android_log_print
F4410:  B               loc_F45B6
F4412:  LDR.W           R11, [R10]
F4416:  LDR             R1, =(sub_F468C+1 - 0xF441C)
F4418:  ADD             R1, PC; sub_F468C
F441A:  ADD             R0, SP, #0x80+var_68
F441C:  MOVS            R2, #0
F441E:  MOV             R3, R4
F4420:  BL              sub_F4960
F4424:  ADD             R6, SP, #0x80+var_50
F4426:  ADD             R1, SP, #0x80+var_68
F4428:  MOV             R0, R6
F442A:  BL              sub_F4F08
F442E:  BL              sub_F4EB0
F4432:  LDR             R0, =(unk_240048 - 0xF4438)
F4434:  ADD             R0, PC; unk_240048
F4436:  LDR.W           R8, [R0,#(dword_240058 - 0x240048)]
F443A:  CMP.W           R8, #0
F443E:  BNE             loc_F4470
F4440:  ADD             R5, SP, #0x80+var_50
F4442:  ADD             R0, SP, #0x80+var_38
F4444:  MOV             R1, R5
F4446:  BL              sub_F4F08
F444A:  BL              sub_F4EB0
F444E:  LDR             R0, =(unk_240048 - 0xF4454)
F4450:  ADD             R0, PC; unk_240048
F4452:  ADD             R5, SP, #0x80+var_38
F4454:  MOV             R1, R5
F4456:  BL              sub_F4F34
F445A:  LDR             R0, [SP,#0x80+var_28]
F445C:  CMP             R5, R0
F445E:  BEQ             loc_F4466
F4460:  CBZ             R0, loc_F4470
F4462:  MOVS            R1, #5
F4464:  B               loc_F4468
F4466:  MOVS            R1, #4
F4468:  LDR             R2, [R0]
F446A:  LDR.W           R1, [R2,R1,LSL#2]
F446E:  BLX             R1
F4470:  LDR             R0, [SP,#0x80+var_40]
F4472:  CMP             R6, R0
F4474:  BEQ             loc_F447C
F4476:  CBZ             R0, loc_F4486
F4478:  MOVS            R1, #5
F447A:  B               loc_F447E
F447C:  MOVS            R1, #4
F447E:  LDR             R2, [R0]
F4480:  LDR.W           R1, [R2,R1,LSL#2]
F4484:  BLX             R1
F4486:  CMP.W           R8, #0
F448A:  BNE             loc_F44A2
F448C:  MOVW            R0, #0x1C70
F4490:  LDR             R1, =(sub_F4E84+1 - 0xF44A0)
F4492:  MOVT            R0, #0x67 ; 'g'
F4496:  ADDW            R2, R4, #0xBEC
F449A:  ADD             R0, R11
F449C:  ADD             R1, PC; sub_F4E84
F449E:  BL              sub_164196
F44A2:  LDR             R0, [SP,#0x80+var_58]
F44A4:  ADD             R1, SP, #0x80+var_68
F44A6:  CMP             R1, R0
F44A8:  BEQ             loc_F44B0
F44AA:  CBZ             R0, loc_F44BA
F44AC:  MOVS            R1, #5
F44AE:  B               loc_F44B2
F44B0:  MOVS            R1, #4
F44B2:  LDR             R2, [R0]
F44B4:  LDR.W           R1, [R2,R1,LSL#2]
F44B8:  BLX             R1
F44BA:  LDR.W           R11, [R10]
F44BE:  LDR             R1, =(sub_F499C+1 - 0xF44C4)
F44C0:  ADD             R1, PC; sub_F499C
F44C2:  MOV             R0, SP
F44C4:  MOVS            R2, #0
F44C6:  MOV             R3, R4
F44C8:  BL              sub_F4A20
F44CC:  ADD             R6, SP, #0x80+var_50
F44CE:  MOV             R1, SP
F44D0:  MOV             R0, R6
F44D2:  BL              sub_F5178
F44D6:  BL              sub_F5120
F44DA:  LDR             R0, =(unk_240068 - 0xF44E0)
F44DC:  ADD             R0, PC; unk_240068
F44DE:  LDR.W           R8, [R0,#(dword_240078 - 0x240068)]
F44E2:  CMP.W           R8, #0
F44E6:  BNE             loc_F4518
F44E8:  ADD             R5, SP, #0x80+var_50
F44EA:  ADD             R0, SP, #0x80+var_38
F44EC:  MOV             R1, R5
F44EE:  BL              sub_F5178
F44F2:  BL              sub_F5120
F44F6:  LDR             R0, =(unk_240068 - 0xF44FC)
F44F8:  ADD             R0, PC; unk_240068
F44FA:  ADD             R5, SP, #0x80+var_38
F44FC:  MOV             R1, R5
F44FE:  BL              sub_F51A4
F4502:  LDR             R0, [SP,#0x80+var_28]
F4504:  CMP             R5, R0
F4506:  BEQ             loc_F450E
F4508:  CBZ             R0, loc_F4518
F450A:  MOVS            R1, #5
F450C:  B               loc_F4510
F450E:  MOVS            R1, #4
F4510:  LDR             R2, [R0]
F4512:  LDR.W           R1, [R2,R1,LSL#2]
F4516:  BLX             R1
F4518:  LDR             R0, [SP,#0x80+var_40]
F451A:  CMP             R6, R0
F451C:  BEQ             loc_F4524
F451E:  CBZ             R0, loc_F452E
F4520:  MOVS            R1, #5
F4522:  B               loc_F4526
F4524:  MOVS            R1, #4
F4526:  LDR             R2, [R0]
F4528:  LDR.W           R1, [R2,R1,LSL#2]
F452C:  BLX             R1
F452E:  CMP.W           R8, #0
F4532:  BNE             loc_F454A
F4534:  MOVW            R0, #0x40D0
F4538:  LDR             R1, =(sub_F50FC+1 - 0xF4548)
F453A:  MOVT            R0, #0x67 ; 'g'
F453E:  ADD.W           R2, R4, #0xBF0
F4542:  ADD             R0, R11
F4544:  ADD             R1, PC; sub_F50FC
F4546:  BL              sub_164196
F454A:  LDR             R0, [SP,#0x80+var_70]
F454C:  MOV             R1, SP
F454E:  CMP             R1, R0
F4550:  BEQ             loc_F4558
F4552:  CBZ             R0, loc_F4562
F4554:  MOVS            R1, #5
F4556:  B               loc_F455A
F4558:  MOVS            R1, #4
F455A:  LDR             R2, [R0]
F455C:  LDR.W           R1, [R2,R1,LSL#2]
F4560:  BLX             R1
F4562:  MOV             R0, R4; int
F4564:  MOV.W           R1, #0x3F8; n
F4568:  BLX             sub_22178C
F456C:  LDR.W           R0, [R10]
F4570:  MOV             R5, #0x6760A4
F4578:  ADD             R0, R5
F457A:  BL              sub_1641C4
F457E:  LDR.W           R0, [R10]
F4582:  MOV.W           R1, #0x1FC; n
F4586:  STR             R4, [R0,R5]
F4588:  MOV             R0, R9; int
F458A:  BLX             sub_22178C
F458E:  LDR.W           R0, [R10]
F4592:  MOV             R5, #0x6776F8
F459A:  ADD             R0, R5
F459C:  BL              sub_1641C4
F45A0:  LDR.W           R0, [R10]
F45A4:  LDR             R1, =(aAxl - 0xF45AC); "AXL" ...
F45A6:  LDR             R2, =(aCustommapiconL - 0xF45B2); "CustomMapIcon: loaded!" ...
F45A8:  ADD             R1, PC; "AXL"
F45AA:  STR.W           R9, [R0,R5]
F45AE:  ADD             R2, PC; "CustomMapIcon: loaded!"
F45B0:  MOVS            R0, #4; prio
F45B2:  BLX             __android_log_print
F45B6:  MOV             R0, R4
F45B8:  ADD             SP, SP, #0x64 ; 'd'
F45BA:  POP.W           {R8-R11}
F45BE:  POP             {R4-R7,PC}
