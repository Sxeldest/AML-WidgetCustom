; =========================================================
; Game Engine Function: encode_pulses
; Address            : 0xC1A94 - 0xC1B5A
; =========================================================

C1A94:  PUSH            {R4-R7,LR}
C1A96:  ADD             R7, SP, #0xC
C1A98:  PUSH.W          {R8-R10}
C1A9C:  ADD.W           R6, R0, R1,LSL#2
C1AA0:  LDR.W           R9, =(off_111870 - 0xC1AB4)
C1AA4:  LDR.W           R8, =(off_111870 - 0xC1AB6)
C1AA8:  SUB.W           R10, R0, #8
C1AAC:  LDR.W           R6, [R6,#-4]
C1AB0:  ADD             R9, PC; off_111870
C1AB2:  ADD             R8, PC; off_111870
C1AB4:  MOVS            R4, #2
C1AB6:  CMP             R6, #0
C1AB8:  MOV             LR, R6
C1ABA:  MOV.W           R12, R6,LSR#31
C1ABE:  IT MI
C1AC0:  RSBMI.W         LR, R6, #0
C1AC4:  MOV             R6, R1
C1AC6:  CMP             R4, LR
C1AC8:  MOV             R0, LR
C1ACA:  IT LT
C1ACC:  MOVLT           R0, R4
C1ACE:  MOV             R5, LR
C1AD0:  LDR.W           R0, [R9,R0,LSL#2]
C1AD4:  IT GT
C1AD6:  MOVGT           R5, R4
C1AD8:  LDR.W           R0, [R0,R5,LSL#2]
C1ADC:  LDR.W           R5, [R10,R6,LSL#2]
C1AE0:  ADD             R12, R0
C1AE2:  CMP             R5, #0
C1AE4:  MOV             R0, R5
C1AE6:  IT MI
C1AE8:  NEGMI           R0, R5
C1AEA:  CMP.W           R5, #0xFFFFFFFF
C1AEE:  ADD             LR, R0
C1AF0:  BGT             loc_C1B0E
C1AF2:  ADD.W           R0, LR, #1
C1AF6:  CMP             R4, LR
C1AF8:  MOV             R5, R4
C1AFA:  IT GT
C1AFC:  MOVGT           R5, R0
C1AFE:  CMP             R4, R0
C1B00:  LDR.W           R5, [R8,R5,LSL#2]
C1B04:  IT GT
C1B06:  MOVGT           R0, R4
C1B08:  LDR.W           R0, [R5,R0,LSL#2]
C1B0C:  ADD             R12, R0
C1B0E:  SUBS            R6, #1
C1B10:  ADDS            R4, #1
C1B12:  CMP             R6, #1
C1B14:  BGT             loc_C1AC6
C1B16:  LDR             R0, =(off_111870 - 0xC1B22)
C1B18:  ADDS            R4, R2, #1
C1B1A:  CMP             R1, R2
C1B1C:  MOV             R6, R2
C1B1E:  ADD             R0, PC; off_111870
C1B20:  IT LT
C1B22:  MOVLT           R6, R1
C1B24:  CMP             R4, R1
C1B26:  MOV             R5, R4
C1B28:  IT GT
C1B2A:  MOVGT           R5, R1
C1B2C:  LDR.W           R6, [R0,R6,LSL#2]
C1B30:  CMP             R1, R2
C1B32:  LDR.W           R0, [R0,R5,LSL#2]
C1B36:  IT GT
C1B38:  MOVGT           R2, R1
C1B3A:  CMP             R4, R1
C1B3C:  LDR.W           R2, [R6,R2,LSL#2]
C1B40:  IT LT
C1B42:  MOVLT           R4, R1
C1B44:  LDR.W           R0, [R0,R4,LSL#2]
C1B48:  MOV             R1, R12
C1B4A:  ADD             R2, R0
C1B4C:  MOV             R0, R3
C1B4E:  POP.W           {R8-R10}
C1B52:  POP.W           {R4-R7,LR}
C1B56:  B.W             sub_10C1F4
