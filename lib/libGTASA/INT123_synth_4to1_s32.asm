; =========================================================
; Game Engine Function: INT123_synth_4to1_s32
; Address            : 0x23A150 - 0x23A624
; =========================================================

23A150:  PUSH            {R4-R7,LR}
23A152:  ADD             R7, SP, #0xC
23A154:  PUSH.W          {R8-R11}
23A158:  SUB             SP, SP, #0xC
23A15A:  MOV             R5, R2
23A15C:  MOV             R2, R0
23A15E:  STR             R3, [SP,#0x28+var_20]
23A160:  MOVW            R12, #0xB2A8
23A164:  MOVW            R0, #0xB2A0
23A168:  LDR.W           LR, [R5,R12]
23A16C:  LDR             R6, [R5,R0]
23A16E:  MOVW            R0, #0x4848
23A172:  LDR             R0, [R5,R0]
23A174:  CBZ             R0, loc_23A19E
23A176:  ADD.W           R0, R5, R1,LSL#8
23A17A:  MOVW            R4, #0x4850
23A17E:  ADD             R4, R0
23A180:  MOVS            R0, #0
23A182:  ADDS            R3, R4, R0
23A184:  VLDR            D16, [R3]
23A188:  ADDS            R3, R2, R0
23A18A:  ADDS            R0, #8
23A18C:  VLDR            D17, [R3]
23A190:  CMP.W           R0, #0x100
23A194:  VMUL.F64        D16, D17, D16
23A198:  VSTR            D16, [R3]
23A19C:  BNE             loc_23A182
23A19E:  ADD.W           R4, R6, LR
23A1A2:  MOVW            R0, #0x4838
23A1A6:  CBZ             R1, loc_23A1B2
23A1A8:  LDR.W           R10, [R5,R0]
23A1AC:  ADDS            R4, #4
23A1AE:  MOVS            R1, #1
23A1B0:  B               loc_23A1C0
23A1B2:  LDR             R1, [R5,R0]
23A1B4:  ADDS            R1, #0xF
23A1B6:  AND.W           R10, R1, #0xF
23A1BA:  STR.W           R10, [R5,R0]
23A1BE:  MOVS            R1, #0
23A1C0:  ADD.W           R0, R5, R12
23A1C4:  STR             R0, [SP,#0x28+var_28]
23A1C6:  ADD.W           R0, R5, R1,LSL#3
23A1CA:  MOVW            R1, #0x4820
23A1CE:  ADD             R1, R0
23A1D0:  MOVS.W          R3, R10,LSL#31
23A1D4:  BNE             loc_23A1F4
23A1D6:  MOVW            R3, #0x4824
23A1DA:  LDR             R1, [R1]
23A1DC:  LDR.W           R8, [R0,R3]
23A1E0:  ADD.W           R0, R1, R10,LSL#3
23A1E4:  ADD.W           R1, R8, R10,LSL#3
23A1E8:  ADDS            R1, #8
23A1EA:  BLX             j_INT123_dct64
23A1EE:  ADD.W           R10, R10, #1
23A1F2:  B               loc_23A212
23A1F4:  ADD.W           R3, R10, #1
23A1F8:  LDR.W           R8, [R1]
23A1FC:  MOVW            R1, #0x4824
23A200:  AND.W           R3, R3, #0xF
23A204:  LDR             R0, [R0,R1]
23A206:  ADD.W           R1, R8, R10,LSL#3
23A20A:  ADD.W           R0, R0, R3,LSL#3
23A20E:  BLX             j_INT123_dct64
23A212:  MOVW            R0, #0x4844
23A216:  VLDR            D16, =65536.0
23A21A:  LDR.W           LR, [R5,R0]
23A21E:  RSB.W           R0, R10, #0x190
23A222:  VLDR            D17, =2.14748365e9
23A226:  ADD.W           R2, LR, R0,LSL#3
23A22A:  SUB.W           R0, LR, R10,LSL#3
23A22E:  ADD.W           R5, R0, #0x80
23A232:  RSB.W           R0, R10, #0x210
23A236:  VLDR            D18, =-2.14748365e9
23A23A:  MOVS            R3, #0
23A23C:  STR             R0, [SP,#0x28+var_24]
23A23E:  MOV             R1, #0x7FFFFFFF
23A242:  MOV.W           R11, #0x80000000
23A246:  MOV             R6, R8
23A248:  MOVS            R0, #0
23A24A:  VLDM            R6, {D19-D22}
23A24E:  MOV.W           R9, R3,LSL#1
23A252:  VLDM            R5, {D23-D26}
23A256:  VMUL.F64        D20, D24, D20
23A25A:  VMUL.F64        D19, D23, D19
23A25E:  VMUL.F64        D21, D25, D21
23A262:  VSUB.F64        D19, D19, D20
23A266:  VMUL.F64        D22, D26, D22
23A26A:  VADD.F64        D19, D19, D21
23A26E:  VLDR            D20, [R6,#0x20]
23A272:  VLDR            D23, [R5,#0x20]
23A276:  VSUB.F64        D19, D19, D22
23A27A:  VMUL.F64        D20, D23, D20
23A27E:  VLDR            D21, [R6,#0x28]
23A282:  VLDR            D24, [R5,#0x28]
23A286:  VADD.F64        D19, D19, D20
23A28A:  VMUL.F64        D21, D24, D21
23A28E:  VLDR            D22, [R6,#0x30]
23A292:  VLDR            D23, [R5,#0x30]
23A296:  VSUB.F64        D19, D19, D21
23A29A:  VMUL.F64        D22, D23, D22
23A29E:  VLDR            D20, [R6,#0x38]
23A2A2:  VLDR            D24, [R5,#0x38]
23A2A6:  VADD.F64        D19, D19, D22
23A2AA:  VMUL.F64        D20, D24, D20
23A2AE:  VLDR            D21, [R6,#0x40]
23A2B2:  VLDR            D23, [R5,#0x40]
23A2B6:  VSUB.F64        D19, D19, D20
23A2BA:  VMUL.F64        D21, D23, D21
23A2BE:  VLDR            D22, [R6,#0x48]
23A2C2:  VLDR            D24, [R5,#0x48]
23A2C6:  VADD.F64        D19, D19, D21
23A2CA:  VMUL.F64        D22, D24, D22
23A2CE:  VLDR            D20, [R6,#0x50]
23A2D2:  VLDR            D23, [R5,#0x50]
23A2D6:  VSUB.F64        D19, D19, D22
23A2DA:  VMUL.F64        D20, D23, D20
23A2DE:  VLDR            D21, [R6,#0x58]
23A2E2:  VLDR            D24, [R5,#0x58]
23A2E6:  VADD.F64        D19, D19, D20
23A2EA:  VMUL.F64        D21, D24, D21
23A2EE:  VLDR            D22, [R6,#0x60]
23A2F2:  VLDR            D23, [R5,#0x60]
23A2F6:  VSUB.F64        D19, D19, D21
23A2FA:  VMUL.F64        D22, D23, D22
23A2FE:  VLDR            D20, [R6,#0x68]
23A302:  VLDR            D24, [R5,#0x68]
23A306:  VADD.F64        D19, D19, D22
23A30A:  VMUL.F64        D20, D24, D20
23A30E:  VLDR            D21, [R6,#0x70]
23A312:  VLDR            D23, [R5,#0x70]
23A316:  VSUB.F64        D19, D19, D20
23A31A:  VMUL.F64        D21, D23, D21
23A31E:  VLDR            D22, [R6,#0x78]
23A322:  VLDR            D24, [R5,#0x78]
23A326:  VADD.F64        D19, D19, D21
23A32A:  VMUL.F64        D20, D24, D22
23A32E:  VSUB.F64        D19, D19, D20
23A332:  VMUL.F64        D19, D19, D16
23A336:  VCMPE.F64       D19, D17
23A33A:  VMRS            APSR_nzcv, FPSCR
23A33E:  BLE             loc_23A348
23A340:  STR.W           R1, [R4,R9,LSL#2]
23A344:  ADDS            R0, #1
23A346:  B               loc_23A366
23A348:  VCMPE.F64       D19, D18
23A34C:  VMRS            APSR_nzcv, FPSCR
23A350:  BGE             loc_23A35A
23A352:  STR.W           R11, [R4,R9,LSL#2]
23A356:  ADDS            R0, #1
23A358:  B               loc_23A366
23A35A:  VCVT.S32.F64    S0, D19
23A35E:  VMOV            R12, S0
23A362:  STR.W           R12, [R4,R9,LSL#2]
23A366:  ADDS            R3, #1
23A368:  ADD.W           R6, R6, #0x200
23A36C:  ADD.W           R5, R5, #0x400
23A370:  CMP             R3, #4
23A372:  BNE.W           loc_23A24A
23A376:  LDR             R1, [SP,#0x28+var_24]
23A378:  ADD.W           R3, R2, #0x410
23A37C:  VLDR            D21, [R3]
23A380:  ADD.W           R3, R8, #0x830
23A384:  ADD.W           R1, LR, R1,LSL#3
23A388:  VLDR            D19, [R1]
23A38C:  ADD.W           R1, R8, #0x810
23A390:  VLDR            D20, [R1]
23A394:  ADD.W           R1, R8, #0x800
23A398:  VLDR            D22, [R1]
23A39C:  ADD.W           R1, R2, #0x420
23A3A0:  VMUL.F64        D20, D21, D20
23A3A4:  VMUL.F64        D19, D19, D22
23A3A8:  VLDR            D21, [R3]
23A3AC:  ADD.W           R3, R8, #0x820
23A3B0:  VLDR            D23, [R1]
23A3B4:  ADD.W           R1, R2, #0x430
23A3B8:  VLDR            D22, [R3]
23A3BC:  ADD.W           R3, R8, #0x850
23A3C0:  VADD.F64        D19, D19, D20
23A3C4:  VMUL.F64        D22, D23, D22
23A3C8:  VLDR            D24, [R1]
23A3CC:  ADD.W           R1, R2, #0x440
23A3D0:  VADD.F64        D19, D19, D22
23A3D4:  VMUL.F64        D20, D24, D21
23A3D8:  VLDR            D21, [R3]
23A3DC:  ADD.W           R3, R8, #0x840
23A3E0:  VLDR            D23, [R1]
23A3E4:  ADD.W           R1, R2, #0x450
23A3E8:  VLDR            D22, [R3]
23A3EC:  ADD.W           R3, R8, #0x870
23A3F0:  VADD.F64        D19, D19, D20
23A3F4:  VMUL.F64        D22, D23, D22
23A3F8:  VLDR            D24, [R1]
23A3FC:  ADD.W           R1, R2, #0x460
23A400:  VADD.F64        D19, D19, D22
23A404:  VMUL.F64        D20, D24, D21
23A408:  VLDR            D21, [R3]
23A40C:  ADD.W           R3, R8, #0x860
23A410:  VLDR            D23, [R1]
23A414:  ADD.W           R1, R2, #0x470
23A418:  VLDR            D22, [R3]
23A41C:  ADD.W           R2, R8, #0x600
23A420:  VADD.F64        D19, D19, D20
23A424:  VMUL.F64        D22, D23, D22
23A428:  VLDR            D24, [R1]
23A42C:  VADD.F64        D19, D19, D22
23A430:  VMUL.F64        D20, D24, D21
23A434:  VADD.F64        D19, D19, D20
23A438:  VMUL.F64        D19, D19, D16
23A43C:  VCMPE.F64       D19, D17
23A440:  VMRS            APSR_nzcv, FPSCR
23A444:  BLE             loc_23A44C
23A446:  MOV             R1, #0x7FFFFFFF
23A44A:  B               loc_23A45A
23A44C:  VCMPE.F64       D19, D18
23A450:  VMRS            APSR_nzcv, FPSCR
23A454:  BGE             loc_23A460
23A456:  MOV.W           R1, #0x80000000
23A45A:  STR             R1, [R4,#0x20]
23A45C:  ADDS            R0, #1
23A45E:  B               loc_23A468
23A460:  VCVT.S32.F64    S0, D19
23A464:  VSTR            S0, [R4,#0x20]
23A468:  ADD.W           R1, LR, R10,LSL#3
23A46C:  ADD.W           R3, R4, #0x28 ; '('
23A470:  MOVS            R6, #0
23A472:  MOV             LR, #0x7FFFFFFF
23A476:  MOV.W           R12, #0x80000000
23A47A:  ADDS            R4, R1, R6
23A47C:  VLDM            R2, {D19-D22}
23A480:  ADD.W           R5, R4, #0xC70
23A484:  VLDR            D23, [R5]
23A488:  ADDW            R5, R4, #0xC78
23A48C:  VLDR            D24, [R5]
23A490:  ADDW            R5, R4, #0xC68
23A494:  VMUL.F64        D20, D23, D20
23A498:  VNMUL.F64       D19, D24, D19
23A49C:  VLDR            D23, [R5]
23A4A0:  ADD.W           R5, R4, #0xC60
23A4A4:  VSUB.F64        D19, D19, D20
23A4A8:  VMUL.F64        D21, D23, D21
23A4AC:  VLDR            D24, [R5]
23A4B0:  ADDW            R5, R4, #0xC58
23A4B4:  VSUB.F64        D19, D19, D21
23A4B8:  VMUL.F64        D20, D24, D22
23A4BC:  VLDR            D23, [R5]
23A4C0:  ADD.W           R5, R4, #0xC50
23A4C4:  VLDR            D22, [R2,#0x20]
23A4C8:  VSUB.F64        D19, D19, D20
23A4CC:  VMUL.F64        D22, D23, D22
23A4D0:  VLDR            D24, [R5]
23A4D4:  ADDW            R5, R4, #0xC48
23A4D8:  VLDR            D21, [R2,#0x28]
23A4DC:  VSUB.F64        D19, D19, D22
23A4E0:  VMUL.F64        D20, D24, D21
23A4E4:  VLDR            D23, [R5]
23A4E8:  ADD.W           R5, R4, #0xC40
23A4EC:  VLDR            D22, [R2,#0x30]
23A4F0:  VSUB.F64        D19, D19, D20
23A4F4:  VMUL.F64        D22, D23, D22
23A4F8:  VLDR            D24, [R5]
23A4FC:  ADDW            R5, R4, #0xC38
23A500:  VLDR            D21, [R2,#0x38]
23A504:  VSUB.F64        D19, D19, D22
23A508:  VMUL.F64        D20, D24, D21
23A50C:  VLDR            D23, [R5]
23A510:  ADD.W           R5, R4, #0xC30
23A514:  VLDR            D22, [R2,#0x40]
23A518:  VSUB.F64        D19, D19, D20
23A51C:  VMUL.F64        D22, D23, D22
23A520:  VLDR            D24, [R5]
23A524:  ADDW            R5, R4, #0xC28
23A528:  VLDR            D21, [R2,#0x48]
23A52C:  VSUB.F64        D19, D19, D22
23A530:  VMUL.F64        D20, D24, D21
23A534:  VLDR            D23, [R5]
23A538:  ADD.W           R5, R4, #0xC20
23A53C:  VLDR            D22, [R2,#0x50]
23A540:  VSUB.F64        D19, D19, D20
23A544:  VMUL.F64        D22, D23, D22
23A548:  VLDR            D24, [R5]
23A54C:  ADDW            R5, R4, #0xC18
23A550:  VLDR            D21, [R2,#0x58]
23A554:  VSUB.F64        D19, D19, D22
23A558:  VMUL.F64        D20, D24, D21
23A55C:  VLDR            D23, [R5]
23A560:  ADD.W           R5, R4, #0xC10
23A564:  VLDR            D22, [R2,#0x60]
23A568:  VSUB.F64        D19, D19, D20
23A56C:  VMUL.F64        D22, D23, D22
23A570:  VLDR            D24, [R5]
23A574:  ADDW            R5, R4, #0xC08
23A578:  VLDR            D21, [R2,#0x68]
23A57C:  ADD.W           R4, R4, #0xC00
23A580:  VSUB.F64        D19, D19, D22
23A584:  VMUL.F64        D20, D24, D21
23A588:  VLDR            D22, [R2,#0x70]
23A58C:  VLDR            D23, [R5]
23A590:  VSUB.F64        D19, D19, D20
23A594:  VMUL.F64        D22, D23, D22
23A598:  VLDR            D21, [R2,#0x78]
23A59C:  VLDR            D24, [R4]
23A5A0:  VSUB.F64        D19, D19, D22
23A5A4:  VMUL.F64        D20, D24, D21
23A5A8:  VSUB.F64        D19, D19, D20
23A5AC:  VMUL.F64        D19, D19, D16
23A5B0:  VCMPE.F64       D19, D17
23A5B4:  VMRS            APSR_nzcv, FPSCR
23A5B8:  BLE             loc_23A5C2
23A5BA:  STR.W           LR, [R3]
23A5BE:  ADDS            R0, #1
23A5C0:  B               loc_23A5F8
23A5C2:  VCMPE.F64       D19, D18
23A5C6:  VMRS            APSR_nzcv, FPSCR
23A5CA:  BGE             loc_23A5F0
23A5CC:  STR.W           R12, [R3]
23A5D0:  ADDS            R0, #1
23A5D2:  B               loc_23A5F8
23A5D4:  ALIGN 8
23A5D8:  DCFD 65536.0
23A5E0:  DCFD 2.14748365e9
23A5E8:  DCFD -2.14748365e9
23A5F0:  VCVT.S32.F64    S0, D19
23A5F4:  VSTR            S0, [R3]
23A5F8:  SUB.W           R6, R6, #0x400
23A5FC:  SUB.W           R2, R2, #0x200
23A600:  ADDS            R3, #8
23A602:  CMN.W           R6, #0xC00
23A606:  BNE.W           loc_23A47A
23A60A:  LDR             R1, [SP,#0x28+var_20]
23A60C:  CMP             R1, #0
23A60E:  ITTTT NE
23A610:  LDRNE           R1, [SP,#0x28+var_28]
23A612:  MOVNE           R2, R1
23A614:  LDRNE           R1, [R2]
23A616:  ADDNE           R1, #0x40 ; '@'
23A618:  IT NE
23A61A:  STRNE           R1, [R2]
23A61C:  ADD             SP, SP, #0xC
23A61E:  POP.W           {R8-R11}
23A622:  POP             {R4-R7,PC}
