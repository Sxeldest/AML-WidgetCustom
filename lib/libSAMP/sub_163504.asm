; =========================================================
; Game Engine Function: sub_163504
; Address            : 0x163504 - 0x163580
; =========================================================

163504:  PUSH            {R4,R6,R7,LR}
163506:  ADD             R7, SP, #8
163508:  SUB             SP, SP, #0x20
16350A:  LDR             R4, =(off_23494C - 0x163514)
16350C:  MOV.W           R12, #0
163510:  ADD             R4, PC; off_23494C
163512:  LDR             R4, [R4]; dword_23DF24
163514:  LDR.W           LR, [R4]
163518:  CMP.W           LR, #0
16351C:  ITTT NE
16351E:  MOVWNE          R4, #0x2A58
163522:  MOVTNE          R4, #0x67 ; 'g'
163526:  ADDSNE.W        LR, LR, R4
16352A:  BNE             loc_163532
16352C:  MOV             R0, R12
16352E:  ADD             SP, SP, #0x20 ; ' '
163530:  POP             {R4,R6,R7,PC}
163532:  LDR.W           R12, [LR]
163536:  CMP.W           R12, #0
16353A:  BEQ             loc_16357A
16353C:  VLDR            S0, [R7,#arg_18]
163540:  VLDR            S2, [R7,#arg_14]
163544:  VLDR            S4, [R7,#arg_10]
163548:  VLDR            S6, [R7,#arg_C]
16354C:  VLDR            S8, [R7,#arg_8]
163550:  VLDR            S10, [R7,#arg_4]
163554:  VLDR            S12, [R7,#arg_0]
163558:  VSTR            S12, [SP,#0x28+var_28]
16355C:  VSTR            S10, [SP,#0x28+var_24]
163560:  VSTR            S8, [SP,#0x28+var_20]
163564:  VSTR            S6, [SP,#0x28+var_1C]
163568:  VSTR            S4, [SP,#0x28+var_18]
16356C:  VSTR            S2, [SP,#0x28+var_14]
163570:  VSTR            S0, [SP,#0x28+var_10]
163574:  BLX             R12
163576:  MOV             R12, R0
163578:  B               loc_16352C
16357A:  MOV.W           R12, #0
16357E:  B               loc_16352C
