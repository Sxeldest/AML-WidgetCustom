; =========================================================
; Game Engine Function: _ZN8COctTree17FindNearestColourEhhh
; Address            : 0x45C8FC - 0x45C958
; =========================================================

45C8FC:  PUSH            {R4-R7,LR}
45C8FE:  ADD             R7, SP, #0xC
45C900:  PUSH.W          {R8}
45C904:  LDRB            R5, [R0,#8]
45C906:  CBNZ            R5, loc_45C950
45C908:  LDR             R5, =(dword_9ABF40 - 0x45C912)
45C90A:  MOV.W           R8, #4
45C90E:  ADD             R5, PC; dword_9ABF40
45C910:  LDRD.W          LR, R12, [R5]
45C914:  MOVS            R5, #2
45C916:  UXTB            R2, R2
45C918:  UXTB            R1, R1
45C91A:  AND.W           R4, R5, R2,LSR#6
45C91E:  UXTB            R3, R3
45C920:  AND.W           R6, R8, R1,LSR#5
45C924:  ORR.W           R4, R4, R3,LSR#7
45C928:  ORRS            R4, R6
45C92A:  LSLS            R3, R3, #1
45C92C:  LSLS            R2, R2, #1
45C92E:  LSLS            R1, R1, #1
45C930:  ADD.W           R0, R0, R4,LSL#1
45C934:  LDRSH.W         R0, [R0,#0xA]
45C938:  LDRSB.W         R4, [R12,R0]
45C93C:  ADD.W           R0, R0, R0,LSL#2
45C940:  ADD.W           R0, LR, R0,LSL#3
45C944:  CMP             R4, #0
45C946:  IT LT
45C948:  MOVLT           R0, #0
45C94A:  LDRB            R4, [R0,#byte_8]
45C94C:  CMP             R4, #0
45C94E:  BEQ             loc_45C916
45C950:  LDR             R0, [R0,#4]
45C952:  POP.W           {R8}
45C956:  POP             {R4-R7,PC}
