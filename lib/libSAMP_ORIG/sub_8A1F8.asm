; =========================================================
; Game Engine Function: sub_8A1F8
; Address            : 0x8A1F8 - 0x8A5EA
; =========================================================

8A1F8:  PUSH            {R4-R7,LR}
8A1FA:  ADD             R7, SP, #0xC
8A1FC:  PUSH.W          {R8,R9,R11}
8A200:  VPUSH           {D8-D12}
8A204:  SUB             SP, SP, #0x38; float
8A206:  LDR             R4, =(dword_1ACF68 - 0x8A20E)
8A208:  MOV             R5, R2
8A20A:  ADD             R4, PC; dword_1ACF68
8A20C:  LDR             R2, [R4]
8A20E:  LDR             R3, =(__stack_chk_guard_ptr - 0x8A214)
8A210:  ADD             R3, PC; __stack_chk_guard_ptr
8A212:  LDR             R3, [R3]; __stack_chk_guard
8A214:  LDR             R3, [R3]
8A216:  STR             R3, [SP,#0x78+var_44]
8A218:  MOVW            R3, #0x1AB8
8A21C:  LDR             R3, [R2,R3]
8A21E:  CMP             R3, R1
8A220:  BNE.W           loc_8A5CC
8A224:  MOVW            R1, #0x1558
8A228:  LSLS            R3, R5, #0x1D
8A22A:  ADD             R1, R2
8A22C:  BMI             loc_8A238
8A22E:  LDRB.W          R3, [R1,#0x5BE]
8A232:  CMP             R3, #0
8A234:  BNE.W           loc_8A5CC
8A238:  LDR.W           R6, [R1,#0x454]
8A23C:  LDRB.W          R3, [R6,#0x140]
8A240:  CMP             R3, #0
8A242:  BNE.W           loc_8A5CC
8A246:  ADD.W           R8, SP, #0x78+var_58
8A24A:  LSLS            R3, R5, #0x1C
8A24C:  ITE PL
8A24E:  VLDRPL          S16, [R1]
8A252:  VLDRMI          S16, =0.0
8A256:  VLD1.32         {D16-D17}, [R0]
8A25A:  MOVS            R0, #4
8A25C:  MOV             R1, R8
8A25E:  VST1.64         {D16-D17}, [R1],R0
8A262:  VLDR            S6, [R6,#0x214]
8A266:  VLDR            S10, [R1]
8A26A:  VLDR            S4, [R6,#0x210]
8A26E:  VMOV.F32        S8, S6
8A272:  VLDR            S12, [SP,#0x78+var_58]
8A276:  VCMP.F32        S10, S6
8A27A:  VLDR            S2, [R6,#0x218]
8A27E:  VLDR            S14, [SP,#0x78+var_50]
8A282:  VMRS            APSR_nzcv, FPSCR
8A286:  VCMP.F32        S12, S4
8A28A:  VLDR            S0, [R6,#0x21C]
8A28E:  VLDR            S1, [SP,#0x78+var_4C]
8A292:  IT GE
8A294:  VMOVGE.F32      S8, S10
8A298:  VMRS            APSR_nzcv, FPSCR
8A29C:  VMOV.F32        S10, S4
8A2A0:  VCMP.F32        S14, S2
8A2A4:  IT GE
8A2A6:  VMOVGE.F32      S10, S12
8A2AA:  VMRS            APSR_nzcv, FPSCR
8A2AE:  VMOV.F32        S12, S2
8A2B2:  VCMP.F32        S1, S0
8A2B6:  IT MI
8A2B8:  VMOVMI.F32      S12, S14
8A2BC:  VMRS            APSR_nzcv, FPSCR
8A2C0:  VMOV.F32        S14, S0
8A2C4:  IT MI
8A2C6:  VMOVMI.F32      S14, S1
8A2CA:  LSLS            R0, R5, #0x1F
8A2CC:  VSTR            S8, [R1]
8A2D0:  VSTR            S10, [SP,#0x78+var_58]
8A2D4:  VSTR            S12, [SP,#0x78+var_50]
8A2D8:  VSTR            S14, [SP,#0x78+var_4C]
8A2DC:  BEQ.W           loc_8A4B0
8A2E0:  VMOV.F32        S3, #-4.0
8A2E4:  MOVS            R0, #0
8A2E6:  VMOV.F32        S1, #4.0
8A2EA:  MOVS            R1, #0
8A2EC:  MOV.W           R12, #0
8A2F0:  VADD.F32        S24, S8, S3
8A2F4:  VADD.F32        S22, S10, S3
8A2F8:  VADD.F32        S20, S14, S1
8A2FC:  VADD.F32        S18, S12, S1
8A300:  VCMP.F32        S24, S6
8A304:  VSTR            S24, [SP,#0x78+var_54]
8A308:  VMRS            APSR_nzcv, FPSCR
8A30C:  VCMP.F32        S22, S4
8A310:  VSTR            S20, [SP,#0x78+var_4C]
8A314:  VSTR            S18, [SP,#0x78+var_50]
8A318:  VSTR            S22, [SP,#0x78+var_58]
8A31C:  IT GE
8A31E:  MOVGE           R0, #1
8A320:  VMRS            APSR_nzcv, FPSCR
8A324:  IT GE
8A326:  MOVGE           R1, #1
8A328:  ANDS            R0, R1
8A32A:  VCMP.F32        S18, S2
8A32E:  MOVS            R1, #0
8A330:  VMRS            APSR_nzcv, FPSCR
8A334:  IT LS
8A336:  MOVLS           R1, #1
8A338:  VCMP.F32        S20, S0
8A33C:  ANDS            R0, R1
8A33E:  VMRS            APSR_nzcv, FPSCR
8A342:  MOV.W           R1, #0
8A346:  IT LS
8A348:  MOVLS           R1, #1
8A34A:  ANDS.W          R9, R0, R1
8A34E:  BNE             loc_8A36E
8A350:  VMOV            R1, S22; int
8A354:  LDR.W           R0, [R6,#0x27C]; int
8A358:  VMOV            R2, S24; int
8A35C:  STR.W           R12, [SP,#0x78+var_74]; int
8A360:  VMOV            R3, S18; int
8A364:  VSTR            S20, [SP,#0x78+var_78]
8A368:  BL              sub_9BFD8
8A36C:  LDR             R2, [R4]
8A36E:  VMOV.F32        S0, #1.0
8A372:  MOVW            R1, #0x1518
8A376:  VMOV.F32        S2, #-1.0
8A37A:  ADD             R1, R2
8A37C:  LDR.W           R0, [R6,#0x27C]; int
8A380:  MOVS            R2, #0xF
8A382:  VADD.F32        S4, S24, S0
8A386:  VADD.F32        S6, S22, S0
8A38A:  VADD.F32        S8, S20, S2
8A38E:  VADD.F32        S2, S18, S2
8A392:  VSTR            S4, [SP,#0x78+var_5C]
8A396:  VSTR            S6, [SP,#0x78+var_60]
8A39A:  VLDR            S4, [R1]
8A39E:  VSTR            S8, [SP,#0x78+var_64]
8A3A2:  VSTR            S2, [SP,#0x78+var_68]
8A3A6:  VLDR            S10, [R1,#0x378]
8A3AA:  VLDR            S6, [R1,#0x370]
8A3AE:  VMUL.F32        S4, S10, S4
8A3B2:  VLDR            S2, [R1,#0x36C]
8A3B6:  VLDR            S8, [R1,#0x374]
8A3BA:  VCMP.F32        S6, S0
8A3BE:  VMRS            APSR_nzcv, FPSCR
8A3C2:  VMOV.F32        S10, S6
8A3C6:  VCMP.F32        S2, S0
8A3CA:  IT GT
8A3CC:  VMOVGT.F32      S10, S0
8A3D0:  VMRS            APSR_nzcv, FPSCR
8A3D4:  VMOV.F32        S12, S2
8A3D8:  VCMP.F32        S8, S0
8A3DC:  IT GT
8A3DE:  VMOVGT.F32      S12, S0
8A3E2:  VMRS            APSR_nzcv, FPSCR
8A3E6:  VMOV.F32        S14, S8
8A3EA:  VCMP.F32        S4, S0
8A3EE:  IT GT
8A3F0:  VMOVGT.F32      S14, S0
8A3F4:  VMRS            APSR_nzcv, FPSCR
8A3F8:  VCMP.F32        S6, #0.0
8A3FC:  VMOV.F32        S6, #0.5
8A400:  MOV.W           R1, #0x40000000
8A404:  VMOV.F32        S1, S4
8A408:  IT GT
8A40A:  VMOVGT.F32      S1, S0
8A40E:  VMRS            APSR_nzcv, FPSCR
8A412:  VCMP.F32        S2, #0.0
8A416:  VLDR            S0, =0.0
8A41A:  IT MI
8A41C:  VMOVMI.F32      S10, S0
8A420:  VMRS            APSR_nzcv, FPSCR
8A424:  VCMP.F32        S8, #0.0
8A428:  IT MI
8A42A:  VMOVMI.F32      S12, S0
8A42E:  VMRS            APSR_nzcv, FPSCR
8A432:  VCMP.F32        S4, #0.0
8A436:  VMOV.F32        S2, S6
8A43A:  IT MI
8A43C:  VMOVMI.F32      S14, S0
8A440:  VMOV.F32        S4, S6
8A444:  VMRS            APSR_nzcv, FPSCR
8A448:  IT MI
8A44A:  VMOVMI.F32      S1, S0
8A44E:  VLDR            S0, =255.0
8A452:  VMOV.F32        S8, S6
8A456:  STRD.W          R2, R1, [SP,#0x78+var_74]; int
8A45A:  VMLA.F32        S6, S1, S0
8A45E:  VSTR            S16, [SP,#0x78+var_78]
8A462:  VMLA.F32        S2, S10, S0
8A466:  VMLA.F32        S4, S12, S0
8A46A:  VMLA.F32        S8, S14, S0
8A46E:  VCVT.S32.F32    S0, S2
8A472:  VCVT.S32.F32    S2, S4
8A476:  VCVT.S32.F32    S4, S8
8A47A:  VMOV            R1, S0
8A47E:  VMOV            R2, S2
8A482:  VCVT.S32.F32    S0, S6
8A486:  ORR.W           R1, R2, R1,LSL#8
8A48A:  VMOV            R2, S4
8A48E:  ORR.W           R1, R1, R2,LSL#16
8A492:  VMOV            R2, S0
8A496:  ORR.W           R3, R1, R2,LSL#24; int
8A49A:  ADD             R1, SP, #0x78+var_60; int
8A49C:  ADD             R2, SP, #0x78+var_68; int
8A49E:  BL              sub_9D568
8A4A2:  CMP.W           R9, #0
8A4A6:  ITT EQ
8A4A8:  LDREQ.W         R0, [R6,#0x27C]
8A4AC:  BLEQ            sub_9C12E
8A4B0:  LSLS            R0, R5, #0x1E
8A4B2:  BPL.W           loc_8A5CC
8A4B6:  LDR             R0, [R4]
8A4B8:  MOVW            R1, #0x1518
8A4BC:  VMOV.F32        S0, #1.0
8A4C0:  MOV.W           R2, #0xFFFFFFFF
8A4C4:  ADD             R0, R1
8A4C6:  MOV.W           R1, #0x3F800000
8A4CA:  VLDR            S2, [R0]
8A4CE:  VLDR            S10, [R0,#0x378]
8A4D2:  VLDR            S6, [R0,#0x370]
8A4D6:  VMUL.F32        S2, S10, S2
8A4DA:  VLDR            S4, [R0,#0x36C]
8A4DE:  VLDR            S8, [R0,#0x374]
8A4E2:  VCMP.F32        S6, S0
8A4E6:  VMRS            APSR_nzcv, FPSCR
8A4EA:  VMOV.F32        S10, S6
8A4EE:  VCMP.F32        S4, S0
8A4F2:  IT GT
8A4F4:  VMOVGT.F32      S10, S0
8A4F8:  VMRS            APSR_nzcv, FPSCR
8A4FC:  VMOV.F32        S12, S4
8A500:  VCMP.F32        S8, S0
8A504:  IT GT
8A506:  VMOVGT.F32      S12, S0
8A50A:  VMRS            APSR_nzcv, FPSCR
8A50E:  VMOV.F32        S14, S8
8A512:  VCMP.F32        S2, S0
8A516:  IT GT
8A518:  VMOVGT.F32      S14, S0
8A51C:  VMRS            APSR_nzcv, FPSCR
8A520:  VCMP.F32        S6, #0.0
8A524:  VMOV.F32        S6, #0.5
8A528:  VMOV.F32        S1, S2
8A52C:  IT GT
8A52E:  VMOVGT.F32      S1, S0
8A532:  VMRS            APSR_nzcv, FPSCR
8A536:  VCMP.F32        S4, #0.0
8A53A:  VLDR            S0, =0.0
8A53E:  IT MI
8A540:  VMOVMI.F32      S10, S0
8A544:  VMRS            APSR_nzcv, FPSCR
8A548:  VCMP.F32        S8, #0.0
8A54C:  IT MI
8A54E:  VMOVMI.F32      S12, S0
8A552:  VMRS            APSR_nzcv, FPSCR
8A556:  VCMP.F32        S2, #0.0
8A55A:  VMOV.F32        S2, S6
8A55E:  IT MI
8A560:  VMOVMI.F32      S14, S0
8A564:  VMOV.F32        S4, S6
8A568:  VMRS            APSR_nzcv, FPSCR
8A56C:  IT MI
8A56E:  VMOVMI.F32      S1, S0
8A572:  VLDR            S0, =255.0
8A576:  VMOV.F32        S8, S6
8A57A:  LDR.W           R0, [R6,#0x27C]; int
8A57E:  VMLA.F32        S6, S1, S0
8A582:  STRD.W          R2, R1, [SP,#0x78+var_74]; int
8A586:  VSTR            S16, [SP,#0x78+var_78]
8A58A:  VMLA.F32        S2, S10, S0
8A58E:  VMLA.F32        S4, S12, S0
8A592:  VMLA.F32        S8, S14, S0
8A596:  VCVT.S32.F32    S0, S2
8A59A:  VCVT.S32.F32    S2, S4
8A59E:  VCVT.S32.F32    S4, S8
8A5A2:  VMOV            R1, S0
8A5A6:  VMOV            R2, S2
8A5AA:  VCVT.S32.F32    S0, S6
8A5AE:  ORR.W           R1, R2, R1,LSL#8
8A5B2:  VMOV            R2, S4
8A5B6:  ORR.W           R1, R1, R2,LSL#16
8A5BA:  VMOV            R2, S0
8A5BE:  ORR.W           R3, R1, R2,LSL#24; int
8A5C2:  ADD.W           R2, R8, #8; int
8A5C6:  MOV             R1, R8; int
8A5C8:  BL              sub_9D568
8A5CC:  LDR             R0, [SP,#0x78+var_44]
8A5CE:  LDR             R1, =(__stack_chk_guard_ptr - 0x8A5D4)
8A5D0:  ADD             R1, PC; __stack_chk_guard_ptr
8A5D2:  LDR             R1, [R1]; __stack_chk_guard
8A5D4:  LDR             R1, [R1]
8A5D6:  CMP             R1, R0
8A5D8:  ITTTT EQ
8A5DA:  ADDEQ           SP, SP, #0x38 ; '8'
8A5DC:  VPOPEQ          {D8-D12}
8A5E0:  POPEQ.W         {R8,R9,R11}
8A5E4:  POPEQ           {R4-R7,PC}
8A5E6:  BLX             __stack_chk_fail
