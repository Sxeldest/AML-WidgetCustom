; =========================================================
; Game Engine Function: silk_LPC_fit
; Address            : 0x1915CC - 0x191728
; =========================================================

1915CC:  PUSH            {R4-R7,LR}
1915CE:  ADD             R7, SP, #0xC
1915D0:  PUSH.W          {R8-R11}
1915D4:  SUB             SP, SP, #4
1915D6:  LDR             R6, [R7,#arg_0]
1915D8:  MOV             R4, R1
1915DA:  MOV             R10, R0
1915DC:  CMP             R6, #1
1915DE:  BLT.W           loc_191720
1915E2:  MOVW            R11, #:lower16:(aZnst6Ndk14Fs10_72+0x22); "6appendINS_17basic_string_viewIcNS_11ch"...
1915E6:  SUB.W           R9, R3, R2
1915EA:  MOVS            R5, #0
1915EC:  MOVT            R11, #:upper16:(aZnst6Ndk14Fs10_72+0x22); "6appendINS_17basic_string_viewIcNS_11ch"...
1915F0:  MOV.W           R8, #0
1915F4:  SUB.W           R0, R9, #1
1915F8:  STR             R0, [SP,#0x20+var_20]
1915FA:  MOVS            R1, #0
1915FC:  MOVS            R0, #0
1915FE:  LDR.W           R2, [R4,R1,LSL#2]
191602:  CMP             R2, #0
191604:  IT MI
191606:  NEGMI           R2, R2
191608:  CMP             R2, R0
19160A:  ITT GT
19160C:  MOVGT           R8, R1
19160E:  MOVGT           R0, R2
191610:  ADDS            R1, #1
191612:  CMP             R6, R1
191614:  BNE             loc_1915FE
191616:  CMP.W           R9, #1
19161A:  BNE             loc_19162C
19161C:  AND.W           R1, R0, #1
191620:  ADD.W           R0, R1, R0,ASR#1
191624:  CMP.W           R0, #0x8000
191628:  BGE             loc_19163A
19162A:  B               loc_1916E0
19162C:  LDR             R1, [SP,#0x20+var_20]
19162E:  ASRS            R0, R1
191630:  ADDS            R0, #1
191632:  ASRS            R0, R0, #1
191634:  CMP.W           R0, #0x8000
191638:  BLT             loc_1916E0
19163A:  CMP             R0, R11
19163C:  ADD.W           R1, R8, #1
191640:  IT GE
191642:  MOVGE           R0, R11
191644:  MOVW            R2, #0x4000
191648:  MULS            R1, R0
19164A:  MOVT            R2, #0xE000
19164E:  ADD.W           R0, R2, R0,LSL#14
191652:  ASRS            R1, R1, #2
191654:  BLX             sub_220A40
191658:  MOVW            R1, #0xFFBE
19165C:  SUBS            R2, R1, R0
19165E:  MOV             R0, R4
191660:  MOV             R1, R6
191662:  BLX             j_silk_bwexpander_32
191666:  ADDS            R0, R5, #1
191668:  CMP             R5, #9
19166A:  MOV             R5, R0
19166C:  BLT             loc_1915FA
19166E:  CMP             R0, #0xA
191670:  BNE             loc_1916E6
191672:  LDR             R5, [SP,#0x20+var_20]
191674:  CMP             R6, #1
191676:  BLT             loc_191720
191678:  MOVW            R0, #0x8000
19167C:  MOVW            R1, #0x7FFF
191680:  MOVT            R0, #0xFFFF
191684:  CMP.W           R9, #1
191688:  BNE             loc_1916B6
19168A:  LDR             R2, [R4]
19168C:  AND.W           R3, R2, #1
191690:  ADD.W           R2, R3, R2,ASR#1
191694:  CMP             R2, R0
191696:  IT LE
191698:  MOVLE           R2, R0
19169A:  CMP             R2, R1
19169C:  IT GE
19169E:  MOVGE           R2, R1
1916A0:  SUBS            R6, #1
1916A2:  STRH.W          R2, [R10],#2
1916A6:  MOV.W           R2, R2,LSL#16
1916AA:  MOV.W           R2, R2,ASR#15
1916AE:  STR.W           R2, [R4],#4
1916B2:  BNE             loc_19168A
1916B4:  B               loc_191720
1916B6:  LDR             R2, [R4]
1916B8:  ASRS            R2, R5
1916BA:  ADDS            R2, #1
1916BC:  ASRS            R3, R2, #1
1916BE:  CMP             R3, R0
1916C0:  MOV             R3, R0
1916C2:  IT GT
1916C4:  ASRGT           R3, R2, #1
1916C6:  CMP             R3, R1
1916C8:  IT GE
1916CA:  MOVGE           R3, R1
1916CC:  SUBS            R6, #1
1916CE:  SXTH            R2, R3
1916D0:  STRH.W          R3, [R10],#2
1916D4:  LSL.W           R2, R2, R9
1916D8:  STR.W           R2, [R4],#4
1916DC:  BNE             loc_1916B6
1916DE:  B               loc_191720
1916E0:  MOV             R0, R5
1916E2:  CMP             R0, #0xA
1916E4:  BEQ             loc_191672
1916E6:  LDR             R1, [SP,#0x20+var_20]
1916E8:  CMP             R6, #1
1916EA:  BLT             loc_191720
1916EC:  CMP.W           R9, #1
1916F0:  BNE             loc_191708
1916F2:  LDR.W           R0, [R4],#4
1916F6:  SUBS            R6, #1
1916F8:  AND.W           R1, R0, #1
1916FC:  ADD.W           R0, R1, R0,LSR#1
191700:  STRH.W          R0, [R10],#2
191704:  BNE             loc_1916F2
191706:  B               loc_191720
191708:  LDR.W           R0, [R4],#4
19170C:  SUBS            R6, #1
19170E:  ASR.W           R0, R0, R1
191712:  ADD.W           R0, R0, #1
191716:  MOV.W           R0, R0,LSR#1
19171A:  STRH.W          R0, [R10],#2
19171E:  BNE             loc_191708
191720:  ADD             SP, SP, #4
191722:  POP.W           {R8-R11}
191726:  POP             {R4-R7,PC}
