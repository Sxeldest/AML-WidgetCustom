; =========================================================
; Game Engine Function: _ZN15CAEAudioUtility22GetRandomNumberInRangeEff
; Address            : 0x393364 - 0x39339A
; =========================================================

393364:  PUSH            {R4,R5,R7,LR}
393366:  ADD             R7, SP, #8
393368:  MOV             R4, R1
39336A:  MOV             R5, R0
39336C:  BLX             rand
393370:  VMOV            S0, R0
393374:  VLDR            S6, =4.6566e-10
393378:  VMOV            S2, R5
39337C:  VCVT.F32.S32    S0, S0
393380:  VMOV            S4, R4
393384:  VSUB.F32        S4, S4, S2
393388:  VMUL.F32        S0, S0, S6
39338C:  VMUL.F32        S0, S4, S0
393390:  VADD.F32        S0, S0, S2
393394:  VMOV            R0, S0
393398:  POP             {R4,R5,R7,PC}
