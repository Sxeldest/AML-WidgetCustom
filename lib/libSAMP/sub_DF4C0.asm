; =========================================================
; Game Engine Function: sub_DF4C0
; Address            : 0xDF4C0 - 0xDF556
; =========================================================

DF4C0:  PUSH            {R4-R7,LR}
DF4C2:  ADD             R7, SP, #0xC
DF4C4:  PUSH.W          {R11}
DF4C8:  SUB             SP, SP, #0x10
DF4CA:  MOV             R4, R0
DF4CC:  LDR             R0, [R0]
DF4CE:  MOV             R5, R1
DF4D0:  LDR             R1, [R0]
DF4D2:  CBZ             R1, loc_DF4F6
DF4D4:  LDR             R2, =(unk_91D45 - 0xDF4DE)
DF4D6:  LDRD.W          R0, R3, [R5,#8]
DF4DA:  ADD             R2, PC; unk_91D45
DF4DC:  LDRB            R6, [R2,R1]
DF4DE:  ADDS            R1, R0, #1
DF4E0:  CMP             R3, R1
DF4E2:  BCS             loc_DF4F0
DF4E4:  LDR             R0, [R5]
DF4E6:  LDR             R2, [R0]
DF4E8:  MOV             R0, R5
DF4EA:  BLX             R2
DF4EC:  LDR             R0, [R5,#8]
DF4EE:  ADDS            R1, R0, #1
DF4F0:  LDR             R2, [R5,#4]
DF4F2:  STR             R1, [R5,#8]
DF4F4:  STRB            R6, [R2,R0]
DF4F6:  ADD.W           R12, R4, #4
DF4FA:  LDM.W           R12, {R0,R1,R6,R12}
DF4FE:  LDRD.W          R2, R3, [R0]
DF502:  LDR             R0, [R1]
DF504:  LDR             R1, [R6,#8]
DF506:  STMEA.W         SP, {R0,R1,R12}
DF50A:  MOV             R0, R5
DF50C:  BL              sub_DF55C
DF510:  MOV             R5, R0
DF512:  LDR             R0, [R4,#0x14]
DF514:  LDRB            R0, [R0,#6]
DF516:  LSLS            R0, R0, #0x1C
DF518:  BPL             loc_DF54C
DF51A:  LDRD.W          R0, R2, [R5,#8]
DF51E:  LDR             R6, [R4,#0x18]
DF520:  ADDS            R1, R0, #1
DF522:  CMP             R2, R1
DF524:  BCS             loc_DF532
DF526:  LDR             R0, [R5]
DF528:  LDR             R2, [R0]
DF52A:  MOV             R0, R5
DF52C:  BLX             R2
DF52E:  LDR             R0, [R5,#8]
DF530:  ADDS            R1, R0, #1
DF532:  LDR             R2, [R5,#4]
DF534:  LDRB            R3, [R6]
DF536:  STR             R1, [R5,#8]
DF538:  STRB            R3, [R2,R0]
DF53A:  LDR             R0, [R4,#0x1C]
DF53C:  LDR             R1, [R0]
DF53E:  CMP             R1, #1
DF540:  BLT             loc_DF54C
DF542:  LDR             R2, [R4,#0x20]
DF544:  MOV             R0, R5
DF546:  BL              sub_DE834
DF54A:  MOV             R5, R0
DF54C:  MOV             R0, R5
DF54E:  ADD             SP, SP, #0x10
DF550:  POP.W           {R11}
DF554:  POP             {R4-R7,PC}
