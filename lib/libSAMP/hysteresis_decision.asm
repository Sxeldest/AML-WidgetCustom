; =========================================================
; Game Engine Function: hysteresis_decision
; Address            : 0x19B7F8 - 0x19B850
; =========================================================

19B7F8:  PUSH            {R4,R6,R7,LR}
19B7FA:  ADD             R7, SP, #8
19B7FC:  LDR.W           LR, [R7,#arg_0]
19B800:  MOV.W           R12, #0
19B804:  CMP             R3, #1
19B806:  BLT             loc_19B818
19B808:  LDRSH.W         R4, [R1,R12,LSL#1]
19B80C:  CMP             R4, R0
19B80E:  ITT LE
19B810:  ADDLE.W         R12, R12, #1
19B814:  CMPLE           R12, R3
19B816:  BLT             loc_19B808
19B818:  CMP             R12, LR
19B81A:  BGT             loc_19B824
19B81C:  CMP             R12, LR
19B81E:  BLT             loc_19B838
19B820:  MOV             R0, R12
19B822:  POP             {R4,R6,R7,PC}
19B824:  LDRSH.W         R3, [R1,LR,LSL#1]
19B828:  LDRSH.W         R4, [R2,LR,LSL#1]
19B82C:  ADD             R3, R4
19B82E:  CMP             R3, R0
19B830:  IT GT
19B832:  MOVGT           R12, LR
19B834:  CMP             R12, LR
19B836:  BGE             loc_19B820
19B838:  MOV             R3, #0xFFFFFFFE
19B83C:  ADD.W           R3, R3, LR,LSL#1
19B840:  LDRSH           R2, [R2,R3]
19B842:  LDRSH           R1, [R1,R3]
19B844:  SUBS            R1, R1, R2
19B846:  CMP             R1, R0
19B848:  IT LT
19B84A:  MOVLT           R12, LR
19B84C:  MOV             R0, R12
19B84E:  POP             {R4,R6,R7,PC}
