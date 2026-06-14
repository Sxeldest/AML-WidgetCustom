; =========================================================
; Game Engine Function: sub_185648
; Address            : 0x185648 - 0x185718
; =========================================================

185648:  PUSH            {R4-R7,LR}
18564A:  ADD             R7, SP, #0xC
18564C:  PUSH.W          {R8}
185650:  SUB             SP, SP, #0x20
185652:  MOV             R8, R2
185654:  MOV             R6, R1
185656:  BL              sub_184D9C
18565A:  LDR.W           R0, [R8]
18565E:  CBNZ            R0, loc_18567A
185660:  ADD.W           R0, R8, #4
185664:  MOVS            R2, #0
185666:  MOV             R1, R2
185668:  CMP             R2, #7
18566A:  BEQ             loc_185676
18566C:  LDR.W           R3, [R0,R1,LSL#2]
185670:  ADDS            R2, R1, #1
185672:  CMP             R3, #0
185674:  BEQ             loc_185666
185676:  CMP             R1, #7
185678:  BCS             loc_185700
18567A:  MOV             R5, SP
18567C:  MOV             R0, R6
18567E:  MOV             R1, R8
185680:  MOV             R2, R5
185682:  BL              sub_184D9C
185686:  LDR             R0, [SP,#0x30+var_30]
185688:  CBNZ            R0, loc_1856A2
18568A:  ADDS            R0, R5, #4
18568C:  MOVS            R2, #0
18568E:  MOV             R1, R2
185690:  CMP             R2, #7
185692:  BEQ             loc_18569E
185694:  LDR.W           R3, [R0,R1,LSL#2]
185698:  ADDS            R2, R1, #1
18569A:  CMP             R3, #0
18569C:  BEQ             loc_18568E
18569E:  CMP             R1, #6
1856A0:  BHI             loc_185710
1856A2:  ADDS            R6, R5, #4
1856A4:  ADD.W           R4, R8, #4
1856A8:  MOV             R0, R8
1856AA:  MOV             R1, R5
1856AC:  MOV             R2, R8
1856AE:  BL              sub_184D9C
1856B2:  LDR.W           R0, [R8]
1856B6:  CBNZ            R0, loc_1856CE
1856B8:  MOVS            R1, #0
1856BA:  MOV             R0, R1
1856BC:  CMP             R1, #7
1856BE:  BEQ             loc_1856CA
1856C0:  LDR.W           R2, [R4,R0,LSL#2]
1856C4:  ADDS            R1, R0, #1
1856C6:  CMP             R2, #0
1856C8:  BEQ             loc_1856BA
1856CA:  CMP             R0, #7
1856CC:  BCS             loc_1856F6
1856CE:  MOV             R0, R5
1856D0:  MOV             R1, R8
1856D2:  MOV             R2, R5
1856D4:  BL              sub_184D9C
1856D8:  LDR             R0, [SP,#0x30+var_30]
1856DA:  CMP             R0, #0
1856DC:  BNE             loc_1856A8
1856DE:  MOVS            R1, #0
1856E0:  MOV             R0, R1
1856E2:  CMP             R1, #7
1856E4:  BEQ             loc_1856F0
1856E6:  LDR.W           R2, [R6,R0,LSL#2]
1856EA:  ADDS            R1, R0, #1
1856EC:  CMP             R2, #0
1856EE:  BEQ             loc_1856E0
1856F0:  CMP             R0, #7
1856F2:  BCC             loc_1856A8
1856F4:  B               loc_185710
1856F6:  VLD1.32         {D16-D17}, [R5]!
1856FA:  VLD1.64         {D18-D19}, [R5]
1856FE:  B               loc_185708
185700:  VLD1.32         {D16-D17}, [R6]!
185704:  VLD1.32         {D18-D19}, [R6]
185708:  VST1.32         {D16-D17}, [R8]!
18570C:  VST1.32         {D18-D19}, [R8]
185710:  ADD             SP, SP, #0x20 ; ' '
185712:  POP.W           {R8}
185716:  POP             {R4-R7,PC}
