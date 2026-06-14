; =========================================================
; Game Engine Function: ec_laplace_encode
; Address            : 0x19A874 - 0x19A946
; =========================================================

19A874:  PUSH            {R4-R7,LR}
19A876:  ADD             R7, SP, #0xC
19A878:  PUSH.W          {R8,R9,R11}
19A87C:  LDR.W           LR, [R1]
19A880:  MOV.W           R12, #0
19A884:  CMP.W           LR, #0
19A888:  BEQ             loc_19A934
19A88A:  MOVW            R4, #0x7FE0
19A88E:  RSB.W           R5, R3, #0x4000
19A892:  SUBS            R4, R4, R2
19A894:  MULS            R5, R4
19A896:  ADD.W           R4, LR, LR,ASR#31
19A89A:  EOR.W           R9, R4, LR,ASR#31
19A89E:  CMP.W           R12, R5,LSR#15
19A8A2:  MOV.W           R6, R5,LSR#15
19A8A6:  IT EQ
19A8A8:  MOVEQ.W         R12, #1
19A8AC:  MOVS            R5, #1
19A8AE:  CMP.W           R9, #2
19A8B2:  BLT             loc_19A8E2
19A8B4:  CBZ             R6, loc_19A8E2
19A8B6:  MOVS            R5, #1
19A8B8:  MOV.W           R8, #0
19A8BC:  LSLS            R4, R6, #1
19A8BE:  ADD.W           R2, R2, R6,LSL#1
19A8C2:  MULS            R4, R3
19A8C4:  MOV.W           R12, #0
19A8C8:  ADDS            R2, #2
19A8CA:  ADDS            R5, #1
19A8CC:  CMP.W           R8, R4,LSR#15
19A8D0:  MOV.W           R6, R4,LSR#15
19A8D4:  IT EQ
19A8D6:  MOVEQ.W         R12, #1
19A8DA:  CMP             R9, R5
19A8DC:  BLE             loc_19A8E2
19A8DE:  CMP             R6, #0
19A8E0:  BNE             loc_19A8BC
19A8E2:  MOV.W           R3, LR,ASR#31
19A8E6:  CMP.W           R12, #1
19A8EA:  BNE             loc_19A928
19A8EC:  MOV.W           R6, #0x8000
19A8F0:  MOV.W           R4, #0xFFFFFFFF
19A8F4:  ORR.W           R6, R6, LR,LSR#31
19A8F8:  SUBS            R6, R6, R2
19A8FA:  ADD             R2, R3
19A8FC:  ADD.W           R6, R4, R6,ASR#1
19A900:  SUB.W           R4, R9, R5
19A904:  CMP             R4, R6
19A906:  ADD             R5, R3
19A908:  IT LT
19A90A:  MOVLT           R6, R4
19A90C:  ADD             R5, R6
19A90E:  EORS            R5, R3
19A910:  STR             R5, [R1]
19A912:  MOVS            R1, #1
19A914:  ORR.W           R1, R1, R6,LSL#1
19A918:  ADD.W           R12, R2, R1
19A91C:  MOVS            R2, #0
19A91E:  CMP.W           R12, #0x8000
19A922:  IT NE
19A924:  MOVNE           R2, #1
19A926:  B               loc_19A934
19A928:  ADDS            R1, R6, #1
19A92A:  BIC.W           R3, R1, R3
19A92E:  ADD.W           R12, R3, R2
19A932:  MOV             R2, R1
19A934:  ADD             R2, R12
19A936:  MOV             R1, R12
19A938:  MOVS            R3, #0xF
19A93A:  POP.W           {R8,R9,R11}
19A93E:  POP.W           {R4-R7,LR}
19A942:  B.W             sub_224418
