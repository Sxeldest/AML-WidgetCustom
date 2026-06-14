; =========================================================
; Game Engine Function: _ZN9RQTexture14ConvertToRaw16EPhS0_jj15RQTextureFormat
; Address            : 0x1D4340 - 0x1D4558
; =========================================================

1D4340:  PUSH            {R4-R7,LR}
1D4342:  ADD             R7, SP, #0xC
1D4344:  PUSH.W          {R11}
1D4348:  LDR             R4, [R7,#arg_0]
1D434A:  MOV             R5, R0
1D434C:  CMP             R4, #0xA; switch 11 cases
1D434E:  BHI.W           def_1D4356; jumptable 001D4356 default case, cases 5,6
1D4352:  MUL.W           R6, R3, R2
1D4356:  TBH.W           [PC,R4,LSL#1]; switch jump
1D435A:  DCW 0x24; jump table for switch statement
1D435C:  DCW 0x7C
1D435E:  DCW 0x1C
1D4360:  DCW 0x1C
1D4362:  DCW 0x1C
1D4364:  DCW 0xFC
1D4366:  DCW 0xFC
1D4368:  DCW 0xB
1D436A:  DCW 0xB
1D436C:  DCW 0xB
1D436E:  DCW 0xB; unsigned int
1D4370:  MOV             R0, R1; jumptable 001D4356 cases 7-10
1D4372:  MOV             R1, R4; int
1D4374:  BLX             j__Z17ConvertDXTToRaw16PKv15RQTextureFormatjj; ConvertDXTToRaw16(void const*,RQTextureFormat,uint,uint)
1D4378:  MOV             R4, R0
1D437A:  LSLS            R2, R6, #1; size_t
1D437C:  MOV             R0, R5; void *
1D437E:  MOV             R1, R4; void *
1D4380:  BLX             memcpy_1
1D4384:  MOV             R0, R4; p
1D4386:  POP.W           {R11}
1D438A:  POP.W           {R4-R7,LR}
1D438E:  B.W             j_free
1D4392:  LSLS            R2, R6, #1; jumptable 001D4356 cases 2-4
1D4394:  MOV             R0, R5; void *
1D4396:  POP.W           {R11}
1D439A:  POP.W           {R4-R7,LR}
1D439E:  B.W             j_memcpy_1
1D43A2:  CMP             R6, #0; jumptable 001D4356 case 0
1D43A4:  BEQ.W           def_1D4356; jumptable 001D4356 default case, cases 5,6
1D43A8:  CMP             R6, #8
1D43AA:  BCC.W           loc_1D44EA
1D43AE:  AND.W           R12, R6, #7
1D43B2:  SUBS.W          R4, R6, R12
1D43B6:  BEQ.W           loc_1D44EA
1D43BA:  ADD.W           R0, R1, R6,LSL#2
1D43BE:  CMP             R0, R5
1D43C0:  ITT HI
1D43C2:  ADDHI.W         R0, R5, R6,LSL#1
1D43C6:  CMPHI           R0, R1
1D43C8:  BHI.W           loc_1D44EA
1D43CC:  VMOV.I8         D16, #0xF0
1D43D0:  ADD.W           R2, R5, R4,LSL#1
1D43D4:  ADD.W           R0, R1, R4,LSL#2
1D43D8:  MOV             R3, R4
1D43DA:  VLD4.8          {D18-D21}, [R1]!
1D43DE:  SUBS            R3, #8
1D43E0:  VAND            D17, D18, D16
1D43E4:  VAND            D22, D19, D16
1D43E8:  VAND            D23, D20, D16
1D43EC:  VMOVL.U8        Q9, D21
1D43F0:  VMOVL.U8        Q13, D22
1D43F4:  VMOVL.U8        Q12, D17
1D43F8:  VMOVL.U8        Q10, D23
1D43FC:  VMOVL.U16       Q15, D19
1D4400:  VSHLL.U16       Q14, D27, #4
1D4404:  VSHLL.U16       Q11, D25, #8
1D4408:  VMOVL.U16       Q9, D18
1D440C:  VMOVL.U16       Q0, D21
1D4410:  VSHLL.U16       Q12, D24, #8
1D4414:  VSHLL.U16       Q13, D26, #4
1D4418:  VORR            Q11, Q14, Q11
1D441C:  VMOVL.U16       Q10, D20
1D4420:  VORR            Q12, Q13, Q12
1D4424:  VSHR.U32        Q13, Q15, #4
1D4428:  VORR            Q11, Q11, Q0
1D442C:  VSHR.U32        Q9, Q9, #4
1D4430:  VORR            Q10, Q12, Q10
1D4434:  VORR            Q11, Q11, Q13
1D4438:  VORR            Q9, Q10, Q9
1D443C:  VMOVN.I32       D21, Q11
1D4440:  VMOVN.I32       D20, Q9
1D4444:  VST1.16         {D20-D21}, [R5]!
1D4448:  BNE             loc_1D43DA
1D444A:  CMP.W           R12, #0
1D444E:  BNE             loc_1D44F0
1D4450:  B               def_1D4356; jumptable 001D4356 default case, cases 5,6
1D4452:  CMP             R6, #0; jumptable 001D4356 case 1
1D4454:  BEQ             def_1D4356; jumptable 001D4356 default case, cases 5,6
1D4456:  CMP             R6, #7
1D4458:  BLS             loc_1D4524
1D445A:  AND.W           R12, R6, #7
1D445E:  SUBS.W          R4, R6, R12
1D4462:  BEQ             loc_1D4524
1D4464:  ADD.W           R0, R6, R6,LSL#1
1D4468:  ADD             R0, R1
1D446A:  CMP             R0, R5
1D446C:  ITT HI
1D446E:  ADDHI.W         R0, R5, R6,LSL#1
1D4472:  CMPHI           R0, R1
1D4474:  BHI             loc_1D4524
1D4476:  ADD.W           R0, R4, R4,LSL#1
1D447A:  VMOV.I8         D16, #0xF8
1D447E:  VMOV.I8         D17, #0xFC
1D4482:  ADD.W           R2, R5, R4,LSL#1
1D4486:  ADD             R0, R1
1D4488:  MOV             R3, R4
1D448A:  VLD3.8          {D18-D20}, [R1]!
1D448E:  SUBS            R3, #8
1D4490:  VAND            D22, D18, D16
1D4494:  VAND            D23, D19, D17
1D4498:  VMOVL.U8        Q9, D20
1D449C:  VMOVL.U8        Q10, D22
1D44A0:  VMOVL.U8        Q11, D23
1D44A4:  VMOVL.U16       Q12, D19
1D44A8:  VMOVL.U16       Q9, D18
1D44AC:  VSHLL.U16       Q13, D21, #8
1D44B0:  VSHLL.U16       Q14, D23, #3
1D44B4:  VSHLL.U16       Q10, D20, #8
1D44B8:  VSHLL.U16       Q11, D22, #3
1D44BC:  VSHR.U32        Q12, Q12, #3
1D44C0:  VORR            Q13, Q14, Q13
1D44C4:  VORR            Q10, Q11, Q10
1D44C8:  VSHR.U32        Q9, Q9, #3
1D44CC:  VORR            Q11, Q13, Q12
1D44D0:  VORR            Q9, Q10, Q9
1D44D4:  VMOVN.I32       D21, Q11
1D44D8:  VMOVN.I32       D20, Q9
1D44DC:  VST1.16         {D20-D21}, [R5]!
1D44E0:  BNE             loc_1D448A
1D44E2:  CMP.W           R12, #0
1D44E6:  BNE             loc_1D452A
1D44E8:  B               def_1D4356; jumptable 001D4356 default case, cases 5,6
1D44EA:  MOVS            R4, #0
1D44EC:  MOV             R0, R1
1D44EE:  MOV             R2, R5
1D44F0:  SUBS            R1, R6, R4
1D44F2:  LDRB            R6, [R0,#1]
1D44F4:  SUBS            R1, #1
1D44F6:  LDRB            R3, [R0]
1D44F8:  AND.W           R6, R6, #0xF0
1D44FC:  LDRB            R5, [R0,#2]
1D44FE:  AND.W           R3, R3, #0xF0
1D4502:  LDRB            R4, [R0,#3]
1D4504:  MOV.W           R6, R6,LSL#4
1D4508:  ADD.W           R0, R0, #4
1D450C:  ORR.W           R3, R6, R3,LSL#8
1D4510:  AND.W           R6, R5, #0xF0
1D4514:  ORR.W           R3, R3, R6
1D4518:  ORR.W           R3, R3, R4,LSR#4
1D451C:  STRH.W          R3, [R2],#2
1D4520:  BNE             loc_1D44F2
1D4522:  B               def_1D4356; jumptable 001D4356 default case, cases 5,6
1D4524:  MOVS            R4, #0
1D4526:  MOV             R0, R1
1D4528:  MOV             R2, R5
1D452A:  SUBS            R1, R6, R4
1D452C:  LDRB            R3, [R0]
1D452E:  SUBS            R1, #1
1D4530:  LDRB            R6, [R0,#1]
1D4532:  LDRB            R5, [R0,#2]
1D4534:  AND.W           R3, R3, #0xF8
1D4538:  AND.W           R6, R6, #0xFC
1D453C:  ADD.W           R0, R0, #3
1D4540:  MOV.W           R6, R6,LSL#3
1D4544:  ORR.W           R3, R6, R3,LSL#8
1D4548:  ORR.W           R3, R3, R5,LSR#3
1D454C:  STRH.W          R3, [R2],#2
1D4550:  BNE             loc_1D452C
1D4552:  POP.W           {R11}; jumptable 001D4356 default case, cases 5,6
1D4556:  POP             {R4-R7,PC}
