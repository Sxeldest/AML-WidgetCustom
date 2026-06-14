; =========================================================
; Game Engine Function: _Z17RtQuatQueryRotatePK6RtQuatP5RwV3dPf
; Address            : 0x211440 - 0x21153E
; =========================================================

211440:  PUSH            {R4-R7,LR}
211442:  ADD             R7, SP, #0xC
211444:  PUSH.W          {R11}
211448:  VPUSH           {D8}
21144C:  SUB             SP, SP, #8
21144E:  MOV             R4, R0
211450:  MOV             R5, R2
211452:  MOV             R6, R1
211454:  CMP             R4, #0
211456:  BEQ             loc_21151A
211458:  CMP             R6, #0
21145A:  IT NE
21145C:  CMPNE           R5, #0
21145E:  BEQ             loc_21151A
211460:  VLDR            S0, [R4]
211464:  VLDR            S2, [R4,#4]
211468:  VMUL.F32        S0, S0, S0
21146C:  VLDR            S4, [R4,#8]
211470:  VMUL.F32        S2, S2, S2
211474:  VMUL.F32        S4, S4, S4
211478:  VADD.F32        S0, S0, S2
21147C:  VADD.F32        S0, S0, S4
211480:  VMOV            R0, S0; float
211484:  BLX             j__Z7_rwSqrtf; _rwSqrt(float)
211488:  VMOV.F32        S0, #1.0
21148C:  LDR             R1, [R4,#0xC]; x
21148E:  VMOV            S2, R0; y
211492:  VLDR            S16, =0.0
211496:  VCMPE.F32       S2, #0.0
21149A:  VMRS            APSR_nzcv, FPSCR
21149E:  VDIV.F32        S0, S0, S2
2114A2:  IT GT
2114A4:  VMOVGT.F32      S16, S0
2114A8:  BLX             atan2f
2114AC:  VLDR            S2, =1.5708
2114B0:  VMOV            S0, R0
2114B4:  VCMPE.F32       S0, S2
2114B8:  VMRS            APSR_nzcv, FPSCR
2114BC:  BLE             loc_2114E8
2114BE:  VLDR            S2, [R4]
2114C2:  VLDR            S4, =3.1416
2114C6:  VNMUL.F32       S2, S16, S2
2114CA:  VSUB.F32        S0, S4, S0
2114CE:  VSTR            S2, [R6]
2114D2:  VLDR            S2, [R4,#4]
2114D6:  VNMUL.F32       S2, S16, S2
2114DA:  VSTR            S2, [R6,#4]
2114DE:  VLDR            S2, [R4,#8]
2114E2:  VNMUL.F32       S2, S16, S2
2114E6:  B               loc_211508
2114E8:  VLDR            S2, [R4]
2114EC:  VMUL.F32        S2, S16, S2
2114F0:  VSTR            S2, [R6]
2114F4:  VLDR            S2, [R4,#4]
2114F8:  VMUL.F32        S2, S16, S2
2114FC:  VSTR            S2, [R6,#4]
211500:  VLDR            S2, [R4,#8]
211504:  VMUL.F32        S2, S16, S2
211508:  VLDR            S4, =114.59
21150C:  VSTR            S2, [R6,#8]
211510:  VMUL.F32        S0, S0, S4
211514:  VSTR            S0, [R5]
211518:  B               loc_211530
21151A:  MOVS            R0, #0x16
21151C:  MOVS            R4, #0
21151E:  MOVT            R0, #0x8000; int
211522:  STR             R4, [SP,#0x20+var_20]
211524:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
211528:  STR             R0, [SP,#0x20+var_1C]
21152A:  MOV             R0, SP
21152C:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
211530:  MOV             R0, R4
211532:  ADD             SP, SP, #8
211534:  VPOP            {D8}
211538:  POP.W           {R11}
21153C:  POP             {R4-R7,PC}
