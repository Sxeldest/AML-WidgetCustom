; =========================================================
; Game Engine Function: _ZN9CPathFind28CalcDistToAnyConnectingLinksEP9CPathNode7CVector
; Address            : 0x317354 - 0x31747A
; =========================================================

317354:  PUSH            {R4-R7,LR}
317356:  ADD             R7, SP, #0xC
317358:  PUSH.W          {R8-R11}
31735C:  SUB             SP, SP, #4
31735E:  VPUSH           {D8-D9}
317362:  SUB             SP, SP, #0x28
317364:  MOV             R4, R1
317366:  MOV             R8, R0
317368:  LDR             R0, [R7,#arg_0]
31736A:  MOV             R11, R4
31736C:  STRD.W          R2, R3, [SP,#0x58+var_3C]
317370:  STR             R0, [SP,#0x58+var_34]
317372:  LDRH.W          R0, [R11,#0x18]!
317376:  VLDR            S16, =1000000.0
31737A:  LDRB.W          R1, [R11,#2]
31737E:  ORR.W           R0, R0, R1,LSL#16
317382:  TST.W           R0, #0xF
317386:  BEQ             loc_317464
317388:  VMOV.F32        S18, #0.125
31738C:  ADD.W           R9, SP, #0x58+var_54
317390:  ADD.W           R10, SP, #0x58+var_3C
317394:  MOVS            R6, #0
317396:  LDRH            R1, [R4,#0x12]
317398:  LDRSH.W         R2, [R4,#0x10]
31739C:  ADD.W           R1, R8, R1,LSL#2
3173A0:  ADD             R2, R6
3173A2:  LDR.W           R1, [R1,#0xA44]
3173A6:  LDR.W           R1, [R1,R2,LSL#2]
3173AA:  UXTH            R2, R1
3173AC:  ADD.W           R2, R8, R2,LSL#2
3173B0:  LDR.W           R2, [R2,#0x804]
3173B4:  CMP             R2, #0
3173B6:  BEQ             loc_31745A
3173B8:  LDRSH.W         R0, [R4,#8]
3173BC:  LDRSH.W         R3, [R4,#0xA]
3173C0:  LDRSH.W         R5, [R4,#0xC]
3173C4:  VMOV            S2, R0
3173C8:  LSRS            R0, R1, #0x10
3173CA:  VMOV            S0, R3; CVector *
3173CE:  LSLS            R0, R0, #3
3173D0:  VMOV            S4, R5
3173D4:  SUB.W           R0, R0, R1,LSR#16
3173D8:  VCVT.F32.S32    S0, S0
3173DC:  VCVT.F32.S32    S2, S2
3173E0:  ADD.W           R0, R2, R0,LSL#2
3173E4:  VCVT.F32.S32    S4, S4
3173E8:  VMUL.F32        S0, S0, S18
3173EC:  VMUL.F32        S2, S2, S18
3173F0:  VMUL.F32        S4, S4, S18
3173F4:  VSTR            S0, [SP,#0x58+var_44]
3173F8:  VSTR            S2, [SP,#0x58+var_48]
3173FC:  VSTR            S4, [SP,#0x58+var_40]
317400:  LDRSH.W         R1, [R0,#8]
317404:  LDRSH.W         R2, [R0,#0xA]
317408:  LDRSH.W         R0, [R0,#0xC]
31740C:  VMOV            S2, R1
317410:  MOV             R1, R9; CVector *
317412:  VMOV            S0, R2
317416:  MOV             R2, R10; CVector *
317418:  VMOV            S4, R0
31741C:  ADD             R0, SP, #0x58+var_48; this
31741E:  VCVT.F32.S32    S0, S0
317422:  VCVT.F32.S32    S2, S2
317426:  VCVT.F32.S32    S4, S4
31742A:  VMUL.F32        S0, S0, S18
31742E:  VMUL.F32        S2, S2, S18
317432:  VMUL.F32        S4, S4, S18
317436:  VSTR            S0, [SP,#0x58+var_50]
31743A:  VSTR            S2, [SP,#0x58+var_54]
31743E:  VSTR            S4, [SP,#0x58+var_4C]
317442:  BLX             j__ZN10CCollision13DistToLineSqrEPK7CVectorS2_S2_; CCollision::DistToLineSqr(CVector const*,CVector const*,CVector const*)
317446:  VMOV            S0, R0
31744A:  LDRB.W          R1, [R11,#2]
31744E:  VMIN.F32        D8, D8, D0
317452:  LDRH.W          R0, [R11]
317456:  ORR.W           R0, R0, R1,LSL#16
31745A:  ADDS            R6, #1
31745C:  AND.W           R1, R0, #0xF
317460:  CMP             R6, R1
317462:  BLT             loc_317396
317464:  VSQRT.F32       S0, S16
317468:  VMOV            R0, S0
31746C:  ADD             SP, SP, #0x28 ; '('
31746E:  VPOP            {D8-D9}
317472:  ADD             SP, SP, #4
317474:  POP.W           {R8-R11}
317478:  POP             {R4-R7,PC}
