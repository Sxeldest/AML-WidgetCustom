; =========================================================
; Game Engine Function: sub_21C2F0
; Address            : 0x21C2F0 - 0x21C348
; =========================================================

21C2F0:  PUSH            {R4,R5,R7,LR}
21C2F2:  ADD             R7, SP, #8
21C2F4:  MOV             R5, R0
21C2F6:  LDRB            R0, [R0,#0x10]
21C2F8:  MOV             R4, R1
21C2FA:  CBZ             R0, loc_21C316
21C2FC:  MOV             R0, R4
21C2FE:  MOVS            R1, #0x5B ; '['
21C300:  BL              sub_2154F2
21C304:  LDR             R0, [R5,#8]
21C306:  MOV             R1, R4
21C308:  BL              sub_2154CC
21C30C:  MOV             R0, R4
21C30E:  MOVS            R1, #0x5D ; ']'
21C310:  BL              sub_2154F2
21C314:  B               loc_21C326
21C316:  MOV             R0, R4
21C318:  MOVS            R1, #0x2E ; '.'
21C31A:  BL              sub_2154F2
21C31E:  LDR             R0, [R5,#8]
21C320:  MOV             R1, R4
21C322:  BL              sub_2154CC
21C326:  LDR             R0, [R5,#0xC]
21C328:  LDRB            R1, [R0,#4]
21C32A:  SUBS            R1, #0x49 ; 'I'
21C32C:  CMP             R1, #2
21C32E:  BCC             loc_21C33E
21C330:  LDR             R1, =(asc_8675D - 0x21C338); " = " ...
21C332:  MOV             R0, R4
21C334:  ADD             R1, PC; " = "
21C336:  ADDS            R2, R1, #3
21C338:  BL              sub_216F98
21C33C:  LDR             R0, [R5,#0xC]
21C33E:  MOV             R1, R4
21C340:  POP.W           {R4,R5,R7,LR}
21C344:  B.W             sub_2154CC
