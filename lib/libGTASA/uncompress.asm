; =========================================================
; Game Engine Function: uncompress
; Address            : 0x210EC0 - 0x210F16
; =========================================================

210EC0:  PUSH            {R4,R5,R7,LR}
210EC2:  ADD             R7, SP, #8
210EC4:  SUB             SP, SP, #0x38
210EC6:  STRD.W          R2, R3, [SP,#0x40+var_40]
210ECA:  MOV             R4, R1
210ECC:  STR             R0, [SP,#0x40+var_34]
210ECE:  MOVS            R1, #0
210ED0:  LDR             R0, [R4]
210ED2:  MOVS            R2, #0x38 ; '8'
210ED4:  STR             R0, [SP,#0x40+var_30]
210ED6:  MOV             R0, SP
210ED8:  STRD.W          R1, R1, [SP,#0x40+var_20]
210EDC:  ADR             R1, a113_2; "1.1.3"
210EDE:  BLX             j_inflateInit_
210EE2:  MOV             R5, R0
210EE4:  CBNZ            R5, loc_210F10
210EE6:  MOV             R0, SP
210EE8:  MOVS            R1, #4
210EEA:  BLX             j_inflate
210EEE:  MOV             R5, R0
210EF0:  CMP             R5, #1
210EF2:  BNE             loc_210F02
210EF4:  LDR             R0, [SP,#0x40+var_2C]
210EF6:  STR             R0, [R4]
210EF8:  MOV             R0, SP
210EFA:  BLX             j_inflateEnd
210EFE:  MOV             R5, R0
210F00:  B               loc_210F10
210F02:  MOV             R0, SP
210F04:  BLX             j_inflateEnd
210F08:  CMP             R5, #0
210F0A:  IT EQ
210F0C:  MOVEQ           R5, #0xFFFFFFFB
210F10:  MOV             R0, R5
210F12:  ADD             SP, SP, #0x38 ; '8'
210F14:  POP             {R4,R5,R7,PC}
