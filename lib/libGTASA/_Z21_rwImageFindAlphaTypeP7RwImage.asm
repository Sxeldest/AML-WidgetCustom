; =========================================================
; Game Engine Function: _Z21_rwImageFindAlphaTypeP7RwImage
; Address            : 0x1AA15C - 0x1AA1F8
; =========================================================

1AA15C:  PUSH            {R4-R7,LR}
1AA15E:  ADD             R7, SP, #0xC
1AA160:  PUSH.W          {R11}
1AA164:  LDRD.W          R1, LR, [R0,#4]
1AA168:  LDRD.W          R2, R12, [R0,#0xC]
1AA16C:  CMP             R2, #4
1AA16E:  BEQ             loc_1AA178
1AA170:  CMP             R2, #0x20 ; ' '
1AA172:  BEQ             loc_1AA1AE
1AA174:  CMP             R2, #8
1AA176:  BNE             loc_1AA1E0
1AA178:  CMP.W           LR, #1
1AA17C:  BLT             loc_1AA1E0
1AA17E:  LDRD.W          R2, R0, [R0,#0x14]
1AA182:  MOVS            R4, #0
1AA184:  MOVS            R3, #0
1AA186:  CMP             R1, #1
1AA188:  BLT             loc_1AA1A4
1AA18A:  MOVS            R5, #0
1AA18C:  LDRB            R6, [R2,R5]
1AA18E:  ADD.W           R6, R0, R6,LSL#2
1AA192:  LDRB            R6, [R6,#3]
1AA194:  CMP             R6, #0xEF
1AA196:  BHI             loc_1AA19E
1AA198:  CMP             R6, #0xF
1AA19A:  BHI             loc_1AA1F0
1AA19C:  MOVS            R3, #1
1AA19E:  ADDS            R5, #1
1AA1A0:  CMP             R5, R1
1AA1A2:  BLT             loc_1AA18C
1AA1A4:  ADDS            R4, #1
1AA1A6:  ADD             R2, R12
1AA1A8:  CMP             R4, LR
1AA1AA:  BLT             loc_1AA186
1AA1AC:  B               loc_1AA1E2
1AA1AE:  CMP.W           LR, #1
1AA1B2:  BLT             loc_1AA1E0
1AA1B4:  LDR             R0, [R0,#0x14]
1AA1B6:  MOVS            R2, #0
1AA1B8:  MOVS            R3, #0
1AA1BA:  CMP             R1, #1
1AA1BC:  BLT             loc_1AA1D6
1AA1BE:  MOVS            R4, #0
1AA1C0:  ADD.W           R5, R0, R4,LSL#2
1AA1C4:  LDRB            R5, [R5,#3]
1AA1C6:  CMP             R5, #0xFF
1AA1C8:  BEQ             loc_1AA1D0
1AA1CA:  CMP             R5, #0xF
1AA1CC:  BHI             loc_1AA1F0
1AA1CE:  MOVS            R3, #1
1AA1D0:  ADDS            R4, #1
1AA1D2:  CMP             R4, R1
1AA1D4:  BLT             loc_1AA1C0
1AA1D6:  ADDS            R2, #1
1AA1D8:  ADD             R0, R12
1AA1DA:  CMP             R2, LR
1AA1DC:  BLT             loc_1AA1BA
1AA1DE:  B               loc_1AA1E2
1AA1E0:  MOVS            R3, #0
1AA1E2:  MOVS            R0, #2
1AA1E4:  CMP             R3, #0
1AA1E6:  IT EQ
1AA1E8:  MOVEQ           R0, #1
1AA1EA:  POP.W           {R11}
1AA1EE:  POP             {R4-R7,PC}
1AA1F0:  MOVS            R0, #3
1AA1F2:  POP.W           {R11}
1AA1F6:  POP             {R4-R7,PC}
