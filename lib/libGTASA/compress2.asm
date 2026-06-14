; =========================================================
; Game Engine Function: compress2
; Address            : 0x20A8C8 - 0x20A926
; =========================================================

20A8C8:  PUSH            {R4,R5,R7,LR}
20A8CA:  ADD             R7, SP, #8
20A8CC:  SUB             SP, SP, #0x38
20A8CE:  LDR             R5, =(a113_3 - 0x20A8DE); "1.1.3"
20A8D0:  MOV             R4, R1
20A8D2:  STRD.W          R2, R3, [SP,#0x40+var_40]
20A8D6:  MOVS            R2, #0
20A8D8:  STR             R0, [SP,#0x40+var_34]
20A8DA:  ADD             R5, PC; "1.1.3"
20A8DC:  LDR             R1, [R7,#arg_0]
20A8DE:  MOVS            R3, #0x38 ; '8'
20A8E0:  LDR             R0, [R4]
20A8E2:  STR             R0, [SP,#0x40+var_30]
20A8E4:  MOV             R0, SP
20A8E6:  STRD.W          R2, R2, [SP,#0x40+var_20]
20A8EA:  STR             R2, [SP,#0x40+var_18]
20A8EC:  MOV             R2, R5
20A8EE:  BLX             j_deflateInit_
20A8F2:  MOV             R5, R0
20A8F4:  CBNZ            R5, loc_20A920
20A8F6:  MOV             R0, SP
20A8F8:  MOVS            R1, #4
20A8FA:  BLX             j_deflate
20A8FE:  MOV             R5, R0
20A900:  CMP             R5, #1
20A902:  BNE             loc_20A912
20A904:  LDR             R0, [SP,#0x40+var_2C]
20A906:  STR             R0, [R4]
20A908:  MOV             R0, SP
20A90A:  BLX             j_deflateEnd
20A90E:  MOV             R5, R0
20A910:  B               loc_20A920
20A912:  MOV             R0, SP
20A914:  BLX             j_deflateEnd
20A918:  CMP             R5, #0
20A91A:  IT EQ
20A91C:  MOVEQ           R5, #0xFFFFFFFB
20A920:  MOV             R0, R5
20A922:  ADD             SP, SP, #0x38 ; '8'
20A924:  POP             {R4,R5,R7,PC}
