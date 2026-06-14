; =========================================================
; Game Engine Function: sub_14E638
; Address            : 0x14E638 - 0x14E6A6
; =========================================================

14E638:  PUSH            {R4,R6,R7,LR}
14E63A:  ADD             R7, SP, #8
14E63C:  SUB             SP, SP, #0x120
14E63E:  LDR             R1, =(off_23496C - 0x14E644)
14E640:  ADD             R1, PC; off_23496C
14E642:  LDR             R1, [R1]; dword_23DEF4
14E644:  LDR             R1, [R1]
14E646:  LDR.W           R1, [R1,#0x3B0]
14E64A:  LDR             R4, [R1,#0x1C]
14E64C:  CBZ             R4, loc_14E6A2
14E64E:  LDRD.W          R1, R0, [R0]; src
14E652:  MOVS            R3, #0
14E654:  ASRS            R2, R0, #0x1F
14E656:  ADD.W           R0, R0, R2,LSR#29
14E65A:  MOVS            R2, #1
14E65C:  ADD.W           R2, R2, R0,ASR#3; size
14E660:  ADD             R0, SP, #0x128+var_124; int
14E662:  BL              sub_17D4F2
14E666:  SUB.W           R1, R7, #-var_A; int
14E66A:  MOVS            R2, #0x10
14E66C:  MOVS            R3, #1
14E66E:  BL              sub_17D786
14E672:  ADD             R0, SP, #0x128+var_124; int
14E674:  ADD             R1, SP, #0x128+var_10; int
14E676:  MOVS            R2, #0x20 ; ' '
14E678:  MOVS            R3, #1
14E67A:  BL              sub_17D786
14E67E:  LDRH.W          R0, [R7,#var_A]
14E682:  LSRS            R1, R0, #3
14E684:  CMP             R1, #0x7C ; '|'
14E686:  BHI             loc_14E69C
14E688:  ADDS            R1, R4, R0
14E68A:  LDRB.W          R1, [R1,#0xFA0]
14E68E:  CBZ             R1, loc_14E69C
14E690:  LDR.W           R0, [R4,R0,LSL#2]
14E694:  CBZ             R0, loc_14E69C
14E696:  LDR             R1, [SP,#0x128+var_10]
14E698:  BL              sub_F7E88
14E69C:  ADD             R0, SP, #0x128+var_124
14E69E:  BL              sub_17D542
14E6A2:  ADD             SP, SP, #0x120
14E6A4:  POP             {R4,R6,R7,PC}
