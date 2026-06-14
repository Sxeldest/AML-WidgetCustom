; =========================================================
; Game Engine Function: silk_biquad_alt_stride1
; Address            : 0x1AB664 - 0x1AB76C
; =========================================================

1AB664:  PUSH            {R4-R7,LR}
1AB666:  ADD             R7, SP, #0xC
1AB668:  PUSH.W          {R8-R11}
1AB66C:  SUB             SP, SP, #0x14
1AB66E:  LDR.W           R12, [R7,#arg_4]
1AB672:  STR             R3, [SP,#0x30+var_20]
1AB674:  CMP.W           R12, #1
1AB678:  BLT             loc_1AB764
1AB67A:  LDRD.W          R4, R6, [R2]
1AB67E:  NEGS            R5, R6
1AB680:  LDR.W           LR, [R7,#arg_0]
1AB684:  MOV             R2, R5
1AB686:  NEGS            R6, R4
1AB688:  BFC.W           R2, #0xE, #0x12
1AB68C:  STR             R2, [SP,#0x30+var_24]
1AB68E:  MOV             R2, R6
1AB690:  BFC.W           R2, #0xE, #0x12
1AB694:  STR             R2, [SP,#0x30+var_28]
1AB696:  LDR             R2, [SP,#0x30+var_20]
1AB698:  LDRD.W          R9, R10, [R2]
1AB69C:  SBFX.W          R2, R5, #0xE, #0x10
1AB6A0:  STR             R2, [SP,#0x30+var_2C]
1AB6A2:  SBFX.W          R2, R6, #0xE, #0x10
1AB6A6:  STR             R2, [SP,#0x30+var_30]
1AB6A8:  LDR             R4, [R1]
1AB6AA:  MOVS            R3, #1
1AB6AC:  LDRSH.W         R8, [R0],#2
1AB6B0:  LDR             R2, [SP,#0x30+var_28]
1AB6B2:  UXTH            R5, R4
1AB6B4:  MUL.W           R5, R5, R8
1AB6B8:  SMLABT.W        R4, R8, R4, R9
1AB6BC:  ADD.W           R11, R4, R5,ASR#16
1AB6C0:  MOV.W           R4, R11,LSL#2
1AB6C4:  UXTH            R5, R4
1AB6C6:  MUL.W           R6, R5, R2
1AB6CA:  LSRS            R6, R6, #0x10
1AB6CC:  SMLATB.W        R6, R4, R2, R6
1AB6D0:  ADD.W           R9, R3, R6,ASR#13
1AB6D4:  LDR             R6, [SP,#0x30+var_30]
1AB6D6:  SMLABT.W        R2, R6, R4, R10
1AB6DA:  MULS            R6, R5
1AB6DC:  ADD.W           R2, R2, R6,ASR#16
1AB6E0:  ADD.W           R10, R2, R9,ASR#1
1AB6E4:  LDR             R2, [SP,#0x30+var_2C]
1AB6E6:  MUL.W           R6, R5, R2
1AB6EA:  ASRS            R6, R6, #0x10
1AB6EC:  SMLATB.W        R9, R4, R2, R6
1AB6F0:  LDR             R6, [SP,#0x30+var_24]
1AB6F2:  MULS            R5, R6
1AB6F4:  LSRS            R5, R5, #0x10
1AB6F6:  SMLATB.W        R4, R4, R6, R5
1AB6FA:  ADD.W           R4, R3, R4,ASR#13
1AB6FE:  LDR             R3, [SP,#0x30+var_20]
1AB700:  ADD.W           R4, R9, R4,ASR#1
1AB704:  STR.W           R10, [R3]
1AB708:  LDR             R5, [R1,#4]
1AB70A:  STR             R4, [R3,#4]
1AB70C:  UXTH            R6, R5
1AB70E:  MUL.W           R6, R6, R8
1AB712:  ASRS            R6, R6, #0x10
1AB714:  SMLATB.W        R5, R5, R8, R6
1AB718:  ADD.W           R9, R5, R10
1AB71C:  STR.W           R9, [R3]
1AB720:  LDR             R2, [R1,#8]
1AB722:  UXTH            R5, R2
1AB724:  MUL.W           R5, R5, R8
1AB728:  ASRS            R5, R5, #0x10
1AB72A:  SMLATB.W        R2, R2, R8, R5
1AB72E:  MOV             R5, #0xFFFF8000
1AB736:  ADD.W           R10, R2, R4
1AB73A:  MOVW            R2, #0x3FFF
1AB73E:  ADD.W           R2, R2, R11,LSL#2
1AB742:  STR.W           R10, [R3,#4]
1AB746:  ASRS            R4, R2, #0xE
1AB748:  CMP             R4, R5
1AB74A:  MOV             R4, R5
1AB74C:  IT GT
1AB74E:  ASRGT           R4, R2, #0xE
1AB750:  MOVW            R2, #0x7FFF
1AB754:  CMP             R4, R2
1AB756:  IT GE
1AB758:  MOVGE           R4, R2
1AB75A:  SUBS.W          R12, R12, #1
1AB75E:  STRH.W          R4, [LR],#2
1AB762:  BNE             loc_1AB6A8
1AB764:  ADD             SP, SP, #0x14
1AB766:  POP.W           {R8-R11}
1AB76A:  POP             {R4-R7,PC}
