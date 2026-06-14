; =========================================================
; Game Engine Function: sub_14D5A4
; Address            : 0x14D5A4 - 0x14D632
; =========================================================

14D5A4:  PUSH            {R7,LR}
14D5A6:  MOV             R7, SP
14D5A8:  SUB             SP, SP, #0x118
14D5AA:  LDRD.W          R1, R0, [R0]; src
14D5AE:  MOVS            R3, #0
14D5B0:  ASRS            R2, R0, #0x1F
14D5B2:  ADD.W           R0, R0, R2,LSR#29
14D5B6:  MOVS            R2, #1
14D5B8:  ADD.W           R2, R2, R0,ASR#3; size
14D5BC:  MOV             R0, SP; int
14D5BE:  BL              sub_17D4F2
14D5C2:  SUBS            R1, R7, #2; int
14D5C4:  MOVS            R2, #0x10
14D5C6:  MOVS            R3, #1
14D5C8:  BL              sub_17D786
14D5CC:  SUBS            R1, R7, #3; int
14D5CE:  MOV             R0, SP; int
14D5D0:  MOVS            R2, #8
14D5D2:  MOVS            R3, #1
14D5D4:  BL              sub_17D786
14D5D8:  LDR             R0, =(off_23496C - 0x14D5DE)
14D5DA:  ADD             R0, PC; off_23496C
14D5DC:  LDR             R0, [R0]; dword_23DEF4
14D5DE:  LDR             R0, [R0]
14D5E0:  LDR.W           R0, [R0,#0x3B0]
14D5E4:  LDR             R0, [R0]
14D5E6:  CBZ             R0, loc_14D628
14D5E8:  ADD.W           R2, R0, #0x13A0
14D5EC:  LDRH.W          R1, [R7,#-2]
14D5F0:  LDRH            R3, [R2]
14D5F2:  CMP             R1, R3
14D5F4:  BNE             loc_14D608
14D5F6:  LDR             R0, [R2,#0x1C]
14D5F8:  ADDS            R0, #0x1C
14D5FA:  LDR             R0, [R0]
14D5FC:  CBZ             R0, loc_14D628
14D5FE:  LDRB.W          R1, [R7,#-3]
14D602:  BL              sub_104D40
14D606:  B               loc_14D628
14D608:  CMP.W           R1, #0x3EC
14D60C:  BHI             loc_14D628
14D60E:  ADDS            R2, R0, R1
14D610:  LDRB.W          R2, [R2,#0xFB4]
14D614:  CBZ             R2, loc_14D628
14D616:  ADD.W           R0, R0, R1,LSL#2
14D61A:  LDR             R0, [R0,#4]
14D61C:  CBZ             R0, loc_14D628
14D61E:  LDR             R0, [R0]
14D620:  CBZ             R0, loc_14D628
14D622:  ADD.W           R0, R0, #0x128
14D626:  B               loc_14D5FA
14D628:  MOV             R0, SP
14D62A:  BL              sub_17D542
14D62E:  ADD             SP, SP, #0x118
14D630:  POP             {R7,PC}
