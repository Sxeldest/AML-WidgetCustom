; =========================================================
; Game Engine Function: sub_1482E0
; Address            : 0x1482E0 - 0x148492
; =========================================================

1482E0:  PUSH            {R4-R7,LR}
1482E2:  ADD             R7, SP, #0xC
1482E4:  PUSH.W          {R8-R10}
1482E8:  VPUSH           {D8-D10}
1482EC:  SUB             SP, SP, #0x58
1482EE:  ADD             R4, SP, #0x88+var_48
1482F0:  ADD.W           R9, SP, #0x88+var_3C
1482F4:  MOVS            R5, #0
1482F6:  MOV             R8, R1
1482F8:  MOV             R10, R2
1482FA:  MOV             R1, R2
1482FC:  MOV             R0, R4
1482FE:  MOV             R2, R9
148300:  MOV             R6, R3
148302:  STR             R5, [SP,#0x88+var_34]
148304:  STRD.W          R3, R5, [SP,#0x88+var_3C]
148308:  BL              sub_108F30
14830C:  ADD             R1, SP, #0x88+var_54
14830E:  MOV             R0, R4
148310:  BL              sub_1091DC
148314:  VMOV            S20, R6
148318:  MOV             R0, R4
14831A:  MOV             R1, R10
14831C:  MOV             R2, R9
14831E:  VNEG.F32        S18, S20
148322:  STRD.W          R5, R5, [SP,#0x88+var_38]
148326:  VSTR            S18, [SP,#0x88+var_3C]
14832A:  BL              sub_108F30
14832E:  ADD             R1, SP, #0x88+var_60
148330:  MOV             R0, R4
148332:  BL              sub_1091DC
148336:  VMOV.F32        S16, #1.0
14833A:  VLDR            S0, [SP,#0x88+var_4C]
14833E:  VCMP.F32        S0, S16
148342:  VMRS            APSR_nzcv, FPSCR
148346:  ITTT LE
148348:  VLDRLE          S0, [SP,#0x88+var_58]
14834C:  VCMPLE.F32      S0, S16
148350:  VMRSLE          APSR_nzcv, FPSCR
148354:  BLE             loc_148382
148356:  ADR             R2, dword_148498
148358:  LDRD.W          R0, R1, [SP,#0x88+var_60]
14835C:  VLD1.64         {D16-D17}, [R2]
148360:  ADD.W           R12, SP, #0x88+var_70
148364:  LDRD.W          R2, R3, [SP,#0x88+var_54]
148368:  STM.W           R12, {R0-R3}
14836C:  ADD             R3, SP, #0x88+var_80
14836E:  MOV.W           R0, #0x3F800000
148372:  ADD             R1, SP, #0x88+var_68
148374:  ADD             R2, SP, #0x88+var_70
148376:  STR             R0, [SP,#0x88+var_88]
148378:  MOV             R0, R8
14837A:  VST1.64         {D16-D17}, [R3]
14837E:  BL              sub_12AB6C
148382:  ADD             R4, SP, #0x88+var_48
148384:  ADD             R6, SP, #0x88+var_3C
148386:  MOVS            R5, #0
148388:  MOV             R1, R10
14838A:  MOV             R0, R4
14838C:  MOV             R2, R6
14838E:  STR             R5, [SP,#0x88+var_34]
148390:  VSTR            S20, [SP,#0x88+var_38]
148394:  STR             R5, [SP,#0x88+var_3C]
148396:  BL              sub_108F30
14839A:  ADD             R1, SP, #0x88+var_54
14839C:  MOV             R0, R4
14839E:  BL              sub_1091DC
1483A2:  MOV             R0, R4
1483A4:  MOV             R1, R10
1483A6:  MOV             R2, R6
1483A8:  STR             R5, [SP,#0x88+var_34]
1483AA:  VSTR            S18, [SP,#0x88+var_38]
1483AE:  STR             R5, [SP,#0x88+var_3C]
1483B0:  BL              sub_108F30
1483B4:  ADD             R1, SP, #0x88+var_60
1483B6:  MOV             R0, R4
1483B8:  BL              sub_1091DC
1483BC:  VLDR            S0, [SP,#0x88+var_4C]
1483C0:  VCMP.F32        S0, S16
1483C4:  VMRS            APSR_nzcv, FPSCR
1483C8:  ITTT LE
1483CA:  VLDRLE          S0, [SP,#0x88+var_58]
1483CE:  VCMPLE.F32      S0, S16
1483D2:  VMRSLE          APSR_nzcv, FPSCR
1483D6:  BLE             loc_148404
1483D8:  ADR             R2, dword_1484A8
1483DA:  LDRD.W          R0, R1, [SP,#0x88+var_60]
1483DE:  VLD1.64         {D16-D17}, [R2]
1483E2:  ADD.W           R12, SP, #0x88+var_70
1483E6:  LDRD.W          R2, R3, [SP,#0x88+var_54]
1483EA:  STM.W           R12, {R0-R3}
1483EE:  ADD             R3, SP, #0x88+var_80
1483F0:  MOV.W           R0, #0x3F800000
1483F4:  ADD             R1, SP, #0x88+var_68
1483F6:  ADD             R2, SP, #0x88+var_70
1483F8:  STR             R0, [SP,#0x88+var_88]
1483FA:  MOV             R0, R8
1483FC:  VST1.64         {D16-D17}, [R3]
148400:  BL              sub_12AB6C
148404:  ADD             R4, SP, #0x88+var_48
148406:  ADD             R6, SP, #0x88+var_3C
148408:  MOVS            R5, #0
14840A:  MOV             R1, R10
14840C:  MOV             R0, R4
14840E:  MOV             R2, R6
148410:  VSTR            S20, [SP,#0x88+var_34]
148414:  STRD.W          R5, R5, [SP,#0x88+var_3C]
148418:  BL              sub_108F30
14841C:  ADD             R1, SP, #0x88+var_54
14841E:  MOV             R0, R4
148420:  BL              sub_1091DC
148424:  MOV             R0, R4
148426:  MOV             R1, R10
148428:  MOV             R2, R6
14842A:  VSTR            S18, [SP,#0x88+var_34]
14842E:  STRD.W          R5, R5, [SP,#0x88+var_3C]
148432:  BL              sub_108F30
148436:  ADD             R1, SP, #0x88+var_60
148438:  MOV             R0, R4
14843A:  BL              sub_1091DC
14843E:  VLDR            S0, [SP,#0x88+var_4C]
148442:  VCMP.F32        S0, S16
148446:  VMRS            APSR_nzcv, FPSCR
14844A:  ITTT LE
14844C:  VLDRLE          S0, [SP,#0x88+var_58]
148450:  VCMPLE.F32      S0, S16
148454:  VMRSLE          APSR_nzcv, FPSCR
148458:  BLE             loc_148486
14845A:  ADR             R2, dword_1484B8
14845C:  LDRD.W          R0, R1, [SP,#0x88+var_60]
148460:  VLD1.64         {D16-D17}, [R2]
148464:  ADD.W           R12, SP, #0x88+var_70
148468:  LDRD.W          R2, R3, [SP,#0x88+var_54]
14846C:  STM.W           R12, {R0-R3}
148470:  ADD             R3, SP, #0x88+var_80
148472:  MOV.W           R0, #0x3F800000
148476:  ADD             R1, SP, #0x88+var_68
148478:  ADD             R2, SP, #0x88+var_70
14847A:  STR             R0, [SP,#0x88+var_88]
14847C:  MOV             R0, R8
14847E:  VST1.64         {D16-D17}, [R3]
148482:  BL              sub_12AB6C
148486:  ADD             SP, SP, #0x58 ; 'X'
148488:  VPOP            {D8-D10}
14848C:  POP.W           {R8-R10}
148490:  POP             {R4-R7,PC}
