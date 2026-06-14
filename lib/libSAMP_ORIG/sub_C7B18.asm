; =========================================================
; Game Engine Function: sub_C7B18
; Address            : 0xC7B18 - 0xC7C40
; =========================================================

C7B18:  PUSH            {R4-R7,LR}
C7B1A:  ADD             R7, SP, #0xC
C7B1C:  PUSH.W          {R8-R11}
C7B20:  SUB             SP, SP, #0xC
C7B22:  STRD.W          R0, R1, [SP,#0x28+var_24]
C7B26:  MOVW            R0, #0xBB80
C7B2A:  LDR             R1, [R7,#arg_10]
C7B2C:  MOV             R4, R3
C7B2E:  MOV             R8, R2
C7B30:  BLX             sub_108848
C7B34:  MOV             R6, R0
C7B36:  LDR             R0, [R7,#arg_0]
C7B38:  MOV             R1, R6
C7B3A:  BLX             sub_108848
C7B3E:  LDRD.W          LR, R3, [R7,#arg_8]
C7B42:  CMP.W           LR, #1
C7B46:  BNE             loc_C7B92
C7B48:  CMP             R0, #1
C7B4A:  BLT             loc_C7BF4
C7B4C:  LDRD.W          R5, R2, [SP,#0x28+var_24]
C7B50:  MOV.W           R11, R6,LSL#1
C7B54:  MOVW            R10, #0x7FFF
C7B58:  MOV             R6, R0
C7B5A:  LDRSH.W         R1, [R3]
C7B5E:  ADD             R3, R11
C7B60:  SUBS            R6, #1
C7B62:  SMULBB.W        R1, R1, R1
C7B66:  MOV.W           R9, R1,LSL#1
C7B6A:  SUB.W           R12, R10, R9,ASR#16
C7B6E:  SXTH.W          R1, R12
C7B72:  SMULBB.W        R1, R1, R8
C7B76:  SMLATB.W        R12, R9, R4, R1
C7B7A:  LDRSH.W         R9, [R5],#2
C7B7E:  MOV.W           R1, R12,LSL#1
C7B82:  SMULTB.W        R1, R1, R9
C7B86:  MOV.W           R1, R1,LSR#15
C7B8A:  STRH.W          R1, [R2],#2
C7B8E:  BNE             loc_C7B5A
C7B90:  B               loc_C7BF4
C7B92:  CMP             R0, #1
C7B94:  BLT             loc_C7BF4
C7B96:  LDR             R1, [SP,#0x28+var_20]
C7B98:  MOV.W           R11, R6,LSL#1
C7B9C:  MOVW            R10, #0x7FFF
C7BA0:  MOV             R12, R0
C7BA2:  ADDS            R2, R1, #2
C7BA4:  LDR             R1, [SP,#0x28+var_24]
C7BA6:  ADDS            R1, #2
C7BA8:  LDRSH.W         R5, [R3]
C7BAC:  ADD             R3, R11
C7BAE:  SUBS.W          R12, R12, #1
C7BB2:  SMULBB.W        R5, R5, R5
C7BB6:  MOV.W           R5, R5,LSL#1
C7BBA:  SUB.W           R6, R10, R5,ASR#16
C7BBE:  SXTH            R6, R6
C7BC0:  SMULBB.W        R6, R6, R8
C7BC4:  SMLATB.W        R5, R5, R4, R6
C7BC8:  LDRSH.W         R6, [R1,#-2]
C7BCC:  MOV.W           R5, R5,LSL#1
C7BD0:  SMULTB.W        R6, R5, R6
C7BD4:  MOV.W           R6, R6,LSR#15
C7BD8:  STRH.W          R6, [R2,#-2]
C7BDC:  LDRSH.W         R6, [R1]
C7BE0:  ADD.W           R1, R1, #4
C7BE4:  SMULTB.W        R5, R5, R6
C7BE8:  MOV.W           R5, R5,LSR#15
C7BEC:  STRH            R5, [R2]
C7BEE:  ADD.W           R2, R2, #4
C7BF2:  BNE             loc_C7BA8
C7BF4:  LDR             R2, [R7,#arg_4]
C7BF6:  CMP             R0, R2
C7BF8:  BGE             loc_C7C38
C7BFA:  MUL.W           R1, R0, LR
C7BFE:  SUB.W           R12, R2, R0
C7C02:  LDR             R0, [SP,#0x28+var_24]
C7C04:  MOV.W           R6, LR,LSL#1
C7C08:  MOV.W           R8, #0
C7C0C:  ADD.W           R2, R0, R1,LSL#1
C7C10:  LDR             R0, [SP,#0x28+var_20]
C7C12:  ADD.W           R3, R0, R1,LSL#1
C7C16:  MOVS            R1, #0
C7C18:  MOV             R0, R12
C7C1A:  LDRSH           R5, [R2,R1]
C7C1C:  SUBS            R0, #1
C7C1E:  SMULBB.W        R5, R5, R4
C7C22:  MOV.W           R5, R5,LSR#15
C7C26:  STRH            R5, [R3,R1]
C7C28:  ADD             R1, R6
C7C2A:  BNE             loc_C7C1A
C7C2C:  ADD.W           R8, R8, #1
C7C30:  ADDS            R2, #2
C7C32:  ADDS            R3, #2
C7C34:  CMP             R8, LR
C7C36:  BLT             loc_C7C16
C7C38:  ADD             SP, SP, #0xC
C7C3A:  POP.W           {R8-R11}
C7C3E:  POP             {R4-R7,PC}
