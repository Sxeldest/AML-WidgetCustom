; =========================================================
; Game Engine Function: SetDefaultWFXChannelOrder
; Address            : 0x1BADF4 - 0x1BAF90
; =========================================================

1BADF4:  PUSH            {R4-R9,R11,LR}
1BADF8:  ADD             R11, SP, #0x18
1BADFC:  LDR             R4, [R0,#0x18]
1BAE00:  MOV             R8, #5
1BAE04:  MOV             LR, #3
1BAE08:  MOV             R12, #4
1BAE0C:  SUB             R6, R4, #0x1500; switch 7 cases
1BAE10:  MOV             R3, #1
1BAE14:  MOV             R2, #2
1BAE18:  MOV             R1, #0
1BAE1C:  CMP             R6, #6
1BAE20:  BHI             def_1BAE3C; jumptable 001BAE3C default case
1BAE24:  ADR             R5, jpt_1BAE3C
1BAE28:  MOV             R4, R6,LSL#2
1BAE2C:  MOV             R9, #1
1BAE30:  MOV             R6, #0
1BAE34:  LDR             R4, [R4,R5]
1BAE38:  MOV             R7, #1
1BAE3C:  ADD             PC, R4, R5; switch jump
1BAE40:  DCD loc_1BAF7C - 0x1BAE40; jump table for switch statement
1BAE44:  DCD loc_1BAF64 - 0x1BAE40; jumptable 001BAE3C case 5377
1BAE48:  DCD locret_1BAF8C - 0x1BAE40; jumptable 001BAE3C case 5378
1BAE4C:  DCD loc_1BAF44 - 0x1BAE40; jumptable 001BAE3C case 5379
1BAE50:  DCD loc_1BAE5C - 0x1BAE40; jumptable 001BAE3C case 5380
1BAE54:  DCD loc_1BAEBC - 0x1BAE40; jumptable 001BAE3C case 5381
1BAE58:  DCD loc_1BAEF0 - 0x1BAE40; jumptable 001BAE3C case 5382
1BAE5C:  MOV             LR, #5; jumptable 001BAE3C case 5380
1BAE60:  MOV             R2, #4
1BAE64:  MOV             R7, #0
1BAE68:  MOV             R6, #1
1BAE6C:  MOV             R1, #2
1BAE70:  MOV             R3, #3
1BAE74:  MOV             R9, #3
1BAE78:  MOV             R12, #4
1BAE7C:  MOV             R8, #5
1BAE80:  B               loc_1BAF34
1BAE84:  MOVW            R1, #0x1504; jumptable 001BAE3C default case
1BAE88:  MOV             R7, #0
1BAE8C:  MOVT            R1, #0x8000
1BAE90:  CMP             R4, R1
1BAE94:  MOV             R6, #1
1BAE98:  MOV             R9, #3
1BAE9C:  MOV             R8, #8
1BAEA0:  MOV             R1, #2
1BAEA4:  MOV             R3, #3
1BAEA8:  MOV             R2, #4
1BAEAC:  MOV             R12, #7
1BAEB0:  MOV             LR, #5
1BAEB4:  POPNE           {R4-R9,R11,PC}
1BAEB8:  B               loc_1BAF34
1BAEBC:  MOVW            R1, #:lower16:(aZn3fmt2v86deta_54+0x76); jumptable 001BAE3C case 5381
1BAEC0:  MOV             R2, #0
1BAEC4:  MOVT            R1, #:upper16:(aZn3fmt2v86deta_54+0x76); "ror_handlerEEEEEEEEEPKT_SD_SD_OT0_"
1BAEC8:  MOV             R9, #6
1BAECC:  STR             R2, [R0,R1]
1BAED0:  MOV             R2, #5
1BAED4:  MOV             R3, #4
1BAED8:  MOV             R1, #3
1BAEDC:  MOV             R6, #2
1BAEE0:  MOV             R7, #1
1BAEE4:  MOV             R12, #7
1BAEE8:  MOV             LR, #6
1BAEEC:  B               loc_1BAF30
1BAEF0:  MOVW            R1, #:lower16:(aZn3fmt2v86deta_54+0x7A); jumptable 001BAE3C case 5382
1BAEF4:  MOV             R2, #1
1BAEF8:  MOVT            R1, #:upper16:(aZn3fmt2v86deta_54+0x7A); "handlerEEEEEEEEEPKT_SD_SD_OT0_"
1BAEFC:  MOV             R12, #7
1BAF00:  STR             R2, [R0,R1]
1BAF04:  MOV             R1, #0x240B8
1BAF0C:  MOV             R2, #0
1BAF10:  MOV             R3, #5
1BAF14:  STR             R2, [R0,R1]
1BAF18:  MOV             R2, #6
1BAF1C:  MOV             R1, #4
1BAF20:  MOV             R6, #3
1BAF24:  MOV             R7, #2
1BAF28:  MOV             R9, #5
1BAF2C:  MOV             LR, #7
1BAF30:  MOV             R8, #8
1BAF34:  ADD             R4, R0, #0xB8
1BAF38:  ADD             R4, R4, #0x24000
1BAF3C:  STR             R7, [R4,R7,LSL#2]
1BAF40:  STR             R6, [R4,R6,LSL#2]
1BAF44:  ADD             R4, R0, #0xB8; jumptable 001BAE3C case 5379
1BAF48:  MOV             R6, R12
1BAF4C:  ADD             R4, R4, #0x24000
1BAF50:  MOV             R7, R8
1BAF54:  STR             R1, [R4,R1,LSL#2]
1BAF58:  MOV             R1, R2
1BAF5C:  STR             R9, [R4,R3,LSL#2]
1BAF60:  MOV             R3, LR
1BAF64:  MOVW            R2, #:lower16:(aZn3fmt2v86deta_54+0x76); jumptable 001BAE3C case 5377
1BAF68:  ADD             R1, R0, R1,LSL#2
1BAF6C:  MOVT            R2, #:upper16:(aZn3fmt2v86deta_54+0x76); "ror_handlerEEEEEEEEEPKT_SD_SD_OT0_"
1BAF70:  STR             R6, [R1,R2]
1BAF74:  MOV             R1, R3
1BAF78:  MOV             R2, R7
1BAF7C:  ADD             R0, R0, R1,LSL#2; jumptable 001BAE3C case 5376
1BAF80:  MOV             R1, #0x240B8
1BAF88:  STR             R2, [R0,R1]
1BAF8C:  POP             {R4-R9,R11,PC}; jumptable 001BAE3C case 5378
