; =========================================================
; Game Engine Function: sub_E7374
; Address            : 0xE7374 - 0xE73BC
; =========================================================

E7374:  PUSH            {R7,LR}
E7376:  MOV             R7, SP
E7378:  SUB             SP, SP, #8
E737A:  LDRB.W          R1, [R0,#0x2C]
E737E:  LSLS            R1, R1, #0x1F
E7380:  BNE             loc_E7388
E7382:  MOVS            R1, #0
E7384:  STRH            R1, [R0,#0x2C]
E7386:  B               loc_E7390
E7388:  LDR             R1, [R0,#0x34]
E738A:  MOVS            R2, #0
E738C:  STRB            R2, [R1]
E738E:  STR             R2, [R0,#0x30]
E7390:  MOV             R2, R0
E7392:  LDR.W           R1, [R2,#0x20]!
E7396:  LDR.W           R12, [R2,#8]
E739A:  LDR.W           R3, [R2,#-0x14]
E739E:  CMP             R1, R12
E73A0:  STR             R1, [R2,#4]
E73A2:  STRB.W          R3, [R7,#-1]
E73A6:  BCS             loc_E73B0
E73A8:  STRB.W          R3, [R1],#1
E73AC:  STR             R1, [R0,#0x24]
E73AE:  B               loc_E73B8
E73B0:  SUBS            R1, R7, #1
E73B2:  MOV             R0, R2
E73B4:  BL              sub_E72A2
E73B8:  ADD             SP, SP, #8
E73BA:  POP             {R7,PC}
