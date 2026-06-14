; =========================================================
; Game Engine Function: sub_17D338
; Address            : 0x17D338 - 0x17D49E
; =========================================================

17D338:  CMP             R1, #0
17D33A:  BEQ.W           locret_17D49C
17D33E:  CMP             R2, #0
17D340:  BEQ.W           locret_17D49C
17D344:  VMOV.F32        S2, #1.0
17D348:  VMOV            S0, R3
17D34C:  VCMP.F32        S0, S2
17D350:  VMRS            APSR_nzcv, FPSCR
17D354:  BGT.W           locret_17D49C
17D358:  PUSH            {R4-R7,LR}
17D35A:  ADD             R7, SP, #0x14+var_8
17D35C:  PUSH.W          {R8-R11}
17D360:  SUB             SP, SP, #4
17D362:  VPUSH           {D8-D15}
17D366:  VLDR            S26, [R2,#8]
17D36A:  MOV             R4, R0
17D36C:  VLDR            S27, [R1,#8]
17D370:  VLDR            S24, [R2,#4]
17D374:  VMUL.F32        S2, S27, S26
17D378:  VLDR            S25, [R1,#4]
17D37C:  VLDR            S30, [R2,#0xC]
17D380:  VLDR            S28, [R1,#0xC]
17D384:  VLDR            S20, [R2]
17D388:  VLDR            S21, [R1]
17D38C:  VMLA.F32        S2, S25, S24
17D390:  VMLA.F32        S2, S28, S30
17D394:  VMLA.F32        S2, S21, S20
17D398:  VCVT.F64.F32    D16, S2
17D39C:  VCMP.F32        S2, #0.0
17D3A0:  VMRS            APSR_nzcv, FPSCR
17D3A4:  BPL             loc_17D3BA
17D3A6:  VNEG.F32        S20, S20
17D3AA:  VNEG.F32        S30, S30
17D3AE:  VNEG.F32        S26, S26
17D3B2:  VNEG.F32        S24, S24
17D3B6:  VNEG.F64        D16, D16
17D3BA:  VMOV.F64        D18, #1.0
17D3BE:  VSUB.F64        D17, D18, D16
17D3C2:  VLDR            D19, =0.01
17D3C6:  VCMP.F64        D17, D19
17D3CA:  VMRS            APSR_nzcv, FPSCR
17D3CE:  BLE             loc_17D426
17D3D0:  VMOV            R0, R1, D16; x
17D3D4:  VCVT.F64.F32    D8, S0
17D3D8:  VSUB.F64        D9, D18, D8
17D3DC:  BLX             acos
17D3E0:  VMOV            D11, R0, R1
17D3E4:  MOV             R5, R0
17D3E6:  MOV             R6, R1
17D3E8:  VMUL.F64        D16, D9, D11
17D3EC:  VMOV            R0, R1, D16; x
17D3F0:  BLX             sin
17D3F4:  VMUL.F64        D16, D11, D8
17D3F8:  MOV             R8, R0
17D3FA:  MOV             R9, R1
17D3FC:  VMOV            R0, R1, D16; x
17D400:  BLX             sin
17D404:  MOV             R10, R0
17D406:  MOV             R11, R1
17D408:  MOV             R0, R5; x
17D40A:  MOV             R1, R6; x
17D40C:  BLX             sin
17D410:  VMOV            D16, R0, R1
17D414:  VMOV            D17, R10, R11
17D418:  VMOV            D18, R8, R9
17D41C:  VDIV.F64        D17, D17, D16
17D420:  VDIV.F64        D16, D18, D16
17D424:  B               loc_17D42E
17D426:  VCVT.F64.F32    D17, S0
17D42A:  VSUB.F64        D16, D18, D17
17D42E:  VCVT.F64.F32    D18, S30
17D432:  VCVT.F64.F32    D19, S26
17D436:  VCVT.F64.F32    D20, S24
17D43A:  VCVT.F64.F32    D21, S20
17D43E:  VMUL.F64        D18, D17, D18
17D442:  VMUL.F64        D19, D17, D19
17D446:  VMUL.F64        D20, D17, D20
17D44A:  VMUL.F64        D17, D17, D21
17D44E:  VCVT.F64.F32    D22, S28
17D452:  VCVT.F64.F32    D23, S27
17D456:  VCVT.F64.F32    D24, S25
17D45A:  VCVT.F64.F32    D21, S21
17D45E:  VMLA.F64        D18, D16, D22
17D462:  VMLA.F64        D19, D16, D23
17D466:  VMLA.F64        D20, D16, D24
17D46A:  VMLA.F64        D17, D16, D21
17D46E:  VCVT.F32.F64    S0, D18
17D472:  VCVT.F32.F64    S2, D19
17D476:  VCVT.F32.F64    S4, D20
17D47A:  VCVT.F32.F64    S6, D17
17D47E:  VSTR            S6, [R4]
17D482:  VSTR            S4, [R4,#4]
17D486:  VSTR            S2, [R4,#8]
17D48A:  VSTR            S0, [R4,#0xC]
17D48E:  VPOP            {D8-D15}
17D492:  ADD             SP, SP, #4
17D494:  POP.W           {R8-R11}
17D498:  POP.W           {R4-R7,LR}
17D49C:  BX              LR
