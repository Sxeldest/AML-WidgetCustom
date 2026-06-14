; =========================================================
; Game Engine Function: sub_10B380
; Address            : 0x10B380 - 0x10B45C
; =========================================================

10B380:  PUSH            {R4,R6,R7,LR}
10B382:  ADD             R7, SP, #8
10B384:  LDR             R0, =(byte_26319C - 0x10B38A)
10B386:  ADD             R0, PC; byte_26319C
10B388:  LDRB            R0, [R0]
10B38A:  DMB.W           ISH
10B38E:  LDR             R4, =(dword_263198 - 0x10B394)
10B390:  ADD             R4, PC; dword_263198
10B392:  LSLS            R0, R0, #0x1F
10B394:  BEQ             loc_10B3D6
10B396:  LDR             R0, =(byte_2631A4 - 0x10B39C)
10B398:  ADD             R0, PC; byte_2631A4
10B39A:  LDRB            R0, [R0]
10B39C:  DMB.W           ISH
10B3A0:  LSLS            R0, R0, #0x1F
10B3A2:  BEQ             loc_10B400
10B3A4:  LDR             R0, =(byte_2631AC - 0x10B3AA)
10B3A6:  ADD             R0, PC; byte_2631AC
10B3A8:  LDRB            R0, [R0]
10B3AA:  DMB.W           ISH
10B3AE:  LSLS            R0, R0, #0x1F
10B3B0:  BEQ             loc_10B42E
10B3B2:  LDR             R0, [R4]
10B3B4:  LDRB            R0, [R0]
10B3B6:  CBZ             R0, loc_10B3D2
10B3B8:  LDR             R0, =(dword_2631A0 - 0x10B3BE)
10B3BA:  ADD             R0, PC; dword_2631A0
10B3BC:  LDR             R0, [R0]
10B3BE:  LDRB            R0, [R0]
10B3C0:  CBZ             R0, loc_10B3D2
10B3C2:  LDR             R0, =(dword_2631A8 - 0x10B3C8)
10B3C4:  ADD             R0, PC; dword_2631A8
10B3C6:  LDR             R0, [R0]
10B3C8:  LDRB            R0, [R0]
10B3CA:  CLZ.W           R0, R0
10B3CE:  LSRS            R0, R0, #5
10B3D0:  POP             {R4,R6,R7,PC}
10B3D2:  MOVS            R0, #0
10B3D4:  POP             {R4,R6,R7,PC}
10B3D6:  LDR             R0, =(byte_26319C - 0x10B3DC)
10B3D8:  ADD             R0, PC; byte_26319C ; __guard *
10B3DA:  BLX             j___cxa_guard_acquire
10B3DE:  CMP             R0, #0
10B3E0:  BEQ             loc_10B396
10B3E2:  LDR             R0, =(off_23494C - 0x10B3F0)
10B3E4:  MOV             R2, #0x98F111
10B3EC:  ADD             R0, PC; off_23494C
10B3EE:  LDR             R1, [R0]; dword_23DF24
10B3F0:  LDR             R0, =(byte_26319C - 0x10B3F8)
10B3F2:  LDR             R1, [R1]
10B3F4:  ADD             R0, PC; byte_26319C ; __guard *
10B3F6:  ADD             R1, R2
10B3F8:  STR             R1, [R4]
10B3FA:  BLX             j___cxa_guard_release
10B3FE:  B               loc_10B396
10B400:  LDR             R0, =(byte_2631A4 - 0x10B406)
10B402:  ADD             R0, PC; byte_2631A4 ; __guard *
10B404:  BLX             j___cxa_guard_acquire
10B408:  CMP             R0, #0
10B40A:  BEQ             loc_10B3A4
10B40C:  LDR             R0, =(off_23494C - 0x10B41C)
10B40E:  MOVW            R3, #0x9D88
10B412:  LDR             R2, =(dword_2631A0 - 0x10B41E)
10B414:  MOVT            R3, #0x81
10B418:  ADD             R0, PC; off_23494C
10B41A:  ADD             R2, PC; dword_2631A0
10B41C:  LDR             R1, [R0]; dword_23DF24
10B41E:  LDR             R0, =(byte_2631A4 - 0x10B426)
10B420:  LDR             R1, [R1]
10B422:  ADD             R0, PC; byte_2631A4 ; __guard *
10B424:  ADD             R1, R3
10B426:  STR             R1, [R2]
10B428:  BLX             j___cxa_guard_release
10B42C:  B               loc_10B3A4
10B42E:  LDR             R0, =(byte_2631AC - 0x10B434)
10B430:  ADD             R0, PC; byte_2631AC ; __guard *
10B432:  BLX             j___cxa_guard_acquire
10B436:  CMP             R0, #0
10B438:  BEQ             loc_10B3B2
10B43A:  LDR             R0, =(off_23494C - 0x10B44A)
10B43C:  MOVW            R3, #0x1FD8
10B440:  LDR             R2, =(dword_2631A8 - 0x10B44C)
10B442:  MOVT            R3, #0x99
10B446:  ADD             R0, PC; off_23494C
10B448:  ADD             R2, PC; dword_2631A8
10B44A:  LDR             R1, [R0]; dword_23DF24
10B44C:  LDR             R0, =(byte_2631AC - 0x10B454)
10B44E:  LDR             R1, [R1]
10B450:  ADD             R0, PC; byte_2631AC ; __guard *
10B452:  ADD             R1, R3
10B454:  STR             R1, [R2]
10B456:  BLX             j___cxa_guard_release
10B45A:  B               loc_10B3B2
