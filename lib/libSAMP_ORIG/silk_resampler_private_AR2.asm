; =========================================================
; Game Engine Function: silk_resampler_private_AR2
; Address            : 0xB56A0 - 0xB56F8
; =========================================================

B56A0:  PUSH            {R4-R7,LR}
B56A2:  ADD             R7, SP, #0xC
B56A4:  PUSH.W          {R8}
B56A8:  LDR.W           R12, [R7,#arg_0]
B56AC:  CMP.W           R12, #1
B56B0:  BLT             loc_B56F2
B56B2:  LDRSH.W         LR, [R3]
B56B6:  LDRSH.W         R8, [R3,#2]
B56BA:  LDR             R4, [R0]
B56BC:  LDRSH.W         R5, [R2],#2
B56C0:  SUBS.W          R12, R12, #1
B56C4:  ADD.W           R4, R4, R5,LSL#8
B56C8:  STR.W           R4, [R1],#4
B56CC:  LDR             R5, [R0,#4]
B56CE:  MOV.W           R4, R4,LSL#2
B56D2:  UXTH            R6, R4
B56D4:  SMLABT.W        R5, LR, R4, R5
B56D8:  MUL.W           R3, R6, LR
B56DC:  MUL.W           R6, R6, R8
B56E0:  MOV.W           R6, R6,ASR#16
B56E4:  SMLATB.W        R6, R4, R8, R6
B56E8:  ADD.W           R4, R5, R3,ASR#16
B56EC:  STRD.W          R4, R6, [R0]
B56F0:  BNE             loc_B56BC
B56F2:  POP.W           {R8}
B56F6:  POP             {R4-R7,PC}
