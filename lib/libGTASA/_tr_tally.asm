; =========================================================
; Game Engine Function: _tr_tally
; Address            : 0x210A98 - 0x210B38
; =========================================================

210A98:  PUSH            {R4,R5,R7,LR}
210A9A:  ADD             R7, SP, #8
210A9C:  MOVW            R3, #0x169C
210AA0:  MOVW            R12, #0x1698
210AA4:  LDR.W           LR, [R0,R12]
210AA8:  CMP             R1, #0
210AAA:  LDR             R3, [R0,R3]
210AAC:  STRH.W          R1, [R3,LR,LSL#1]
210AB0:  MOVW            R3, #0x1690
210AB4:  LDR.W           LR, [R0,R12]
210AB8:  LDR             R3, [R0,R3]
210ABA:  ADD.W           R4, LR, #1
210ABE:  STR.W           R4, [R0,R12]
210AC2:  STRB.W          R2, [R3,LR]
210AC6:  ADD.W           LR, R0, R12
210ACA:  BEQ             loc_210B16
210ACC:  LDR.W           R12, =(_length_code_ptr - 0x210ADE)
210AD0:  MOVW            R4, #0x16A8
210AD4:  LDR             R3, [R0,R4]
210AD6:  SUBS            R1, #1
210AD8:  LDR             R5, =(_dist_code_ptr - 0x210AE2)
210ADA:  ADD             R12, PC; _length_code_ptr
210ADC:  ADDS            R3, #1
210ADE:  ADD             R5, PC; _dist_code_ptr
210AE0:  STR             R3, [R0,R4]
210AE2:  CMP.W           R1, #0x100
210AE6:  LDR.W           R3, [R12]; _length_code
210AEA:  MOV.W           R4, #0x100
210AEE:  LDR             R5, [R5]; _dist_code
210AF0:  IT CS
210AF2:  ADDCS.W         R1, R4, R1,LSR#7
210AF6:  LDRB            R2, [R3,R2]
210AF8:  LDRB            R1, [R5,R1]
210AFA:  ORR.W           R2, R2, #0x100
210AFE:  ADD.W           R2, R0, R2,LSL#2
210B02:  ADD.W           R1, R0, R1,LSL#2
210B06:  ADD.W           R1, R1, #0x980
210B0A:  LDRH.W          R3, [R2,#0x90]
210B0E:  ADDS            R3, #1
210B10:  STRH.W          R3, [R2,#0x90]
210B14:  B               loc_210B1C
210B16:  ADD.W           R1, R0, R2,LSL#2
210B1A:  ADDS            R1, #0x8C
210B1C:  LDRH            R2, [R1]
210B1E:  ADDS            R2, #1
210B20:  STRH            R2, [R1]
210B22:  MOVW            R1, #0x1694
210B26:  LDR             R0, [R0,R1]
210B28:  LDR.W           R1, [LR]
210B2C:  SUBS            R2, R0, #1
210B2E:  MOVS            R0, #0
210B30:  CMP             R1, R2
210B32:  IT EQ
210B34:  MOVEQ           R0, #1
210B36:  POP             {R4,R5,R7,PC}
