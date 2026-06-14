; =========================================================
; Game Engine Function: sub_6B4E8
; Address            : 0x6B4E8 - 0x6B726
; =========================================================

6B4E8:  PUSH            {R4-R7,LR}
6B4EA:  ADD             R7, SP, #0xC
6B4EC:  PUSH.W          {R8}
6B4F0:  SUB.W           SP, SP, #0x1440
6B4F4:  LDR             R1, =(aSampOrig - 0x6B500); "SAMP_ORIG" ...
6B4F6:  MOV             R4, R0
6B4F8:  LDR             R2, =(aDialogboxHook - 0x6B502); "DialogBox_hook()" ...
6B4FA:  LDR             R0, =(__stack_chk_guard_ptr - 0x6B504)
6B4FC:  ADD             R1, PC; "SAMP_ORIG"
6B4FE:  ADD             R2, PC; "DialogBox_hook()"
6B500:  ADD             R0, PC; __stack_chk_guard_ptr
6B502:  LDR             R0, [R0]; __stack_chk_guard
6B504:  LDR             R0, [R0]
6B506:  STR.W           R0, [R7,#var_14]
6B50A:  MOVS            R0, #4; prio
6B50C:  BLX             __android_log_print
6B510:  ADD.W           LR, SP, #0x1450+var_1448
6B514:  LDRD.W          R1, R0, [R4]; src
6B518:  MOVS            R2, #1
6B51A:  ADD.W           R5, LR, #0x1320
6B51E:  ADD.W           R2, R2, R0,LSR#3; size
6B522:  MOVS            R3, #0
6B524:  MOV             R0, R5; int
6B526:  BL              sub_86BA8
6B52A:  ADD.W           R0, SP, #0x1450+dest; int
6B52E:  MOVW            R1, #0x101; n
6B532:  BLX             sub_10967C
6B536:  ADD.W           LR, SP, #0x1450+var_1438
6B53A:  MOVW            R1, #0x101; n
6B53E:  ADD.W           R0, LR, #0x1100; int
6B542:  BLX             sub_10967C
6B546:  ADD.W           LR, SP, #0x1450+var_1440
6B54A:  MOVW            R1, #0x101; n
6B54E:  ADD.W           R0, LR, #0x1000; int
6B552:  BLX             sub_10967C
6B556:  ADD             R0, SP, #0x1450+var_1448; int
6B558:  MOVW            R1, #0x1001; n
6B55C:  BLX             sub_10967C
6B560:  ADD.W           R1, SP, #0x1450+var_144A; int
6B564:  MOV             R0, R5; int
6B566:  MOVS            R2, #0x10
6B568:  MOVS            R3, #1
6B56A:  BL              sub_86E30
6B56E:  ADD.W           LR, SP, #0x1450+var_1448
6B572:  ADD.W           R1, SP, #0x1450+var_144B; int
6B576:  ADD.W           R0, LR, #0x1320; int
6B57A:  MOVS            R2, #8
6B57C:  MOVS            R3, #1
6B57E:  BL              sub_86E30
6B582:  ADD.W           LR, SP, #0x1450+var_1448
6B586:  ADD             R1, SP, #0x1450+var_144C; int
6B588:  ADD.W           R0, LR, #0x1320; int
6B58C:  MOVS            R2, #8
6B58E:  MOVS            R3, #1
6B590:  BL              sub_86E30
6B594:  LDRB.W          R2, [SP,#0x1450+var_144C]
6B598:  ADD.W           LR, SP, #0x1450+var_1448
6B59C:  ADD.W           R1, SP, #0x1450+dest; dest
6B5A0:  ADD.W           R0, LR, #0x1320; int
6B5A4:  BL              sub_86DEE
6B5A8:  ADD.W           LR, SP, #0x1450+var_1448
6B5AC:  ADD             R1, SP, #0x1450+var_144C; int
6B5AE:  ADD.W           R0, LR, #0x1320; int
6B5B2:  MOVS            R2, #8
6B5B4:  MOVS            R3, #1
6B5B6:  BL              sub_86E30
6B5BA:  LDRB.W          R2, [SP,#0x1450+var_144C]
6B5BE:  ADD.W           LR, SP, #0x1450+var_1448
6B5C2:  ADD.W           R0, LR, #0x1320; int
6B5C6:  ADD.W           LR, SP, #0x1450+var_1438
6B5CA:  ADD.W           R1, LR, #0x1100; dest
6B5CE:  BL              sub_86DEE
6B5D2:  ADD.W           LR, SP, #0x1450+var_1448
6B5D6:  ADD             R1, SP, #0x1450+var_144C; int
6B5D8:  ADD.W           R0, LR, #0x1320; int
6B5DC:  MOVS            R2, #8
6B5DE:  MOVS            R3, #1
6B5E0:  BL              sub_86E30
6B5E4:  LDRB.W          R2, [SP,#0x1450+var_144C]
6B5E8:  ADD.W           LR, SP, #0x1450+var_1448
6B5EC:  ADD.W           R0, LR, #0x1320; int
6B5F0:  ADD.W           LR, SP, #0x1450+var_1440
6B5F4:  ADD.W           R1, LR, #0x1000; dest
6B5F8:  BL              sub_86DEE
6B5FC:  BL              sub_877B0
6B600:  MOVS            R1, #0
6B602:  ADD.W           LR, SP, #0x1450+var_1448
6B606:  STR             R1, [SP,#0x1450+var_1450]
6B608:  ADD             R1, SP, #0x1450+var_1448
6B60A:  ADD.W           R3, LR, #0x1320
6B60E:  MOV.W           R2, #0x1000
6B612:  BL              sub_878FC
6B616:  LDRSH.W         R3, [SP,#0x1450+var_144A]
6B61A:  LDR             R1, =(aSampOrig - 0x6B622); "SAMP_ORIG" ...
6B61C:  LDR             R2, =(aWdialogidD - 0x6B624); "wDialogID %d" ...
6B61E:  ADD             R1, PC; "SAMP_ORIG"
6B620:  ADD             R2, PC; "wDialogID %d"
6B622:  MOVS            R0, #4; prio
6B624:  BLX             __android_log_print
6B628:  LDRB.W          R3, [SP,#0x1450+var_144B]
6B62C:  LDR             R1, =(aSampOrig - 0x6B634); "SAMP_ORIG" ...
6B62E:  LDR             R2, =(aBytedialogstyl - 0x6B636); "byteDialogStyle %d" ...
6B630:  ADD             R1, PC; "SAMP_ORIG"
6B632:  ADD             R2, PC; "byteDialogStyle %d"
6B634:  MOVS            R0, #4; prio
6B636:  BLX             __android_log_print
6B63A:  LDR             R1, =(aSampOrig - 0x6B642); "SAMP_ORIG" ...
6B63C:  LDR             R2, =(aSztitleS - 0x6B644); "szTitle %s" ...
6B63E:  ADD             R1, PC; "SAMP_ORIG"
6B640:  ADD             R2, PC; "szTitle %s"
6B642:  ADD.W           R3, SP, #0x1450+dest
6B646:  MOVS            R0, #4; prio
6B648:  BLX             __android_log_print
6B64C:  LDR             R1, =(aSampOrig - 0x6B654); "SAMP_ORIG" ...
6B64E:  LDR             R2, =(aSzbutton1S - 0x6B656); "szButton1 %s" ...
6B650:  ADD             R1, PC; "SAMP_ORIG"
6B652:  ADD             R2, PC; "szButton1 %s"
6B654:  ADD.W           LR, SP, #0x1450+var_1438
6B658:  MOVS            R0, #4; prio
6B65A:  ADD.W           R3, LR, #0x1100
6B65E:  BLX             __android_log_print
6B662:  LDR             R1, =(aSampOrig - 0x6B66A); "SAMP_ORIG" ...
6B664:  LDR             R2, =(aSzbutton2S - 0x6B66C); "szButton2 %s" ...
6B666:  ADD             R1, PC; "SAMP_ORIG"
6B668:  ADD             R2, PC; "szButton2 %s"
6B66A:  ADD.W           LR, SP, #0x1450+var_1440
6B66E:  MOVS            R0, #4; prio
6B670:  ADD.W           R3, LR, #0x1000
6B674:  BLX             __android_log_print
6B678:  LDR             R1, =(aSampOrig - 0x6B680); "SAMP_ORIG" ...
6B67A:  LDR             R2, =(aSzmessageS - 0x6B682); "szMessage %s" ...
6B67C:  ADD             R1, PC; "SAMP_ORIG"
6B67E:  ADD             R2, PC; "szMessage %s"
6B680:  ADD             R3, SP, #0x1450+var_1448
6B682:  MOVS            R0, #4; prio
6B684:  BLX             __android_log_print
6B688:  LDRSH.W         R0, [SP,#0x1450+var_144A]
6B68C:  CMP.W           R0, #0xFFFFFFFF
6B690:  BLE             loc_6B6A4
6B692:  BL              sub_6C808
6B696:  CBZ             R0, loc_6B6FC
6B698:  LDR             R0, =(off_1A441C - 0x6B69E)
6B69A:  ADD             R0, PC; off_1A441C
6B69C:  LDR             R1, [R0]
6B69E:  MOV             R0, R4
6B6A0:  BLX             R1
6B6A2:  B               loc_6B6FC
6B6A4:  LDR             R1, =(aSampOrig - 0x6B6AC); "SAMP_ORIG" ...
6B6A6:  LDR             R2, =(aFixBlankDialog - 0x6B6AE); "Fix Blank Dialog" ...
6B6A8:  ADD             R1, PC; "SAMP_ORIG"
6B6AA:  ADD             R2, PC; "Fix Blank Dialog"
6B6AC:  MOVS            R0, #4; prio
6B6AE:  BLX             __android_log_print
6B6B2:  LDR             R0, =(off_114B44 - 0x6B6B8)
6B6B4:  ADD             R0, PC; off_114B44
6B6B6:  LDR             R0, [R0]; byte_1A4480
6B6B8:  LDRB            R0, [R0]
6B6BA:  CBZ             R0, loc_6B6E4
6B6BC:  LDR             R0, =(off_114B48 - 0x6B6C2)
6B6BE:  ADD             R0, PC; off_114B48
6B6C0:  LDR             R0, [R0]; dword_1A41D8
6B6C2:  LDR             R0, [R0]
6B6C4:  MOVS            R1, #0
6B6C6:  BL              sub_691D4
6B6CA:  BL              sub_6C808
6B6CE:  LDR             R0, [R0,#0x68]
6B6D0:  BL              sub_6C8B8
6B6D4:  CBZ             R0, loc_6B6FC
6B6D6:  BL              sub_6C808
6B6DA:  LDR             R0, [R0,#0x68]
6B6DC:  MOVS            R1, #0
6B6DE:  BL              sub_6C90C
6B6E2:  B               loc_6B6FC
6B6E4:  BL              sub_6C808
6B6E8:  LDR             R0, [R0,#0x68]
6B6EA:  BL              sub_6C8B8
6B6EE:  CBZ             R0, loc_6B6FC
6B6F0:  BL              sub_6C808
6B6F4:  LDR             R0, [R0,#0x68]
6B6F6:  MOVS            R1, #0
6B6F8:  BL              sub_6C90C
6B6FC:  ADD.W           LR, SP, #0x1450+var_1448
6B700:  ADD.W           R0, LR, #0x1320
6B704:  BL              sub_86BF8
6B708:  LDR.W           R0, [R7,#var_14]
6B70C:  LDR             R1, =(__stack_chk_guard_ptr - 0x6B712)
6B70E:  ADD             R1, PC; __stack_chk_guard_ptr
6B710:  LDR             R1, [R1]; __stack_chk_guard
6B712:  LDR             R1, [R1]
6B714:  CMP             R1, R0
6B716:  ITTT EQ
6B718:  ADDEQ.W         SP, SP, #0x1440
6B71C:  POPEQ.W         {R8}
6B720:  POPEQ           {R4-R7,PC}
6B722:  BLX             __stack_chk_fail
