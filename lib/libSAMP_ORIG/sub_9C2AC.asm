; =========================================================
; Game Engine Function: sub_9C2AC
; Address            : 0x9C2AC - 0x9CA2A
; =========================================================

9C2AC:  PUSH            {R4-R7,LR}
9C2AE:  ADD             R7, SP, #0xC
9C2B0:  PUSH.W          {R8-R11}
9C2B4:  SUB             SP, SP, #4
9C2B6:  VPUSH           {D8-D9}
9C2BA:  SUB             SP, SP, #0x28
9C2BC:  MOV             R10, R0
9C2BE:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x9C2C8)
9C2C2:  CMP             R2, #2
9C2C4:  ADD             R0, PC; __stack_chk_guard_ptr
9C2C6:  LDR             R0, [R0]; __stack_chk_guard
9C2C8:  LDR             R0, [R0]
9C2CA:  STR.W           R0, [R7,#var_38]
9C2CE:  BLT.W           loc_9CA02
9C2D2:  LDR.W           R0, [R10,#0x28]
9C2D6:  MOV             R8, R3
9C2D8:  STR.W           R1, [R7,#var_3C]
9C2DC:  SUBS            R6, R2, #1
9C2DE:  LDR             R3, [R7,#arg_0]
9C2E0:  MOV             R11, R2
9C2E2:  LDRB.W          R1, [R10,#0x24]
9C2E6:  LDR.W           R9, [R0,#4]
9C2EA:  CMP             R3, #0
9C2EC:  LDR             R2, [R0]
9C2EE:  MOV             R3, R6
9C2F0:  VLDR            S18, [R7,#arg_4]
9C2F4:  STR.W           R2, [R7,#var_4C]
9C2F8:  IT NE
9C2FA:  MOVNE           R3, R11
9C2FC:  LSLS            R0, R1, #0x1F
9C2FE:  STR.W           R3, [R7,#var_40]
9C302:  BNE.W           loc_9C454
9C306:  ADD.W           R0, R3, R3,LSL#1
9C30A:  LSLS            R2, R3, #2
9C30C:  LSLS            R1, R0, #1
9C30E:  MOV             R0, R10
9C310:  BL              sub_9C1B4
9C314:  VMOV.F32        S0, #0.5
9C318:  LDR.W           R1, [R7,#var_3C]
9C31C:  VMOV.F32        S2, #1.0
9C320:  LDR.W           R11, [R7,#var_4C]
9C324:  ADDS            R0, R1, #4
9C326:  MOVS            R2, #0
9C328:  STR.W           R6, [R7,#var_44]
9C32C:  VMUL.F32        S0, S18, S0
9C330:  B               loc_9C408
9C332:  VMUL.F32        S10, S0, S10
9C336:  LDR.W           R5, [R10,#0x38]
9C33A:  VMUL.F32        S8, S0, S8
9C33E:  ADDS            R3, R2, #4
9C340:  ADD.W           R6, R10, #0x34 ; '4'
9C344:  STRD.W          R11, R9, [R5,#8]
9C348:  VSUB.F32        S6, S6, S10
9C34C:  VADD.F32        S4, S4, S8
9C350:  VSTR            S6, [R5,#4]
9C354:  VSTR            S4, [R5]
9C358:  VLDR            S6, [R3]
9C35C:  VLDR            S4, [R2]
9C360:  VSUB.F32        S6, S6, S10
9C364:  LDR.W           R5, [R10,#0x38]
9C368:  VADD.F32        S4, S8, S4
9C36C:  STRD.W          R11, R9, [R5,#0x1C]
9C370:  STR.W           R8, [R5,#0x10]
9C374:  VSTR            S6, [R5,#0x18]
9C378:  VSTR            S4, [R5,#0x14]
9C37C:  VLDR            S6, [R3]
9C380:  VLDR            S4, [R2]
9C384:  VADD.F32        S6, S10, S6
9C388:  LDR.W           R3, [R10,#0x38]
9C38C:  VSUB.F32        S4, S4, S8
9C390:  STRD.W          R11, R9, [R3,#0x30]
9C394:  LDR.W           R2, [R10,#0x38]
9C398:  STR.W           R8, [R3,#0x24]
9C39C:  VSTR            S6, [R3,#0x2C]
9C3A0:  VSTR            S4, [R3,#0x28]
9C3A4:  VLDR            S6, [R0]
9C3A8:  VLDR            S4, [R0,#-4]
9C3AC:  ADDS            R0, #8
9C3AE:  STRD.W          R11, R9, [R2,#0x44]
9C3B2:  VADD.F32        S6, S10, S6
9C3B6:  LDM             R6, {R3,R5,R6}
9C3B8:  VSUB.F32        S4, S4, S8
9C3BC:  ADD.W           LR, R6, #0xC
9C3C0:  ADDS            R1, R3, #4
9C3C2:  STR.W           R1, [R10,#0x34]
9C3C6:  ADDS            R1, R3, #1
9C3C8:  STRH            R1, [R6,#2]
9C3CA:  ADDS            R1, R3, #2
9C3CC:  STRH            R1, [R6,#4]
9C3CE:  STRH            R1, [R6,#8]
9C3D0:  ADDS            R1, R3, #3
9C3D2:  STRH            R1, [R6,#0xA]
9C3D4:  ADD.W           R4, R5, #0x50 ; 'P'
9C3D8:  LDR.W           R1, [R7,#var_40]
9C3DC:  STRH            R3, [R6]
9C3DE:  STRH            R3, [R6,#6]
9C3E0:  CMP             R1, R12
9C3E2:  LDR.W           R1, [R7,#var_3C]
9C3E6:  LDR.W           R6, [R7,#var_44]
9C3EA:  STR.W           R8, [R2,#0x38]
9C3EE:  VSTR            S4, [R2,#0x3C]
9C3F2:  VSTR            S6, [R2,#0x40]
9C3F6:  MOV             R2, R12
9C3F8:  STR.W           R4, [R10,#0x38]
9C3FC:  STR.W           LR, [R10,#0x3C]
9C400:  STR.W           R8, [R5,#0x4C]
9C404:  BEQ.W           loc_9CA02
9C408:  ADD.W           R12, R2, #1
9C40C:  SUBS            R2, R6, R2
9C40E:  VLDR            S4, [R0,#-4]
9C412:  VLDR            S6, [R0]
9C416:  IT NE
9C418:  MOVNE           R2, R12
9C41A:  ADD.W           R2, R1, R2,LSL#3
9C41E:  VLDR            S8, [R2,#4]
9C422:  VLDR            S10, [R2]
9C426:  VSUB.F32        S8, S8, S6
9C42A:  VSUB.F32        S10, S10, S4
9C42E:  VMUL.F32        S12, S8, S8
9C432:  VMLA.F32        S12, S10, S10
9C436:  VCMP.F32        S12, #0.0
9C43A:  VMRS            APSR_nzcv, FPSCR
9C43E:  BLE.W           loc_9C332
9C442:  VSQRT.F32       S12, S12
9C446:  VDIV.F32        S12, S2, S12
9C44A:  VMUL.F32        S8, S8, S12
9C44E:  VMUL.F32        S10, S10, S12
9C452:  B               loc_9C332
9C454:  VMOV.F32        S16, #1.0
9C458:  MOVS            R0, #0xC
9C45A:  ADD.W           R2, R11, R11,LSL#1
9C45E:  VCMP.F32        S18, S16
9C462:  VMRS            APSR_nzcv, FPSCR
9C466:  IT GT
9C468:  MOVGT           R0, #0x12
9C46A:  MUL.W           R1, R0, R3
9C46E:  MOV             R0, R10
9C470:  IT GT
9C472:  MOVGT.W         R2, R11,LSL#2
9C476:  STR.W           R2, [R7,#var_50]
9C47A:  BL              sub_9C1B4
9C47E:  VCMP.F32        S18, S16
9C482:  MOVS            R0, #3
9C484:  MOV.W           R1, R11,LSL#3
9C488:  MOV             R2, SP
9C48A:  LDR.W           LR, [R7,#var_40]
9C48E:  VMRS            APSR_nzcv, FPSCR
9C492:  IT GT
9C494:  MOVGT           R0, #5
9C496:  MLS.W           R5, R1, R0, R2
9C49A:  ADD.W           R0, R5, R11,LSL#3
9C49E:  ADD.W           R12, R5, #4
9C4A2:  STR.W           R0, [R7,#var_48]
9C4A6:  MOV             SP, R5
9C4A8:  LDR.W           R4, [R7,#var_3C]
9C4AC:  BIC.W           R1, R8, #0xFF000000
9C4B0:  STR.W           R1, [R7,#var_54]
9C4B4:  MOVS            R3, #0
9C4B6:  ADDS            R0, R4, #4
9C4B8:  MOV             R1, R12
9C4BA:  B               loc_9C4D4
9C4BC:  VNEG.F32        S2, S2
9C4C0:  VSTR            S0, [R1,#-4]
9C4C4:  ADDS            R0, #8
9C4C6:  CMP             LR, R2
9C4C8:  MOV             R3, R2
9C4CA:  VSTR            S2, [R1]
9C4CE:  ADD.W           R1, R1, #8
9C4D2:  BEQ             loc_9C51C
9C4D4:  ADDS            R2, R3, #1
9C4D6:  SUBS            R3, R6, R3
9C4D8:  VLDR            S2, [R0,#-4]
9C4DC:  VLDR            S0, [R0]
9C4E0:  IT NE
9C4E2:  MOVNE           R3, R2
9C4E4:  ADD.W           R3, R4, R3,LSL#3
9C4E8:  VLDR            S6, [R3,#4]
9C4EC:  VLDR            S4, [R3]
9C4F0:  VSUB.F32        S0, S6, S0
9C4F4:  VSUB.F32        S2, S4, S2
9C4F8:  VMUL.F32        S4, S0, S0
9C4FC:  VMLA.F32        S4, S2, S2
9C500:  VCMP.F32        S4, #0.0
9C504:  VMRS            APSR_nzcv, FPSCR
9C508:  BLE             loc_9C4BC
9C50A:  VSQRT.F32       S4, S4
9C50E:  VDIV.F32        S4, S16, S4
9C512:  VMUL.F32        S0, S0, S4
9C516:  VMUL.F32        S2, S2, S4
9C51A:  B               loc_9C4BC
9C51C:  LDR             R0, [R7,#arg_0]
9C51E:  STR.W           R5, [R7,#var_44]
9C522:  CBZ             R0, loc_9C54A
9C524:  VCMP.F32        S18, S16
9C528:  VMRS            APSR_nzcv, FPSCR
9C52C:  BLE.W           loc_9C898
9C530:  VMOV.F32        S0, #-1.0
9C534:  LDR.W           R4, [R7,#var_48]
9C538:  VMOV.F32        S2, #0.5
9C53C:  VADD.F32        S0, S18, S0
9C540:  VMUL.F32        S0, S0, S2
9C544:  VADD.F32        S2, S0, S16
9C548:  B               loc_9C65E
9C54A:  LDR.W           R2, [R7,#var_48]
9C54E:  VCMP.F32        S18, S16
9C552:  VMRS            APSR_nzcv, FPSCR
9C556:  LDRD.W          R0, R1, [R2,#-0x10]
9C55A:  STR.W           R0, [R5,R6,LSL#3]
9C55E:  VMOV            S4, R0
9C562:  ADD.W           R0, R5, R6,LSL#3
9C566:  STR             R1, [R0,#4]
9C568:  BLE.W           loc_9C834
9C56C:  VMOV.F32        S0, #-1.0
9C570:  VLDR            S12, [R4,#4]
9C574:  VMOV.F32        S2, #0.5
9C578:  VLDR            S8, [R5,#4]
9C57C:  VLDR            S10, [R4]
9C580:  VMOV.F32        S3, S12
9C584:  VLDR            S6, [R5]
9C588:  VMOV.F32        S14, S10
9C58C:  VMOV.F32        S9, S10
9C590:  VMOV.F32        S5, S10
9C594:  VADD.F32        S0, S18, S0
9C598:  VMUL.F32        S0, S0, S2
9C59C:  VMOV.F32        S2, S12
9C5A0:  VMLA.F32        S2, S0, S8
9C5A4:  VMLA.F32        S14, S0, S6
9C5A8:  VMUL.F32        S7, S0, S4
9C5AC:  VSTR            S2, [R2,#0xC]
9C5B0:  VADD.F32        S2, S0, S16
9C5B4:  VSTR            S14, [R2,#8]
9C5B8:  VLDR            S1, [R5,#4]
9C5BC:  VLDR            S14, [R5]
9C5C0:  VMLS.F32        S3, S0, S1
9C5C4:  VLDR            S1, [R0,#4]
9C5C8:  VMLS.F32        S5, S0, S14
9C5CC:  ADD.W           R0, R4, R6,LSL#3
9C5D0:  VMUL.F32        S14, S0, S1
9C5D4:  MOV             R4, R2
9C5D6:  VMLA.F32        S9, S6, S2
9C5DA:  VLDR            S11, [R0,#4]
9C5DE:  VMOV.F32        S6, S12
9C5E2:  VMUL.F32        S1, S2, S1
9C5E6:  VMUL.F32        S4, S2, S4
9C5EA:  VSTR            S3, [R2,#0x14]
9C5EE:  VSTR            S5, [R2,#0x10]
9C5F2:  VLDR            S5, [R0]
9C5F6:  ADD.W           R0, R2, R6,LSL#5
9C5FA:  VMLA.F32        S6, S2, S8
9C5FE:  VLDR            S8, [R5,#4]
9C602:  VLDR            S3, [R5]
9C606:  VMLS.F32        S12, S2, S8
9C60A:  VSTR            S9, [R2]
9C60E:  VMLS.F32        S10, S2, S3
9C612:  VSUB.F32        S8, S11, S14
9C616:  VSTR            S6, [R2,#4]
9C61A:  VSUB.F32        S3, S5, S7
9C61E:  VADD.F32        S7, S7, S5
9C622:  VSTR            S12, [R2,#0x1C]
9C626:  VSUB.F32        S6, S11, S1
9C62A:  VSTR            S10, [R2,#0x18]
9C62E:  VSUB.F32        S13, S5, S4
9C632:  VADD.F32        S14, S14, S11
9C636:  VADD.F32        S4, S4, S5
9C63A:  VADD.F32        S1, S1, S11
9C63E:  VSTR            S8, [R0,#0x14]
9C642:  VSTR            S3, [R0,#0x10]
9C646:  VSTR            S7, [R0,#8]
9C64A:  VSTR            S6, [R0,#0x1C]
9C64E:  VSTR            S13, [R0,#0x18]
9C652:  VSTR            S14, [R0,#0xC]
9C656:  VSTR            S4, [R0]
9C65A:  VSTR            S1, [R0,#4]
9C65E:  VMOV.F32        S4, #0.5
9C662:  LDR.W           R0, [R10,#0x3C]
9C666:  LDR.W           R2, [R10,#0x34]
9C66A:  MOVS            R1, #1
9C66C:  ADDS            R0, #0x24 ; '$'
9C66E:  MOV             LR, R2
9C670:  SUBS.W          R6, R11, R1
9C674:  VLDR            S6, [R12,#-4]
9C678:  VLDR            S8, [R12]
9C67C:  IT NE
9C67E:  MOVNE           R6, R1
9C680:  ADD.W           R3, R5, R6,LSL#3
9C684:  ADD.W           R5, LR, #1
9C688:  VLDR            S12, [R3,#4]
9C68C:  VLDR            S10, [R3]
9C690:  ADD.W           R3, LR, #3
9C694:  VADD.F32        S8, S8, S12
9C698:  VADD.F32        S6, S6, S10
9C69C:  VMUL.F32        S8, S8, S4
9C6A0:  VMUL.F32        S6, S6, S4
9C6A4:  VMUL.F32        S10, S8, S8
9C6A8:  VMLA.F32        S10, S6, S6
9C6AC:  VCMP.F32        S10, S4
9C6B0:  VMRS            APSR_nzcv, FPSCR
9C6B4:  IT MI
9C6B6:  VMOVMI.F32      S10, S4
9C6BA:  VDIV.F32        S10, S16, S10
9C6BE:  STRH.W          R3, [R0,#-6]
9C6C2:  STRH.W          R3, [R0,#-8]
9C6C6:  ADD.W           R3, LR, #2
9C6CA:  STRH.W          R3, [R0,#-0xA]
9C6CE:  CMP             R11, R1
9C6D0:  STRH.W          LR, [R0,#-0x12]
9C6D4:  STRH.W          LR, [R0,#-0x14]
9C6D8:  STRH.W          R5, [R0,#-0x16]
9C6DC:  STRH.W          R3, [R0,#-0x1E]
9C6E0:  STRH.W          R3, [R0,#-0x20]
9C6E4:  STRH.W          R5, [R0,#-0x22]
9C6E8:  IT NE
9C6EA:  ADDNE.W         R2, LR, #4
9C6EE:  ADDS            R5, R2, #3
9C6F0:  STRH.W          R5, [R0,#-4]
9C6F4:  LDR.W           R5, [R7,#var_3C]
9C6F8:  ADDS            R3, R2, #2
9C6FA:  STRH.W          R3, [R0,#-2]
9C6FE:  ADD.W           R5, R5, R6,LSL#3
9C702:  STRH.W          R3, [R0,#-0xC]
9C706:  STRH.W          R3, [R0,#-0x1C]
9C70A:  ADD.W           R3, R4, R6,LSL#5
9C70E:  STRH.W          R2, [R0,#-0x10]
9C712:  VMUL.F32        S8, S8, S10
9C716:  VLDR            S14, [R5]
9C71A:  VMUL.F32        S6, S6, S10
9C71E:  VLDR            S1, [R5,#4]
9C722:  ADDS            R5, R2, #1
9C724:  STRH.W          R5, [R0,#-0xE]
9C728:  STRH.W          R5, [R0,#-0x18]
9C72C:  STRH.W          R5, [R0,#-0x1A]
9C730:  STRH.W          R5, [R0,#-0x24]
9C734:  VMUL.F32        S12, S2, S8
9C738:  VMUL.F32        S10, S2, S6
9C73C:  VMUL.F32        S6, S0, S6
9C740:  VMUL.F32        S8, S0, S8
9C744:  VSUB.F32        S5, S1, S12
9C748:  VADD.F32        S3, S14, S10
9C74C:  VSUB.F32        S9, S14, S6
9C750:  VSUB.F32        S7, S1, S8
9C754:  VSUB.F32        S10, S14, S10
9C758:  VADD.F32        S8, S1, S8
9C75C:  VADD.F32        S6, S14, S6
9C760:  VADD.F32        S12, S1, S12
9C764:  VSTR            S5, [R3,#0x1C]
9C768:  VSTR            S3, [R3]
9C76C:  VSTR            S9, [R3,#0x10]
9C770:  VSTR            S7, [R3,#0x14]
9C774:  VSTR            S10, [R3,#0x18]
9C778:  VSTR            S8, [R3,#0xC]
9C77C:  VSTR            S6, [R3,#8]
9C780:  VSTR            S12, [R3,#4]
9C784:  LDR.W           R3, [R7,#var_40]
9C788:  CMP             R3, R1
9C78A:  BEQ             loc_9C7A0
9C78C:  MOV             LR, R2
9C78E:  ADDS            R0, #0x24 ; '$'
9C790:  ADD.W           R12, R12, #8
9C794:  LDR.W           R2, [R10,#0x34]
9C798:  ADDS            R1, #1
9C79A:  LDR.W           R5, [R7,#var_44]
9C79E:  B               loc_9C670
9C7A0:  LDR.W           R4, [R7,#var_4C]
9C7A4:  CMP.W           R11, #1
9C7A8:  LDR.W           R12, [R7,#var_54]
9C7AC:  STR.W           R0, [R10,#0x3C]
9C7B0:  BLT.W           loc_9C9F2
9C7B4:  LDR.W           R0, [R7,#var_48]
9C7B8:  LDR.W           R1, [R10,#0x38]
9C7BC:  ADDS            R0, #0x10
9C7BE:  SUB.W           R6, R0, #0x10
9C7C2:  LDR.W           R5, [R0,#-4]
9C7C6:  SUBS.W          R11, R11, #1
9C7CA:  LDM             R6, {R2,R3,R6}
9C7CC:  STRD.W          R2, R3, [R1]
9C7D0:  LDR.W           R1, [R10,#0x38]
9C7D4:  STRD.W          R4, R9, [R1,#8]
9C7D8:  LDR.W           R1, [R10,#0x38]
9C7DC:  STRD.W          R6, R5, [R1,#0x14]
9C7E0:  LDR.W           R2, [R10,#0x38]
9C7E4:  STR.W           R12, [R1,#0x10]
9C7E8:  STRD.W          R4, R9, [R2,#0x1C]
9C7EC:  LDR.W           R1, [R10,#0x38]
9C7F0:  LDRD.W          R2, R3, [R0]
9C7F4:  STRD.W          R2, R3, [R1,#0x28]
9C7F8:  LDR.W           R2, [R10,#0x38]
9C7FC:  STR.W           R8, [R1,#0x24]
9C800:  STRD.W          R4, R9, [R2,#0x30]
9C804:  LDR.W           R1, [R10,#0x38]
9C808:  LDRD.W          R2, R3, [R0,#8]
9C80C:  ADD.W           R0, R0, #0x20 ; ' '
9C810:  STRD.W          R2, R3, [R1,#0x3C]
9C814:  LDR.W           R2, [R10,#0x38]
9C818:  STR.W           R8, [R1,#0x38]
9C81C:  STRD.W          R4, R9, [R2,#0x44]
9C820:  LDR.W           R2, [R10,#0x38]
9C824:  ADD.W           R1, R2, #0x50 ; 'P'
9C828:  STR.W           R1, [R10,#0x38]
9C82C:  STR.W           R12, [R2,#0x4C]
9C830:  BNE             loc_9C7BE
9C832:  B               loc_9C9F2
9C834:  ADD.W           R1, R4, R6,LSL#3
9C838:  VLDR            S1, [R0,#4]
9C83C:  VLDR            S0, [R4]
9C840:  ADD.W           R0, R2, R6,LSL#4
9C844:  VLDR            S2, [R4,#4]
9C848:  VLDR            S8, [R5,#4]
9C84C:  VLDR            S6, [R5]
9C850:  VLDR            S12, [R1]
9C854:  VADD.F32        S10, S8, S2
9C858:  VLDR            S14, [R1,#4]
9C85C:  VSUB.F32        S2, S2, S8
9C860:  VSUB.F32        S8, S0, S6
9C864:  VADD.F32        S0, S6, S0
9C868:  VSUB.F32        S6, S14, S1
9C86C:  VADD.F32        S14, S1, S14
9C870:  VADD.F32        S1, S12, S4
9C874:  VSUB.F32        S4, S12, S4
9C878:  VSTR            S10, [R2,#4]
9C87C:  VSTR            S2, [R2,#0xC]
9C880:  VSTR            S8, [R2,#8]
9C884:  VSTR            S0, [R2]
9C888:  VSTR            S6, [R0,#0xC]
9C88C:  VSTR            S14, [R0,#4]
9C890:  VSTR            S1, [R0]
9C894:  VSTR            S4, [R0,#8]
9C898:  VMOV.F32        S0, #0.5
9C89C:  LDR.W           R0, [R10,#0x3C]
9C8A0:  LDR.W           R2, [R10,#0x34]
9C8A4:  MOVS            R1, #1
9C8A6:  ADDS            R0, #0x18
9C8A8:  MOV             R6, R2
9C8AA:  SUBS.W          R3, R11, R1
9C8AE:  VLDR            S2, [R12,#-4]
9C8B2:  VLDR            S4, [R12]
9C8B6:  IT NE
9C8B8:  MOVNE           R3, R1
9C8BA:  ADD.W           R5, R5, R3,LSL#3
9C8BE:  VLDR            S8, [R5,#4]
9C8C2:  VLDR            S6, [R5]
9C8C6:  ADDS            R5, R6, #1
9C8C8:  VADD.F32        S4, S4, S8
9C8CC:  VADD.F32        S2, S2, S6
9C8D0:  VMUL.F32        S4, S4, S0
9C8D4:  VMUL.F32        S2, S2, S0
9C8D8:  VMUL.F32        S6, S4, S4
9C8DC:  VMLA.F32        S6, S2, S2
9C8E0:  VCMP.F32        S6, S0
9C8E4:  VMRS            APSR_nzcv, FPSCR
9C8E8:  IT MI
9C8EA:  VMOVMI.F32      S6, S0
9C8EE:  VDIV.F32        S6, S16, S6
9C8F2:  STRH.W          R5, [R0,#-0xA]
9C8F6:  ADDS            R5, R6, #2
9C8F8:  STRH.W          R5, [R0,#-0x12]
9C8FC:  STRH.W          R5, [R0,#-0x14]
9C900:  ADD.W           R5, R4, R3,LSL#3
9C904:  STRH.W          R6, [R0,#-6]
9C908:  CMP             R11, R1
9C90A:  STRH.W          R6, [R0,#-8]
9C90E:  STRH.W          R6, [R0,#-0x16]
9C912:  VMUL.F32        S2, S2, S6
9C916:  VLDR            S8, [R5,#4]
9C91A:  VMUL.F32        S4, S4, S6
9C91E:  VLDR            S6, [R5]
9C922:  IT NE
9C924:  ADDNE           R2, R6, #3
9C926:  LDR.W           R5, [R7,#var_48]
9C92A:  ADDS            R6, R2, #1
9C92C:  CMP             LR, R1
9C92E:  ADD.W           R3, R5, R3,LSL#4
9C932:  STRH.W          R2, [R0,#-4]
9C936:  STRH.W          R2, [R0,#-0xE]
9C93A:  STRH.W          R2, [R0,#-0x18]
9C93E:  VADD.F32        S10, S6, S2
9C942:  STRH.W          R6, [R0,#-2]
9C946:  VSUB.F32        S12, S8, S4
9C94A:  STRH.W          R6, [R0,#-0xC]
9C94E:  VSUB.F32        S2, S6, S2
9C952:  ADD.W           R6, R2, #2
9C956:  VADD.F32        S4, S8, S4
9C95A:  STRH.W          R6, [R0,#-0x10]
9C95E:  VSTR            S10, [R3]
9C962:  VSTR            S12, [R3,#0xC]
9C966:  VSTR            S2, [R3,#8]
9C96A:  VSTR            S4, [R3,#4]
9C96E:  BEQ             loc_9C984
9C970:  MOV             R6, R2
9C972:  ADDS            R0, #0x18
9C974:  ADD.W           R12, R12, #8
9C978:  LDR.W           R2, [R10,#0x34]
9C97C:  ADDS            R1, #1
9C97E:  LDR.W           R5, [R7,#var_44]
9C982:  B               loc_9C8AA
9C984:  LDR.W           R6, [R7,#var_4C]
9C988:  CMP.W           R11, #1
9C98C:  LDR.W           R5, [R7,#var_54]
9C990:  STR.W           R0, [R10,#0x3C]
9C994:  BLT             loc_9C9F2
9C996:  LDR.W           R0, [R7,#var_48]
9C99A:  LDR.W           R1, [R10,#0x38]
9C99E:  ADDS            R0, #8
9C9A0:  LDRD.W          R2, R3, [R4],#8
9C9A4:  SUBS.W          R11, R11, #1
9C9A8:  STRD.W          R2, R3, [R1]
9C9AC:  LDR.W           R1, [R10,#0x38]
9C9B0:  LDRD.W          R2, R3, [R0,#-8]
9C9B4:  STRD.W          R6, R9, [R1,#8]
9C9B8:  LDR.W           R1, [R10,#0x38]
9C9BC:  STRD.W          R2, R3, [R1,#0x14]
9C9C0:  LDR.W           R2, [R10,#0x38]
9C9C4:  STR.W           R8, [R1,#0x10]
9C9C8:  STRD.W          R6, R9, [R2,#0x1C]
9C9CC:  LDR.W           R1, [R10,#0x38]
9C9D0:  LDRD.W          R3, R2, [R0],#0x10
9C9D4:  STRD.W          R3, R2, [R1,#0x28]
9C9D8:  LDR.W           R2, [R10,#0x38]
9C9DC:  STR             R5, [R1,#0x24]
9C9DE:  STRD.W          R6, R9, [R2,#0x30]
9C9E2:  LDR.W           R2, [R10,#0x38]
9C9E6:  ADD.W           R1, R2, #0x3C ; '<'
9C9EA:  STR.W           R1, [R10,#0x38]
9C9EE:  STR             R5, [R2,#0x38]
9C9F0:  BNE             loc_9C9A0
9C9F2:  LDR.W           R1, [R7,#var_50]
9C9F6:  LDR.W           R0, [R10,#0x34]
9C9FA:  UXTAH.W         R0, R0, R1
9C9FE:  STR.W           R0, [R10,#0x34]
9CA02:  LDR.W           R0, [R7,#var_38]
9CA06:  LDR             R1, =(__stack_chk_guard_ptr - 0x9CA0C)
9CA08:  ADD             R1, PC; __stack_chk_guard_ptr
9CA0A:  LDR             R1, [R1]; __stack_chk_guard
9CA0C:  LDR             R1, [R1]
9CA0E:  CMP             R1, R0
9CA10:  ITTTT EQ
9CA12:  SUBEQ.W         R4, R7, #-var_30
9CA16:  MOVEQ           SP, R4
9CA18:  VPOPEQ          {D8-D9}
9CA1C:  ADDEQ           SP, SP, #4
9CA1E:  ITT EQ
9CA20:  POPEQ.W         {R8-R11}
9CA24:  POPEQ           {R4-R7,PC}
9CA26:  BLX             __stack_chk_fail
