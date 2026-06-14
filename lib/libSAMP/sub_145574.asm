; =========================================================
; Game Engine Function: sub_145574
; Address            : 0x145574 - 0x1456F0
; =========================================================

145574:  PUSH            {R4-R7,LR}
145576:  ADD             R7, SP, #0xC
145578:  PUSH.W          {R11}
14557C:  SUB             SP, SP, #0x158
14557E:  LDRD.W          R1, R0, [R0]; src
145582:  MOVS            R3, #0
145584:  ASRS            R2, R0, #0x1F
145586:  MOVS            R5, #0
145588:  ADD.W           R0, R0, R2,LSR#29
14558C:  MOVS            R2, #1
14558E:  ADD.W           R2, R2, R0,ASR#3; size
145592:  ADD             R0, SP, #0x168+var_164; int
145594:  BL              sub_17D4F2
145598:  LDR             R0, =(off_23496C - 0x14559E)
14559A:  ADD             R0, PC; off_23496C
14559C:  LDR             R0, [R0]; dword_23DEF4
14559E:  LDR             R0, [R0]
1455A0:  LDR.W           R0, [R0,#0x3B0]
1455A4:  LDR             R4, [R0,#4]
1455A6:  CMP             R4, #0
1455A8:  BEQ.W           loc_1456E2
1455AC:  VMOV.I32        Q8, #0
1455B0:  MOVS            R0, #0xF
1455B2:  ADD             R1, SP, #0x168+var_50
1455B4:  STR             R5, [SP,#0x168+var_14]
1455B6:  VST1.64         {D16-D17}, [R1],R0
1455BA:  STR             R5, [R1]
1455BC:  ADD             R1, SP, #0x168+dest; dest
1455BE:  STR.W           R5, [SP,#0x168+var_3D]
1455C2:  MOV             R0, R1
1455C4:  VST1.64         {D16-D17}, [R0]!
1455C8:  VST1.64         {D16-D17}, [R0]!
1455CC:  STR             R5, [R0]
1455CE:  ADD             R0, SP, #0x168+var_164; int
1455D0:  MOVS            R2, #0x28 ; '('
1455D2:  BL              sub_17D744
1455D6:  ADD             R5, SP, #0x168+var_50
1455D8:  ADD             R0, SP, #0x168+var_164; int
1455DA:  MOVS            R2, #0x17
1455DC:  MOV             R1, R5; dest
1455DE:  BL              sub_17D744
1455E2:  LDR.W           R0, [SP,#0x168+var_36]
1455E6:  BL              sub_1084DC
1455EA:  CMP             R0, #0
1455EC:  BEQ             loc_1456E2
1455EE:  ADD             R1, SP, #0x168+dest
1455F0:  MOV             R0, R4
1455F2:  BL              sub_14FF40
1455F6:  LDRH.W          R6, [SP,#0x168+dest]
1455FA:  LSRS            R0, R6, #4
1455FC:  CMP             R0, #0x7C ; '|'
1455FE:  BHI             loc_1456E2
145600:  MOV             R0, R4
145602:  MOV             R1, R6
145604:  BL              sub_F2396
145608:  CMP             R0, #0
14560A:  BEQ             loc_1456E2
14560C:  LDR.W           R6, [R4,R6,LSL#2]
145610:  CMP             R6, #0
145612:  BEQ             loc_1456E2
145614:  LDR.W           R0, [SP,#0x168+var_36]
145618:  MOVW            R1, #0x219
14561C:  CMP             R0, R1
14561E:  BEQ             loc_14562E
145620:  MOVW            R1, #0x21A
145624:  CMP             R0, R1
145626:  BNE             loc_14566C
145628:  MOVW            R0, #0x23A
14562C:  B               loc_145632
14562E:  MOVW            R0, #0x239
145632:  LDRH.W          R1, [SP,#0x168+dest]
145636:  STR.W           R0, [SP,#0x168+var_36]
14563A:  ADDS            R0, R1, #1
14563C:  STRH.W          R0, [SP,#0x168+dest]
145640:  ADD             R1, SP, #0x168+dest
145642:  MOV             R0, R4
145644:  BL              sub_14FF40
145648:  LDRH.W          R0, [SP,#0x168+dest]
14564C:  ADDS            R0, #1
14564E:  STRH.W          R0, [SP,#0x168+dest]
145652:  ADD             R1, SP, #0x168+dest
145654:  MOV             R0, R4
145656:  BL              sub_14FF40
14565A:  LDRH.W          R0, [SP,#0x168+dest]
14565E:  ADDS            R0, #1
145660:  STRH.W          R0, [SP,#0x168+dest]
145664:  ADD             R1, SP, #0x168+dest
145666:  MOV             R0, R4
145668:  BL              sub_14FF40
14566C:  MOVS            R4, #0
14566E:  LDRB            R0, [R5,R4]
145670:  CBZ             R0, loc_14567C
145672:  ADDW            R1, R0, #0x3E7
145676:  MOV             R0, R6
145678:  BL              sub_109ADC
14567C:  ADDS            R4, #1
14567E:  CMP             R4, #0xE
145680:  BNE             loc_14566E
145682:  LDRB.W          R0, [SP,#0x168+var_42]
145686:  CBZ             R0, loc_145692
145688:  SUBS            R0, #1
14568A:  UXTB            R1, R0
14568C:  MOV             R0, R6
14568E:  BL              sub_109B90
145692:  LDR.W           R0, [SP,#0x168+var_41]
145696:  LDR.W           R2, [SP,#0x168+var_3D]
14569A:  ADDS            R1, R0, #1
14569C:  IT EQ
14569E:  ADDSEQ.W        R1, R2, #1
1456A2:  BEQ             loc_1456AE
1456A4:  UXTB            R1, R0
1456A6:  UXTB            R2, R2
1456A8:  MOV             R0, R6
1456AA:  BL              sub_109BC8
1456AE:  BL              sub_F74A4
1456B2:  CBNZ            R0, loc_1456BA
1456B4:  BL              sub_F541C
1456B8:  CBZ             R0, loc_1456C4
1456BA:  LDR             R0, [SP,#0x168+var_164]
1456BC:  CMP.W           R0, #0x200
1456C0:  BGT             loc_1456D8
1456C2:  B               loc_1456E2
1456C4:  BL              sub_F4270
1456C8:  LDR             R1, [SP,#0x168+var_164]
1456CA:  MOVS            R2, #0
1456CC:  CMP.W           R1, #0x200
1456D0:  IT GT
1456D2:  MOVGT           R2, #1
1456D4:  TST             R0, R2
1456D6:  BEQ             loc_1456E2
1456D8:  ADD             R0, SP, #0x168+var_164
1456DA:  MOV.W           R1, #0x200
1456DE:  BL              sub_1450C8
1456E2:  ADD             R0, SP, #0x168+var_164
1456E4:  BL              sub_17D542
1456E8:  ADD             SP, SP, #0x158
1456EA:  POP.W           {R11}
1456EE:  POP             {R4-R7,PC}
