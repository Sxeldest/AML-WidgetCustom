; =========================================================
; Game Engine Function: silk_decode_pitch
; Address            : 0x1966EC - 0x1967A4
; =========================================================

1966EC:  PUSH            {R4-R7,LR}
1966EE:  ADD             R7, SP, #0xC
1966F0:  PUSH.W          {R8}
1966F4:  LDR             R5, =(silk_CB_lags_stage2_10_ms_ptr - 0x196700)
1966F6:  LDR             R4, =(silk_CB_lags_stage3_10_ms_ptr - 0x196706)
1966F8:  LDR.W           R8, =(silk_CB_lags_stage3_ptr - 0x19670C)
1966FC:  ADD             R5, PC; silk_CB_lags_stage2_10_ms_ptr
1966FE:  LDR.W           LR, =(silk_CB_lags_stage2_ptr - 0x196710)
196702:  ADD             R4, PC; silk_CB_lags_stage3_10_ms_ptr
196704:  LDR.W           R12, [R7,#arg_0]
196708:  ADD             R8, PC; silk_CB_lags_stage3_ptr
19670A:  LDR             R6, [R5]; silk_CB_lags_stage2_10_ms
19670C:  ADD             LR, PC; silk_CB_lags_stage2_ptr
19670E:  LDR             R5, [R4]; silk_CB_lags_stage3_10_ms
196710:  CMP.W           R12, #4
196714:  MOV.W           R4, #3
196718:  ITT EQ
19671A:  LDREQ.W         R6, [LR]; silk_CB_lags_stage2
19671E:  LDREQ.W         R5, [R8]; silk_CB_lags_stage3
196722:  CMP             R3, #8
196724:  MOV.W           LR, #0xC
196728:  IT EQ
19672A:  MOVEQ           R5, R6
19672C:  CMP.W           R12, #4
196730:  IT EQ
196732:  MOVEQ           R4, #0xB
196734:  IT EQ
196736:  MOVEQ.W         LR, #0x22 ; '"'
19673A:  CMP             R3, #8
19673C:  IT EQ
19673E:  MOVEQ           LR, R4
196740:  CMP.W           R12, #1
196744:  BLT             loc_19679E
196746:  LSLS            R4, R3, #0x10
196748:  SXTH            R3, R3
19674A:  ADD.W           R3, R3, R3,LSL#3
19674E:  ADD.W           R0, R0, R4,ASR#15
196752:  ADD             R1, R5
196754:  ASRS            R4, R4, #0xF
196756:  LSLS            R3, R3, #1
196758:  CMP             R4, R3
19675A:  BLE             loc_19677E
19675C:  LDRSB.W         R5, [R1]
196760:  ADD             R1, LR
196762:  ADD             R5, R0
196764:  CMP             R5, R3
196766:  MOV             R6, R5
196768:  IT LT
19676A:  MOVLT           R6, R3
19676C:  CMP             R5, R4
19676E:  IT GT
196770:  MOVGT           R6, R4
196772:  SUBS.W          R12, R12, #1
196776:  STR.W           R6, [R2],#4
19677A:  BNE             loc_19675C
19677C:  B               loc_19679E
19677E:  LDRSB.W         R5, [R1]
196782:  ADD             R1, LR
196784:  ADD             R5, R0
196786:  CMP             R5, R4
196788:  MOV             R6, R5
19678A:  IT LT
19678C:  MOVLT           R6, R4
19678E:  CMP             R5, R3
196790:  IT GT
196792:  MOVGT           R6, R3
196794:  SUBS.W          R12, R12, #1
196798:  STR.W           R6, [R2],#4
19679C:  BNE             loc_19677E
19679E:  POP.W           {R8}
1967A2:  POP             {R4-R7,PC}
