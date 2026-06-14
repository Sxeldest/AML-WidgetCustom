; =========================================================
; Game Engine Function: INT123_open_stream
; Address            : 0x22F7D8 - 0x22F8A6
; =========================================================

22F7D8:  PUSH            {R4-R7,LR}
22F7DA:  ADD             R7, SP, #0xC
22F7DC:  PUSH.W          {R8}
22F7E0:  SUB             SP, SP, #8
22F7E2:  MOV             R8, R1
22F7E4:  MOV             R4, R0
22F7E6:  MOVW            R1, #0xB530
22F7EA:  MOV             R6, R2
22F7EC:  LDR             R0, [R4,R1]; p
22F7EE:  ADDS            R5, R4, R1
22F7F0:  CMP             R0, #0
22F7F2:  IT NE
22F7F4:  BLXNE           free
22F7F8:  MOVS            R0, #0
22F7FA:  CMP.W           R8, #0
22F7FE:  STR             R0, [R5]
22F800:  BEQ             loc_22F818
22F802:  MOV             R0, R8; file
22F804:  MOVS            R1, #0; oflag
22F806:  MOV.W           R2, #0x1B6
22F80A:  BLX             open
22F80E:  MOV             R6, R0
22F810:  CMP.W           R6, #0xFFFFFFFF
22F814:  BLE             loc_22F862
22F816:  MOVS            R0, #1
22F818:  MOVW            R1, #0xB2F4
22F81C:  MOV.W           R2, #0xFFFFFFFF
22F820:  STR             R0, [R4,R1]
22F822:  MOVW            R0, #0xB2EC
22F826:  MOVW            R1, #0xB2E4
22F82A:  STR             R6, [R4,R0]
22F82C:  MOVW            R0, #0xB448
22F830:  LDR             R0, [R4,R0]
22F832:  STR             R2, [R4,R1]
22F834:  CMP             R0, #1
22F836:  BLT             loc_22F84E
22F838:  LDR             R1, =(off_685330 - 0x22F848)
22F83A:  MOVW            R2, #0xB538
22F83E:  STR             R0, [R4,R2]
22F840:  MOVW            R2, #0xB534
22F844:  ADD             R1, PC; off_685330
22F846:  STR             R0, [R4,R2]
22F848:  ADD.W           R0, R1, #0x30 ; '0'
22F84C:  B               loc_22F852
22F84E:  LDR             R0, =(off_685330 - 0x22F854)
22F850:  ADD             R0, PC; off_685330
22F852:  MOVW            R1, #0xB2E0
22F856:  STR             R0, [R4,R1]
22F858:  LDR             R1, [R0]
22F85A:  MOV             R0, R4
22F85C:  BLX             R1; sub_23B830
22F85E:  ASRS            R0, R0, #0x1F
22F860:  B               loc_22F878
22F862:  MOVW            R0, #0xB33C
22F866:  LDRB            R0, [R4,R0]
22F868:  LSLS            R0, R0, #0x1A
22F86A:  BPL             loc_22F880
22F86C:  MOVW            R0, #0xB468
22F870:  MOVS            R1, #0x16
22F872:  STR             R1, [R4,R0]
22F874:  MOV.W           R0, #0xFFFFFFFF
22F878:  ADD             SP, SP, #8
22F87A:  POP.W           {R8}
22F87E:  POP             {R4-R7,PC}
22F880:  LDR             R0, =(off_677664 - 0x22F886)
22F882:  ADD             R0, PC; off_677664
22F884:  LDR             R0, [R0]
22F886:  LDR             R6, [R0]
22F888:  BLX             __errno
22F88C:  LDR             R0, [R0]; int
22F88E:  BLX             strerror
22F892:  LDR             R1, =(aCProjectsOswra_34 - 0x22F8A0); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22F894:  MOVW            R2, #0x431
22F898:  STR             R0, [SP,#0x18+var_18]
22F89A:  MOV             R0, R6; stream
22F89C:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
22F89E:  MOV             R3, R8
22F8A0:  BLX             fprintf
22F8A4:  B               loc_22F86C
