; =========================================================
; Game Engine Function: _ZN4CPednwEji
; Address            : 0x49F924 - 0x49F972
; =========================================================

49F924:  PUSH            {R4,R6,R7,LR}
49F926:  ADD             R7, SP, #8
49F928:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x49F934)
49F92A:  ASRS            R4, R1, #8
49F92C:  AND.W           R1, R1, #0x7F
49F930:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
49F932:  LDR             R0, [R0]; CPools::ms_pPedPool ...
49F934:  LDR             R2, [R0]; CPools::ms_pPedPool
49F936:  LDRD.W          R12, LR, [R2]
49F93A:  LDRB.W          R0, [LR,R4]
49F93E:  AND.W           R0, R0, #0x7F
49F942:  STRB.W          R0, [LR,R4]
49F946:  LDR.W           LR, [R2,#4]
49F94A:  LDRB.W          R0, [LR,R4]
49F94E:  AND.W           R0, R0, #0x80
49F952:  ORRS            R0, R1
49F954:  STRB.W          R0, [LR,R4]
49F958:  MOVS            R0, #0
49F95A:  LDR             R1, [R2,#4]
49F95C:  STR             R0, [R2,#0xC]
49F95E:  LDRSB           R3, [R1,R0]
49F960:  ADDS            R0, #1
49F962:  CMP.W           R3, #0xFFFFFFFF
49F966:  BGT             loc_49F95C
49F968:  MOVW            R0, #0x7CC
49F96C:  MLA.W           R0, R4, R0, R12
49F970:  POP             {R4,R6,R7,PC}
