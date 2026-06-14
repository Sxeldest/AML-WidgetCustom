; =========================================================
; Game Engine Function: sub_105378
; Address            : 0x105378 - 0x105404
; =========================================================

105378:  PUSH            {R4-R7,LR}
10537A:  ADD             R7, SP, #0xC
10537C:  PUSH.W          {R8}
105380:  SUB             SP, SP, #8
105382:  MOV             R5, R0
105384:  LDR             R0, [R0,#0x5C]
105386:  CBZ             R0, loc_1053EE
105388:  MOV             R0, R1
10538A:  MOV             R6, R2
10538C:  MOV             R8, R1
10538E:  BL              sub_108354
105392:  CBZ             R0, loc_1053EE
105394:  MOV             R4, R0
105396:  LDR             R0, [R5,#8]
105398:  BL              sub_1082F4
10539C:  CBZ             R0, loc_1053EE
10539E:  LDR             R0, =(byte_25C9D4 - 0x1053A6)
1053A0:  MOVS            R1, #1
1053A2:  ADD             R0, PC; byte_25C9D4
1053A4:  STRB            R1, [R0]
1053A6:  MOV             R0, R5
1053A8:  BL              sub_104648
1053AC:  CMP             R0, #0x2E ; '.'
1053AE:  BNE             loc_1053BA
1053B0:  MOV             R0, R5
1053B2:  MOVS            R1, #0
1053B4:  MOVS            R2, #0
1053B6:  BL              sub_10479C
1053BA:  CBZ             R6, loc_1053DE
1053BC:  LDRH            R0, [R4,#0x26]
1053BE:  MOVW            R1, #0x23A
1053C2:  CMP             R0, R1
1053C4:  BNE             loc_1053D0
1053C6:  LDR             R4, [R5,#0x5C]
1053C8:  BL              sub_1082E4
1053CC:  CMP             R4, R0
1053CE:  BEQ             loc_1053F6
1053D0:  LDR             R1, [R5,#8]
1053D2:  MOV.W           R2, #0xFFFFFFFF
1053D6:  LDR             R0, =(unk_B3866 - 0x1053DE)
1053D8:  STR             R2, [SP,#0x18+var_18]
1053DA:  ADD             R0, PC; unk_B3866
1053DC:  B               loc_1053E4
1053DE:  LDR             R0, =(unk_B387A - 0x1053E6)
1053E0:  LDR             R1, [R5,#8]
1053E2:  ADD             R0, PC; unk_B387A
1053E4:  MOV             R2, R8
1053E6:  MOVW            R3, #0xBB8
1053EA:  BL              sub_107188
1053EE:  ADD             SP, SP, #8
1053F0:  POP.W           {R8}
1053F4:  POP             {R4-R7,PC}
1053F6:  LDR             R0, =(unk_B382A - 0x105404)
1053F8:  MOV             R2, R8
1053FA:  LDR             R1, [R5,#8]
1053FC:  MOV.W           R3, #0xFFFFFFFF
105400:  ADD             R0, PC; unk_B382A
105402:  B               loc_1053EA
