; =========================================================
; Game Engine Function: _ZN9CPathFind28TakeWidthIntoAccountForCoorsE12CNodeAddressS0_tPfS1_
; Address            : 0x319360 - 0x319414
; =========================================================

319360:  PUSH            {R4,R5,R7,LR}
319362:  ADD             R7, SP, #8
319364:  UXTH.W          R12, R1
319368:  MOVW            R4, #0xFFFF
31936C:  CMP             R12, R4
31936E:  ITT NE
319370:  UXTHNE.W        LR, R2
319374:  CMPNE           LR, R4
319376:  BEQ             locret_319412
319378:  ADD.W           R4, R0, R12,LSL#2
31937C:  LDR.W           R12, [R4,#0x804]
319380:  CMP.W           R12, #0
319384:  ITTT NE
319386:  ADDNE.W         R0, R0, LR,LSL#2
31938A:  LDRNE.W         R0, [R0,#0x804]
31938E:  CMPNE           R0, #0
319390:  BEQ             locret_319412
319392:  LSRS            R5, R1, #0x10
319394:  LDRD.W          R4, LR, [R7,#arg_0]
319398:  LSLS            R5, R5, #3
31939A:  SUB.W           R1, R5, R1,LSR#16
31939E:  LSRS            R5, R2, #0x10
3193A0:  SXTH            R3, R3
3193A2:  LSLS            R5, R5, #3
3193A4:  SUB.W           R2, R5, R2,LSR#16
3193A8:  ADD.W           R1, R12, R1,LSL#2
3193AC:  VLDR            S2, =0.00775
3193B0:  ADD.W           R0, R0, R2,LSL#2
3193B4:  LDRB            R5, [R1,#0x16]
3193B6:  LDRB            R2, [R0,#0x16]
3193B8:  CMP             R5, R2
3193BA:  MOV             R2, R0
3193BC:  IT CC
3193BE:  MOVCC           R2, R1
3193C0:  AND.W           R5, R3, #0xF
3193C4:  LDRB            R2, [R2,#0x16]
3193C6:  SUBS            R5, #7
3193C8:  SMULBB.W        R2, R5, R2
3193CC:  VMOV            S0, R2
3193D0:  VCVT.F32.S32    S0, S0
3193D4:  VLDR            S4, [R4]
3193D8:  VMUL.F32        S0, S0, S2
3193DC:  VADD.F32        S0, S4, S0
3193E0:  VSTR            S0, [R4]
3193E4:  LDRB            R2, [R0,#0x16]
3193E6:  LDRB            R5, [R1,#0x16]
3193E8:  CMP             R5, R2
3193EA:  IT CC
3193EC:  MOVCC           R0, R1
3193EE:  LDRB            R0, [R0,#0x16]
3193F0:  UBFX.W          R1, R3, #4, #4
3193F4:  SUBS            R1, #7
3193F6:  SMULBB.W        R0, R1, R0
3193FA:  VMOV            S0, R0
3193FE:  VCVT.F32.S32    S0, S0
319402:  VMUL.F32        S0, S0, S2
319406:  VLDR            S2, [LR]
31940A:  VADD.F32        S0, S2, S0
31940E:  VSTR            S0, [LR]
319412:  POP             {R4,R5,R7,PC}
