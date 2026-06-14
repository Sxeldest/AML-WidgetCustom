; =========================================================
; Game Engine Function: sub_21FDF0
; Address            : 0x21FDF0 - 0x21FE42
; =========================================================

21FDF0:  PUSH            {R4,R6,R7,LR}
21FDF2:  ADD             R7, SP, #8
21FDF4:  CMP             R0, #0
21FDF6:  BMI             loc_21FDFC
21FDF8:  CMP             R0, #0xD
21FDFA:  BCC             loc_21FE08
21FDFC:  BLX             __errno
21FE00:  MOVS            R1, #0x16
21FE02:  STR             R1, [R0]
21FE04:  MOVS            R0, #0
21FE06:  POP             {R4,R6,R7,PC}
21FE08:  MOV             R4, R1
21FE0A:  CBZ             R1, loc_21FE24
21FE0C:  MOV             R0, R4; s1
21FE0E:  BL              sub_21FD7C
21FE12:  CBZ             R0, loc_21FE3A
21FE14:  MOV             R0, R4
21FE16:  BL              sub_21FDD0
21FE1A:  MOV             R1, R0
21FE1C:  LDR             R0, =(byte_23CAAC - 0x21FE22)
21FE1E:  ADD             R0, PC; byte_23CAAC
21FE20:  STRB            R1, [R0]
21FE22:  B               loc_21FE2A
21FE24:  LDR             R0, =(byte_23CAAC - 0x21FE2A)
21FE26:  ADD             R0, PC; byte_23CAAC
21FE28:  LDRB            R1, [R0]
21FE2A:  LDR             R2, =(unk_84F93 - 0x21FE34)
21FE2C:  CMP             R1, #0
21FE2E:  LDR             R0, =(aCUtf8 - 0x21FE36); "C.UTF-8" ...
21FE30:  ADD             R2, PC; unk_84F93
21FE32:  ADD             R0, PC; "C.UTF-8"
21FE34:  IT EQ
21FE36:  MOVEQ           R0, R2
21FE38:  POP             {R4,R6,R7,PC}
21FE3A:  BLX             __errno
21FE3E:  MOVS            R1, #2
21FE40:  B               loc_21FE02
