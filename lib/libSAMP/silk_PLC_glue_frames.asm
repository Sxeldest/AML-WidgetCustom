; =========================================================
; Game Engine Function: silk_PLC_glue_frames
; Address            : 0x192750 - 0x1928BC
; =========================================================

192750:  PUSH            {R4-R7,LR}
192752:  ADD             R7, SP, #0xC
192754:  PUSH.W          {R8,R9,R11}
192758:  SUB             SP, SP, #0x10
19275A:  MOV             R6, R0
19275C:  LDR             R0, =(__stack_chk_guard_ptr - 0x192766)
19275E:  MOV             R9, R2
192760:  MOV             R5, R1
192762:  ADD             R0, PC; __stack_chk_guard_ptr
192764:  LDR             R0, [R0]; __stack_chk_guard
192766:  LDR             R0, [R0]
192768:  STR             R0, [SP,#0x28+var_1C]
19276A:  MOV.W           R0, #0x1040
19276E:  LDR             R0, [R6,R0]
192770:  CBZ             R0, loc_192792
192772:  MOVW            R0, #0x1088
192776:  MOVW            R1, #0x108C
19277A:  ADD             R0, R6
19277C:  ADD             R1, R6
19277E:  MOV             R2, R5
192780:  MOV             R3, R9
192782:  BLX             j_silk_sum_sqr_shift
192786:  MOVW            R0, #0x107C
19278A:  ADD.W           R8, R6, R0
19278E:  MOVS            R4, #1
192790:  B               loc_19289E
192792:  MOVW            R0, #0x107C
192796:  ADD.W           R8, R6, R0
19279A:  LDR             R1, [R6,R0]
19279C:  CMP             R1, #0
19279E:  BEQ             loc_19289C
1927A0:  ADD             R0, SP, #0x28+var_24
1927A2:  ADD             R1, SP, #0x28+var_20
1927A4:  MOV             R2, R5
1927A6:  MOV             R3, R9
1927A8:  BLX             j_silk_sum_sqr_shift
1927AC:  MOVW            R0, #0x108C
1927B0:  LDR             R1, [SP,#0x28+var_20]
1927B2:  LDR             R0, [R6,R0]
1927B4:  CMP             R1, R0
1927B6:  BLE             loc_1927C8
1927B8:  MOVW            R2, #0x1088
1927BC:  SUBS            R0, R1, R0
1927BE:  LDR             R3, [R6,R2]
1927C0:  ASR.W           R0, R3, R0
1927C4:  STR             R0, [R6,R2]
1927C6:  B               loc_1927D4
1927C8:  ITTTT LT
1927CA:  LDRLT           R2, [SP,#0x28+var_24]
1927CC:  SUBLT           R0, R0, R1
1927CE:  ASRLT.W         R0, R2, R0
1927D2:  STRLT           R0, [SP,#0x28+var_24]
1927D4:  MOVW            R2, #0x1088
1927D8:  LDR             R1, [SP,#0x28+var_24]
1927DA:  LDR             R0, [R6,R2]
1927DC:  MOVS            R4, #0
1927DE:  CMP             R1, R0
1927E0:  BLE             loc_19289E
1927E2:  CLZ.W           R3, R0
1927E6:  ADD             R2, R6
1927E8:  SUBS            R6, R3, #1
1927EA:  LSLS            R0, R6
1927EC:  STR             R0, [R2]
1927EE:  RSB.W           R2, R3, #0x19
1927F2:  CMP             R2, #0
1927F4:  IT LE
1927F6:  MOVLE           R2, R4
1927F8:  ASRS            R1, R2
1927FA:  CMP             R1, #1
1927FC:  STR             R1, [SP,#0x28+var_24]
1927FE:  IT LE
192800:  MOVLE           R1, #1
192802:  BLX             sub_220A40
192806:  CMP             R0, #1
192808:  BLT             loc_19285C
19280A:  CLZ.W           R1, R0
19280E:  RSBS.W          R2, R1, #0x18
192812:  BEQ             loc_19282A
192814:  CMP.W           R2, #0xFFFFFFFF
192818:  BLE             loc_19281E
19281A:  RORS            R0, R2
19281C:  B               loc_19282A
19281E:  NEGS            R3, R2
192820:  ADDS            R2, #0x20 ; ' '
192822:  LSL.W           R3, R0, R3
192826:  LSRS            R0, R2
192828:  ORRS            R0, R3
19282A:  AND.W           R0, R0, #0x7F
19282E:  MOV.W           R2, #0xD50000
192832:  TST.W           R1, #1
192836:  MOV.W           R1, R1,LSR#1
19283A:  MUL.W           R0, R2, R0
19283E:  MOV.W           R2, #0x8000
192842:  IT EQ
192844:  MOVWEQ          R2, #0xB486
192848:  LSR.W           R1, R2, R1
19284C:  UXTH            R2, R1
19284E:  LSRS            R0, R0, #0x10
192850:  MULS            R2, R0
192852:  SMLABT.W        R0, R0, R1, R1
192856:  ADD.W           R0, R0, R2,LSR#16
19285A:  LSLS            R4, R0, #4
19285C:  RSB.W           R0, R4, #0x10000
192860:  MOV             R1, R9
192862:  BLX             sub_220A40
192866:  CMP.W           R9, #1
19286A:  BLT             loc_19289C
19286C:  LSLS            R0, R0, #2
19286E:  MOVS            R1, #0
192870:  MOVW            R12, #0xFFFC
192874:  LDRSH.W         R3, [R5,R1,LSL#1]
192878:  AND.W           R6, R4, R12
19287C:  LSRS            R2, R4, #0x10
19287E:  ADD             R4, R0
192880:  CMP.W           R4, #0x10000
192884:  MUL.W           R6, R3, R6
192888:  MUL.W           R2, R3, R2
19288C:  ADD.W           R2, R2, R6,LSR#16
192890:  STRH.W          R2, [R5,R1,LSL#1]
192894:  ITT LE
192896:  ADDLE           R1, #1
192898:  CMPLE           R1, R9
19289A:  BLT             loc_192874
19289C:  MOVS            R4, #0
19289E:  LDR             R0, =(__stack_chk_guard_ptr - 0x1928A8)
1928A0:  STR.W           R4, [R8]
1928A4:  ADD             R0, PC; __stack_chk_guard_ptr
1928A6:  LDR             R1, [SP,#0x28+var_1C]
1928A8:  LDR             R0, [R0]; __stack_chk_guard
1928AA:  LDR             R0, [R0]
1928AC:  SUBS            R0, R0, R1
1928AE:  ITTT EQ
1928B0:  ADDEQ           SP, SP, #0x10
1928B2:  POPEQ.W         {R8,R9,R11}
1928B6:  POPEQ           {R4-R7,PC}
1928B8:  BLX             __stack_chk_fail
