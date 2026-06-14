; =========================================================
; Game Engine Function: sub_11EDC8
; Address            : 0x11EDC8 - 0x11EE5A
; =========================================================

11EDC8:  PUSH            {R4-R7,LR}
11EDCA:  ADD             R7, SP, #0xC
11EDCC:  PUSH.W          {R8-R10}
11EDD0:  MOV             R10, R0
11EDD2:  MOVW            R0, #0x8C4; unsigned int
11EDD6:  MOV             R9, R2
11EDD8:  MOV             R8, R1
11EDDA:  BLX             j__Znwj; operator new(uint)
11EDDE:  MOV             R6, R0
11EDE0:  MOVS            R5, #0
11EDE2:  ADDS            R0, R6, R5; int
11EDE4:  MOVS            R1, #0x41 ; 'A'; n
11EDE6:  BLX             sub_22178C
11EDEA:  ADDS            R5, #0x44 ; 'D'
11EDEC:  CMP.W           R5, #0x220
11EDF0:  BNE             loc_11EDE2
11EDF2:  MOVS            R0, #0
11EDF4:  MOV.W           R5, #0x264
11EDF8:  MOVW            R4, #0x8C4
11EDFC:  STR.W           R0, [R6,#0x220]
11EE00:  ADDS            R0, R6, R5; int
11EE02:  MOVS            R1, #0x41 ; 'A'; n
11EE04:  BLX             sub_22178C
11EE08:  ADDS            R5, #0x44 ; 'D'
11EE0A:  CMP             R5, R4
11EE0C:  BNE             loc_11EE00
11EE0E:  LDR             R0, =(off_23494C - 0x11EE14)
11EE10:  ADD             R0, PC; off_23494C
11EE12:  LDR             R5, [R0]; dword_23DF24
11EE14:  LDR             R0, [R5]
11EE16:  ADD.W           R2, R0, R10
11EE1A:  LDR.W           R1, [R0,R10]
11EE1E:  LDR             R3, [R2,#4]
11EE20:  STR             R1, [R6]
11EE22:  MOVW            R1, #0xA110
11EE26:  STR             R3, [R6,#4]
11EE28:  MOVT            R1, #0x67 ; 'g'
11EE2C:  LDR             R3, [R0,R1]
11EE2E:  LDR.W           R4, [R2,#0x220]
11EE32:  STR.W           R4, [R6,#0x220]
11EE36:  CMP             R3, R2
11EE38:  IT EQ
11EE3A:  STREQ           R6, [R0,R1]
11EE3C:  ADD             R0, R9
11EE3E:  BL              sub_1641C4
11EE42:  LDR             R0, [R5]
11EE44:  STR.W           R6, [R0,R9]
11EE48:  ADD             R0, R8
11EE4A:  BL              sub_1641C4
11EE4E:  LDR             R0, [R5]
11EE50:  STR.W           R6, [R0,R8]
11EE54:  POP.W           {R8-R10}
11EE58:  POP             {R4-R7,PC}
