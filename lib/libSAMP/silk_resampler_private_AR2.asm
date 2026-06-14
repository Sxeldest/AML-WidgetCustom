; =========================================================
; Game Engine Function: silk_resampler_private_AR2
; Address            : 0x1938C4 - 0x19391C
; =========================================================

1938C4:  PUSH            {R4-R7,LR}
1938C6:  ADD             R7, SP, #0xC
1938C8:  PUSH.W          {R8}
1938CC:  LDR.W           R12, [R7,#arg_0]
1938D0:  CMP.W           R12, #1
1938D4:  BLT             loc_193916
1938D6:  LDRSH.W         LR, [R3]
1938DA:  LDRSH.W         R8, [R3,#2]
1938DE:  LDR             R4, [R0]
1938E0:  LDRSH.W         R5, [R2],#2
1938E4:  SUBS.W          R12, R12, #1
1938E8:  ADD.W           R4, R4, R5,LSL#8
1938EC:  STR.W           R4, [R1],#4
1938F0:  LDR             R5, [R0,#4]
1938F2:  MOV.W           R4, R4,LSL#2
1938F6:  UXTH            R6, R4
1938F8:  SMLABT.W        R5, LR, R4, R5
1938FC:  MUL.W           R3, R6, LR
193900:  MUL.W           R6, R6, R8
193904:  MOV.W           R6, R6,ASR#16
193908:  SMLATB.W        R6, R4, R8, R6
19390C:  ADD.W           R4, R5, R3,ASR#16
193910:  STRD.W          R4, R6, [R0]
193914:  BNE             loc_1938E0
193916:  POP.W           {R8}
19391A:  POP             {R4-R7,PC}
