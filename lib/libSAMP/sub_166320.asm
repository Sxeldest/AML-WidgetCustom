; =========================================================
; Game Engine Function: sub_166320
; Address            : 0x166320 - 0x166460
; =========================================================

166320:  PUSH            {R4,R6,R7,LR}
166322:  ADD             R7, SP, #8
166324:  SUB             SP, SP, #0x30
166326:  LDR             R4, =(dword_381B58 - 0x166338)
166328:  VMOV.F32        S0, #0.5
16632C:  VMOV            S8, R0
166330:  MOVW            R0, #0x1518
166334:  ADD             R4, PC; dword_381B58
166336:  VMOV            S6, R3
16633A:  CMP             R2, #3; switch 4 cases
16633C:  LDR.W           R12, [R4]
166340:  MOVW            R4, #0x18C8
166344:  ADD             R4, R12
166346:  ADD             R0, R12
166348:  VLDR            S4, [R4]
16634C:  VMUL.F32        S2, S4, S0
166350:  VMOV            S0, R1
166354:  VMLA.F32        S0, S2, S6
166358:  VADD.F32        S2, S2, S8
16635C:  BHI             def_16636A; jumptable 0016636A default case
16635E:  VLDR            S8, =0.4
166362:  VMUL.F32        S4, S4, S8
166366:  VMUL.F32        S8, S4, S6
16636A:  TBB.W           [PC,R2]; switch jump
16636E:  DCB 2; jump table for switch statement
16636F:  DCB 4
166370:  DCB 0x28
166371:  DCB 0x2A
166372:  VNEG.F32        S8, S8; jumptable 0016636A case 0
166376:  VMOV.F32        S4, #-0.75; jumptable 0016636A case 1
16637A:  VLDR            S6, =-0.866
16637E:  VMOV.F32        S10, #0.75
166382:  VLDR            S12, =0.866
166386:  VLDR            S14, =0.0
16638A:  VMUL.F32        S6, S8, S6
16638E:  VMUL.F32        S12, S8, S12
166392:  VMUL.F32        S1, S8, S14
166396:  VMUL.F32        S4, S8, S4
16639A:  VMUL.F32        S14, S8, S10
16639E:  VMOV.F32        S10, S4
1663A2:  B               loc_1663EE
1663A4:  VLDR            S4, =0.0; jumptable 0016636A default case
1663A8:  VMOV.F32        S6, S4
1663AC:  VMOV.F32        S10, S4
1663B0:  VMOV.F32        S12, S4
1663B4:  VMOV.F32        S14, S4
1663B8:  VMOV.F32        S1, S4
1663BC:  B               loc_1663EE
1663BE:  VNEG.F32        S8, S8; jumptable 0016636A case 2
1663C2:  VMOV.F32        S6, #-0.75; jumptable 0016636A case 3
1663C6:  VLDR            S4, =0.866
1663CA:  VMOV.F32        S12, #0.75
1663CE:  VLDR            S10, =-0.866
1663D2:  VLDR            S14, =0.0
1663D6:  VMUL.F32        S4, S8, S4
1663DA:  VMUL.F32        S10, S8, S10
1663DE:  VMUL.F32        S14, S8, S14
1663E2:  VMUL.F32        S6, S8, S6
1663E6:  VMUL.F32        S1, S8, S12
1663EA:  VMOV.F32        S12, S6
1663EE:  VADD.F32        S8, S0, S1
1663F2:  LDR.W           R1, [R0,#0x494]
1663F6:  VADD.F32        S12, S0, S12
1663FA:  VADD.F32        S14, S2, S14
1663FE:  VADD.F32        S10, S2, S10
166402:  LDR.W           R4, [R1,#0x27C]
166406:  VADD.F32        S2, S2, S4
16640A:  MOVW            R1, #0x15C4
16640E:  VADD.F32        S0, S0, S6
166412:  ADD             R1, R12
166414:  VLD1.32         {D16-D17}, [R1]
166418:  MOVS            R1, #0xC
16641A:  VSTR            S8, [SP,#0x38+var_1C]
16641E:  VSTR            S14, [SP,#0x38+var_20]
166422:  VSTR            S12, [SP,#0x38+var_24]
166426:  VSTR            S10, [SP,#0x38+var_28]
16642A:  VSTR            S0, [SP,#0x38+var_2C]
16642E:  VSTR            S2, [SP,#0x38+var_30]
166432:  VLDR            S0, [R0]
166436:  ADD             R0, SP, #0x38+var_18
166438:  MOV             R2, R0
16643A:  VST1.64         {D16-D17}, [R2],R1
16643E:  VLDR            S2, [R2]
166442:  VMUL.F32        S0, S0, S2
166446:  VSTR            S0, [R2]
16644A:  BL              sub_165778
16644E:  ADD             R1, SP, #0x38+var_20
166450:  ADD             R2, SP, #0x38+var_28
166452:  ADD             R3, SP, #0x38+var_30
166454:  STR             R0, [SP,#0x38+var_38]
166456:  MOV             R0, R4
166458:  BL              sub_17443A
16645C:  ADD             SP, SP, #0x30 ; '0'
16645E:  POP             {R4,R6,R7,PC}
