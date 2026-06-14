; =========================================================
; Game Engine Function: celt_iir
; Address            : 0xC32E8 - 0xC3634
; =========================================================

C32E8:  PUSH            {R4-R7,LR}
C32EA:  ADD             R7, SP, #0xC
C32EC:  PUSH.W          {R8-R11}
C32F0:  SUB             SP, SP, #0x44
C32F2:  MOV             R8, R0
C32F4:  LDR             R0, =(__stack_chk_guard_ptr - 0xC3300)
C32F6:  STR.W           R2, [R7,#var_48]
C32FA:  MOV             R9, R1
C32FC:  ADD             R0, PC; __stack_chk_guard_ptr
C32FE:  LDR             R2, [R7,#arg_0]
C3300:  MOV             R5, R3
C3302:  LDR.W           R12, [R7,#arg_4]
C3306:  LDR             R0, [R0]; __stack_chk_guard
C3308:  LDR             R0, [R0]
C330A:  STR.W           R0, [R7,#var_24]
C330E:  MOVS            R0, #7
C3310:  ADD.W           R1, R0, R2,LSL#1
C3314:  BIC.W           R1, R1, #7
C3318:  SUB.W           R6, SP, R1
C331C:  ADDS            R1, R2, R5
C331E:  ADD.W           R0, R0, R1,LSL#1
C3322:  BIC.W           R0, R0, #7
C3326:  MOV             SP, R6
C3328:  SUB.W           R4, SP, R0
C332C:  MOV             SP, R4
C332E:  CMP             R2, #1
C3330:  STR.W           R2, [R7,#var_38]
C3334:  BLT             loc_C337A
C3336:  LDR             R0, [R7,#arg_0]
C3338:  MOVS            R2, #0
C333A:  ADD.W           R0, R9, R0,LSL#1
C333E:  SUBS            R0, #2
C3340:  LDRH.W          R3, [R0],#-2
C3344:  STRH.W          R3, [R6,R2,LSL#1]
C3348:  ADDS            R2, #1
C334A:  LDR             R3, [R7,#arg_0]
C334C:  CMP             R3, R2
C334E:  BNE             loc_C3340
C3350:  LDR             R0, [R7,#arg_0]
C3352:  CMP             R0, #1
C3354:  BLT             loc_C337A
C3356:  LDR             R0, [R7,#arg_0]
C3358:  MOVS            R2, #0
C335A:  ADD.W           R0, R12, R0,LSL#1
C335E:  SUBS            R0, #2
C3360:  LDRH.W          R3, [R0],#-2
C3364:  NEGS            R3, R3
C3366:  STRH.W          R3, [R4,R2,LSL#1]
C336A:  ADDS            R2, #1
C336C:  LDR             R3, [R7,#arg_0]
C336E:  CMP             R3, R2
C3370:  BNE             loc_C3360
C3372:  LDR             R2, [R7,#arg_0]
C3374:  CMP             R1, R2
C3376:  BGT             loc_C3380
C3378:  B               loc_C338C
C337A:  MOVS            R2, #0
C337C:  CMP             R1, R2
C337E:  BLE             loc_C338C
C3380:  SUBS            R1, R1, R2
C3382:  ADD.W           R0, R4, R2,LSL#1; int
C3386:  LSLS            R1, R1, #1; n
C3388:  BLX             sub_10967C
C338C:  STR.W           R6, [R7,#var_4C]
C3390:  MOVW            R6, #0x8001
C3394:  MOV             R0, R8
C3396:  MOVT            R6, #0xFFFF
C339A:  CMP             R5, #4
C339C:  STR.W           R5, [R7,#var_60]
C33A0:  STRD.W          R0, R4, [R7,#var_54]
C33A4:  BLT.W           loc_C3524
C33A8:  SUBS            R1, R5, #3
C33AA:  STR.W           R1, [R7,#var_58]
C33AE:  LDR             R1, [R7,#arg_0]
C33B0:  MOVS            R5, #0
C33B2:  STR.W           R9, [R7,#var_3C]
C33B6:  MOV.W           R8, #0xC
C33BA:  MOV.W           R9, #0
C33BE:  ADD.W           R1, R4, R1,LSL#1
C33C2:  STR.W           R1, [R7,#var_5C]
C33C6:  LDR.W           R2, [R7,#var_54]
C33CA:  LDR             R3, [R7,#arg_0]
C33CC:  ADD.W           R0, R2, R8
C33D0:  LDR.W           R0, [R0,#-0xC]
C33D4:  STR.W           R0, [R7,#var_34]
C33D8:  ADD.W           R0, R2, R5,LSL#1
C33DC:  LDRD.W          R1, R0, [R0,#4]
C33E0:  STRD.W          R1, R0, [R7,#var_30]
C33E4:  LDR.W           R0, [R2,R8]
C33E8:  SUB.W           R2, R7, #-var_34
C33EC:  STR.W           R0, [R7,#var_28]
C33F0:  LDR.W           R0, [R7,#var_50]
C33F4:  ADDS            R1, R0, R5
C33F6:  LDR.W           R0, [R7,#var_4C]
C33FA:  BL              sub_C30F0
C33FE:  LDR.W           R0, [R7,#var_34]
C3402:  ADD.W           R9, R9, #4
C3406:  ADD.W           R1, R0, #0x800
C340A:  ASRS            R2, R1, #0xC
C340C:  CMP             R2, R6
C340E:  MOV             R2, R6
C3410:  IT GT
C3412:  ASRGT           R2, R1, #0xC
C3414:  MOVW            R1, #0x7FFF
C3418:  CMP             R2, R1
C341A:  IT GE
C341C:  MOVGE           R2, R1
C341E:  LDR.W           R10, [R7,#var_48]
C3422:  LDR.W           LR, [R7,#var_5C]
C3426:  NEGS            R1, R2
C3428:  ADD.W           R2, R10, R8
C342C:  STRH.W          R1, [LR,R5]
C3430:  STR.W           R0, [R2,#-0xC]
C3434:  SXTH            R2, R1
C3436:  LDR.W           R1, [R7,#var_3C]
C343A:  MOVW            R0, #0x7FFF
C343E:  LDRSH.W         R12, [R1]
C3442:  MOV             R11, R1
C3444:  LDR.W           R1, [R7,#var_30]
C3448:  STR.W           R2, [R7,#var_40]
C344C:  SMLABB.W        R3, R2, R12, R1
C3450:  ADD.W           R1, R3, #0x800
C3454:  ASRS            R4, R1, #0xC
C3456:  CMP             R4, R6
C3458:  MOV             R4, R6
C345A:  MOVW            R6, #0x8001
C345E:  IT GT
C3460:  ASRGT           R4, R1, #0xC
C3462:  MOVT            R6, #0xFFFF
C3466:  CMP             R4, R0
C3468:  IT GE
C346A:  MOVGE           R4, R0
C346C:  ADD.W           R0, LR, R5
C3470:  NEGS            R4, R4
C3472:  STR.W           R0, [R7,#var_44]
C3476:  STRH            R4, [R0,#2]
C3478:  ADD.W           R0, R10, R5,LSL#1
C347C:  STR.W           R3, [R7,#var_30]
C3480:  MOVW            LR, #0x8001
C3484:  STR             R3, [R0,#4]
C3486:  SXTH            R3, R4
C3488:  LDR.W           R4, [R7,#var_2C]
C348C:  MOVT            LR, #0xFFFF
C3490:  LDRSH.W         R1, [R11,#2]
C3494:  ADDS            R5, #8
C3496:  SMLABB.W        R4, R3, R12, R4
C349A:  SMLABB.W        R4, R2, R1, R4
C349E:  MOV             R2, R10
C34A0:  ADD.W           R11, R4, #0x800
C34A4:  MOV.W           R10, R11,ASR#12
C34A8:  CMP             R10, LR
C34AA:  IT GT
C34AC:  MOVGT.W         R6, R11,ASR#12
C34B0:  MOV             R11, R2
C34B2:  MOVW            R2, #0x7FFF
C34B6:  CMP             R6, R2
C34B8:  IT GE
C34BA:  MOVGE           R6, R2
C34BC:  LDR.W           R10, [R7,#var_44]
C34C0:  NEGS            R6, R6
C34C2:  STR.W           R4, [R7,#var_2C]
C34C6:  MOVW            LR, #0x7FFF
C34CA:  STRH.W          R6, [R10,#4]
C34CE:  STR             R4, [R0,#8]
C34D0:  SXTH            R0, R6
C34D2:  LDR.W           R4, [R7,#var_28]
C34D6:  MOVW            R6, #0x8001
C34DA:  LDR.W           R2, [R7,#var_40]
C34DE:  MOVT            R6, #0xFFFF
C34E2:  SMLABB.W        R0, R0, R12, R4
C34E6:  SMLABB.W        R0, R3, R1, R0
C34EA:  LDR.W           R1, [R7,#var_3C]
C34EE:  LDRSH.W         R1, [R1,#4]
C34F2:  SMLABB.W        R0, R2, R1, R0
C34F6:  ADD.W           R1, R0, #0x800
C34FA:  ASRS            R2, R1, #0xC
C34FC:  CMP             R2, R6
C34FE:  MOV             R2, R6
C3500:  IT GT
C3502:  ASRGT           R2, R1, #0xC
C3504:  CMP             R2, LR
C3506:  IT GE
C3508:  MOVGE           R2, LR
C350A:  NEGS            R1, R2
C350C:  STRH.W          R1, [R10,#6]
C3510:  STR.W           R0, [R11,R8]
C3514:  ADD.W           R8, R8, #0x10
C3518:  LDR.W           R0, [R7,#var_58]
C351C:  CMP             R9, R0
C351E:  BLT.W           loc_C33C6
C3522:  B               loc_C3528
C3524:  MOV.W           R9, #0
C3528:  LDR.W           R0, [R7,#var_60]
C352C:  LDR.W           LR, [R7,#var_50]
C3530:  LDR.W           R8, [R7,#var_54]
C3534:  CMP             R9, R0
C3536:  BGE             loc_C35EA
C3538:  LDR             R0, [R7,#arg_0]
C353A:  CMP             R0, #0
C353C:  BLE             loc_C359E
C353E:  ADD.W           R6, LR, R9,LSL#1
C3542:  MOVW            R12, #0x7FFF
C3546:  LDR.W           R2, [R8,R9,LSL#2]
C354A:  MOV             R0, R6
C354C:  LDR.W           R3, [R7,#var_4C]
C3550:  LDR             R4, [R7,#arg_0]
C3552:  LDRSH.W         R5, [R3],#2
C3556:  SUBS            R4, #1
C3558:  LDRSH.W         R1, [R0],#2
C355C:  MLS.W           R2, R1, R5, R2
C3560:  BNE             loc_C3552
C3562:  ADD.W           R0, R2, #0x800
C3566:  MOV             R3, #0xFFFF8001
C356E:  ADDS            R6, #2
C3570:  ASRS            R1, R0, #0xC
C3572:  CMP             R1, R3
C3574:  MOV             R1, R3
C3576:  IT GT
C3578:  ASRGT           R1, R0, #0xC
C357A:  LDR             R0, [R7,#arg_0]
C357C:  CMP             R1, R12
C357E:  ADD             R0, R9
C3580:  IT GE
C3582:  MOVGE           R1, R12
C3584:  STRH.W          R1, [LR,R0,LSL#1]
C3588:  LDR.W           R0, [R7,#var_48]
C358C:  STR.W           R2, [R0,R9,LSL#2]
C3590:  ADD.W           R9, R9, #1
C3594:  LDR.W           R0, [R7,#var_60]
C3598:  CMP             R9, R0
C359A:  BNE             loc_C3546
C359C:  B               loc_C35EA
C359E:  LDR             R3, [R7,#arg_0]
C35A0:  MOVW            R5, #0x8001
C35A4:  LDR.W           R0, [R7,#var_60]
C35A8:  ADD.W           R2, R8, R9,LSL#2
C35AC:  LDR.W           R1, [R7,#var_48]
C35B0:  ADD             R3, R9
C35B2:  SUB.W           R0, R0, R9
C35B6:  MOVW            R12, #0x7FFF
C35BA:  ADD.W           R1, R1, R9,LSL#2
C35BE:  ADD.W           R3, LR, R3,LSL#1
C35C2:  MOVT            R5, #0xFFFF
C35C6:  LDR.W           LR, [R2],#4
C35CA:  ADD.W           R4, LR, #0x800
C35CE:  ASRS            R6, R4, #0xC
C35D0:  CMP             R6, R5
C35D2:  MOV             R6, R5
C35D4:  IT GT
C35D6:  ASRGT           R6, R4, #0xC
C35D8:  CMP             R6, R12
C35DA:  IT GE
C35DC:  MOVGE           R6, R12
C35DE:  SUBS            R0, #1
C35E0:  STRH.W          R6, [R3],#2
C35E4:  STR.W           LR, [R1],#4
C35E8:  BNE             loc_C35C6
C35EA:  LDR             R0, [R7,#arg_0]
C35EC:  LDR             R2, [R7,#arg_4]
C35EE:  CMP             R0, #1
C35F0:  BLT             loc_C3614
C35F2:  LDR.W           R0, [R7,#var_60]
C35F6:  LDR.W           R1, [R7,#var_48]
C35FA:  ADD.W           R0, R1, R0,LSL#2
C35FE:  SUBS            R0, #4
C3600:  LDR.W           R1, [R0],#-4
C3604:  STRH.W          R1, [R2],#2
C3608:  LDR.W           R1, [R7,#var_38]
C360C:  SUBS            R1, #1
C360E:  STR.W           R1, [R7,#var_38]
C3612:  BNE             loc_C3600
C3614:  LDR             R0, =(__stack_chk_guard_ptr - 0xC361E)
C3616:  LDR.W           R1, [R7,#var_24]
C361A:  ADD             R0, PC; __stack_chk_guard_ptr
C361C:  LDR             R0, [R0]; __stack_chk_guard
C361E:  LDR             R0, [R0]
C3620:  SUBS            R0, R0, R1
C3622:  ITTTT EQ
C3624:  SUBEQ.W         R4, R7, #-var_1C
C3628:  MOVEQ           SP, R4
C362A:  POPEQ.W         {R8-R11}
C362E:  POPEQ           {R4-R7,PC}
C3630:  BLX             __stack_chk_fail
