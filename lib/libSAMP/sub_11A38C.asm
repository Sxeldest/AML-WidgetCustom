; =========================================================
; Game Engine Function: sub_11A38C
; Address            : 0x11A38C - 0x11A588
; =========================================================

11A38C:  PUSH            {R4-R7,LR}
11A38E:  ADD             R7, SP, #0xC
11A390:  PUSH.W          {R8-R11}
11A394:  SUB             SP, SP, #0x1C
11A396:  MOV             R5, R0
11A398:  MOVW            R0, #0x66CD
11A39C:  MOV             R6, R2
11A39E:  MOV             R8, R1
11A3A0:  CMP             R1, R0
11A3A2:  BCC             loc_11A3B6
11A3A4:  LDR             R1, =(aAxl - 0x11A3B0); "AXL" ...
11A3A6:  MOVS            R0, #6; prio
11A3A8:  LDR             R2, =(aModloaderInval - 0x11A3B2); "modloader: invalid model id %d" ...
11A3AA:  MOV             R3, R8
11A3AC:  ADD             R1, PC; "AXL"
11A3AE:  ADD             R2, PC; "modloader: invalid model id %d"
11A3B0:  BLX             __android_log_print
11A3B4:  B               loc_11A57E
11A3B6:  LDR             R0, [R5,#0x40]
11A3B8:  ADD.W           R3, R8, R8,LSL#1
11A3BC:  ADD.W           R10, R0, R3,LSL#2
11A3C0:  LDRB.W          R1, [R0,R3,LSL#2]
11A3C4:  MOV             R9, R10
11A3C6:  LDR.W           R0, [R9,#4]!
11A3CA:  LSLS            R2, R1, #0x1F
11A3CC:  IT EQ
11A3CE:  LSREQ           R0, R1, #1
11A3D0:  CMP             R0, #0
11A3D2:  BEQ.W           loc_11A57E
11A3D6:  STR             R3, [SP,#0x38+var_34]
11A3D8:  MOVS            R0, #3; prio
11A3DA:  LDR             R1, =(aAxl - 0x11A3E4); "AXL" ...
11A3DC:  MOV             R3, R8
11A3DE:  LDR             R2, =(aModelDSupportR - 0x11A3E6); "Model %d support redirect" ...
11A3E0:  ADD             R1, PC; "AXL"
11A3E2:  ADD             R2, PC; "Model %d support redirect"
11A3E4:  BLX             __android_log_print
11A3E8:  ADD             R0, SP, #0x38+var_28
11A3EA:  MOV             R2, R10
11A3EC:  BL              sub_11A2E0
11A3F0:  MOV             R6, R5
11A3F2:  LDRB.W          R0, [R6,#0x44]!
11A3F6:  LSLS            R0, R0, #0x1F
11A3F8:  ITT NE
11A3FA:  LDRNE           R0, [R5,#0x4C]; void *
11A3FC:  BLXNE           j__ZdlPv; operator delete(void *)
11A400:  VLDR            D16, [SP,#0x38+var_28]
11A404:  LDR             R0, [SP,#0x38+var_20]
11A406:  STR             R0, [R6,#8]
11A408:  VSTR            D16, [R6]
11A40C:  LDRB.W          R0, [R5,#0x44]
11A410:  LDR             R3, [R5,#0x4C]
11A412:  LDR             R1, =(aAxl - 0x11A420); "AXL" ...
11A414:  LDR             R2, =(aModloaderDirec - 0x11A422); "modloader: direct load resource %d from"... ...
11A416:  LSLS            R0, R0, #0x1F
11A418:  IT EQ
11A41A:  ADDEQ           R3, R6, #1
11A41C:  ADD             R1, PC; "AXL"
11A41E:  ADD             R2, PC; "modloader: direct load resource %d from"...
11A420:  STR             R3, [SP,#0x38+var_38]
11A422:  MOVS            R0, #3; prio
11A424:  MOV             R3, R8
11A426:  BLX             __android_log_print
11A42A:  MOV             R0, R6; this
11A42C:  MOVS            R1, #0; std::__fs::filesystem::path *
11A42E:  BLX             j__ZNSt6__ndk14__fs10filesystem11__file_sizeERKNS1_4pathEPNS_10error_codeE; std::__fs::filesystem::__file_size(std::__fs::filesystem::path const&,std::error_code *)
11A432:  STRD.W          R1, R0, [SP,#0x38+var_30]
11A436:  MOVW            R1, #0x7DD8
11A43A:  LDR             R0, =(off_23494C - 0x11A444)
11A43C:  MOVT            R1, #0x67 ; 'g'
11A440:  ADD             R0, PC; off_23494C
11A442:  LDR             R4, [R0]; dword_23DF24
11A444:  LDR             R0, [R4]
11A446:  LDR.W           R11, [R0,R1]
11A44A:  BL              sub_1273F0
11A44E:  MOV             R6, R0
11A450:  BLX             strlen
11A454:  LDRB.W          R1, [R10]
11A458:  LDR.W           R2, [R9]
11A45C:  LSLS            R3, R1, #0x1F
11A45E:  IT EQ
11A460:  LSREQ           R2, R1, #1
11A462:  CMP             R0, R2
11A464:  BNE             loc_11A47A
11A466:  STR             R0, [SP,#0x38+var_38]
11A468:  MOV             R0, R10
11A46A:  MOVS            R1, #0
11A46C:  MOV.W           R2, #0xFFFFFFFF
11A470:  MOV             R3, R6
11A472:  BLX             j__ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEjjPKcj; std::string::compare(uint,uint,char const*,uint)
11A476:  CMP             R0, #0
11A478:  BEQ             loc_11A522
11A47A:  BL              sub_1273F0
11A47E:  LDR             R0, [R0,#0x2C]
11A480:  ADDS            R0, #1
11A482:  BEQ             loc_11A4EE
11A484:  BL              sub_1273F0
11A488:  LDR             R1, [R4]
11A48A:  CBZ             R1, loc_11A4D2
11A48C:  MOV             R2, #0x2C9D2D
11A494:  ADDS            R1, R1, R2
11A496:  BEQ             loc_11A4D2
11A498:  LDR             R0, [R0,#0x2C]
11A49A:  BLX             R1
11A49C:  CBZ             R0, loc_11A4D2
11A49E:  LDR             R0, [R5,#0x40]
11A4A0:  MOV             R1, #off_73A58; "8years"
11A4A8:  LDRH            R1, [R0,R1]
11A4AA:  ADD.W           R1, R1, R1,LSL#1
11A4AE:  ADD.W           R0, R0, R1,LSL#1
11A4B2:  MOV             R1, #0x4D190
11A4BA:  ADDS            R2, R0, R1
11A4BC:  LDRH            R0, [R0,R1]
11A4BE:  ADD.W           R1, R8, R8,LSL#2
11A4C2:  LDRB            R3, [R2,#4]
11A4C4:  LDRH            R2, [R2,#2]
11A4C6:  ADD.W           R1, R11, R1,LSL#2
11A4CA:  STRB            R3, [R1,#7]
11A4CC:  STRD.W          R0, R2, [R1,#8]
11A4D0:  B               loc_11A4EE
11A4D2:  BL              sub_1273F0
11A4D6:  LDR             R6, [R0,#0x2C]
11A4D8:  BL              sub_1273F0
11A4DC:  LDR             R1, =(aAxl - 0x11A4E6); "AXL" ...
11A4DE:  MOV             R3, R6
11A4E0:  LDR             R2, =(aModloaderInval_0 - 0x11A4EA); "modloader: Invalid stream handle %d for"... ...
11A4E2:  ADD             R1, PC; "AXL"
11A4E4:  STR             R0, [SP,#0x38+var_38]
11A4E6:  ADD             R2, PC; "modloader: Invalid stream handle %d for"...
11A4E8:  MOVS            R0, #6; prio
11A4EA:  BLX             __android_log_print
11A4EE:  ADD.W           R0, R8, R8,LSL#2
11A4F2:  ADD.W           R1, R11, R0,LSL#2
11A4F6:  LDRB            R0, [R1,#7]
11A4F8:  CBZ             R0, loc_11A522
11A4FA:  LDR             R2, [R5,#0x40]
11A4FC:  MOV             R3, #off_73A58; "8years"
11A504:  LDRD.W          R6, R1, [R1,#8]
11A508:  STRH.W          R8, [R2,R3]
11A50C:  LDR             R3, [SP,#0x38+var_34]
11A50E:  ADD.W           R2, R2, R3,LSL#1
11A512:  MOV             R3, #0x4D190
11A51A:  STRH            R6, [R2,R3]
11A51C:  ADD             R2, R3
11A51E:  STRB            R0, [R2,#4]
11A520:  STRH            R1, [R2,#2]
11A522:  LDR             R0, [SP,#0x38+var_2C]
11A524:  LDR             R1, [SP,#0x38+var_30]
11A526:  LSRS            R0, R0, #0xB
11A528:  ORR.W           R9, R0, R1,LSL#21
11A52C:  BL              sub_1273F0
11A530:  MOVS            R1, #1
11A532:  ADD.W           R4, R10, #1
11A536:  STRB.W          R1, [R0,#0x28]
11A53A:  MOVS            R6, #0
11A53C:  LDRB.W          R1, [R10]
11A540:  LDR.W           R0, [R10,#8]
11A544:  LSLS            R1, R1, #0x1F
11A546:  IT EQ
11A548:  MOVEQ           R0, R4
11A54A:  MOVS            R1, #0
11A54C:  BL              sub_11A5B4
11A550:  MOV             R5, R0
11A552:  BL              sub_1273F0
11A556:  STR             R5, [R0,#0x2C]
11A558:  BL              sub_1273F0
11A55C:  LDRB.W          R2, [R10]
11A560:  LDR.W           R1, [R10,#8]
11A564:  LSLS            R2, R2, #0x1F
11A566:  IT EQ
11A568:  MOVEQ           R1, R4; src
11A56A:  MOVS            R2, #0x28 ; '('; n
11A56C:  BLX             strncpy
11A570:  ADD.W           R0, R8, R8,LSL#2
11A574:  ADD.W           R0, R11, R0,LSL#2
11A578:  STRD.W          R6, R9, [R0,#8]
11A57C:  STRB            R6, [R0,#7]
11A57E:  MOV             R0, R6
11A580:  ADD             SP, SP, #0x1C
11A582:  POP.W           {R8-R11}
11A586:  POP             {R4-R7,PC}
