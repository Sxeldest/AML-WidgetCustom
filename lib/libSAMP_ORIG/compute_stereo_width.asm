; =========================================================
; Game Engine Function: compute_stereo_width
; Address            : 0xC543E - 0xC567A
; =========================================================

C543E:  PUSH            {R4-R7,LR}
C5440:  ADD             R7, SP, #0xC
C5442:  PUSH.W          {R8-R11}
C5446:  SUB             SP, SP, #0x1C
C5448:  STR             R0, [SP,#0x38+var_28]
C544A:  MOV             R0, R2
C544C:  STR             R3, [SP,#0x38+var_30]
C544E:  MOV             R5, R1
C5450:  BLX             sub_108848
C5454:  CMP             R0, #0x32 ; '2'
C5456:  STR             R0, [SP,#0x38+var_38]
C5458:  MOV             R1, R0
C545A:  MOVW            R0, #:lower16:(loc_C7FE6+1)
C545E:  IT LE
C5460:  MOVLE           R1, #0x32 ; '2'
C5462:  MOVT            R0, #:upper16:(loc_C7FE6+1)
C5466:  BLX             sub_108874
C546A:  MOVW            R1, #0x7FFF
C546E:  SUBS            R0, R1, R0
C5470:  STR             R0, [SP,#0x38+var_34]
C5472:  CMP             R5, #4
C5474:  MOV.W           R4, #0
C5478:  MOV.W           R0, #0
C547C:  MOV.W           R2, #0
C5480:  BLT             loc_C553C
C5482:  SUBS            R0, R5, #3
C5484:  STR             R0, [SP,#0x38+var_2C]
C5486:  LDR             R0, [SP,#0x38+var_28]
C5488:  MOVS            R2, #0
C548A:  MOVS            R4, #0
C548C:  MOVS            R1, #0
C548E:  ADD.W           R8, R0, #0xE
C5492:  MOVS            R0, #0
C5494:  MOV             R9, R2
C5496:  LDR             R2, [SP,#0x38+var_28]
C5498:  STR             R4, [SP,#0x38+var_20]
C549A:  ADD.W           R6, R2, R1,LSL#2
C549E:  ADDS            R1, #4
C54A0:  LDRSH.W         R2, [R6,#4]
C54A4:  LDRSH.W         R5, [R6,#2]
C54A8:  STR             R2, [SP,#0x38+var_24]
C54AA:  LDRSH.W         R12, [R6,#6]
C54AE:  LDRSH.W         R4, [R8,#-0xE]
C54B2:  LDRSH.W         R10, [R6,#8]
C54B6:  SMULBB.W        LR, R12, R2
C54BA:  LDRSH.W         R11, [R6,#0xC]
C54BE:  SMULBB.W        R3, R5, R4
C54C2:  LDRSH.W         R6, [R6,#0xA]
C54C6:  SMULBB.W        R5, R5, R5
C54CA:  MOV.W           R2, LR,ASR#2
C54CE:  MOV             LR, R4
C54D0:  ADD.W           R2, R2, R3,ASR#2
C54D4:  SMULBB.W        R3, R6, R10
C54D8:  SMULBB.W        R6, R6, R6
C54DC:  ADD.W           R2, R2, R3,ASR#2
C54E0:  LDRSH.W         R3, [R8]
C54E4:  ADD.W           R8, R8, #0x10
C54E8:  SMULBB.W        R4, R3, R11
C54EC:  SMULBB.W        R3, R3, R3
C54F0:  ADD.W           R2, R2, R4,ASR#2
C54F4:  LDR             R4, [SP,#0x38+var_20]
C54F6:  ADD.W           R0, R0, R2,ASR#10
C54FA:  SMULBB.W        R2, R12, R12
C54FE:  LSRS            R2, R2, #2
C5500:  ADD.W           R2, R2, R5,LSR#2
C5504:  SMULBB.W        R5, LR, LR
C5508:  ADD.W           R2, R2, R6,LSR#2
C550C:  SMULBB.W        R6, R11, R11
C5510:  ADD.W           R2, R2, R3,LSR#2
C5514:  LDR             R3, [SP,#0x38+var_24]
C5516:  ADD.W           R4, R4, R2,LSR#10
C551A:  SMULBB.W        R2, R10, R10
C551E:  SMULBB.W        R3, R3, R3
C5522:  LSRS            R3, R3, #2
C5524:  ADD.W           R3, R3, R5,LSR#2
C5528:  ADD.W           R2, R3, R2,LSR#2
C552C:  LDR             R3, [SP,#0x38+var_2C]
C552E:  ADD.W           R2, R2, R6,LSR#2
C5532:  CMP             R1, R3
C5534:  ADD.W           R9, R9, R2,LSR#10
C5538:  MOV             R2, R9
C553A:  BLT             loc_C5494
C553C:  LDR.W           R9, [SP,#0x38+var_30]
C5540:  MOV             R8, R0
C5542:  LDRD.W          R1, R10, [R9]
C5546:  LDR.W           LR, [R9,#8]
C554A:  SUBS            R3, R2, R1
C554C:  LDR             R2, [SP,#0x38+var_34]
C554E:  UXTH            R6, R3
C5550:  ASRS            R3, R3, #0x10
C5552:  SXTH            R5, R2
C5554:  MULS            R6, R5
C5556:  ADD.W           R0, R1, R6,ASR#15
C555A:  LSLS            R6, R2, #0x10
C555C:  ASRS            R6, R6, #0xF
C555E:  MLA.W           R0, R6, R3, R0
C5562:  SUB.W           R3, R4, LR
C5566:  UXTH            R4, R3
C5568:  ASRS            R3, R3, #0x10
C556A:  MUL.W           R12, R4, R5
C556E:  SUB.W           R4, R8, R10
C5572:  UXTH            R2, R4
C5574:  CMP             R0, #0
C5576:  MUL.W           R2, R5, R2
C557A:  ADD.W           R1, R10, R2,ASR#15
C557E:  MOV.W           R2, R4,ASR#16
C5582:  MLA.W           R1, R6, R2, R1
C5586:  ADD.W           R2, LR, R12,ASR#15
C558A:  MLA.W           R2, R6, R3, R2
C558E:  MOV.W           R3, #0
C5592:  IT LE
C5594:  MOVLE           R0, R3
C5596:  CMP             R1, #0
C5598:  IT LE
C559A:  MOVLE           R1, R3
C559C:  CMP             R2, #0
C559E:  IT GT
C55A0:  MOVGT           R3, R2
C55A2:  CMP             R0, R3
C55A4:  STM.W           R9, {R0,R1,R3}
C55A8:  IT GT
C55AA:  MOVGT           R3, R0
C55AC:  CMP             R3, #0xD2
C55AE:  BLE             loc_C565A
C55B0:  BLX             j_celt_sqrt
C55B4:  MOV             R5, R0
C55B6:  LDR.W           R0, [R9,#8]
C55BA:  BLX             j_celt_sqrt
C55BE:  MOV             R6, R0
C55C0:  SXTH            R0, R5
C55C2:  SMULBB.W        R4, R6, R5
C55C6:  BLX             j_celt_sqrt
C55CA:  MOV             R10, R0
C55CC:  SXTH            R0, R6
C55CE:  BLX             j_celt_sqrt
C55D2:  MOVS            R1, #1
C55D4:  MOV             R11, R0
C55D6:  LDR.W           R0, [R9,#4]
C55DA:  SMLABB.W        R1, R6, R5, R1
C55DE:  CMP             R0, R4
C55E0:  IT LT
C55E2:  MOVLT           R4, R0
C55E4:  MOV             R0, R4
C55E6:  STR.W           R4, [R9,#4]
C55EA:  BLX             j_frac_div32
C55EE:  MOV             R5, R0
C55F0:  SXTH.W          R0, R10
C55F4:  SXTAH.W         R1, R0, R11
C55F8:  SXTH.W          R2, R11
C55FC:  SUBS            R0, R0, R2
C55FE:  ADD.W           R1, R1, #1
C5602:  IT MI
C5604:  NEGMI           R0, R0
C5606:  SXTH            R0, R0
C5608:  RSB.W           R0, R0, R0,LSL#15
C560C:  BLX             sub_108848
C5610:  MOV             R4, R0
C5612:  SMULTT.W        R0, R5, R5
C5616:  RSB.W           R0, R0, #0x40000000
C561A:  BLX             j_celt_sqrt
C561E:  LSLS            R1, R4, #0x10
C5620:  SXTH            R0, R0
C5622:  ASRS            R1, R1, #0xF
C5624:  LDRSH.W         R4, [R9,#0xC]
C5628:  MULS            R0, R1
C562A:  LDR             R6, [SP,#0x38+var_38]
C562C:  LDRSH.W         R5, [R9,#0xE]
C5630:  MOV             R1, R6
C5632:  RSB.W           R0, R4, R0,ASR#16
C5636:  BLX             sub_108848
C563A:  ADD             R0, R4
C563C:  STRH.W          R0, [R9,#0xC]
C5640:  MOV             R1, R6
C5642:  SXTH            R4, R0
C5644:  MOVW            R0, #0x28F
C5648:  BLX             sub_108848
C564C:  SUBS            R0, R5, R0
C564E:  CMP             R0, R4
C5650:  IT GT
C5652:  MOVGT           R4, R0
C5654:  STRH.W          R4, [R9,#0xE]
C5658:  B               loc_C565E
C565A:  LDRH.W          R4, [R9,#0xE]
C565E:  SXTH            R0, R4
C5660:  MOVW            R2, #0x7FFF
C5664:  ADD.W           R0, R0, R0,LSL#2
C5668:  LSLS            R1, R0, #2
C566A:  CMP             R1, R2
C566C:  IT LT
C566E:  LSLLT           R2, R0, #2
C5670:  SXTH            R0, R2
C5672:  ADD             SP, SP, #0x1C
C5674:  POP.W           {R8-R11}
C5678:  POP             {R4-R7,PC}
