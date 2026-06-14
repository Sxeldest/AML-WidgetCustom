; =========================================================
; Game Engine Function: sub_187396
; Address            : 0x187396 - 0x1874FE
; =========================================================

187396:  PUSH            {R4-R7,LR}
187398:  ADD             R7, SP, #0xC
18739A:  PUSH.W          {R11}
18739E:  VPUSH           {D8-D9}
1873A2:  VMOV.I32        Q4, #0
1873A6:  MOV             R4, R0
1873A8:  ADD.W           R0, R0, #0x1D4
1873AC:  ADD.W           R5, R4, #0x294
1873B0:  MOVS            R1, #0xC8; n
1873B2:  VST1.32         {D8-D9}, [R0]!
1873B6:  VST1.32         {D8-D9}, [R0]!
1873BA:  VST1.32         {D8-D9}, [R0]!
1873BE:  VST1.32         {D8-D9}, [R0]!
1873C2:  VST1.32         {D8-D9}, [R0]!
1873C6:  VST1.32         {D8-D9}, [R0]!
1873CA:  VST1.32         {D8-D9}, [R0]!
1873CE:  VST1.32         {D8-D9}, [R0]!
1873D2:  VST1.32         {D8-D9}, [R0]!
1873D6:  VST1.32         {D8-D9}, [R0]!
1873DA:  VST1.32         {D8-D9}, [R0]!
1873DE:  VST1.32         {D8-D9}, [R5]!
1873E2:  VST1.32         {D8-D9}, [R5]!
1873E6:  VST1.32         {D8-D9}, [R0]
1873EA:  ADD.W           R0, R4, #0x2E8; int
1873EE:  VST1.32         {D8-D9}, [R5]!
1873F2:  VST1.32         {D8-D9}, [R5]!
1873F6:  BLX             sub_22178C
1873FA:  BL              sub_17E2E4
1873FE:  MOVS            R6, #0
187400:  STR.W           R0, [R4,#0x3A8]
187404:  STRH.W          R6, [R4,#0x2DC]
187408:  STR.W           R6, [R4,#0x408]
18740C:  STR.W           R6, [R4,#0x40C]
187410:  STRH.W          R6, [R4,#0xB4]
187414:  BL              sub_17E348
187418:  LDR.W           R2, [R4,#0x2D8]
18741C:  MOVW            R12, #0x2000
187420:  LDR.W           R3, [R4,#0x3A8]
187424:  MOVT            R12, #0x40DC
187428:  STR             R3, [R4,#0x28]
18742A:  MOV.W           R3, #0x7D0
18742E:  MULS            R2, R3
187430:  ADD.W           R3, R4, #0x3E0
187434:  STRD.W          R0, R1, [R4,#0x3C8]
187438:  VST1.64         {D8-D9}, [R3]!
18743C:  STRD.W          R6, R12, [R3]
187440:  MOVW            R3, #:lower16:(_ZTSN15descent_builder9builder_tI15AutomobileZR350EE+0x14); type descriptor name
187444:  ADDS            R0, R0, R2
187446:  MOV             R2, #unk_7A120
18744E:  ADC.W           R1, R1, #0
187452:  ADDS            R2, R2, R0
187454:  STR.W           R2, [R4,#0x3D8]
187458:  ADC.W           R2, R1, #0
18745C:  MOVT            R3, #:upper16:(_ZTSN15descent_builder9builder_tI15AutomobileZR350EE+0x14); type descriptor name
187460:  ADDS            R0, R0, R3
187462:  STR.W           R0, [R4,#0x3D0]
187466:  ADC.W           R0, R1, #0
18746A:  STR.W           R2, [R4,#0x3DC]
18746E:  STR.W           R0, [R4,#0x3D4]
187472:  MOV.W           R3, #0x3E8
187476:  LDR.W           R0, [R4,#0x2E0]
18747A:  LDR.W           R1, [R4,#0x698]
18747E:  LDR.W           R2, [R4,#0x69C]
187482:  CMP.W           R0, #0x3E8
187486:  STRH            R6, [R5]
187488:  MOV.W           R5, #1
18748C:  MOV.W           R0, #0x3E8
187490:  ADD             R1, R2
187492:  STRD.W          R6, R6, [R4,#0xB8]
187496:  STR             R6, [R4,#0x2C]
187498:  STRD.W          R6, R6, [R4,#0x3F8]
18749C:  STR.W           R6, [R4,#0x400]
1874A0:  STR.W           R12, [R4,#0x404]
1874A4:  STRB.W          R6, [R4,#0x410]
1874A8:  STR.W           R6, [R4,#0x674]
1874AC:  STRB.W          R5, [R4,#0x3C2]
1874B0:  STRH.W          R6, [R4,#0x3C0]
1874B4:  STR.W           R6, [R4,#0x670]
1874B8:  IT CC
1874BA:  MOVCC.W         R0, #0x1F4
1874BE:  CMP.W           R0, R1,LSL#1
1874C2:  IT CC
1874C4:  LSLCC           R0, R1, #1
1874C6:  ADD.W           R1, R0, R0,LSL#1
1874CA:  STR.W           R0, [R4,#0x2D8]
1874CE:  CMP             R1, #0x1E
1874D0:  ADD.W           R0, R4, #0x40 ; '@'
1874D4:  UMULL.W         R2, R3, R1, R3
1874D8:  MOV.W           R1, #0x40 ; '@'
1874DC:  IT CC
1874DE:  MOVWCC          R2, #0x7530
1874E2:  STR.W           R2, [R4,#0x678]
1874E6:  IT CC
1874E8:  MOVCC           R3, #0
1874EA:  STR.W           R3, [R4,#0x67C]
1874EE:  VPOP            {D8-D9}
1874F2:  POP.W           {R11}
1874F6:  POP.W           {R4-R7,LR}
1874FA:  B.W             sub_18A1E0
