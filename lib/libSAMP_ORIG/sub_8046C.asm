; =========================================================
; Game Engine Function: sub_8046C
; Address            : 0x8046C - 0x80590
; =========================================================

8046C:  PUSH            {R4-R7,LR}
8046E:  ADD             R7, SP, #0xC
80470:  PUSH.W          {R11}
80474:  SUB             SP, SP, #0x20
80476:  LDR             R1, =(byte_1A49B4 - 0x8047E)
80478:  LDR             R2, =(__stack_chk_guard_ptr - 0x80480)
8047A:  ADD             R1, PC; byte_1A49B4
8047C:  ADD             R2, PC; __stack_chk_guard_ptr
8047E:  LDR             R2, [R2]; __stack_chk_guard
80480:  LDR             R2, [R2]
80482:  STR             R2, [SP,#0x30+var_14]
80484:  LDRB            R1, [R1]
80486:  CMP             R1, #0
80488:  BEQ             loc_80540
8048A:  BL              sub_826A4
8048E:  BL              sub_82650
80492:  LDR             R4, =(dword_1A49C0 - 0x8049A)
80494:  CMP             R0, #0
80496:  ADD             R4, PC; dword_1A49C0
80498:  BEQ             loc_80522
8049A:  LDR             R0, [R4]
8049C:  CMP             R0, #0
8049E:  BNE             loc_80522
804A0:  LDR             R0, =(off_114CD8 - 0x804A8)
804A2:  LDR             R6, =(dword_1A49BC - 0x804AA)
804A4:  ADD             R0, PC; off_114CD8
804A6:  ADD             R6, PC; dword_1A49BC
804A8:  LDR             R1, [R0]; off_1ABF1C
804AA:  LDR             R0, [R6]
804AC:  LDR             R2, [R1]
804AE:  MOVS            R1, #0x10013
804B4:  BLX             R2
804B6:  CMP             R0, #0
804B8:  STR             R0, [R4]
804BA:  BEQ             loc_8055A
804BC:  VMOV.I32        Q8, #0
804C0:  MOV             R1, SP
804C2:  ADD.W           R3, R1, #8
804C6:  LDR             R2, =(off_114CDC - 0x804D4)
804C8:  MOV.W           R5, #0xFFFFFFFF
804CC:  VST1.64         {D16-D17}, [R3]!
804D0:  ADD             R2, PC; off_114CDC
804D2:  STR             R5, [R3]
804D4:  MOV             R3, #0x45548000
804DC:  LDR             R2, [R2]; off_1ABF24
804DE:  STR             R3, [SP,#0x30+var_2C]
804E0:  MOVS            R3, #0
804E2:  STR             R3, [SP,#0x30+var_30]
804E4:  MOV             R3, #0x3F34FDF4
804EC:  LDR             R2, [R2]
804EE:  STR             R3, [SP,#0x30+var_20]
804F0:  BLX             R2
804F2:  CBNZ            R0, loc_80540
804F4:  LDR             R0, =(off_114CB0 - 0x804FA)
804F6:  ADD             R0, PC; off_114CB0
804F8:  LDR             R0, [R0]; off_1ABF0C
804FA:  LDR             R0, [R0]
804FC:  BLX             R0
804FE:  MOV             R1, R0
80500:  LDR             R0, =(aSvErrPlaybackS_1 - 0x80506); "[sv:err:playback:setsoundfilter] : fail"... ...
80502:  ADD             R0, PC; "[sv:err:playback:setsoundfilter] : fail"...
80504:  BL              sub_80664
80508:  LDR             R0, =(off_114CD4 - 0x80510)
8050A:  LDR             R1, [R4]
8050C:  ADD             R0, PC; off_114CD4
8050E:  LDR             R2, [R0]; off_1ABF20
80510:  LDR             R0, [R6]
80512:  LDR             R2, [R2]
80514:  BLX             R2
80516:  MOVS            R0, #0
80518:  STR             R0, [R4]
8051A:  MOVS            R0, #0
8051C:  BL              sub_826A4
80520:  B               loc_80540
80522:  BL              sub_82650
80526:  CBNZ            R0, loc_80540
80528:  LDR             R1, [R4]
8052A:  CBZ             R1, loc_80540
8052C:  LDR             R0, =(off_114CD4 - 0x80534)
8052E:  LDR             R2, =(dword_1A49BC - 0x80536)
80530:  ADD             R0, PC; off_114CD4
80532:  ADD             R2, PC; dword_1A49BC
80534:  LDR             R3, [R0]; off_1ABF20
80536:  LDR             R0, [R2]
80538:  LDR             R2, [R3]
8053A:  BLX             R2
8053C:  MOVS            R0, #0
8053E:  STR             R0, [R4]
80540:  LDR             R0, [SP,#0x30+var_14]
80542:  LDR             R1, =(__stack_chk_guard_ptr - 0x80548)
80544:  ADD             R1, PC; __stack_chk_guard_ptr
80546:  LDR             R1, [R1]; __stack_chk_guard
80548:  LDR             R1, [R1]
8054A:  CMP             R1, R0
8054C:  ITTT EQ
8054E:  ADDEQ           SP, SP, #0x20 ; ' '
80550:  POPEQ.W         {R11}
80554:  POPEQ           {R4-R7,PC}
80556:  BLX             __stack_chk_fail
8055A:  LDR             R0, =(off_114CB0 - 0x80560)
8055C:  ADD             R0, PC; off_114CB0
8055E:  LDR             R0, [R0]; off_1ABF0C
80560:  LDR             R0, [R0]
80562:  BLX             R0
80564:  MOV             R1, R0
80566:  LDR             R0, =(aSvErrPlaybackS_2 - 0x8056C); "[sv:err:playback:setsoundfilter] : fail"... ...
80568:  ADD             R0, PC; "[sv:err:playback:setsoundfilter] : fail"...
8056A:  BL              sub_80664
8056E:  LDR             R0, [SP,#0x30+var_14]
80570:  LDR             R1, =(__stack_chk_guard_ptr - 0x80576)
80572:  ADD             R1, PC; __stack_chk_guard_ptr
80574:  LDR             R1, [R1]; __stack_chk_guard
80576:  LDR             R1, [R1]
80578:  CMP             R1, R0
8057A:  ITTTT EQ
8057C:  MOVEQ           R0, #0
8057E:  ADDEQ           SP, SP, #0x20 ; ' '
80580:  POPEQ.W         {R11}
80584:  POPEQ.W         {R4-R7,LR}
80588:  IT EQ
8058A:  BEQ.W           sub_826A4
8058E:  B               loc_80556
