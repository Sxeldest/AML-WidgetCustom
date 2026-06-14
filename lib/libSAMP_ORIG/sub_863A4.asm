; =========================================================
; Game Engine Function: sub_863A4
; Address            : 0x863A4 - 0x86476
; =========================================================

863A4:  PUSH            {R4-R7,LR}
863A6:  ADD             R7, SP, #0xC
863A8:  PUSH.W          {R11}
863AC:  MOV             R2, R0
863AE:  LDR             R0, =(byte_1ABE60 - 0x863B4)
863B0:  ADD             R0, PC; byte_1ABE60
863B2:  LDRB            R0, [R0]
863B4:  CBZ             R0, loc_86400
863B6:  LDR             R6, =(dword_1ABE64 - 0x863BC)
863B8:  ADD             R6, PC; dword_1ABE64
863BA:  LDRD.W          R1, R4, [R6]
863BE:  SUBS            R0, R4, R1
863C0:  BEQ             loc_863EA
863C2:  MOVW            R3, #0xAAAB
863C6:  ADDS            R1, #0x10
863C8:  MOVT            R3, #0x2AAA
863CC:  MOVS            R5, #0
863CE:  SMMUL.W         R0, R0, R3
863D2:  ASRS            R3, R0, #2
863D4:  ADD.W           R0, R3, R0,LSR#31
863D8:  CMP             R0, #1
863DA:  IT LS
863DC:  MOVLS           R0, #1
863DE:  LDR             R3, [R1]
863E0:  CBZ             R3, loc_86416
863E2:  ADDS            R5, #1
863E4:  ADDS            R1, #0x18
863E6:  CMP             R0, R5
863E8:  BNE             loc_863DE
863EA:  LDR             R0, [R6,#(dword_1ABE6C - 0x1ABE64)]
863EC:  CMP             R4, R0
863EE:  BCS             loc_86406
863F0:  MOV             R0, R2
863F2:  LDR.W           R1, [R0,#0x10]!
863F6:  CBZ             R1, loc_86432
863F8:  CMP             R2, R1
863FA:  BEQ             loc_8643C
863FC:  STR             R1, [R4,#0x10]
863FE:  B               loc_86436
86400:  MOV.W           R5, #0xFFFFFFFF
86404:  B               loc_86460
86406:  LDR             R4, =(dword_1ABE64 - 0x8640C)
86408:  ADD             R4, PC; dword_1ABE64
8640A:  MOV             R0, R4
8640C:  MOV             R1, R2
8640E:  BL              sub_7FB88
86412:  LDR             R0, [R4,#(dword_1ABE68 - 0x1ABE64)]
86414:  B               loc_8644E
86416:  MOVS            R0, #0
86418:  MOV             R6, R1
8641A:  STR.W           R0, [R6],#-0x10
8641E:  MOV             R3, R2
86420:  LDR.W           R4, [R3,#0x10]!
86424:  CBZ             R4, loc_8642E
86426:  CMP             R2, R4
86428:  BEQ             loc_86468
8642A:  STR             R4, [R1]
8642C:  MOV             R1, R3
8642E:  STR             R0, [R1]
86430:  B               loc_86460
86432:  ADD.W           R0, R4, #0x10
86436:  MOVS            R1, #0
86438:  STR             R1, [R0]
8643A:  B               loc_86448
8643C:  STR             R4, [R4,#0x10]
8643E:  LDR             R0, [R0]
86440:  LDR             R1, [R0]
86442:  LDR             R2, [R1,#0xC]
86444:  MOV             R1, R4
86446:  BLX             R2
86448:  ADD.W           R0, R4, #0x18
8644C:  STR             R0, [R6,#(dword_1ABE68 - 0x1ABE64)]
8644E:  LDR             R1, [R6]
86450:  SUBS            R0, R0, R1
86452:  MOV             R1, #0xAAAAAAAB
8645A:  ASRS            R0, R0, #3
8645C:  MULS            R0, R1
8645E:  SUBS            R5, R0, #1
86460:  MOV             R0, R5
86462:  POP.W           {R11}
86466:  POP             {R4-R7,PC}
86468:  STR.W           R6, [R1],#-0x10
8646C:  LDR             R0, [R3]
8646E:  LDR             R2, [R0]
86470:  LDR             R2, [R2,#0xC]
86472:  BLX             R2
86474:  B               loc_86460
