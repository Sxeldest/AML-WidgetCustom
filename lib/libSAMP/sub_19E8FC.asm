; =========================================================
; Game Engine Function: sub_19E8FC
; Address            : 0x19E8FC - 0x19E9B0
; =========================================================

19E8FC:  PUSH            {R4-R7,LR}
19E8FE:  ADD             R7, SP, #0xC
19E900:  PUSH.W          {R8-R10}
19E904:  LDR.W           R12, [R7,#arg_0]
19E908:  MOV             R4, R2
19E90A:  MOV             R5, R1
19E90C:  LDR             R6, [R7,#arg_4]
19E90E:  ADD.W           R2, R12, R0
19E912:  LDR.W           R1, [R3,R12,LSL#2]
19E916:  LDR.W           R0, [R3,R2,LSL#2]
19E91A:  CMP             R1, R0
19E91C:  IT GT
19E91E:  MOVGT           R2, R12
19E920:  LDR.W           R2, [R3,R2,LSL#2]
19E924:  CMP             R2, #1
19E926:  ITTE GE
19E928:  CLZGE.W         R2, R2
19E92C:  RSBGE.W         R2, R2, #0x1F
19E930:  MOVLT           R2, #0
19E932:  SUBS.W          R3, R2, #0xD
19E936:  RSB.W           R2, R2, #0xD
19E93A:  LSL.W           R8, R1, R2
19E93E:  LSL.W           R10, R0, R2
19E942:  IT GT
19E944:  ASRGT.W         R8, R1, R3
19E948:  IT GT
19E94A:  ASRGT.W         R10, R0, R3
19E94E:  SMULBB.W        R1, R8, R8
19E952:  SMLABB.W        R0, R10, R10, R1
19E956:  ADDS            R0, #1
19E958:  BLX             j_celt_sqrt
19E95C:  CMP             R6, #1
19E95E:  BLT             loc_19E9AA
19E960:  MOV.W           R1, #0x10000
19E964:  ADD.W           R0, R1, R0,LSL#16
19E968:  MOV.W           R9, R0,ASR#16
19E96C:  MOV.W           R0, R10,LSL#16
19E970:  ASRS            R0, R0, #2
19E972:  MOV             R1, R9
19E974:  MOV.W           R10, R8,LSL#16
19E978:  BLX             sub_220A40
19E97C:  MOV             R8, R0
19E97E:  MOV.W           R0, R10,ASR#2
19E982:  MOV             R1, R9
19E984:  BLX             sub_220A40
19E988:  SXTH.W          R1, R8
19E98C:  SXTH            R0, R0
19E98E:  LDRSH.W         R2, [R4],#2
19E992:  SUBS            R6, #1
19E994:  LDRSH.W         R3, [R5]
19E998:  SMULBB.W        R2, R1, R2
19E99C:  SMLABB.W        R2, R0, R3, R2
19E9A0:  MOV.W           R2, R2,LSR#14
19E9A4:  STRH.W          R2, [R5],#2
19E9A8:  BNE             loc_19E98E
19E9AA:  POP.W           {R8-R10}
19E9AE:  POP             {R4-R7,PC}
