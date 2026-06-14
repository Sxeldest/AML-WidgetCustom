; =========================================================
; Game Engine Function: sub_105540
; Address            : 0x105540 - 0x105630
; =========================================================

105540:  PUSH            {R4-R7,LR}
105542:  ADD             R7, SP, #0xC
105544:  PUSH.W          {R8-R11}
105548:  SUB             SP, SP, #0x5C
10554A:  MOV             R6, R0
10554C:  LDR             R0, [R0,#0x5C]
10554E:  CMP             R0, #0
105550:  BEQ             loc_105628
105552:  MOV             R5, R1
105554:  LDR             R1, =(off_23494C - 0x105560)
105556:  MOVW            R3, #0x7D24
10555A:  MOV             R4, R2
10555C:  ADD             R1, PC; off_23494C
10555E:  LDR             R2, [R0]
105560:  MOVT            R3, #0x66 ; 'f'
105564:  LDR             R1, [R1]; dword_23DF24
105566:  LDR             R1, [R1]
105568:  ADD             R1, R3
10556A:  CMP             R2, R1
10556C:  BEQ             loc_105628
10556E:  CMP             R5, #9
105570:  BHI             loc_105628
105572:  LDR             R0, [R0,#0x18]
105574:  CMP             R0, #0
105576:  BEQ             loc_105628
105578:  LDR             R0, [R4,#4]
10557A:  SUBS            R0, #1
10557C:  CMP             R0, #0x11
10557E:  BHI             loc_105628
105580:  ADDS            R1, R6, R5
105582:  LDRB.W          R0, [R1,#0x74]!
105586:  STR             R1, [SP,#0x78+var_60]
105588:  CBZ             R0, loc_105592
10558A:  MOV             R0, R6
10558C:  MOV             R1, R5
10558E:  BL              sub_105640
105592:  ADD             R1, SP, #0x78+var_5C
105594:  MOV             R0, R6
105596:  BL              sub_F8910
10559A:  MOVS            R0, #0x34 ; '4'
10559C:  MOV             R1, R4; src
10559E:  MLA.W           R0, R5, R0, R6
1055A2:  MOVS            R2, #0x34 ; '4'; n
1055A4:  ADDS            R0, #0x80; dest
1055A6:  BLX             j_memcpy
1055AA:  MOV.W           R0, #0x350; unsigned int
1055AE:  BLX             j__Znwj; operator new(uint)
1055B2:  ADD.W           LR, R4, #0x14
1055B6:  MOV             R8, R0
1055B8:  LDR             R1, [R4]
1055BA:  LDR             R0, [SP,#0x78+var_24]
1055BC:  LDM.W           LR, {R10,R12,LR}
1055C0:  LDRD.W          R2, R3, [SP,#0x78+var_2C]
1055C4:  MOVW            R9, #0
1055C8:  STMEA.W         SP, {R0,R10,R12,LR}
1055CC:  MOV             R0, R8
1055CE:  MOV.W           R11, #1
1055D2:  MOVT            R9, #0x4348
1055D6:  STRD.W          R9, R11, [SP,#0x78+var_68]
1055DA:  BL              sub_101808
1055DE:  ADD.W           R1, R6, R5,LSL#2
1055E2:  LDR             R0, [R4,#0x2C]
1055E4:  ADD.W           R5, R1, #0x288
1055E8:  STR.W           R8, [R1,#0x288]
1055EC:  CBZ             R0, loc_105602
1055EE:  MOVS            R1, #0
1055F0:  MOVS            R2, #0
1055F2:  STRD.W          R1, R0, [SP,#0x78+var_78]
1055F6:  MOV             R0, R8
1055F8:  MOV.W           R1, #0xFFFFFFFF
1055FC:  MOVS            R3, #0
1055FE:  BL              sub_102390
105602:  LDR             R1, [R4,#0x30]
105604:  CBZ             R1, loc_10561A
105606:  LDR             R0, [R5]
105608:  MOVS            R2, #0
10560A:  STRD.W          R2, R1, [SP,#0x78+var_78]
10560E:  MOV.W           R1, #0xFFFFFFFF
105612:  MOVS            R2, #1
105614:  MOVS            R3, #0
105616:  BL              sub_102390
10561A:  LDR             R0, [R5]
10561C:  MOVS            R1, #0
10561E:  BL              sub_F8EC0
105622:  LDR             R1, [SP,#0x78+var_60]
105624:  MOVS            R0, #1
105626:  STRB            R0, [R1]
105628:  ADD             SP, SP, #0x5C ; '\'
10562A:  POP.W           {R8-R11}
10562E:  POP             {R4-R7,PC}
