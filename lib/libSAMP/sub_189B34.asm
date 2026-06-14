; =========================================================
; Game Engine Function: sub_189B34
; Address            : 0x189B34 - 0x189C10
; =========================================================

189B34:  PUSH            {R4-R7,LR}
189B36:  ADD             R7, SP, #0xC
189B38:  PUSH.W          {R8}
189B3C:  SUB             SP, SP, #8
189B3E:  MOV             R4, R1
189B40:  LDR.W           R8, [R1]
189B44:  LDRH            R1, [R2]
189B46:  MOV             R5, R2
189B48:  LDR             R0, [R2,#0xC]
189B4A:  MOVS            R2, #0x10
189B4C:  STRH.W          R1, [SP,#0x18+var_14]
189B50:  ADD             R1, SP, #0x18+var_14
189B52:  STRB.W          R0, [R7,#var_15]
189B56:  MOV             R0, R4
189B58:  MOVS            R3, #1
189B5A:  MOVS            R6, #1
189B5C:  BL              sub_17D628
189B60:  SUB.W           R1, R7, #-var_15
189B64:  MOV             R0, R4
189B66:  MOVS            R2, #4
189B68:  MOVS            R3, #1
189B6A:  BL              sub_17D628
189B6E:  LDR             R0, [R5,#0xC]
189B70:  CMP             R0, #0xA
189B72:  BHI             loc_189B9E
189B74:  LSL.W           R0, R6, R0
189B78:  TST.W           R0, #0x680
189B7C:  BEQ             loc_189B9E
189B7E:  ADD.W           R1, R5, #0x10
189B82:  MOV             R0, R4
189B84:  MOVS            R2, #5
189B86:  MOVS            R3, #1
189B88:  BL              sub_17D628
189B8C:  LDRH            R0, [R5,#0x12]
189B8E:  ADD             R1, SP, #0x18+var_14
189B90:  STRH.W          R0, [SP,#0x18+var_14]
189B94:  MOV             R0, R4
189B96:  MOVS            R2, #0x10
189B98:  MOVS            R3, #1
189B9A:  BL              sub_17D628
189B9E:  LDR             R0, [R5,#0x1C]
189BA0:  CBZ             R0, loc_189BDC
189BA2:  MOV             R0, R4
189BA4:  BL              sub_17D84A
189BA8:  LDRH            R0, [R5,#0x14]
189BAA:  ADD             R1, SP, #0x18+var_14
189BAC:  STRH.W          R0, [SP,#0x18+var_14]
189BB0:  MOV             R0, R4
189BB2:  MOVS            R2, #0x10
189BB4:  MOVS            R3, #1
189BB6:  BL              sub_17D628
189BBA:  LDR             R0, [R5,#0x18]
189BBC:  ADD             R1, SP, #0x18+var_14
189BBE:  STR             R0, [SP,#0x18+var_14]
189BC0:  MOV             R0, R4
189BC2:  MOVS            R2, #0x20 ; ' '
189BC4:  MOVS            R3, #1
189BC6:  BL              sub_17D912
189BCA:  LDR             R0, [R5,#0x1C]
189BCC:  ADD             R1, SP, #0x18+var_14
189BCE:  STR             R0, [SP,#0x18+var_14]
189BD0:  MOV             R0, R4
189BD2:  MOVS            R2, #0x20 ; ' '
189BD4:  MOVS            R3, #1
189BD6:  BL              sub_17D912
189BDA:  B               loc_189BE2
189BDC:  MOV             R0, R4
189BDE:  BL              sub_17D828
189BE2:  LDR             R0, [R5,#0x30]
189BE4:  ADD             R1, SP, #0x18+var_14
189BE6:  STRH.W          R0, [SP,#0x18+var_14]
189BEA:  MOV             R0, R4
189BEC:  MOVS            R2, #0x10
189BEE:  MOVS            R3, #1
189BF0:  BL              sub_17D912
189BF4:  LDRD.W          R0, R1, [R5,#0x30]
189BF8:  ADDS            R0, #7
189BFA:  LSRS            R2, R0, #3
189BFC:  MOV             R0, R4
189BFE:  BL              sub_17D89E
189C02:  LDR             R0, [R4]
189C04:  SUB.W           R0, R0, R8
189C08:  ADD             SP, SP, #8
189C0A:  POP.W           {R8}
189C0E:  POP             {R4-R7,PC}
