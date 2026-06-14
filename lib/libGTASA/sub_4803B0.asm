; =========================================================
; Game Engine Function: sub_4803B0
; Address            : 0x4803B0 - 0x48049A
; =========================================================

4803B0:  PUSH            {R4-R7,LR}
4803B2:  ADD             R7, SP, #0xC
4803B4:  PUSH.W          {R8-R11}
4803B8:  SUB             SP, SP, #0xC
4803BA:  MOV             R10, R0
4803BC:  MOV             R8, R2
4803BE:  LDR.W           R0, [R10,#0x114]
4803C2:  CMP             R0, #1
4803C4:  BLT             loc_480492
4803C6:  LDR.W           R11, [R3]
4803CA:  MOVS            R4, #0
4803CC:  MOV.W           R9, #1
4803D0:  MOVS            R5, #0
4803D2:  LDR.W           R0, [R10,#0x5C]
4803D6:  CMP             R0, #1
4803D8:  BLT             loc_480474
4803DA:  LDR.W           R6, [R11,R4,LSL#2]
4803DE:  LDR.W           R2, [R8,R5,LSL#2]
4803E2:  ADDS            R1, R6, #2
4803E4:  ADD             R0, R6
4803E6:  CMP             R0, R1
4803E8:  MOV             R3, R1
4803EA:  IT HI
4803EC:  MOVHI           R3, R0
4803EE:  SUBS            R3, R3, R6
4803F0:  SUBS            R3, #1
4803F2:  ADD.W           R12, R9, R3,LSR#1
4803F6:  CMP.W           R12, #0x10
4803FA:  BCS             loc_480402
4803FC:  MOV             R3, R2
4803FE:  MOV             R1, R6
480400:  B               loc_480462
480402:  MOV             R9, R8
480404:  BIC.W           R8, R12, #0xF
480408:  CMP.W           R8, #0
48040C:  BEQ             loc_480458
48040E:  CMP             R0, R1
480410:  MOV             R3, R1
480412:  IT HI
480414:  MOVHI           R3, R0
480416:  SUBS            R3, R3, R6
480418:  SUB.W           LR, R3, #1
48041C:  ADD.W           R3, R2, LR,LSR#1
480420:  ADDS            R3, #1
480422:  CMP             R6, R3
480424:  ITTT CC
480426:  BICCC.W         R3, LR, #1
48042A:  ADDCC           R1, R3
48042C:  CMPCC           R2, R1
48042E:  BCC             loc_480458
480430:  ADD.W           R1, R6, R8,LSL#1
480434:  ADD.W           R3, R2, R8
480438:  MOV             LR, R8
48043A:  VLD1.8          {D16-D17}, [R2]!
48043E:  SUBS.W          LR, LR, #0x10
480442:  VMOV            Q9, Q8
480446:  VST2.8          {D16-D19}, [R6]!
48044A:  BNE             loc_48043A
48044C:  CMP             R12, R8
48044E:  MOV             R8, R9
480450:  MOV.W           R9, #1
480454:  BNE             loc_480462
480456:  B               loc_480470
480458:  MOV             R8, R9
48045A:  MOV             R3, R2
48045C:  MOV             R1, R6
48045E:  MOV.W           R9, #1
480462:  LDRB.W          R2, [R3],#1
480466:  STRB            R2, [R1,#1]
480468:  STRB            R2, [R1]
48046A:  ADDS            R1, #2
48046C:  CMP             R1, R0
48046E:  BCC             loc_480462
480470:  LDR.W           R0, [R10,#0x5C]
480474:  ORR.W           R3, R4, #1; int
480478:  STRD.W          R9, R0, [SP,#0x28+var_28]; int
48047C:  MOV             R0, R11; unsigned __int8 **
48047E:  MOV             R1, R4; int
480480:  MOV             R2, R11; unsigned __int8 **
480482:  BLX             j__Z17jcopy_sample_rowsPPhiS0_iij; jcopy_sample_rows(uchar **,int,uchar **,int,int,uint)
480486:  LDR.W           R0, [R10,#0x114]
48048A:  ADDS            R4, #2
48048C:  ADDS            R5, #1
48048E:  CMP             R4, R0
480490:  BLT             loc_4803D2
480492:  ADD             SP, SP, #0xC
480494:  POP.W           {R8-R11}
480498:  POP             {R4-R7,PC}
