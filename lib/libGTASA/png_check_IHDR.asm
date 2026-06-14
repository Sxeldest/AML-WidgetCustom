; =========================================================
; Game Engine Function: png_check_IHDR
; Address            : 0x1F0378 - 0x1F050E
; =========================================================

1F0378:  PUSH            {R4-R7,LR}
1F037A:  ADD             R7, SP, #0xC
1F037C:  PUSH.W          {R8-R10}
1F0380:  MOV             R5, R1
1F0382:  MOV             R8, R3
1F0384:  MOV             R9, R2
1F0386:  MOV             R4, R0
1F0388:  CBZ             R5, loc_1F0394
1F038A:  CMP.W           R5, #0xFFFFFFFF
1F038E:  BLE             loc_1F0398
1F0390:  MOVS            R6, #0
1F0392:  B               loc_1F03A2
1F0394:  ADR             R1, aImageWidthIsZe; "Image width is zero in IHDR"
1F0396:  B               loc_1F03B6
1F0398:  ADR             R1, aInvalidImageWi; "Invalid image width in IHDR"
1F039A:  MOV             R0, R4
1F039C:  BLX             j_png_warning
1F03A0:  MOVS            R6, #1
1F03A2:  ADDS            R0, R5, #7
1F03A4:  MOVW            R1, #0xFFF9
1F03A8:  BIC.W           R0, R0, #7
1F03AC:  MOVT            R1, #0x1FFF
1F03B0:  CMP             R0, R1
1F03B2:  BCC             loc_1F03BE
1F03B4:  ADR             R1, aImageWidthIsTo; "Image width is too large for this archi"...
1F03B6:  MOV             R0, R4
1F03B8:  BLX             j_png_warning
1F03BC:  MOVS            R6, #1
1F03BE:  LDR.W           R0, [R4,#0x334]
1F03C2:  CMP             R0, R5
1F03C4:  BCS             loc_1F03D2
1F03C6:  LDR             R1, =(aImageWidthExce - 0x1F03CE); "Image width exceeds user limit in IHDR"
1F03C8:  MOV             R0, R4
1F03CA:  ADD             R1, PC; "Image width exceeds user limit in IHDR"
1F03CC:  BLX             j_png_warning
1F03D0:  MOVS            R6, #1
1F03D2:  CMP.W           R9, #0
1F03D6:  BEQ             loc_1F03E2
1F03D8:  CMP.W           R9, #0xFFFFFFFF
1F03DC:  BGT             loc_1F03EE
1F03DE:  ADR             R1, aInvalidImageHe; "Invalid image height in IHDR"
1F03E0:  B               loc_1F03E6
1F03E2:  LDR             R1, =(aImageHeightIsZ - 0x1F03E8); "Image height is zero in IHDR"
1F03E4:  ADD             R1, PC; "Image height is zero in IHDR"
1F03E6:  MOV             R0, R4
1F03E8:  BLX             j_png_warning
1F03EC:  MOVS            R6, #1
1F03EE:  LDR.W           R0, [R4,#0x338]
1F03F2:  CMP             R0, R9
1F03F4:  BCS             loc_1F0402
1F03F6:  LDR             R1, =(aImageHeightExc - 0x1F03FE); "Image height exceeds user limit in IHDR"
1F03F8:  MOV             R0, R4
1F03FA:  ADD             R1, PC; "Image height exceeds user limit in IHDR"
1F03FC:  BLX             j_png_warning
1F0400:  MOVS            R6, #1
1F0402:  LDR             R5, [R7,#arg_0]
1F0404:  CMP.W           R8, #0x10
1F0408:  BHI             loc_1F04F4
1F040A:  MOVS            R0, #1
1F040C:  MOVW            R1, #:lower16:(elf_hash_bucket+0x1001A)
1F0410:  LSL.W           R0, R0, R8
1F0414:  MOVT            R1, #:upper16:(elf_hash_bucket+0x1001A)
1F0418:  TST             R0, R1
1F041A:  BEQ             loc_1F04F4
1F041C:  ORR.W           R9, R5, #4
1F0420:  CMP             R5, #6
1F0422:  BHI             loc_1F042A
1F0424:  CMP.W           R9, #5
1F0428:  BNE             loc_1F0436
1F042A:  LDR             R1, =(aInvalidColorTy - 0x1F0432); "Invalid color type in IHDR"
1F042C:  MOV             R0, R4
1F042E:  ADD             R1, PC; "Invalid color type in IHDR"
1F0430:  BLX             j_png_warning
1F0434:  MOVS            R6, #1
1F0436:  LDR.W           R10, [R7,#arg_4]
1F043A:  CMP.W           R8, #9
1F043E:  BLT             loc_1F0444
1F0440:  CMP             R5, #3
1F0442:  BEQ             loc_1F0464
1F0444:  CMP.W           R9, #6
1F0448:  MOV.W           R1, #0
1F044C:  IT EQ
1F044E:  MOVEQ           R1, #1
1F0450:  MOVS            R0, #0
1F0452:  CMP             R5, #4
1F0454:  IT EQ
1F0456:  MOVEQ           R0, #1
1F0458:  CMP.W           R8, #7
1F045C:  BGT             loc_1F0470
1F045E:  ORRS            R0, R1
1F0460:  CMP             R0, #1
1F0462:  BNE             loc_1F0470
1F0464:  LDR             R1, =(aInvalidColorTy_0 - 0x1F046C); "Invalid color type/bit depth combinatio"...
1F0466:  MOV             R0, R4
1F0468:  ADD             R1, PC; "Invalid color type/bit depth combinatio"...
1F046A:  BLX             j_png_warning
1F046E:  MOVS            R6, #1
1F0470:  LDR             R5, [R7,#arg_8]
1F0472:  CMP.W           R10, #2
1F0476:  BLT             loc_1F0484
1F0478:  LDR             R1, =(aUnknownInterla - 0x1F0480); "Unknown interlace method in IHDR"
1F047A:  MOV             R0, R4
1F047C:  ADD             R1, PC; "Unknown interlace method in IHDR"
1F047E:  BLX             j_png_warning
1F0482:  MOVS            R6, #1
1F0484:  CBZ             R5, loc_1F0492
1F0486:  LDR             R1, =(aUnknownCompres_1 - 0x1F048E); "Unknown compression method in IHDR"
1F0488:  MOV             R0, R4
1F048A:  ADD             R1, PC; "Unknown compression method in IHDR"
1F048C:  BLX             j_png_warning
1F0490:  MOVS            R6, #1
1F0492:  LDRB.W          R0, [R4,#0x135]
1F0496:  LDR             R5, [R7,#arg_C]
1F0498:  LSLS            R0, R0, #0x1B
1F049A:  BPL             loc_1F04AC
1F049C:  LDR.W           R0, [R4,#0x30C]
1F04A0:  CBZ             R0, loc_1F04AC
1F04A2:  LDR             R1, =(aMngFeaturesAre_0 - 0x1F04AA); "MNG features are not allowed in a PNG d"...
1F04A4:  MOV             R0, R4
1F04A6:  ADD             R1, PC; "MNG features are not allowed in a PNG d"...
1F04A8:  BLX             j_png_warning
1F04AC:  CBZ             R5, loc_1F04E0
1F04AE:  CMP             R5, #0x40 ; '@'
1F04B0:  BNE             loc_1F04CC
1F04B2:  LDR.W           R0, [R4,#0x30C]
1F04B6:  ANDS.W          R0, R0, #4
1F04BA:  BEQ             loc_1F04CC
1F04BC:  CMP.W           R9, #6
1F04C0:  ITT EQ
1F04C2:  LDREQ.W         R0, [R4,#0x134]
1F04C6:  ANDSEQ.W        R1, R0, #0x1000
1F04CA:  BEQ             loc_1F04DC
1F04CC:  LDR             R1, =(aUnknownFilterM - 0x1F04D4); "Unknown filter method in IHDR"
1F04CE:  MOV             R0, R4
1F04D0:  ADD             R1, PC; "Unknown filter method in IHDR"
1F04D2:  BLX             j_png_warning
1F04D6:  LDR.W           R0, [R4,#0x134]
1F04DA:  MOVS            R6, #1
1F04DC:  LSLS            R0, R0, #0x13
1F04DE:  BMI             loc_1F0502
1F04E0:  CMP             R6, #1
1F04E2:  ITT NE
1F04E4:  POPNE.W         {R8-R10}
1F04E8:  POPNE           {R4-R7,PC}
1F04EA:  LDR             R1, =(aInvalidIhdrDat - 0x1F04F2); "Invalid IHDR data"
1F04EC:  MOV             R0, R4
1F04EE:  ADD             R1, PC; "Invalid IHDR data"
1F04F0:  BLX             j_png_error
1F04F4:  LDR             R1, =(aInvalidBitDept_2 - 0x1F04FC); "Invalid bit depth in IHDR"
1F04F6:  MOV             R0, R4
1F04F8:  ADD             R1, PC; "Invalid bit depth in IHDR"
1F04FA:  BLX             j_png_warning
1F04FE:  MOVS            R6, #1
1F0500:  B               loc_1F041C
1F0502:  LDR             R1, =(aInvalidFilterM - 0x1F050A); "Invalid filter method in IHDR"
1F0504:  MOV             R0, R4
1F0506:  ADD             R1, PC; "Invalid filter method in IHDR"
1F0508:  BLX             j_png_warning
1F050C:  B               loc_1F04EA
