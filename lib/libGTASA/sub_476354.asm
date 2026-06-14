; =========================================================
; Game Engine Function: sub_476354
; Address            : 0x476354 - 0x476408
; =========================================================

476354:  PUSH            {R4-R7,LR}
476356:  ADD             R7, SP, #0xC
476358:  PUSH.W          {R8}
47635C:  LDR.W           R8, [R0,#0x148]
476360:  MOVS            R2, #0
476362:  STR.W           R2, [R8,#8]
476366:  LDR.W           R4, [R0,#0xE4]
47636A:  LDR.W           R3, [R0,#0x148]
47636E:  CMP             R4, #1
476370:  BLE             loc_476376
476372:  MOVS            R4, #1
476374:  B               loc_476394
476376:  LDR.W           R12, [R0,#0xE0]
47637A:  LDR.W           R5, [R0,#0xE8]
47637E:  LDR.W           LR, [R3,#8]
476382:  SUB.W           R6, R12, #1
476386:  ADD.W           R4, R5, #0x48 ; 'H'
47638A:  CMP             LR, R6
47638C:  IT CC
47638E:  ADDCC.W         R4, R5, #0xC
476392:  LDR             R4, [R4]
476394:  CMP             R1, #3
476396:  STRD.W          R2, R2, [R3,#0xC]
47639A:  STR             R4, [R3,#0x14]
47639C:  BEQ             loc_4763BC
47639E:  CMP             R1, #2
4763A0:  BEQ             loc_4763D4
4763A2:  CBNZ            R1, loc_4763F4
4763A4:  LDR.W           R1, [R8,#0x40]
4763A8:  CBZ             R1, loc_4763B6
4763AA:  LDR             R1, [R0]
4763AC:  MOVS            R2, #4
4763AE:  STR             R2, [R1,#0x14]
4763B0:  LDR             R1, [R0]
4763B2:  LDR             R1, [R1]
4763B4:  BLX             R1
4763B6:  LDR             R0, =(sub_476414+1 - 0x4763BC)
4763B8:  ADD             R0, PC; sub_476414
4763BA:  B               loc_4763EA
4763BC:  LDR.W           R1, [R8,#0x40]
4763C0:  CBNZ            R1, loc_4763CE
4763C2:  LDR             R1, [R0]
4763C4:  MOVS            R2, #4
4763C6:  STR             R2, [R1,#0x14]
4763C8:  LDR             R1, [R0]
4763CA:  LDR             R1, [R1]
4763CC:  BLX             R1
4763CE:  LDR             R0, =(sub_476626+1 - 0x4763D4)
4763D0:  ADD             R0, PC; sub_476626
4763D2:  B               loc_4763EA
4763D4:  LDR.W           R1, [R8,#0x40]
4763D8:  CBNZ            R1, loc_4763E6
4763DA:  LDR             R1, [R0]
4763DC:  MOVS            R2, #4
4763DE:  STR             R2, [R1,#0x14]
4763E0:  LDR             R1, [R0]
4763E2:  LDR             R1, [R1]
4763E4:  BLX             R1
4763E6:  LDR             R0, =(sub_4767B4+1 - 0x4763EC)
4763E8:  ADD             R0, PC; sub_4767B4
4763EA:  STR.W           R0, [R8,#4]
4763EE:  POP.W           {R8}
4763F2:  POP             {R4-R7,PC}
4763F4:  LDR             R1, [R0]
4763F6:  MOVS            R2, #4
4763F8:  STR             R2, [R1,#0x14]
4763FA:  LDR             R1, [R0]
4763FC:  LDR             R1, [R1]
4763FE:  POP.W           {R8}
476402:  POP.W           {R4-R7,LR}
476406:  BX              R1
