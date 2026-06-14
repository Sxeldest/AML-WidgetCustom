; =========================================================
; Game Engine Function: sub_1823C0
; Address            : 0x1823C0 - 0x182448
; =========================================================

1823C0:  PUSH            {R4-R7,LR}
1823C2:  ADD             R7, SP, #0xC
1823C4:  PUSH.W          {R8}
1823C8:  SUB             SP, SP, #0x10
1823CA:  LDR             R3, =(unk_BE944 - 0x1823D8)
1823CC:  MOV             R4, R0
1823CE:  ADD             R0, SP, #0x20+var_18
1823D0:  STRD.W          R1, R2, [SP,#0x20+var_18]
1823D4:  ADD             R3, PC; unk_BE944
1823D6:  MOV             R1, R3
1823D8:  BL              sub_17E580
1823DC:  CBZ             R0, loc_182416
1823DE:  LDRH            R0, [R4,#8]
1823E0:  CBZ             R0, loc_182430
1823E2:  LDR             R1, =(unk_381CC0 - 0x1823EC)
1823E4:  MOVS            R6, #0
1823E6:  MOVS            R5, #0
1823E8:  ADD             R1, PC; unk_381CC0
1823EA:  MOV             R8, R1
1823EC:  LDR.W           R1, [R4,#0x340]
1823F0:  LDRB            R2, [R1,R6]
1823F2:  CBZ             R2, loc_182408
1823F4:  ADDS            R0, R1, R6
1823F6:  ADDS            R0, #0x18
1823F8:  BL              sub_18A0A4
1823FC:  MOV             R1, R0; src
1823FE:  MOV             R0, R8; dest
182400:  MOVS            R2, #0xC8; n
182402:  BLX             j_memcpy
182406:  LDRH            R0, [R4,#8]
182408:  ADDS            R5, #1
18240A:  ADD.W           R6, R6, #0x840
18240E:  CMP             R5, R0
182410:  BCC             loc_1823EC
182412:  MOV             R5, R8
182414:  B               loc_18243E
182416:  LDRD.W          R1, R2, [SP,#0x20+var_18]
18241A:  MOVS            R5, #0
18241C:  MOV             R0, R4
18241E:  MOVS            R3, #0
182420:  STR             R5, [SP,#0x20+var_20]
182422:  BL              sub_181978
182426:  CBZ             R0, loc_18243E
182428:  LDRB            R1, [R4,#4]
18242A:  CBZ             R1, loc_182436
18242C:  MOVS            R5, #0
18242E:  B               loc_18243E
182430:  LDR             R5, =(unk_381CC0 - 0x182436)
182432:  ADD             R5, PC; unk_381CC0
182434:  B               loc_18243E
182436:  ADDS            R0, #0x18
182438:  BL              sub_18A0A4
18243C:  MOV             R5, R0
18243E:  MOV             R0, R5
182440:  ADD             SP, SP, #0x10
182442:  POP.W           {R8}
182446:  POP             {R4-R7,PC}
