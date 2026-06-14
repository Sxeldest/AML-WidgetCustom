; =========================================================
; Game Engine Function: sub_16A8F8
; Address            : 0x16A8F8 - 0x16A978
; =========================================================

16A8F8:  PUSH            {R4,R6,R7,LR}
16A8FA:  ADD             R7, SP, #8
16A8FC:  LDR             R2, =(dword_381B58 - 0x16A906)
16A8FE:  MOVW            R12, #0x1978
16A902:  ADD             R2, PC; dword_381B58
16A904:  LDR             R3, [R2]
16A906:  LDR.W           R4, [R3,R12]
16A90A:  ADD             R12, R3
16A90C:  CBZ             R0, loc_16A926
16A90E:  SUBS            R3, R4, #1
16A910:  ADDS            R2, R3, #1
16A912:  CMP             R2, #1
16A914:  BLT             loc_16A926
16A916:  LDR.W           R2, [R12,#8]
16A91A:  LDR.W           R2, [R2,R3,LSL#2]
16A91E:  SUBS            R3, #1
16A920:  CMP             R2, R0
16A922:  BNE             loc_16A910
16A924:  ADDS            R4, R3, #1
16A926:  CMP             R4, #1
16A928:  BLT             loc_16A96E
16A92A:  LDR.W           R0, [R12,#8]
16A92E:  MOV             R12, #0x40200
16A936:  SUB.W           LR, R0, #4
16A93A:  LDR.W           R3, [LR,R4,LSL#2]
16A93E:  CMP             R3, R1
16A940:  ITT NE
16A942:  LDRBNE.W        R0, [R3,#0x7B]
16A946:  CMPNE           R0, #0
16A948:  BNE             loc_16A954
16A94A:  SUBS            R4, #1
16A94C:  ADDS            R0, R4, #1
16A94E:  CMP             R0, #1
16A950:  BHI             loc_16A93A
16A952:  B               loc_16A96E
16A954:  LDR             R0, [R3,#8]
16A956:  LSLS            R2, R0, #7
16A958:  BMI             loc_16A94A
16A95A:  AND.W           R0, R0, R12
16A95E:  CMP             R0, R12
16A960:  BEQ             loc_16A94A
16A962:  LDR.W           R0, [R3,#0x308]
16A966:  CMP             R0, #0
16A968:  IT EQ
16A96A:  MOVEQ           R0, R3
16A96C:  B               loc_16A970
16A96E:  MOVS            R0, #0
16A970:  POP.W           {R4,R6,R7,LR}
16A974:  B.W             sub_168010
