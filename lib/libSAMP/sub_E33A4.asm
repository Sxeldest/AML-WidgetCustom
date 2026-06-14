; =========================================================
; Game Engine Function: sub_E33A4
; Address            : 0xE33A4 - 0xE3464
; =========================================================

E33A4:  PUSH            {R4-R7,LR}
E33A6:  ADD             R7, SP, #0xC
E33A8:  PUSH.W          {R8-R11}
E33AC:  SUB.W           SP, SP, #0x20C
E33B0:  MOV             R8, R2
E33B2:  MOV             R10, R1
E33B4:  MOV             R9, R0
E33B6:  BLX             strlen
E33BA:  MOV             R4, R0
E33BC:  ADD             R0, SP, #0x228+src; int
E33BE:  MOV.W           R1, #0x200; n
E33C2:  BLX             sub_22178C
E33C6:  MOV             R0, R9; s
E33C8:  BLX             strlen
E33CC:  CMP.W           R0, #0x200
E33D0:  BLS             loc_E33D8
E33D2:  MOV.W           R6, #0xFFFFFFFF
E33D6:  B               loc_E3458
E33D8:  CMP             R4, R10
E33DA:  BLE             loc_E3456
E33DC:  SUB.W           R0, R9, #1
E33E0:  ADD.W           R11, SP, #0x228+src
E33E4:  STR             R0, [SP,#0x228+var_224]
E33E6:  MOVS            R0, #0
E33E8:  MOVS            R6, #1
E33EA:  MOV.W           LR, #0xA
E33EE:  MOV             R5, R10
E33F0:  ADD.W           R2, R0, R10
E33F4:  LDRB.W          R1, [R9,R2]
E33F8:  CMP             R1, #0x20 ; ' '
E33FA:  MOV             R1, R10
E33FC:  BEQ             loc_E3414
E33FE:  LDR             R1, [SP,#0x228+var_224]
E3400:  ADDS            R2, R1, R0
E3402:  MOV             R1, R10
E3404:  CBZ             R1, loc_E3410
E3406:  LDRB            R3, [R2,R1]
E3408:  SUBS            R1, #1
E340A:  CMP             R3, #0x20 ; ' '
E340C:  BNE             loc_E3404
E340E:  B               loc_E3412
E3410:  MOVS            R1, #0
E3412:  ADDS            R2, R1, R0
E3414:  SUBS            R0, R5, R2
E3416:  CMP             R0, R8
E3418:  BLE             loc_E3442
E341A:  ADD.W           R0, R9, R5
E341E:  MOV             R1, R11
E3420:  LDRB.W          R2, [R0],#1
E3424:  STRB.W          R2, [R1],#1
E3428:  CMP             R2, #0
E342A:  BNE             loc_E3420
E342C:  MOV             R0, R9; dest
E342E:  MOV             R1, R11; src
E3430:  STRH.W          LR, [R9,R5]
E3434:  BLX             strcat
E3438:  ADDS            R0, R5, #1
E343A:  MOV.W           LR, #0xA
E343E:  MOV             R1, R10
E3440:  B               loc_E3448
E3442:  STRB.W          LR, [R9,R2]
E3446:  MOV             R0, R2
E3448:  SUBS            R4, R4, R1
E344A:  ADD.W           R5, R0, R10
E344E:  ADDS            R6, #1
E3450:  CMP             R4, R10
E3452:  BGT             loc_E33F0
E3454:  B               loc_E3458
E3456:  MOVS            R6, #1
E3458:  MOV             R0, R6
E345A:  ADD.W           SP, SP, #0x20C
E345E:  POP.W           {R8-R11}
E3462:  POP             {R4-R7,PC}
