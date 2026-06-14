; =========================================================
; Game Engine Function: sub_144712
; Address            : 0x144712 - 0x1447DA
; =========================================================

144712:  PUSH            {R4-R7,LR}
144714:  ADD             R7, SP, #0xC
144716:  PUSH.W          {R8}
14471A:  SUB             SP, SP, #0x120
14471C:  MOV             R4, R0
14471E:  LDR.W           R0, [R0,#0x218]
144722:  CMP             R0, #5
144724:  BNE             loc_1447D2
144726:  ADD             R0, SP, #0x130+var_128
144728:  MOV             R8, R3
14472A:  MOV             R6, R2
14472C:  MOV             R5, R1
14472E:  BL              sub_17D4A8
144732:  MOVS            R1, #0xDC
144734:  STRB.W          R1, [SP,#0x130+var_14]
144738:  ADD             R1, SP, #0x130+var_14
14473A:  MOVS            R2, #8
14473C:  MOVS            R3, #1
14473E:  BL              sub_17D628
144742:  MOVS            R0, #0x3F ; '?'
144744:  STRB.W          R0, [SP,#0x130+var_14]
144748:  ADD             R0, SP, #0x130+var_128
14474A:  ADD             R1, SP, #0x130+var_14
14474C:  MOVS            R2, #8
14474E:  MOVS            R3, #1
144750:  BL              sub_17D628
144754:  STRB.W          R5, [SP,#0x130+var_14]
144758:  ADD             R0, SP, #0x130+var_128
14475A:  ADD             R1, SP, #0x130+var_14
14475C:  MOVS            R2, #8
14475E:  MOVS            R3, #1
144760:  BL              sub_17D628
144764:  STR             R6, [SP,#0x130+var_14]
144766:  ADD             R0, SP, #0x130+var_128
144768:  ADD             R1, SP, #0x130+var_14
14476A:  MOVS            R2, #0x20 ; ' '
14476C:  MOVS            R3, #1
14476E:  BL              sub_17D628
144772:  STR.W           R8, [SP,#0x130+var_14]
144776:  ADD             R0, SP, #0x130+var_128
144778:  ADD             R1, SP, #0x130+var_14
14477A:  MOVS            R2, #0x20 ; ' '
14477C:  MOVS            R3, #1
14477E:  BL              sub_17D628
144782:  LDR             R5, [R7,#arg_0]
144784:  LDRB            R0, [R5]
144786:  LDR             R1, [R5,#4]
144788:  LSLS            R2, R0, #0x1F
14478A:  IT EQ
14478C:  LSREQ           R1, R0, #1
14478E:  STR             R1, [SP,#0x130+var_14]
144790:  ADD             R0, SP, #0x130+var_128
144792:  ADD             R1, SP, #0x130+var_14
144794:  MOVS            R2, #0x20 ; ' '
144796:  MOVS            R3, #1
144798:  BL              sub_17D628
14479C:  LDRB            R1, [R5]
14479E:  LDR             R2, [R5,#4]
1447A0:  ANDS.W          R0, R1, #1
1447A4:  IT EQ
1447A6:  LSREQ           R2, R1, #1
1447A8:  CBZ             R2, loc_1447B8
1447AA:  LDR             R1, [R5,#8]
1447AC:  CMP             R0, #0
1447AE:  IT EQ
1447B0:  ADDEQ           R1, R5, #1
1447B2:  ADD             R0, SP, #0x130+var_128
1447B4:  BL              sub_17D566
1447B8:  LDR.W           R0, [R4,#0x210]
1447BC:  LDR             R1, [R0]
1447BE:  LDR             R6, [R1,#0x20]
1447C0:  MOVS            R1, #6
1447C2:  MOVS            R2, #2
1447C4:  STR             R1, [SP,#0x130+var_130]
1447C6:  ADD             R1, SP, #0x130+var_128
1447C8:  MOVS            R3, #9
1447CA:  BLX             R6
1447CC:  ADD             R0, SP, #0x130+var_128
1447CE:  BL              sub_17D542
1447D2:  ADD             SP, SP, #0x120
1447D4:  POP.W           {R8}
1447D8:  POP             {R4-R7,PC}
