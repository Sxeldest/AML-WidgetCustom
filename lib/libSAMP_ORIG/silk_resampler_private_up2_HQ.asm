; =========================================================
; Game Engine Function: silk_resampler_private_up2_HQ
; Address            : 0xB4EF4 - 0xB504A
; =========================================================

B4EF4:  CMP             R3, #1
B4EF6:  IT LT
B4EF8:  BXLT            LR
B4EFA:  PUSH            {R4-R7,LR}
B4EFC:  ADD             R7, SP, #0x14+var_8
B4EFE:  PUSH.W          {R8-R11}
B4F02:  SUB             SP, SP, #0x20 ; ' '
B4F04:  LDRD.W          R8, R6, [R0]
B4F08:  ADD.W           R9, R1, #2
B4F0C:  STR             R6, [SP,#0x44+var_28]
B4F0E:  LDRD.W          LR, R10, [R0,#8]
B4F12:  LDR             R4, [R0,#0x10]
B4F14:  STR             R0, [SP,#0x44+var_44]
B4F16:  LDR             R5, [R0,#0x14]
B4F18:  STR             R3, [SP,#0x44+var_2C]
B4F1A:  MOVW            R1, #0x1AC6
B4F1E:  LDRSH.W         R11, [R2],#2
B4F22:  STR             R2, [SP,#0x44+var_30]
B4F24:  MOVW            R2, #0x8000
B4F28:  RSB.W           R0, R10, R11,LSL#10
B4F2C:  MOVT            R2, #0xFFFF
B4F30:  UXTH            R6, R0
B4F32:  MULS            R6, R1
B4F34:  LSRS            R6, R6, #0x10
B4F36:  SMLATB.W        R0, R0, R1, R6
B4F3A:  MOVW            R1, #0x64A9
B4F3E:  STR             R0, [SP,#0x44+var_34]
B4F40:  ADD             R0, R10
B4F42:  STR             R0, [SP,#0x44+var_38]
B4F44:  SUBS            R0, R0, R4
B4F46:  MOV.W           R10, #1
B4F4A:  UXTH            R6, R0
B4F4C:  MULS            R6, R1
B4F4E:  LSRS            R6, R6, #0x10
B4F50:  SMLATB.W        R0, R0, R1, R6
B4F54:  MOV             R1, #0xFFFFD8F6
B4F5C:  MOV             R6, LR
B4F5E:  LDR.W           LR, [SP,#0x44+var_28]
B4F62:  STR             R0, [SP,#0x44+var_3C]
B4F64:  ADD             R4, R0
B4F66:  SUBS            R0, R4, R5
B4F68:  UXTH            R5, R0
B4F6A:  MULS            R5, R1
B4F6C:  ASRS            R5, R5, #0x10
B4F6E:  SMLATB.W        R1, R0, R1, R5
B4F72:  ADD             R0, R4
B4F74:  STR             R1, [SP,#0x44+var_40]
B4F76:  ADDS            R5, R1, R4
B4F78:  ADD.W           R5, R10, R5,ASR#9
B4F7C:  ASRS            R1, R5, #1
B4F7E:  CMP             R1, R2
B4F80:  MOV             R1, R2
B4F82:  MOVW            R2, #0x7FFF
B4F86:  IT GT
B4F88:  ASRGT           R1, R5, #1
B4F8A:  CMP             R1, R2
B4F8C:  IT GE
B4F8E:  MOVGE           R1, R2
B4F90:  MOVW            R2, #0x6D2
B4F94:  STRH.W          R1, [R9]
B4F98:  RSB.W           R1, R8, R11,LSL#10
B4F9C:  UXTH            R5, R1
B4F9E:  MULS            R5, R2
B4FA0:  LSRS            R5, R5, #0x10
B4FA2:  SMLATB.W        R12, R1, R2, R5
B4FA6:  MOVW            R1, #0x3A8A
B4FAA:  MOV             R2, #0xFFFF98AB
B4FB2:  ADD             R8, R12
B4FB4:  SUB.W           R5, R8, LR
B4FB8:  UXTH            R3, R5
B4FBA:  MULS            R3, R1
B4FBC:  LSRS            R3, R3, #0x10
B4FBE:  SMLATB.W        R3, R5, R1, R3
B4FC2:  ADD.W           R5, R3, LR
B4FC6:  MOVW            LR, #0x8000
B4FCA:  SUBS            R1, R5, R6
B4FCC:  MOVT            LR, #0xFFFF
B4FD0:  UXTH            R6, R1
B4FD2:  MULS            R6, R2
B4FD4:  ASRS            R6, R6, #0x10
B4FD6:  SMLATB.W        R6, R1, R2, R6
B4FDA:  ADDS            R2, R6, R5
B4FDC:  ADD.W           R2, R10, R2,ASR#9
B4FE0:  MOV.W           R10, R2,ASR#1
B4FE4:  CMP             R10, LR
B4FE6:  MOV             R10, LR
B4FE8:  IT GT
B4FEA:  MOVGT.W         R10, R2,ASR#1
B4FEE:  MOVW            R2, #0x7FFF
B4FF2:  CMP             R10, R2
B4FF4:  IT GE
B4FF6:  MOVGE           R10, R2
B4FF8:  STRH.W          R10, [R9,#-2]
B4FFC:  ADD.W           R9, R9, #4
B5000:  LDR             R2, [SP,#0x44+var_40]
B5002:  ADD             R2, R0
B5004:  ADDS            R0, R1, R5
B5006:  ADD.W           LR, R0, R6
B500A:  LDRD.W          R1, R0, [SP,#0x44+var_3C]
B500E:  MOV             R5, R2
B5010:  ADDS            R4, R1, R0
B5012:  ADD.W           R0, R3, R8
B5016:  STR             R0, [SP,#0x44+var_28]
B5018:  ADD.W           R8, R12, R11,LSL#10
B501C:  LDR             R0, [SP,#0x44+var_34]
B501E:  LDRD.W          R2, R3, [SP,#0x44+var_30]
B5022:  ADD.W           R10, R0, R11,LSL#10
B5026:  SUBS            R3, #1
B5028:  BNE.W           loc_B4F18
B502C:  LDR             R0, [SP,#0x44+var_44]
B502E:  STR.W           R8, [R0]
B5032:  LDR             R1, [SP,#0x44+var_28]
B5034:  STRD.W          R1, LR, [R0,#4]
B5038:  STRD.W          R10, R4, [R0,#0xC]
B503C:  STR             R5, [R0,#0x14]
B503E:  ADD             SP, SP, #0x20 ; ' '
B5040:  POP.W           {R8-R11}
B5044:  POP.W           {R4-R7,LR}
B5048:  BX              LR
