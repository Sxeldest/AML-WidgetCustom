; =========================================================
; Game Engine Function: opus_fft_c
; Address            : 0x1A286C - 0x1A28DE
; =========================================================

1A286C:  PUSH            {R4-R7,LR}
1A286E:  ADD             R7, SP, #0xC
1A2870:  PUSH.W          {R8-R11}
1A2874:  LDR.W           R12, [R0]
1A2878:  CMP.W           R12, #1
1A287C:  BLT             loc_1A28D0
1A287E:  LDR             R3, [R0,#8]
1A2880:  MOVS            R5, #0
1A2882:  LDR.W           LR, [R0,#0x30]
1A2886:  LDRSH.W         R9, [R0,#4]
1A288A:  SUB.W           R8, R3, #1
1A288E:  LDR.W           R6, [R1,R5,LSL#3]
1A2892:  ADD.W           R3, R1, R5,LSL#3
1A2896:  LDR             R3, [R3,#4]
1A2898:  UXTH            R4, R6
1A289A:  MUL.W           R10, R4, R9
1A289E:  UXTH            R4, R3
1A28A0:  MUL.W           R11, R4, R9
1A28A4:  MOV.W           R4, R10,ASR#16
1A28A8:  SMLATB.W        R10, R6, R9, R4
1A28AC:  LDRSH.W         R6, [LR,R5,LSL#1]
1A28B0:  MOV.W           R4, R11,ASR#16
1A28B4:  SMLATB.W        R3, R3, R9, R4
1A28B8:  ADDS            R5, #1
1A28BA:  CMP             R5, R12
1A28BC:  ASR.W           R4, R10, R8
1A28C0:  STR.W           R4, [R2,R6,LSL#3]
1A28C4:  ADD.W           R4, R2, R6,LSL#3
1A28C8:  ASR.W           R3, R3, R8
1A28CC:  STR             R3, [R4,#4]
1A28CE:  BLT             loc_1A288E
1A28D0:  MOV             R1, R2
1A28D2:  POP.W           {R8-R11}
1A28D6:  POP.W           {R4-R7,LR}
1A28DA:  B.W             sub_224430
