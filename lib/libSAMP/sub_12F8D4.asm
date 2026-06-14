; =========================================================
; Game Engine Function: sub_12F8D4
; Address            : 0x12F8D4 - 0x12F95E
; =========================================================

12F8D4:  PUSH            {R4-R7,LR}
12F8D6:  ADD             R7, SP, #0xC
12F8D8:  PUSH.W          {R11}
12F8DC:  MOV             R4, R0
12F8DE:  LDR             R0, =(off_234A24 - 0x12F8E4)
12F8E0:  ADD             R0, PC; off_234A24
12F8E2:  LDR             R0, [R0]; dword_23DEEC
12F8E4:  LDR             R0, [R0]
12F8E6:  LDR             R0, [R0,#0x74]
12F8E8:  LDRB.W          R0, [R0,#0x50]
12F8EC:  CBNZ            R0, loc_12F958
12F8EE:  LDR.W           R0, [R4,#0x88]
12F8F2:  CBZ             R0, loc_12F958
12F8F4:  LDR             R5, [R4,#0x5C]
12F8F6:  CBZ             R5, loc_12F90E
12F8F8:  LDRB.W          R0, [R5,#0x50]
12F8FC:  CBZ             R0, loc_12F908
12F8FE:  LDR             R0, [R5]
12F900:  MOVS            R1, #0
12F902:  LDR             R2, [R0,#0x24]
12F904:  MOV             R0, R5
12F906:  BLX             R2
12F908:  MOVS            R0, #0
12F90A:  STRB.W          R0, [R5,#0x50]
12F90E:  LDR.W           R5, [R4,#0x84]
12F912:  LDR             R0, [R4,#0x70]
12F914:  STR             R0, [R4,#0x64]
12F916:  LDRB.W          R1, [R5,#0x50]
12F91A:  STR             R5, [R4,#0x5C]
12F91C:  CMP             R1, #1
12F91E:  BEQ             loc_12F92A
12F920:  LDR             R0, [R5]
12F922:  MOVS            R1, #1
12F924:  LDR             R2, [R0,#0x24]
12F926:  MOV             R0, R5
12F928:  BLX             R2
12F92A:  MOVS            R6, #1
12F92C:  STRB.W          R6, [R5,#0x50]
12F930:  LDRB.W          R0, [R4,#0x50]
12F934:  CMP             R0, #1
12F936:  BEQ             loc_12F942
12F938:  LDR             R0, [R4]
12F93A:  MOVS            R1, #1
12F93C:  LDR             R2, [R0,#0x24]
12F93E:  MOV             R0, R4
12F940:  BLX             R2
12F942:  LDR             R0, =(off_234970 - 0x12F94E)
12F944:  MOVS            R1, #0
12F946:  STRB.W          R6, [R4,#0x50]
12F94A:  ADD             R0, PC; off_234970
12F94C:  STR.W           R1, [R4,#0x88]
12F950:  LDR             R0, [R0]; dword_23DEF0
12F952:  LDR             R0, [R0]
12F954:  STRB.W          R1, [R0,#0x54]
12F958:  POP.W           {R11}
12F95C:  POP             {R4-R7,PC}
