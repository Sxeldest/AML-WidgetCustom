; =========================================================
; Game Engine Function: sub_138CD2
; Address            : 0x138CD2 - 0x138D34
; =========================================================

138CD2:  PUSH            {R4-R7,LR}
138CD4:  ADD             R7, SP, #0xC
138CD6:  PUSH.W          {R11}
138CDA:  LDRB            R0, [R2]
138CDC:  LDRB            R3, [R1]
138CDE:  LDR             R4, [R2,#4]
138CE0:  ANDS.W          LR, R0, #1
138CE4:  LDR             R5, [R1,#4]
138CE6:  IT EQ
138CE8:  LSREQ           R4, R0, #1
138CEA:  ANDS.W          R6, R3, #1
138CEE:  IT EQ
138CF0:  LSREQ           R5, R3, #1
138CF2:  CMP             R4, R5
138CF4:  MOV             R3, R5
138CF6:  IT CC
138CF8:  MOVCC           R3, R4
138CFA:  CBZ             R3, loc_138D1C
138CFC:  LDR             R0, [R1,#8]
138CFE:  CMP             R6, #0
138D00:  LDR.W           R12, [R2,#8]
138D04:  IT EQ
138D06:  ADDEQ           R0, R1, #1; s1
138D08:  CMP.W           LR, #0
138D0C:  IT EQ
138D0E:  ADDEQ.W         R12, R2, #1
138D12:  MOV             R1, R12; s2
138D14:  MOV             R2, R3; n
138D16:  BLX             memcmp
138D1A:  CBNZ            R0, loc_138D2C
138D1C:  MOVS            R0, #0
138D1E:  CMP             R4, R5
138D20:  IT CC
138D22:  MOVCC           R0, #1
138D24:  CMP             R5, R4
138D26:  IT CC
138D28:  MOVCC.W         R0, #0xFFFFFFFF
138D2C:  LSRS            R0, R0, #0x1F
138D2E:  POP.W           {R11}
138D32:  POP             {R4-R7,PC}
