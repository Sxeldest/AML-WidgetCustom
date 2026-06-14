; =========================================================
; Game Engine Function: _ZN9CPathFind34FindNodeOrientationForCarPlacementE12CNodeAddress
; Address            : 0x3182A4 - 0x318404
; =========================================================

3182A4:  PUSH            {R4-R7,LR}
3182A6:  ADD             R7, SP, #0xC
3182A8:  PUSH.W          {R8-R10}
3182AC:  SUB             SP, SP, #0x10
3182AE:  UXTH.W          R10, R1
3182B2:  VLDR            S0, =0.0
3182B6:  ADD.W           R8, R0, R10,LSL#2
3182BA:  LDR.W           R2, [R8,#0x804]
3182BE:  CMP             R2, #0
3182C0:  BEQ.W           loc_3183F8
3182C4:  MOV.W           R9, R1,LSR#16
3182C8:  RSB.W           R1, R9, R9,LSL#3
3182CC:  ADD.W           LR, R2, R1,LSL#2
3182D0:  LDRB.W          R1, [LR,#0x1A]
3182D4:  LDRH.W          R2, [LR,#0x18]
3182D8:  ORR.W           R6, R2, R1,LSL#16
3182DC:  ANDS.W          R2, R6, #0xF
3182E0:  BEQ.W           loc_3183F8
3182E4:  ADD.W           R1, LR, #0x10
3182E8:  TST.W           R6, #0xE
3182EC:  BEQ             loc_31834E
3182EE:  LDRSH.W         R1, [R1]
3182F2:  BIC.W           R2, R2, #0xFF000000
3182F6:  LDR.W           R6, [R8,#0xDA4]
3182FA:  MOVS            R4, #0
3182FC:  ADD.W           R5, R6, R1,LSL#1
318300:  SUBS            R6, R2, #1
318302:  UXTH.W          R12, R1
318306:  LDRH.W          R2, [R5,R4,LSL#1]
31830A:  LSRS            R1, R2, #0xA
31830C:  ADD.W           R1, R0, R1,LSL#2
318310:  LDR.W           R3, [R1,#0x804]
318314:  CBZ             R3, loc_318346
318316:  BFC.W           R2, #0xA, #0x16
31831A:  LDR.W           R1, [R1,#0x924]
31831E:  RSB.W           R2, R2, R2,LSL#3
318322:  ADD.W           R1, R1, R2,LSL#1
318326:  LDRH            R2, [R1,#4]
318328:  CMP             R2, R10
31832A:  BNE             loc_31833E
31832C:  LDRH.W          R2, [R1,#0xB]
318330:  LDRH            R1, [R1,#6]
318332:  CMP             R1, R9
318334:  BNE             loc_318342
318336:  TST.W           R2, #0x38
31833A:  BEQ             loc_318346
31833C:  B               loc_318354
31833E:  LDRH.W          R2, [R1,#0xB]
318342:  LSLS            R1, R2, #0x1D
318344:  BNE             loc_318354
318346:  ADDS            R4, #1
318348:  CMP             R4, R6
31834A:  BLT             loc_318306
31834C:  B               loc_318354
31834E:  LDRH.W          R12, [R1]
318352:  MOVS            R4, #0
318354:  LDR.W           R1, [R8,#0xA44]
318358:  SXTAH.W         R2, R4, R12
31835C:  LDR.W           R1, [R1,R2,LSL#2]
318360:  UXTH            R2, R1
318362:  ADD.W           R0, R0, R2,LSL#2
318366:  LDR.W           R0, [R0,#0x804]
31836A:  CMP             R0, #0
31836C:  BEQ             loc_3183F8
31836E:  LSRS            R2, R1, #0x10
318370:  VMOV.F32        S0, #0.125
318374:  LSLS            R2, R2, #3
318376:  SUB.W           R1, R2, R1,LSR#16
31837A:  LDRSH.W         R2, [LR,#0xA]
31837E:  ADD.W           R0, R0, R1,LSL#2
318382:  LDRSH.W         R1, [LR,#8]
318386:  LDRSH.W         R3, [R0,#8]
31838A:  VMOV            S2, R2
31838E:  LDRSH.W         R0, [R0,#0xA]
318392:  VMOV            S6, R1
318396:  VCVT.F32.S32    S2, S2
31839A:  VMOV            S8, R3
31839E:  VMOV            S4, R0
3183A2:  MOVS            R0, #0
3183A4:  VCVT.F32.S32    S4, S4
3183A8:  VCVT.F32.S32    S6, S6
3183AC:  VCVT.F32.S32    S8, S8
3183B0:  STR             R0, [SP,#0x28+var_1C]
3183B2:  VMUL.F32        S2, S2, S0
3183B6:  ADD             R0, SP, #0x28+var_24; this
3183B8:  VMUL.F32        S4, S4, S0
3183BC:  VMUL.F32        S6, S6, S0
3183C0:  VMUL.F32        S0, S8, S0
3183C4:  VSUB.F32        S2, S4, S2
3183C8:  VSUB.F32        S0, S0, S6
3183CC:  VSTR            S2, [SP,#0x28+var_20]
3183D0:  VSTR            S0, [SP,#0x28+var_24]
3183D4:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3183D8:  LDRD.W          R0, R1, [SP,#0x28+var_24]; x
3183DC:  EOR.W           R0, R0, #0x80000000; y
3183E0:  BLX             atan2f
3183E4:  VLDR            S0, =180.0
3183E8:  VMOV            S2, R0
3183EC:  VMUL.F32        S0, S2, S0
3183F0:  VLDR            S2, =3.1416
3183F4:  VDIV.F32        S0, S0, S2
3183F8:  VMOV            R0, S0
3183FC:  ADD             SP, SP, #0x10
3183FE:  POP.W           {R8-R10}
318402:  POP             {R4-R7,PC}
