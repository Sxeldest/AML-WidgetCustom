; =========================================================
; Game Engine Function: SetDefaultChannelOrder
; Address            : 0x1BABFC - 0x1BADF4
; =========================================================

1BABFC:  PUSH            {R4-R11,LR}
1BAC00:  ADD             R11, SP, #0x1C
1BAC04:  SUB             SP, SP, #4
1BAC08:  LDR             R7, [R0,#0x18]
1BAC0C:  MOV             R9, #5
1BAC10:  MOV             R10, #3
1BAC14:  MOV             LR, #4
1BAC18:  SUB             R3, R7, #0x1500; switch 7 cases
1BAC1C:  MOV             R2, #1
1BAC20:  MOV             R8, #2
1BAC24:  MOV             R1, #0
1BAC28:  CMP             R3, #6
1BAC2C:  BHI             def_1BAC50; jumptable 001BAC50 default case
1BAC30:  ADR             R4, jpt_1BAC50
1BAC34:  MOV             R3, R3,LSL#2
1BAC38:  MOV             R6, #1
1BAC3C:  MOV             R7, #0
1BAC40:  LDR             R5, [R3,R4]
1BAC44:  MOV             R3, #0
1BAC48:  STR             R3, [SP,#0x20+var_20]
1BAC4C:  MOV             R3, #1
1BAC50:  ADD             PC, R5, R4; switch jump
1BAC54:  DCD loc_1BADDC - 0x1BAC54; jump table for switch statement
1BAC58:  DCD loc_1BADC4 - 0x1BAC54; jumptable 001BAC50 case 5377
1BAC5C:  DCD loc_1BACEC - 0x1BAC54; jumptable 001BAC50 case 5378
1BAC60:  DCD loc_1BADA0 - 0x1BAC54; jumptable 001BAC50 case 5379
1BAC64:  DCD loc_1BAC70 - 0x1BAC54; jumptable 001BAC50 case 5380
1BAC68:  DCD loc_1BACF4 - 0x1BAC54; jumptable 001BAC50 case 5381
1BAC6C:  DCD loc_1BAD38 - 0x1BAC54; jumptable 001BAC50 case 5382
1BAC70:  MOV             R1, #4; jumptable 001BAC50 case 5380
1BAC74:  MOV             R3, #5
1BAC78:  STR             R1, [SP,#0x20+var_20]
1BAC7C:  MOV             R2, #3
1BAC80:  MOV             R1, #2
1BAC84:  MOV             R4, #0
1BAC88:  MOV             R5, #0
1BAC8C:  MOV             R12, #1
1BAC90:  MOV             R7, #1
1BAC94:  MOV             R8, #4
1BAC98:  MOV             LR, #2
1BAC9C:  MOV             R10, #5
1BACA0:  MOV             R9, #3
1BACA4:  B               loc_1BAD8C
1BACA8:  MOVW            R1, #0x1504; jumptable 001BAC50 default case
1BACAC:  MOV             R2, #2
1BACB0:  MOVT            R1, #0x8000
1BACB4:  CMP             R7, R1
1BACB8:  STR             R2, [SP,#0x20+var_20]
1BACBC:  MOV             R4, #0
1BACC0:  MOV             R5, #0
1BACC4:  MOV             R12, #1
1BACC8:  MOV             R7, #1
1BACCC:  MOV             R1, #2
1BACD0:  MOV             R2, #3
1BACD4:  MOV             R3, #3
1BACD8:  MOV             R8, #4
1BACDC:  MOV             LR, #7
1BACE0:  MOV             R10, #5
1BACE4:  MOV             R9, #8
1BACE8:  BEQ             loc_1BAD8C
1BACEC:  SUB             SP, R11, #0x1C; jumptable 001BAC50 case 5378
1BACF0:  POP             {R4-R11,PC}
1BACF4:  MOVW            R1, #:lower16:(aZn3fmt2v86deta_54+0x76); jumptable 001BAC50 case 5381
1BACF8:  MOV             R2, #0
1BACFC:  MOVT            R1, #:upper16:(aZn3fmt2v86deta_54+0x76); "ror_handlerEEEEEEEEEPKT_SD_SD_OT0_"
1BAD00:  MOV             R8, #5
1BAD04:  STR             R2, [R0,R1]
1BAD08:  MOV             R6, #3
1BAD0C:  MOV             R3, #6
1BAD10:  MOV             R2, #4
1BAD14:  MOV             R1, #3
1BAD18:  MOV             R12, #2
1BAD1C:  MOV             R4, #1
1BAD20:  MOV             R5, #1
1BAD24:  MOV             R7, #2
1BAD28:  MOV             LR, #7
1BAD2C:  MOV             R10, #6
1BAD30:  STR             R6, [SP,#0x20+var_20]
1BAD34:  B               loc_1BAD88
1BAD38:  MOVW            R1, #:lower16:(aZn3fmt2v86deta_54+0x7A); jumptable 001BAC50 case 5382
1BAD3C:  MOV             R2, #1
1BAD40:  MOVT            R1, #:upper16:(aZn3fmt2v86deta_54+0x7A); "handlerEEEEEEEEEPKT_SD_SD_OT0_"
1BAD44:  MOV             LR, #7
1BAD48:  STR             R2, [R0,R1]
1BAD4C:  MOV             R1, #0x240B8
1BAD54:  MOV             R2, #0
1BAD58:  MOV             R8, #6
1BAD5C:  STR             R2, [R0,R1]
1BAD60:  MOV             R2, #2
1BAD64:  MOV             R7, #5
1BAD68:  STR             R2, [SP,#0x20+var_20]
1BAD6C:  MOV             R12, #3
1BAD70:  MOV             R5, #4
1BAD74:  MOV             R4, #2
1BAD78:  MOV             R1, #4
1BAD7C:  MOV             R2, #5
1BAD80:  MOV             R3, #3
1BAD84:  MOV             R10, #7
1BAD88:  MOV             R9, #8
1BAD8C:  MOV             R6, R3
1BAD90:  ADD             R3, R0, #0xB8
1BAD94:  ADD             R3, R3, #0x24000
1BAD98:  STR             R5, [R3,R4,LSL#2]
1BAD9C:  STR             R7, [R3,R12,LSL#2]
1BADA0:  ADD             R3, R0, #0xB8; jumptable 001BAC50 case 5379
1BADA4:  LDR             R7, [SP,#0x20+var_20]
1BADA8:  ADD             R3, R3, #0x24000
1BADAC:  STR             R7, [R3,R1,LSL#2]
1BADB0:  MOV             R1, R8
1BADB4:  MOV             R7, LR
1BADB8:  STR             R6, [R3,R2,LSL#2]
1BADBC:  MOV             R2, R10
1BADC0:  MOV             R3, R9
1BADC4:  MOVW            R6, #:lower16:(aZn3fmt2v86deta_54+0x76); jumptable 001BAC50 case 5377
1BADC8:  ADD             R1, R0, R1,LSL#2
1BADCC:  MOVT            R6, #:upper16:(aZn3fmt2v86deta_54+0x76); "ror_handlerEEEEEEEEEPKT_SD_SD_OT0_"
1BADD0:  MOV             R8, R3
1BADD4:  STR             R7, [R1,R6]
1BADD8:  MOV             R1, R2
1BADDC:  ADD             R0, R0, R1,LSL#2; jumptable 001BAC50 case 5376
1BADE0:  MOV             R1, #0x240B8
1BADE8:  STR             R8, [R0,R1]
1BADEC:  SUB             SP, R11, #0x1C
1BADF0:  POP             {R4-R11,PC}
