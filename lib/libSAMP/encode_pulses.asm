; =========================================================
; Game Engine Function: encode_pulses
; Address            : 0x19F854 - 0x19F91A
; =========================================================

19F854:  PUSH            {R4-R7,LR}
19F856:  ADD             R7, SP, #0xC
19F858:  PUSH.W          {R8-R10}
19F85C:  ADD.W           R6, R0, R1,LSL#2
19F860:  LDR.W           R9, =(off_2301FC - 0x19F874)
19F864:  LDR.W           R8, =(off_2301FC - 0x19F876)
19F868:  SUB.W           R10, R0, #8
19F86C:  LDR.W           R6, [R6,#-4]
19F870:  ADD             R9, PC; off_2301FC
19F872:  ADD             R8, PC; off_2301FC
19F874:  MOVS            R4, #2
19F876:  CMP             R6, #0
19F878:  MOV             LR, R6
19F87A:  MOV.W           R12, R6,LSR#31
19F87E:  IT MI
19F880:  RSBMI.W         LR, R6, #0
19F884:  MOV             R6, R1
19F886:  CMP             R4, LR
19F888:  MOV             R0, LR
19F88A:  IT LT
19F88C:  MOVLT           R0, R4
19F88E:  MOV             R5, LR
19F890:  LDR.W           R0, [R9,R0,LSL#2]
19F894:  IT GT
19F896:  MOVGT           R5, R4
19F898:  LDR.W           R0, [R0,R5,LSL#2]
19F89C:  LDR.W           R5, [R10,R6,LSL#2]
19F8A0:  ADD             R12, R0
19F8A2:  CMP             R5, #0
19F8A4:  MOV             R0, R5
19F8A6:  IT MI
19F8A8:  NEGMI           R0, R5
19F8AA:  CMP.W           R5, #0xFFFFFFFF
19F8AE:  ADD             LR, R0
19F8B0:  BGT             loc_19F8CE
19F8B2:  ADD.W           R0, LR, #1
19F8B6:  CMP             R4, LR
19F8B8:  MOV             R5, R4
19F8BA:  IT GT
19F8BC:  MOVGT           R5, R0
19F8BE:  CMP             R4, R0
19F8C0:  LDR.W           R5, [R8,R5,LSL#2]
19F8C4:  IT GT
19F8C6:  MOVGT           R0, R4
19F8C8:  LDR.W           R0, [R5,R0,LSL#2]
19F8CC:  ADD             R12, R0
19F8CE:  SUBS            R6, #1
19F8D0:  ADDS            R4, #1
19F8D2:  CMP             R6, #1
19F8D4:  BGT             loc_19F886
19F8D6:  LDR             R0, =(off_2301FC - 0x19F8E2)
19F8D8:  ADDS            R4, R2, #1
19F8DA:  CMP             R1, R2
19F8DC:  MOV             R6, R2
19F8DE:  ADD             R0, PC; off_2301FC
19F8E0:  IT LT
19F8E2:  MOVLT           R6, R1
19F8E4:  CMP             R4, R1
19F8E6:  MOV             R5, R4
19F8E8:  IT GT
19F8EA:  MOVGT           R5, R1
19F8EC:  LDR.W           R6, [R0,R6,LSL#2]
19F8F0:  CMP             R1, R2
19F8F2:  LDR.W           R0, [R0,R5,LSL#2]
19F8F6:  IT GT
19F8F8:  MOVGT           R2, R1
19F8FA:  CMP             R4, R1
19F8FC:  LDR.W           R2, [R6,R2,LSL#2]
19F900:  IT LT
19F902:  MOVLT           R4, R1
19F904:  LDR.W           R0, [R0,R4,LSL#2]
19F908:  MOV             R1, R12
19F90A:  ADD             R2, R0
19F90C:  MOV             R0, R3
19F90E:  POP.W           {R8-R10}
19F912:  POP.W           {R4-R7,LR}
19F916:  B.W             sub_224424
