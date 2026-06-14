; =========================================================
; Game Engine Function: sub_E54B6
; Address            : 0xE54B6 - 0xE5608
; =========================================================

E54B6:  PUSH            {R4-R7,LR}
E54B8:  ADD             R7, SP, #0xC
E54BA:  PUSH.W          {R8-R10}
E54BE:  SUB             SP, SP, #0x18
E54C0:  MOV             R4, R0
E54C2:  LDR             R0, [R0,#0x40]
E54C4:  CBZ             R0, loc_E54E4
E54C6:  MOV             R0, R4
E54C8:  BL              sub_E577C
E54CC:  LDR             R1, [R4,#0xC]
E54CE:  CBNZ            R1, loc_E54DC
E54D0:  SUB.W           R2, R7, #-var_19
E54D4:  ADDS            R1, R2, #1
E54D6:  STR             R1, [R4,#0x10]
E54D8:  STRD.W          R2, R1, [R4,#8]
E54DC:  LDR             R2, [R4,#0x10]
E54DE:  CBZ             R0, loc_E54EA
E54E0:  MOVS            R5, #0
E54E2:  B               loc_E54FC
E54E4:  MOV.W           R0, #0xFFFFFFFF
E54E8:  B               loc_E55FC
E54EA:  LDR             R0, [R4,#8]
E54EC:  MOVS            R5, #4
E54EE:  SUBS            R0, R2, R0
E54F0:  ADD.W           R0, R0, R0,LSR#31
E54F4:  ASRS            R3, R0, #1
E54F6:  CMP             R3, #4
E54F8:  IT CC
E54FA:  ASRCC           R5, R0, #1
E54FC:  CMP             R1, R2
E54FE:  BEQ             loc_E5504
E5500:  LDRB            R0, [R1]
E5502:  B               loc_E55EA
E5504:  LDR             R0, [R4,#8]; dest
E5506:  SUBS            R1, R1, R5; src
E5508:  MOV             R2, R5; n
E550A:  BLX             j_memmove
E550E:  LDRB.W          R0, [R4,#0x5A]
E5512:  CBZ             R0, loc_E5536
E5514:  LDR             R0, [R4,#8]
E5516:  LDR             R1, [R4,#0x10]
E5518:  ADD             R0, R5; ptr
E551A:  LDR             R3, [R4,#0x40]; stream
E551C:  SUBS            R2, R1, R0; n
E551E:  MOVS            R1, #1; size
E5520:  BLX             fread
E5524:  CMP             R0, #0
E5526:  BEQ             loc_E55E6
E5528:  LDR             R1, [R4,#8]
E552A:  ADDS            R2, R1, R5
E552C:  ADD             R0, R2
E552E:  STRD.W          R2, R0, [R4,#0xC]
E5532:  LDRB            R0, [R1,R5]
E5534:  B               loc_E55EA
E5536:  MOV             R8, R4
E5538:  LDR.W           R1, [R8,#0x24]!; src
E553C:  LDR.W           LR, [R8,#4]
E5540:  CMP             LR, R1
E5542:  BEQ             loc_E5554
E5544:  LDR             R0, [R4,#0x20]; dest
E5546:  SUB.W           R2, LR, R1; n
E554A:  BLX             j_memmove
E554E:  LDRD.W          LR, R0, [R4,#0x24]
E5552:  B               loc_E5556
E5554:  MOV             R0, LR
E5556:  MOV             R6, R4
E5558:  SUB.W           R0, R0, LR
E555C:  LDR.W           R12, [R6,#0x48]!
E5560:  SUB.W           R1, R6, #0x1C
E5564:  LDR.W           R10, [R6,#-0x28]
E5568:  LDR.W           R2, [R6,#-0x14]
E556C:  LDRD.W          R9, R3, [R6,#-0xC]; stream
E5570:  CMP             R10, R1
E5572:  IT EQ
E5574:  MOVEQ           R2, #8
E5576:  ADD.W           R1, R10, R2
E557A:  ADD             R0, R10; ptr
E557C:  SUB.W           R2, R9, R5
E5580:  STRD.W          R0, R1, [R6,#-0x24]
E5584:  SUBS            R1, R1, R0
E5586:  STR.W           R12, [R6,#4]
E558A:  CMP             R1, R2
E558C:  IT CC
E558E:  MOVCC           R2, R1; n
E5590:  MOVS            R1, #1; size
E5592:  BLX             fread
E5596:  CBZ             R0, loc_E55E6
E5598:  MOV             R1, R0
E559A:  LDR             R0, [R4,#0x44]
E559C:  CBZ             R0, loc_E5604
E559E:  LDRD.W          R2, R3, [R4,#0x20]
E55A2:  ADD.W           R9, SP, #0x30+var_20
E55A6:  LDR.W           R12, [R0]
E55AA:  ADD             R3, R1
E55AC:  LDR             R1, [R4,#8]
E55AE:  LDR.W           LR, [R4,#0x3C]
E55B2:  STR             R3, [R4,#0x28]
E55B4:  ADD             LR, R1
E55B6:  LDR.W           R12, [R12,#0x10]
E55BA:  ADD             R1, R5
E55BC:  STRD.W          LR, R9, [SP,#0x30+var_28]
E55C0:  STRD.W          R8, R1, [SP,#0x30+var_30]
E55C4:  MOV             R1, R6
E55C6:  BLX             R12
E55C8:  CMP             R0, #3
E55CA:  BNE             loc_E55D4
E55CC:  LDR             R0, [R4,#0x20]
E55CE:  LDR             R1, [R4,#0x28]
E55D0:  STR             R0, [R4,#8]
E55D2:  B               loc_E55DE
E55D4:  LDR             R0, [R4,#8]
E55D6:  LDR             R1, [SP,#0x30+var_20]
E55D8:  ADD             R0, R5
E55DA:  CMP             R1, R0
E55DC:  BEQ             loc_E55E6
E55DE:  STRD.W          R0, R1, [R4,#0xC]
E55E2:  LDRB            R0, [R0]
E55E4:  B               loc_E55EA
E55E6:  MOV.W           R0, #0xFFFFFFFF
E55EA:  LDR             R1, [R4,#8]
E55EC:  SUB.W           R2, R7, #-var_19
E55F0:  CMP             R1, R2
E55F2:  ITTT EQ
E55F4:  MOVEQ           R1, #0
E55F6:  STRDEQ.W        R1, R1, [R4,#8]
E55FA:  STREQ           R1, [R4,#0x10]
E55FC:  ADD             SP, SP, #0x18
E55FE:  POP.W           {R8-R10}
E5602:  POP             {R4-R7,PC}
E5604:  BL              sub_E5754
