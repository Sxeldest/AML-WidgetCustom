; =========================================================
; Game Engine Function: _ZN9CDecision3SetEPiPA4_fPA2_iPA6_f
; Address            : 0x4BD540 - 0x4BD620
; =========================================================

4BD540:  PUSH            {R4-R7,LR}
4BD542:  ADD             R7, SP, #0xC
4BD544:  PUSH.W          {R11}
4BD548:  MOVW            LR, #0x8081
4BD54C:  ADD.W           R12, R3, #4
4BD550:  ADDS            R2, #8
4BD552:  MOVS            R3, #0
4BD554:  MOVT            LR, #0x8080
4BD558:  MOVS            R4, #1
4BD55A:  LDR.W           R5, [R1,R3,LSL#1]
4BD55E:  STR.W           R5, [R0,R3,LSL#1]
4BD562:  VLDR            S0, [R2,#-8]
4BD566:  VLDR            S2, [R2,#-4]
4BD56A:  VLDR            S4, [R2]
4BD56E:  VLDR            S6, [R2,#4]
4BD572:  VCVT.U32.F32    S2, S2
4BD576:  VCVT.U32.F32    S4, S4
4BD57A:  VCVT.U32.F32    S8, S0
4BD57E:  VCVT.U32.F32    S6, S6
4BD582:  VMOV            R5, S2
4BD586:  VMOV            R6, S8
4BD58A:  ADD             R5, R6
4BD58C:  VMOV            R6, S4
4BD590:  ADD             R5, R6
4BD592:  VMOV            R6, S6
4BD596:  ADD             R5, R6
4BD598:  UMULL.W         R5, R6, R5, LR
4BD59C:  ADD.W           R5, R4, R6,LSR#7
4BD5A0:  VMOV            S2, R5
4BD5A4:  ADD.W           R5, R0, R3,LSL#1
4BD5A8:  VCVT.F32.U32    S2, S2
4BD5AC:  VDIV.F32        S0, S0, S2
4BD5B0:  VCVT.U32.F32    S0, S0
4BD5B4:  VMOV            R6, S0
4BD5B8:  STRB            R6, [R5,#0x18]
4BD5BA:  VLDR            S0, [R2,#-4]
4BD5BE:  VDIV.F32        S0, S0, S2
4BD5C2:  VCVT.U32.F32    S0, S0
4BD5C6:  VMOV            R6, S0
4BD5CA:  STRB            R6, [R5,#0x19]
4BD5CC:  VLDR            S0, [R2]
4BD5D0:  VDIV.F32        S0, S0, S2
4BD5D4:  VCVT.U32.F32    S0, S0
4BD5D8:  VMOV            R6, S0
4BD5DC:  STRB            R6, [R5,#0x1A]
4BD5DE:  VLDR            S0, [R2,#4]
4BD5E2:  ADDS            R2, #0x10
4BD5E4:  VDIV.F32        S0, S0, S2
4BD5E8:  VCVT.U32.F32    S0, S0
4BD5EC:  VMOV            R6, S0
4BD5F0:  STRB            R6, [R5,#0x1B]
4BD5F2:  ADDS            R6, R0, R3
4BD5F4:  LDR.W           R5, [R12,#-4]
4BD5F8:  ADDS            R3, #2
4BD5FA:  CMP             R5, #0
4BD5FC:  IT NE
4BD5FE:  MOVNE           R5, #1
4BD600:  STRB.W          R5, [R6,#0x30]
4BD604:  LDR.W           R5, [R12]
4BD608:  ADD.W           R12, R12, #8
4BD60C:  CMP             R5, #0
4BD60E:  IT NE
4BD610:  MOVNE           R5, #1
4BD612:  CMP             R3, #0xC
4BD614:  STRB.W          R5, [R6,#0x31]
4BD618:  BNE             loc_4BD55A
4BD61A:  POP.W           {R11}
4BD61E:  POP             {R4-R7,PC}
