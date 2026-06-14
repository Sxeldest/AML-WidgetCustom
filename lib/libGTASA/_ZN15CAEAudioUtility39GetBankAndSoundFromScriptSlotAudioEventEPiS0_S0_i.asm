; =========================================================
; Game Engine Function: _ZN15CAEAudioUtility39GetBankAndSoundFromScriptSlotAudioEventEPiS0_S0_i
; Address            : 0x3933FC - 0x3934AE
; =========================================================

3933FC:  PUSH            {R4-R7,LR}
3933FE:  ADD             R7, SP, #0xC
393400:  PUSH.W          {R11}
393404:  MOV             R6, R0
393406:  MOV             R4, R2
393408:  LDR             R0, [R6]
39340A:  MOV             R5, R1
39340C:  CMP.W           R0, #0x708
393410:  BGE             loc_39341A
393412:  MOVS            R0, #0
393414:  POP.W           {R11}
393418:  POP             {R4-R7,PC}
39341A:  CMP.W           R0, #0x7D0
39341E:  BGE             loc_39343C
393420:  LDR             R1, =(gScriptBanksLookup_ptr - 0x393426)
393422:  ADD             R1, PC; gScriptBanksLookup_ptr
393424:  LDR             R1, [R1]; gScriptBanksLookup
393426:  ADD.W           R0, R1, R0,LSL#2
39342A:  MOV             R1, #0xFFFFE3E0
393432:  LDR             R0, [R0,R1]
393434:  STR             R0, [R5]
393436:  MOV.W           R0, #0xFFFFFFFF
39343A:  B               loc_3934A4
39343C:  MOVW            R1, #0xFFFF
393440:  CMP             R0, R1
393442:  BNE             loc_393456
393444:  MOVW            R0, #0x123
393448:  CMP             R3, #3
39344A:  STR             R0, [R5]
39344C:  BHI             loc_3934A2
39344E:  MOVS            R0, #2
393450:  AND.W           R0, R0, R3,LSL#1
393454:  B               loc_3934A4
393456:  SUB.W           R0, R0, #0x7D0
39345A:  VLDR            S2, =200.0
39345E:  VMOV            S0, R0
393462:  VCVT.F32.S32    S0, S0
393466:  VDIV.F32        S0, S0, S2
39346A:  VMOV            R0, S0; x
39346E:  BLX             floorf
393472:  VMOV            S0, R0
393476:  MOV             R1, #0x51EB851F
39347E:  VCVT.S32.F32    S0, S0
393482:  VMOV            R0, S0
393486:  ADDS            R0, #0x93
393488:  STR             R0, [R5]
39348A:  LDR             R0, [R6]
39348C:  SUB.W           R0, R0, #0x7D0
393490:  SMMUL.W         R1, R0, R1
393494:  ASRS            R2, R1, #6
393496:  ADD.W           R1, R2, R1,LSR#31
39349A:  MOVS            R2, #0xC8
39349C:  MLS.W           R0, R1, R2, R0
3934A0:  B               loc_3934A4
3934A2:  MOVS            R0, #0
3934A4:  STR             R0, [R4]
3934A6:  MOVS            R0, #1
3934A8:  POP.W           {R11}
3934AC:  POP             {R4-R7,PC}
