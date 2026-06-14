; =========================================================
; Game Engine Function: opus_fft_c
; Address            : 0xC4AAC - 0xC4B1E
; =========================================================

C4AAC:  PUSH            {R4-R7,LR}
C4AAE:  ADD             R7, SP, #0xC
C4AB0:  PUSH.W          {R8-R11}
C4AB4:  LDR.W           R12, [R0]
C4AB8:  CMP.W           R12, #1
C4ABC:  BLT             loc_C4B10
C4ABE:  LDR             R3, [R0,#8]
C4AC0:  MOVS            R5, #0
C4AC2:  LDR.W           LR, [R0,#0x30]
C4AC6:  LDRSH.W         R9, [R0,#4]
C4ACA:  SUB.W           R8, R3, #1
C4ACE:  LDR.W           R6, [R1,R5,LSL#3]
C4AD2:  ADD.W           R3, R1, R5,LSL#3
C4AD6:  LDR             R3, [R3,#4]
C4AD8:  UXTH            R4, R6
C4ADA:  MUL.W           R10, R4, R9
C4ADE:  UXTH            R4, R3
C4AE0:  MUL.W           R11, R4, R9
C4AE4:  MOV.W           R4, R10,ASR#16
C4AE8:  SMLATB.W        R10, R6, R9, R4
C4AEC:  LDRSH.W         R6, [LR,R5,LSL#1]
C4AF0:  MOV.W           R4, R11,ASR#16
C4AF4:  SMLATB.W        R3, R3, R9, R4
C4AF8:  ADDS            R5, #1
C4AFA:  CMP             R5, R12
C4AFC:  ASR.W           R4, R10, R8
C4B00:  STR.W           R4, [R2,R6,LSL#3]
C4B04:  ADD.W           R4, R2, R6,LSL#3
C4B08:  ASR.W           R3, R3, R8
C4B0C:  STR             R3, [R4,#4]
C4B0E:  BLT             loc_C4ACE
C4B10:  MOV             R1, R2
C4B12:  POP.W           {R8-R11}
C4B16:  POP.W           {R4-R7,LR}
C4B1A:  B.W             sub_10C200
