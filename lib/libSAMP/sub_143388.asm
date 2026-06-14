; =========================================================
; Game Engine Function: sub_143388
; Address            : 0x143388 - 0x143510
; =========================================================

143388:  PUSH            {R4-R7,LR}
14338A:  ADD             R7, SP, #0xC
14338C:  PUSH.W          {R8}
143390:  SUB             SP, SP, #8
143392:  MOV             R4, R0
143394:  MOVS            R5, #0
143396:  MOVS            R6, #0xFF
143398:  LDR.W           R0, [R4,#0x3B0]
14339C:  LDR             R0, [R0]
14339E:  ADDS            R1, R0, R5
1433A0:  LDRB.W          R1, [R1,#0xFB4]
1433A4:  CBZ             R1, loc_1433B8
1433A6:  ADD.W           R0, R0, R5,LSL#2
1433AA:  LDR             R0, [R0,#4]
1433AC:  CBZ             R0, loc_1433B8
1433AE:  LDR             R0, [R0]
1433B0:  CBZ             R0, loc_1433B8
1433B2:  STRB            R6, [R0,#0x12]
1433B4:  BL              sub_149278
1433B8:  ADDS            R5, #1
1433BA:  CMP.W           R5, #0x3EC
1433BE:  BNE             loc_143398
1433C0:  LDR.W           R0, [R4,#0x3B0]
1433C4:  MOVW            R5, #0x13BC
1433C8:  LDR             R0, [R0]
1433CA:  LDR             R0, [R0,R5]
1433CC:  BL              sub_13E934
1433D0:  LDR.W           R0, [R4,#0x3B0]
1433D4:  MOVS            R1, #0
1433D6:  MOV.W           R8, #0
1433DA:  LDR             R0, [R0]
1433DC:  LDR             R0, [R0,R5]
1433DE:  BL              sub_13F01C
1433E2:  LDR.W           R0, [R4,#0x3B0]
1433E6:  MOVS            R1, #1
1433E8:  LDR             R0, [R0]
1433EA:  LDR             R0, [R0,R5]
1433EC:  LDR             R0, [R0,#0x1C]
1433EE:  BL              sub_10421C
1433F2:  BL              sub_F84A0
1433F6:  LDR.W           R0, [R4,#0x3B0]
1433FA:  MOVS            R1, #0xB
1433FC:  STR.W           R1, [R4,#0x218]
143400:  LDR             R0, [R0]
143402:  BL              sub_149014
143406:  LDR.W           R0, [R4,#0x3B0]
14340A:  LDR             R0, [R0]
14340C:  BL              sub_148D6A
143410:  MOV             R0, R4
143412:  BL              sub_143520
143416:  MOV             R0, R4
143418:  BL              sub_143556
14341C:  MOV             R0, R4
14341E:  BL              sub_14358C
143422:  MOV             R0, R4
143424:  BL              sub_1435C2
143428:  MOV             R0, R4
14342A:  BL              sub_1435F8
14342E:  LDR             R5, =(unk_B9528 - 0x143436)
143430:  MOVS            R6, #0x88
143432:  ADD             R5, PC; unk_B9528
143434:  LDR.W           R1, [R4,R6,LSL#2]
143438:  CBZ             R1, loc_143444
14343A:  MOV             R0, R5
14343C:  BL              sub_107188
143440:  STR.W           R8, [R4,R6,LSL#2]
143444:  ADDS            R6, #1
143446:  CMP             R6, #0xEC
143448:  BNE             loc_143434
14344A:  MOV             R0, R4
14344C:  BL              sub_14362E
143450:  MOV             R0, R4
143452:  BL              sub_143668
143456:  MOV             R0, R4
143458:  BL              sub_14369E
14345C:  LDR             R0, =(off_234970 - 0x14346C)
14345E:  MOVS            R2, #0
143460:  LDR.W           R1, [R4,#0x20C]
143464:  MOVT            R2, #0x4270
143468:  ADD             R0, PC; off_234970
14346A:  MOVS            R6, #0
14346C:  LDR             R5, [R0]; dword_23DEF0
14346E:  STR             R2, [R1,#0x20]
143470:  MOVS            R2, #0x101000C
143476:  STRB            R6, [R1,#0x10]
143478:  LDR             R0, [R5]
14347A:  STR.W           R2, [R1,#0x25]
14347E:  MOVS            R2, #1
143480:  STRB            R2, [R1,#0x18]
143482:  MOV             R2, #0x3C03126F
14348A:  STRB            R6, [R1]
14348C:  STR             R2, [R1,#0xC]
14348E:  STR             R6, [R1,#4]
143490:  STRH            R6, [R0]
143492:  BL              sub_E35A0
143496:  MOVS            R1, #0
143498:  MOVS            R2, #1
14349A:  BL              sub_105034
14349E:  LDR             R0, [R5]
1434A0:  BL              sub_FA328
1434A4:  LDR             R0, [R5]
1434A6:  BL              sub_E35A0
1434AA:  BL              sub_104154
1434AE:  LDR             R0, [R5]
1434B0:  BL              sub_E35A0
1434B4:  MOVS            R1, #0
1434B6:  BL              sub_10431C
1434BA:  LDR             R0, [R5]
1434BC:  MOVS            R1, #0
1434BE:  BL              sub_F9480
1434C2:  LDR.W           R0, [R4,#0x20C]
1434C6:  STRB            R6, [R0,#0x1A]
1434C8:  BL              sub_107138
1434CC:  LDR.W           R1, [R4,#0x20C]
1434D0:  LDR             R0, [R5]
1434D2:  LDR             R1, [R1,#0xC]
1434D4:  BL              sub_F9B50
1434D8:  LDR             R0, [R5]
1434DA:  MOVS            R1, #0
1434DC:  BL              sub_FA2A8
1434E0:  LDR             R0, [R5]
1434E2:  MOVS            R1, #0
1434E4:  BL              sub_F9478
1434E8:  LDR             R0, =(off_234A24 - 0x1434EE)
1434EA:  ADD             R0, PC; off_234A24
1434EC:  LDR             R0, [R0]; dword_23DEEC
1434EE:  LDR             R0, [R0]
1434F0:  CBZ             R0, loc_143508
1434F2:  LDR             R4, [R0,#0x60]
1434F4:  MOV             R0, SP; int
1434F6:  LDR             R1, =(unk_883E8 - 0x1434FE)
1434F8:  MOVS            R2, #0x2D ; '-'
1434FA:  ADD             R1, PC; unk_883E8 ; s
1434FC:  BL              sub_F1E90
143500:  LDR             R1, [SP,#0x18+var_18]
143502:  MOV             R0, R4
143504:  BL              sub_12D490
143508:  ADD             SP, SP, #8
14350A:  POP.W           {R8}
14350E:  POP             {R4-R7,PC}
