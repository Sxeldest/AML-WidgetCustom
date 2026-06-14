; =========================================================
; Game Engine Function: silk_LPC_fit
; Address            : 0xB33A8 - 0xB3504
; =========================================================

B33A8:  PUSH            {R4-R7,LR}
B33AA:  ADD             R7, SP, #0xC
B33AC:  PUSH.W          {R8-R11}
B33B0:  SUB             SP, SP, #4
B33B2:  LDR             R6, [R7,#arg_0]
B33B4:  MOV             R4, R1
B33B6:  MOV             R10, R0
B33B8:  CMP             R6, #1
B33BA:  BLT.W           loc_B34FC
B33BE:  MOVW            R11, #:lower16:(aZtvnst6Ndk120C+0x1F); "utf16IwEE"
B33C2:  SUB.W           R9, R3, R2
B33C6:  MOVS            R5, #0
B33C8:  MOVT            R11, #:upper16:(aZtvnst6Ndk120C+0x1F); "utf16IwEE"
B33CC:  MOV.W           R8, #0
B33D0:  SUB.W           R0, R9, #1
B33D4:  STR             R0, [SP,#0x20+var_20]
B33D6:  MOVS            R1, #0
B33D8:  MOVS            R0, #0
B33DA:  LDR.W           R2, [R4,R1,LSL#2]
B33DE:  CMP             R2, #0
B33E0:  IT MI
B33E2:  NEGMI           R2, R2
B33E4:  CMP             R2, R0
B33E6:  ITT GT
B33E8:  MOVGT           R8, R1
B33EA:  MOVGT           R0, R2
B33EC:  ADDS            R1, #1
B33EE:  CMP             R6, R1
B33F0:  BNE             loc_B33DA
B33F2:  CMP.W           R9, #1
B33F6:  BNE             loc_B3408
B33F8:  AND.W           R1, R0, #1
B33FC:  ADD.W           R0, R1, R0,ASR#1
B3400:  CMP.W           R0, #0x8000
B3404:  BGE             loc_B3416
B3406:  B               loc_B34BC
B3408:  LDR             R1, [SP,#0x20+var_20]
B340A:  ASRS            R0, R1
B340C:  ADDS            R0, #1
B340E:  ASRS            R0, R0, #1
B3410:  CMP.W           R0, #0x8000
B3414:  BLT             loc_B34BC
B3416:  CMP             R0, R11
B3418:  ADD.W           R1, R8, #1
B341C:  IT GE
B341E:  MOVGE           R0, R11
B3420:  MOVW            R2, #0x4000
B3424:  MULS            R1, R0
B3426:  MOVT            R2, #0xE000
B342A:  ADD.W           R0, R2, R0,LSL#14
B342E:  ASRS            R1, R1, #2
B3430:  BLX             sub_108848
B3434:  MOVW            R1, #0xFFBE
B3438:  SUBS            R2, R1, R0
B343A:  MOV             R0, R4
B343C:  MOV             R1, R6
B343E:  BLX             j_silk_bwexpander_32
B3442:  ADDS            R0, R5, #1
B3444:  CMP             R5, #9
B3446:  MOV             R5, R0
B3448:  BLT             loc_B33D6
B344A:  CMP             R0, #0xA
B344C:  BNE             loc_B34C2
B344E:  LDR             R5, [SP,#0x20+var_20]
B3450:  CMP             R6, #1
B3452:  BLT             loc_B34FC
B3454:  MOVW            R0, #0x8000
B3458:  MOVW            R1, #0x7FFF
B345C:  MOVT            R0, #0xFFFF
B3460:  CMP.W           R9, #1
B3464:  BNE             loc_B3492
B3466:  LDR             R2, [R4]
B3468:  AND.W           R3, R2, #1
B346C:  ADD.W           R2, R3, R2,ASR#1
B3470:  CMP             R2, R0
B3472:  IT LE
B3474:  MOVLE           R2, R0
B3476:  CMP             R2, R1
B3478:  IT GE
B347A:  MOVGE           R2, R1
B347C:  SUBS            R6, #1
B347E:  STRH.W          R2, [R10],#2
B3482:  MOV.W           R2, R2,LSL#16
B3486:  MOV.W           R2, R2,ASR#15
B348A:  STR.W           R2, [R4],#4
B348E:  BNE             loc_B3466
B3490:  B               loc_B34FC
B3492:  LDR             R2, [R4]
B3494:  ASRS            R2, R5
B3496:  ADDS            R2, #1
B3498:  ASRS            R3, R2, #1
B349A:  CMP             R3, R0
B349C:  MOV             R3, R0
B349E:  IT GT
B34A0:  ASRGT           R3, R2, #1
B34A2:  CMP             R3, R1
B34A4:  IT GE
B34A6:  MOVGE           R3, R1
B34A8:  SUBS            R6, #1
B34AA:  SXTH            R2, R3
B34AC:  STRH.W          R3, [R10],#2
B34B0:  LSL.W           R2, R2, R9
B34B4:  STR.W           R2, [R4],#4
B34B8:  BNE             loc_B3492
B34BA:  B               loc_B34FC
B34BC:  MOV             R0, R5
B34BE:  CMP             R0, #0xA
B34C0:  BEQ             loc_B344E
B34C2:  LDR             R1, [SP,#0x20+var_20]
B34C4:  CMP             R6, #1
B34C6:  BLT             loc_B34FC
B34C8:  CMP.W           R9, #1
B34CC:  BNE             loc_B34E4
B34CE:  LDR.W           R0, [R4],#4
B34D2:  SUBS            R6, #1
B34D4:  AND.W           R1, R0, #1
B34D8:  ADD.W           R0, R1, R0,LSR#1
B34DC:  STRH.W          R0, [R10],#2
B34E0:  BNE             loc_B34CE
B34E2:  B               loc_B34FC
B34E4:  LDR.W           R0, [R4],#4
B34E8:  SUBS            R6, #1
B34EA:  ASR.W           R0, R0, R1
B34EE:  ADD.W           R0, R0, #1
B34F2:  MOV.W           R0, R0,LSR#1
B34F6:  STRH.W          R0, [R10],#2
B34FA:  BNE             loc_B34E4
B34FC:  ADD             SP, SP, #4
B34FE:  POP.W           {R8-R11}
B3502:  POP             {R4-R7,PC}
