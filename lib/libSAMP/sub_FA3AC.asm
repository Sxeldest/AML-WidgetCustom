; =========================================================
; Game Engine Function: sub_FA3AC
; Address            : 0xFA3AC - 0xFA476
; =========================================================

FA3AC:  PUSH            {R4-R7,LR}
FA3AE:  ADD             R7, SP, #0xC
FA3B0:  PUSH.W          {R8-R11}
FA3B4:  SUB             SP, SP, #0x5C
FA3B6:  MOV             R9, R0
FA3B8:  ADD             R0, SP, #0x78+var_54
FA3BA:  MOV             R6, R3
FA3BC:  MOV             R10, R2
FA3BE:  MOV             R5, R1
FA3C0:  BL              sub_F06B2
FA3C4:  BL              sub_F0734
FA3C8:  ADD.W           LR, R7, #8
FA3CC:  LDRB            R2, [R0]
FA3CE:  MOV             R8, R0
FA3D0:  MOV             R12, R5
FA3D2:  LDM.W           LR, {R1,R11,LR}
FA3D6:  LSLS            R2, R2, #0x1F
FA3D8:  BNE             loc_FA3E2
FA3DA:  MOVS            R2, #0
FA3DC:  STRH.W          R2, [R8]
FA3E0:  B               loc_FA3FA
FA3E2:  LDR.W           R2, [R8,#8]
FA3E6:  MOVS            R3, #0
FA3E8:  STRB            R3, [R2]
FA3EA:  LDRB.W          R0, [R8]
FA3EE:  LDR.W           R2, [R8]
FA3F2:  STR.W           R3, [R8,#4]
FA3F6:  LSLS            R0, R0, #0x1F
FA3F8:  BNE             loc_FA3FE
FA3FA:  MOVS            R2, #9
FA3FC:  B               loc_FA404
FA3FE:  SUBS            R0, R2, #2
FA400:  BIC.W           R2, R0, #1
FA404:  LDR             R0, [R1]
FA406:  MOVS            R4, #0
FA408:  LDR             R1, [R7,#arg_C]
FA40A:  LDR.W           R11, [R11]
FA40E:  LDR.W           R3, [LR]
FA412:  LDR             R5, [R1]
FA414:  LDR             R1, [R7,#arg_10]
FA416:  LDRB            R6, [R6]
FA418:  STRD.W          R5, R4, [SP,#0x78+var_30]
FA41C:  LDRB            R1, [R1]
FA41E:  STRD.W          R1, R4, [SP,#0x78+var_28]
FA422:  STRD.W          R6, R4, [SP,#0x78+var_50]
FA426:  STR             R3, [SP,#0x78+var_38]
FA428:  STR.W           R11, [SP,#0x78+var_40]
FA42C:  STR             R0, [SP,#0x78+var_48]
FA42E:  MOVW            R1, #0x9992
FA432:  ADD             R0, SP, #0x78+var_50
FA434:  MOVT            R1, #0x22 ; '"'
FA438:  STRD.W          R0, R4, [SP,#0x78+var_68]
FA43C:  ADD             R0, SP, #0x78+var_5C
FA43E:  STRD.W          R1, R4, [SP,#0x78+var_70]
FA442:  MOV             R1, R8
FA444:  MOV             R3, R12
FA446:  STR.W           R10, [SP,#0x78+var_78]
FA44A:  BL              sub_DCA40
FA44E:  MOV             R0, R9; int
FA450:  LDRB.W          R6, [R8]
FA454:  LDRD.W          R2, R1, [R8,#4]
FA458:  ANDS.W          R3, R6, #1
FA45C:  ITT EQ
FA45E:  ADDEQ.W         R1, R8, #1; text
FA462:  LSREQ           R2, R6, #1
FA464:  BL              sub_ED4F8
FA468:  ADD             R0, SP, #0x78+var_54
FA46A:  BL              sub_F0720
FA46E:  ADD             SP, SP, #0x5C ; '\'
FA470:  POP.W           {R8-R11}
FA474:  POP             {R4-R7,PC}
