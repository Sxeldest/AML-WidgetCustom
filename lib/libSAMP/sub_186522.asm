; =========================================================
; Game Engine Function: sub_186522
; Address            : 0x186522 - 0x186722
; =========================================================

186522:  PUSH            {R4-R7,LR}
186524:  ADD             R7, SP, #0xC
186526:  PUSH.W          {R8-R11}
18652A:  SUB             SP, SP, #0x44
18652C:  MOV             R10, R3
18652E:  LDM.W           R1!, {R3-R6,R12}
186532:  MOV             R11, SP
186534:  MOV             R8, R2
186536:  MOV             R2, R11
186538:  VMOV.I32        Q8, #0
18653C:  STM.W           R2!, {R3-R6,R12}
186540:  LDM.W           R1!, {R3-R6,R12}
186544:  STM.W           R2!, {R3-R6,R12}
186548:  LDM.W           R1, {R3-R6,R12,LR}
18654C:  MOV             R1, R10
18654E:  STM.W           R2, {R3-R6,R12,LR}
186552:  LDM             R0!, {R2-R6}
186554:  STM             R1!, {R2-R6}
186556:  LDM             R0!, {R2-R6}
186558:  STM             R1!, {R2-R6}
18655A:  LDM.W           R0, {R2-R6,R12}
18655E:  STM.W           R1, {R2-R6,R12}
186562:  MOV             R1, R8
186564:  VST1.32         {D16-D17}, [R1]!
186568:  VST1.32         {D16-D17}, [R1]!
18656C:  LDR             R0, [SP,#0x60+var_24]
18656E:  VST1.32         {D16-D17}, [R1]!
186572:  CMP             R0, #0
186574:  VST1.32         {D16-D17}, [R1]
186578:  BMI             loc_1865B2
18657A:  LDR.W           R2, [R10,#0x3C]
18657E:  CMP             R2, R0
186580:  BHI             loc_18659C
186582:  MOVS            R1, #0xE
186584:  MOV             R3, R0
186586:  CMP             R2, R3
186588:  BCC             loc_1865B2
18658A:  ADDS            R2, R1, #1
18658C:  BEQ             loc_1865B2
18658E:  LDR.W           R2, [R10,R1,LSL#2]
186592:  LDR.W           R3, [R11,R1,LSL#2]
186596:  SUBS            R1, #1
186598:  CMP             R2, R3
18659A:  BLS             loc_186586
18659C:  MOVS            R2, #0xF
18659E:  MOV.W           R1, #0x1E0
1865A2:  LDR.W           R3, [R10,R2,LSL#2]
1865A6:  CBNZ            R3, loc_1865F6
1865A8:  SUBS            R2, #1
1865AA:  SUBS            R1, #0x20 ; ' '
1865AC:  ADDS            R3, R2, #1
1865AE:  BNE             loc_1865A2
1865B0:  B               loc_186612
1865B2:  LDR.W           R2, [R10,#0x3C]
1865B6:  CMP             R0, R2
1865B8:  BHI             loc_1865D8
1865BA:  MOVS            R1, #0xE
1865BC:  MOV             R3, R0
1865BE:  MOV.W           R9, #1
1865C2:  CMP             R3, R2
1865C4:  BCC             loc_18669E
1865C6:  ADDS            R2, R1, #1
1865C8:  BEQ             loc_18669E
1865CA:  LDR.W           R2, [R10,R1,LSL#2]
1865CE:  LDR.W           R3, [R11,R1,LSL#2]
1865D2:  SUBS            R1, #1
1865D4:  CMP             R3, R2
1865D6:  BLS             loc_1865C2
1865D8:  LSRS            R1, R0, #1
1865DA:  STR             R1, [SP,#0x60+var_24]
1865DC:  MOVS            R1, #0xE
1865DE:  LDR.W           R2, [R11,R1,LSL#2]
1865E2:  LSLS            R0, R0, #0x1F
1865E4:  ORR.W           R0, R0, R2,LSR#1
1865E8:  STR.W           R0, [R11,R1,LSL#2]
1865EC:  SUBS            R1, #1
1865EE:  ADDS            R0, R1, #1
1865F0:  MOV             R0, R2
1865F2:  BNE             loc_1865DE
1865F4:  B               loc_1866FC
1865F6:  CMP             R2, #0
1865F8:  BMI             loc_186612
1865FA:  MOV             R3, R2
1865FC:  LDR.W           R6, [R11,R3,LSL#2]
186600:  CBNZ            R6, loc_18660E
186602:  SUBS            R6, R3, #1
186604:  CMP             R3, #0
186606:  MOV             R3, R6
186608:  BGT             loc_1865FC
18660A:  MOV.W           R3, #0xFFFFFFFF
18660E:  CMP             R3, R2
186610:  BNE             loc_18670E
186612:  MOV.W           R9, #1
186616:  CMP             R0, #0
186618:  BMI             loc_186660
18661A:  LDR.W           R1, [R10,#0x3C]
18661E:  CMP             R1, R0
186620:  BHI             loc_18663C
186622:  MOVS            R2, #0xE
186624:  MOV             R3, R1
186626:  CMP             R3, R0
186628:  BCC             loc_186660
18662A:  ADDS            R0, R2, #1
18662C:  BEQ             loc_186660
18662E:  LDR.W           R3, [R10,R2,LSL#2]
186632:  LDR.W           R0, [R11,R2,LSL#2]
186636:  SUBS            R2, #1
186638:  CMP             R3, R0
18663A:  BLS             loc_186626
18663C:  MOVS            R0, #0
18663E:  MOVS            R2, #0
186640:  LDR.W           R3, [R11,R0,LSL#2]
186644:  ORR.W           R2, R2, R3,LSL#1
186648:  STR.W           R2, [R11,R0,LSL#2]
18664C:  ADDS            R0, #1
18664E:  LSRS            R2, R3, #0x1F
186650:  CMP             R0, #0x10
186652:  BNE             loc_186640
186654:  LDR             R0, [SP,#0x60+var_24]
186656:  ADD.W           R9, R9, #1
18665A:  CMP.W           R0, #0xFFFFFFFF
18665E:  BGT             loc_18661E
186660:  MOVS            R0, #0x3C ; '<'
186662:  LDR.W           R1, [R10,R0]
186666:  LDR.W           R2, [R11,R0]
18666A:  CMP             R2, R1
18666C:  BHI             loc_18667A
18666E:  BCC             loc_186698
186670:  SUBS            R1, R0, #4
186672:  CMP             R0, #0
186674:  MOV             R0, R1
186676:  BNE             loc_186662
186678:  B               loc_186698
18667A:  MOVS            R1, #0
18667C:  MOVS            R0, #0xF
18667E:  LDR.W           R2, [R11,R0,LSL#2]
186682:  ORR.W           R1, R1, R2,LSR#1
186686:  STR.W           R1, [R11,R0,LSL#2]
18668A:  SUBS            R0, #1
18668C:  LSLS            R1, R2, #0x1F
18668E:  ADDS            R2, R0, #1
186690:  BNE             loc_18667E
186692:  SUB.W           R9, R9, #1
186696:  B               loc_186660
186698:  CMP.W           R9, #0
18669C:  BEQ             loc_1866FC
18669E:  MOVS            R4, #0
1866A0:  ADDS            R4, #1
1866A2:  SUB.W           R9, R9, #1
1866A6:  MOVS            R0, #0x3C ; '<'
1866A8:  LDR.W           R1, [R10,R0]
1866AC:  LDR.W           R2, [R11,R0]
1866B0:  CMP             R2, R1
1866B2:  BHI             loc_1866DC
1866B4:  BCC             loc_1866BE
1866B6:  SUBS            R1, R0, #4
1866B8:  CMP             R0, #0
1866BA:  MOV             R0, R1
1866BC:  BNE             loc_1866A8
1866BE:  MOV             R0, R10
1866C0:  MOV             R1, R11
1866C2:  BL              sub_185F02
1866C6:  MOV             R0, R8; int
1866C8:  MOV             R1, R4
1866CA:  BL              sub_185E5E
1866CE:  LDR.W           R0, [R8]
1866D2:  MOVS            R4, #0
1866D4:  ORR.W           R0, R0, #1
1866D8:  STR.W           R0, [R8]
1866DC:  MOVS            R1, #0
1866DE:  MOVS            R0, #0xF
1866E0:  LDR.W           R2, [R11,R0,LSL#2]
1866E4:  ORR.W           R1, R1, R2,LSR#1
1866E8:  STR.W           R1, [R11,R0,LSL#2]
1866EC:  SUBS            R0, #1
1866EE:  LSLS            R1, R2, #0x1F
1866F0:  ADDS            R2, R0, #1
1866F2:  BNE             loc_1866E0
1866F4:  CMP.W           R9, #0
1866F8:  BNE             loc_1866A0
1866FA:  B               loc_1866FE
1866FC:  MOVS            R4, #0
1866FE:  MOV             R0, R8; int
186700:  MOV             R1, R4
186702:  BL              sub_185E5E
186706:  ADD             SP, SP, #0x44 ; 'D'
186708:  POP.W           {R8-R11}
18670C:  POP             {R4-R7,PC}
18670E:  SUB.W           R4, R1, R3,LSL#5
186712:  MOV             R0, SP; int
186714:  MOV             R1, R4
186716:  BL              sub_185E5E
18671A:  LDR             R0, [SP,#0x60+var_24]
18671C:  ADD.W           R9, R4, #1
186720:  B               loc_186616
