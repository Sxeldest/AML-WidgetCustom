; =========================================================
; Game Engine Function: silk_resampler_down2
; Address            : 0xCF4FC - 0xCF5A0
; =========================================================

CF4FC:  PUSH            {R4-R7,LR}
CF4FE:  ADD             R7, SP, #0xC
CF500:  PUSH.W          {R8-R11}
CF504:  SUB             SP, SP, #4
CF506:  MOV.W           R11, R3,ASR#1
CF50A:  CMP.W           R11, #1
CF50E:  BLT             loc_CF598
CF510:  LDR             R4, [R0]
CF512:  ADDS            R2, #2
CF514:  STR             R0, [SP,#0x20+var_20]
CF516:  MOVW            R9, #0x2690
CF51A:  LDR             R5, [R0,#4]
CF51C:  MOVW            R10, #0x7FFF
CF520:  LDRSH.W         R6, [R2,#-2]
CF524:  MOV             R0, #0xFFFF9B81
CF52C:  LDRSH.W         R8, [R2]
CF530:  RSB.W           R4, R4, R6,LSL#10
CF534:  MOV             R12, R0
CF536:  RSB.W           R0, R5, R8,LSL#10
CF53A:  ADDS            R2, #4
CF53C:  UXTH            R3, R4
CF53E:  MUL.W           R3, R3, R12
CF542:  ASRS            R3, R3, #0x10
CF544:  SMLATB.W        LR, R4, R12, R3
CF548:  UXTH.W          R12, R0
CF54C:  MUL.W           R3, R12, R9
CF550:  LSRS            R3, R3, #0x10
CF552:  SMLATB.W        R12, R0, R9, R3
CF556:  ADD.W           R3, R5, R6,LSL#10
CF55A:  ADD             R3, LR
CF55C:  MOVS            R0, #1
CF55E:  ADD             R3, R12
CF560:  ADD.W           R3, R0, R3,ASR#10
CF564:  MOV             R0, #0xFFFF8000
CF56C:  ASRS            R5, R3, #1
CF56E:  CMP             R5, R0
CF570:  MOV             R5, R0
CF572:  ADD.W           R0, R4, R6,LSL#10
CF576:  IT GT
CF578:  ASRGT           R5, R3, #1
CF57A:  ADD.W           R4, R0, LR
CF57E:  CMP             R5, R10
CF580:  IT GE
CF582:  MOVGE           R5, R10
CF584:  SUBS.W          R11, R11, #1
CF588:  STRH.W          R5, [R1],#2
CF58C:  ADD.W           R5, R12, R8,LSL#10
CF590:  BNE             loc_CF520
CF592:  LDR             R0, [SP,#0x20+var_20]
CF594:  STRD.W          R4, R5, [R0]
CF598:  ADD             SP, SP, #4
CF59A:  POP.W           {R8-R11}
CF59E:  POP             {R4-R7,PC}
