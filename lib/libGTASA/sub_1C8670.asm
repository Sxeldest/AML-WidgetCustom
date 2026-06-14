; =========================================================
; Game Engine Function: sub_1C8670
; Address            : 0x1C8670 - 0x1C86D4
; =========================================================

1C8670:  PUSH            {R7,LR}
1C8672:  MOV             R7, SP
1C8674:  LDR.W           R12, [R0,#4]
1C8678:  CMP.W           R12, #1
1C867C:  BLT             loc_1C86C6
1C867E:  LDR             R3, =(dword_6B72B8 - 0x1C8688)
1C8680:  MOV.W           LR, #0
1C8684:  ADD             R3, PC; dword_6B72B8
1C8686:  LDR             R2, [R1]
1C8688:  ADD.W           LR, LR, #1
1C868C:  STR             R2, [R3]
1C868E:  LDR             R2, [R1,#0x10]
1C8690:  STR             R2, [R3,#4]
1C8692:  LDR             R2, [R1,#0x20]
1C8694:  STR             R2, [R3,#8]
1C8696:  LDR             R2, [R1,#0x30]
1C8698:  STR             R2, [R3,#0xC]
1C869A:  LDR             R2, [R1,#4]
1C869C:  STR             R2, [R3,#0x10]
1C869E:  LDR             R2, [R1,#0x14]
1C86A0:  STR             R2, [R3,#0x14]
1C86A2:  LDR             R2, [R1,#0x24]
1C86A4:  STR             R2, [R3,#0x18]
1C86A6:  LDR             R2, [R1,#0x34]
1C86A8:  STR             R2, [R3,#0x1C]
1C86AA:  LDR             R2, [R1,#8]
1C86AC:  STR             R2, [R3,#0x20]
1C86AE:  LDR             R2, [R1,#0x18]
1C86B0:  STR             R2, [R3,#0x24]
1C86B2:  LDR             R2, [R1,#0x28]
1C86B4:  STR             R2, [R3,#0x28]
1C86B6:  LDR             R2, [R1,#0x38]
1C86B8:  ADDS            R1, #0x40 ; '@'
1C86BA:  STR             R2, [R3,#0x2C]
1C86BC:  ADDS            R3, #0x30 ; '0'
1C86BE:  LDR.W           R12, [R0,#4]
1C86C2:  CMP             LR, R12
1C86C4:  BLT             loc_1C8686
1C86C6:  LDR             R0, =(dword_6B72B8 - 0x1C86CE)
1C86C8:  MOV             R1, R12; int
1C86CA:  ADD             R0, PC; dword_6B72B8 ; float *
1C86CC:  POP.W           {R7,LR}
1C86D0:  B.W             sub_19EAA0
