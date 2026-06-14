; =========================================================
; Game Engine Function: _ZN10Interior_c18FindFirstEmptyTileEiii
; Address            : 0x447A9E - 0x447B18
; =========================================================

447A9E:  PUSH            {R4,R5,R7,LR}
447AA0:  ADD             R7, SP, #8
447AA2:  LDR             R4, [R0,#0x14]
447AA4:  MOV.W           R12, #1
447AA8:  CMP             R3, #0
447AAA:  IT EQ
447AAC:  MOVEQ.W         R12, #0xFFFFFFFF
447AB0:  CMP             R3, #3
447AB2:  LDRB.W          LR, [R4,#2]
447AB6:  ORR.W           R3, R3, #2
447ABA:  LDRB            R4, [R4,#3]
447ABC:  IT EQ
447ABE:  MOVEQ.W         R12, #0xFFFFFFFF
447AC2:  CMP             R3, #3
447AC4:  BNE             loc_447AF4
447AC6:  RSB.W           R3, R1, R1,LSL#4
447ACA:  ADD.W           R3, R2, R3,LSL#1
447ACE:  ADD             R0, R3
447AD0:  RSB.W           R3, R12, R12,LSL#4
447AD4:  ADDS            R0, #0x68 ; 'h'
447AD6:  LSLS            R3, R3, #1
447AD8:  CMP             R1, LR
447ADA:  BCC             loc_447AE4
447ADC:  ADD             R0, R3
447ADE:  ADD             R1, R12
447AE0:  CMP             R1, LR
447AE2:  BCS             loc_447ADC
447AE4:  CMP             R4, R2
447AE6:  BLS             loc_447ADC
447AE8:  LDRB            R5, [R0]
447AEA:  CMP             R5, #0
447AEC:  BNE             loc_447ADC
447AEE:  MOV             R2, R1
447AF0:  MOV             R0, R2
447AF2:  POP             {R4,R5,R7,PC}
447AF4:  RSB.W           R3, R1, R1,LSL#4
447AF8:  ADD.W           R0, R0, R3,LSL#1
447AFC:  CMP             LR, R1
447AFE:  BHI             loc_447B06
447B00:  ADD             R2, R12
447B02:  CMP             LR, R1
447B04:  BLS             loc_447B00
447B06:  CMP             R2, R4
447B08:  BCS             loc_447B00
447B0A:  ADDS            R3, R0, R2
447B0C:  LDRB.W          R3, [R3,#0x68]
447B10:  CMP             R3, #0
447B12:  BNE             loc_447B00
447B14:  MOV             R0, R2
447B16:  POP             {R4,R5,R7,PC}
