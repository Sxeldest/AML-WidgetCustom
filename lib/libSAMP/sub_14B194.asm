; =========================================================
; Game Engine Function: sub_14B194
; Address            : 0x14B194 - 0x14B4D4
; =========================================================

14B194:  PUSH            {R4-R7,LR}
14B196:  ADD             R7, SP, #0xC
14B198:  PUSH.W          {R8-R11}
14B19C:  SUB             SP, SP, #4
14B19E:  VPUSH           {D8-D13}
14B1A2:  SUB             SP, SP, #0x98
14B1A4:  MOV             R5, R1
14B1A6:  MOVW            R0, #0xFFFF
14B1AA:  LDRH.W          R4, [R5],#3
14B1AE:  CMP             R4, R0
14B1B0:  BEQ.W           loc_14B4C6
14B1B4:  LDR             R0, =(off_23496C - 0x14B1BA)
14B1B6:  ADD             R0, PC; off_23496C
14B1B8:  LDR             R0, [R0]; dword_23DEF4
14B1BA:  LDR             R0, [R0]
14B1BC:  CMP             R0, #0
14B1BE:  BEQ.W           loc_14B4C6
14B1C2:  LDR.W           R0, [R0,#0x3B0]
14B1C6:  LDR             R6, [R0,#4]
14B1C8:  CMP             R6, #0
14B1CA:  BEQ.W           loc_14B4C6
14B1CE:  LSRS            R0, R4, #4
14B1D0:  CMP             R0, #0x7C ; '|'
14B1D2:  BHI.W           loc_14B4C6
14B1D6:  MOV             R8, R1
14B1D8:  MOV             R0, R6
14B1DA:  MOV             R1, R4
14B1DC:  BL              sub_F2396
14B1E0:  CMP             R0, #0
14B1E2:  BEQ.W           loc_14B4C6
14B1E6:  LDR.W           R4, [R6,R4,LSL#2]
14B1EA:  CMP             R4, #0
14B1EC:  BEQ.W           loc_14B4C6
14B1F0:  MOV             R0, R4
14B1F2:  BL              sub_10A1E4
14B1F6:  CMP             R0, #0
14B1F8:  BNE.W           loc_14B4C6
14B1FC:  VMOV.F32        S0, #1.0
14B200:  LDR             R0, [R5,#0xC]
14B202:  VMOV            S16, R0
14B206:  VCMP.F32        S16, S0
14B20A:  VMRS            APSR_nzcv, FPSCR
14B20E:  BGT.W           loc_14B4C6
14B212:  VMOV.F32        S2, #-1.0
14B216:  VCMP.F32        S16, S2
14B21A:  VMRS            APSR_nzcv, FPSCR
14B21E:  BMI.W           loc_14B4C6
14B222:  LDR             R0, [R5,#0x10]
14B224:  VMOV            S18, R0
14B228:  VCMP.F32        S18, S0
14B22C:  VMRS            APSR_nzcv, FPSCR
14B230:  BGT.W           loc_14B4C6
14B234:  VCMP.F32        S18, S2
14B238:  VMRS            APSR_nzcv, FPSCR
14B23C:  BMI.W           loc_14B4C6
14B240:  LDR             R0, [R5,#0x14]
14B242:  VMOV            S20, R0
14B246:  VCMP.F32        S20, S0
14B24A:  VMRS            APSR_nzcv, FPSCR
14B24E:  BGT.W           loc_14B4C6
14B252:  VCMP.F32        S20, S2
14B256:  VMRS            APSR_nzcv, FPSCR
14B25A:  BMI.W           loc_14B4C6
14B25E:  LDR             R0, [R5]
14B260:  VMOV            S22, R0
14B264:  VCMP.F32        S22, S0
14B268:  VMRS            APSR_nzcv, FPSCR
14B26C:  BGT.W           loc_14B4C6
14B270:  VCMP.F32        S22, S2
14B274:  VMRS            APSR_nzcv, FPSCR
14B278:  BMI.W           loc_14B4C6
14B27C:  LDR             R0, [R5,#4]
14B27E:  VMOV            S24, R0
14B282:  VCMP.F32        S24, S0
14B286:  VMRS            APSR_nzcv, FPSCR
14B28A:  BGT.W           loc_14B4C6
14B28E:  VCMP.F32        S24, S2
14B292:  VMRS            APSR_nzcv, FPSCR
14B296:  BMI.W           loc_14B4C6
14B29A:  LDR             R0, [R5,#8]
14B29C:  VMOV            S26, R0
14B2A0:  VCMP.F32        S26, S0
14B2A4:  VMRS            APSR_nzcv, FPSCR
14B2A8:  BGT.W           loc_14B4C6
14B2AC:  VCMP.F32        S26, S2
14B2B0:  VMRS            APSR_nzcv, FPSCR
14B2B4:  BMI.W           loc_14B4C6
14B2B8:  LDR             R0, [R5,#0x24]
14B2BA:  VLDR            S0, =100.0
14B2BE:  VMOV            S4, R0
14B2C2:  VCMP.F32        S4, S0
14B2C6:  VMRS            APSR_nzcv, FPSCR
14B2CA:  BGT.W           loc_14B4C6
14B2CE:  VLDR            S2, =-100.0
14B2D2:  VCMP.F32        S4, S2
14B2D6:  VMRS            APSR_nzcv, FPSCR
14B2DA:  BMI.W           loc_14B4C6
14B2DE:  LDR             R0, [R5,#0x28]
14B2E0:  VMOV            S4, R0
14B2E4:  VCMP.F32        S4, S0
14B2E8:  VMRS            APSR_nzcv, FPSCR
14B2EC:  BGT.W           loc_14B4C6
14B2F0:  VCMP.F32        S4, S2
14B2F4:  VMRS            APSR_nzcv, FPSCR
14B2F8:  BMI.W           loc_14B4C6
14B2FC:  LDR             R0, [R5,#0x2C]
14B2FE:  VMOV            S4, R0
14B302:  VCMP.F32        S4, S0
14B306:  VMRS            APSR_nzcv, FPSCR
14B30A:  BGT.W           loc_14B4C6
14B30E:  VCMP.F32        S4, S2
14B312:  VMRS            APSR_nzcv, FPSCR
14B316:  BMI.W           loc_14B4C6
14B31A:  LDR             R0, [R5,#0x30]
14B31C:  VMOV            S4, R0
14B320:  VCMP.F32        S4, S0
14B324:  VMRS            APSR_nzcv, FPSCR
14B328:  BGT.W           loc_14B4C6
14B32C:  VCMP.F32        S4, S2
14B330:  VMRS            APSR_nzcv, FPSCR
14B334:  BMI.W           loc_14B4C6
14B338:  LDR             R0, [R5,#0x34]
14B33A:  VMOV            S4, R0
14B33E:  VCMP.F32        S4, S0
14B342:  VMRS            APSR_nzcv, FPSCR
14B346:  BGT.W           loc_14B4C6
14B34A:  VCMP.F32        S4, S2
14B34E:  VMRS            APSR_nzcv, FPSCR
14B352:  BMI.W           loc_14B4C6
14B356:  LDR             R0, [R5,#0x38]
14B358:  VMOV            S4, R0
14B35C:  VCMP.F32        S4, S0
14B360:  VMRS            APSR_nzcv, FPSCR
14B364:  BGT.W           loc_14B4C6
14B368:  VCMP.F32        S4, S2
14B36C:  VMRS            APSR_nzcv, FPSCR
14B370:  BMI.W           loc_14B4C6
14B374:  ADD.W           R0, R8, #0x1B
14B378:  MOVS            R2, #0
14B37A:  MOVS            R1, #1
14B37C:  VLDR            S0, =20000.0
14B380:  VLD1.8          {D16}, [R0]
14B384:  LDR             R0, [R0,#8]
14B386:  STR             R0, [SP,#0xE8+var_58]
14B388:  ADD             R0, SP, #0xE8+var_60
14B38A:  VSTR            D16, [SP,#0xE8+var_60]
14B38E:  VLDR            S2, =-20000.0
14B392:  ADD.W           R2, R0, R2,LSL#2
14B396:  VLDR            S4, [R2]
14B39A:  VCMP.F32        S4, S0
14B39E:  VMRS            APSR_nzcv, FPSCR
14B3A2:  BGT.W           loc_14B4C6
14B3A6:  VCMP.F32        S4, S2
14B3AA:  VMRS            APSR_nzcv, FPSCR
14B3AE:  BMI.W           loc_14B4C6
14B3B2:  LSLS            R1, R1, #0x1F
14B3B4:  MOV.W           R2, #1
14B3B8:  MOV.W           R1, #0
14B3BC:  BNE             loc_14B392
14B3BE:  VLDR            S0, [SP,#0xE8+var_58]
14B3C2:  VLDR            S2, =100000.0
14B3C6:  VCMP.F32        S0, S2
14B3CA:  VMRS            APSR_nzcv, FPSCR
14B3CE:  BGT             loc_14B4C6
14B3D0:  VLDR            S2, =-10000.0
14B3D4:  VCMP.F32        S0, S2
14B3D8:  VMRS            APSR_nzcv, FPSCR
14B3DC:  BMI             loc_14B4C6
14B3DE:  LDR.W           R1, [R8,#0x1B]
14B3E2:  MOV             R0, R4
14B3E4:  LDR.W           R2, [R8,#0x1F]
14B3E8:  LDR.W           R3, [R8,#0x23]
14B3EC:  BL              sub_F8DB8
14B3F0:  VLDR            S0, =0.54
14B3F4:  VMOV            S2, R0
14B3F8:  VCMP.F32        S2, S0
14B3FC:  VMRS            APSR_nzcv, FPSCR
14B400:  BMI             loc_14B4C6
14B402:  ADD             R1, SP, #0xE8+var_A0
14B404:  MOV             R0, R4
14B406:  BL              sub_F8910
14B40A:  LDR.W           R1, [R8,#0x1B]
14B40E:  MOV             R0, R4
14B410:  LDR.W           R2, [R8,#0x1F]
14B414:  LDR.W           R3, [R8,#0x23]
14B418:  VSTR            S20, [SP,#0xE8+var_88]
14B41C:  VSTR            S18, [SP,#0xE8+var_8C]
14B420:  VSTR            S16, [SP,#0xE8+var_90]
14B424:  VSTR            S26, [SP,#0xE8+var_98]
14B428:  VSTR            S24, [SP,#0xE8+var_9C]
14B42C:  VSTR            S22, [SP,#0xE8+var_A0]
14B430:  BL              sub_F8DB8
14B434:  VLDR            S0, =3.87
14B438:  VMOV            S2, R0
14B43C:  VCMP.F32        S2, S0
14B440:  VMRS            APSR_nzcv, FPSCR
14B444:  ITTTT GT
14B446:  VLDRGT          D16, [SP,#0xE8+var_60]
14B44A:  LDRGT           R0, [SP,#0xE8+var_58]
14B44C:  STRGT           R0, [SP,#0xE8+var_68]
14B44E:  VSTRGT          D16, [SP,#0xE8+var_70]
14B452:  LDR.W           R1, [R8,#0x27]
14B456:  MOV             R0, R4
14B458:  LDR.W           R2, [R8,#0x2B]
14B45C:  LDR.W           R3, [R8,#0x2F]
14B460:  BL              sub_F89BC
14B464:  LDR.W           R1, [R8,#0x33]
14B468:  MOV             R0, R4
14B46A:  LDR.W           R2, [R8,#0x37]
14B46E:  LDR.W           R3, [R8,#0x3B]
14B472:  BL              sub_F8A08
14B476:  LDR             R0, [SP,#0xE8+var_A0]
14B478:  ADD.W           R12, SP, #0xE8+var_74
14B47C:  STR             R0, [SP,#0xE8+var_A4]
14B47E:  LDR             R0, [SP,#0xE8+var_9C]
14B480:  STR             R0, [SP,#0xE8+var_A8]
14B482:  LDR             R0, [SP,#0xE8+var_98]
14B484:  STR             R0, [SP,#0xE8+var_AC]
14B486:  LDRD.W          R5, R0, [SP,#0xE8+var_8C]
14B48A:  LDRD.W          LR, R8, [SP,#0xE8+var_84]
14B48E:  STR             R0, [SP,#0xE8+var_B0]
14B490:  LDM.W           R12, {R0-R3,R12}
14B494:  STR             R0, [SP,#0xE8+var_C8]
14B496:  STR             R1, [SP,#0xE8+var_C4]
14B498:  LDR             R0, [SP,#0xE8+var_B0]
14B49A:  STR             R2, [SP,#0xE8+var_C0]
14B49C:  STR             R3, [SP,#0xE8+var_BC]
14B49E:  LDR             R1, [SP,#0xE8+var_A4]
14B4A0:  LDRD.W          R3, R2, [SP,#0xE8+var_AC]
14B4A4:  STRD.W          R0, LR, [SP,#0xE8+var_DC]
14B4A8:  ADD             R0, SP, #0xE8+var_D4
14B4AA:  LDRD.W          R11, R6, [SP,#0xE8+var_94]
14B4AE:  LDRD.W          R9, R10, [SP,#0xE8+var_7C]
14B4B2:  STM.W           R0, {R8-R10}
14B4B6:  MOV             R0, R4
14B4B8:  STR.W           R12, [SP,#0xE8+var_B8]
14B4BC:  STRD.W          R11, R6, [SP,#0xE8+var_E8]
14B4C0:  STR             R5, [SP,#0xE8+var_E0]
14B4C2:  BL              sub_F894A
14B4C6:  ADD             SP, SP, #0x98
14B4C8:  VPOP            {D8-D13}
14B4CC:  ADD             SP, SP, #4
14B4CE:  POP.W           {R8-R11}
14B4D2:  POP             {R4-R7,PC}
