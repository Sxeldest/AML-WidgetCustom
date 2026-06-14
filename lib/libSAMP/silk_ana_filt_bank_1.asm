; =========================================================
; Game Engine Function: silk_ana_filt_bank_1
; Address            : 0x1A7F04 - 0x1A7FD2
; =========================================================

1A7F04:  PUSH            {R4-R7,LR}
1A7F06:  ADD             R7, SP, #0xC
1A7F08:  PUSH.W          {R8-R11}
1A7F0C:  SUB             SP, SP, #0xC
1A7F0E:  LDR             R6, [R7,#arg_0]
1A7F10:  ASRS            R6, R6, #1
1A7F12:  CMP             R6, #1
1A7F14:  BLT             loc_1A7FCA
1A7F16:  LDR             R4, [R1]
1A7F18:  MOVW            R5, #0x8000
1A7F1C:  STR             R1, [SP,#0x28+var_28]
1A7F1E:  ADD.W           R11, R0, #2
1A7F22:  LDR.W           R9, [R1,#4]
1A7F26:  MOVT            R5, #0xFFFF
1A7F2A:  STR             R6, [SP,#0x28+var_20]
1A7F2C:  LDRSH.W         R0, [R11]
1A7F30:  LDRSH.W         LR, [R11,#-2]
1A7F34:  ADD.W           R11, R11, #4
1A7F38:  RSB.W           R1, R9, R0,LSL#10
1A7F3C:  STR             R0, [SP,#0x28+var_24]
1A7F3E:  MOVW            R0, #0x2A24
1A7F42:  RSB.W           R4, R4, LR,LSL#10
1A7F46:  UXTH.W          R8, R1
1A7F4A:  MUL.W           R6, R8, R0
1A7F4E:  UXTH.W          R8, R4
1A7F52:  LSRS            R6, R6, #0x10
1A7F54:  SMLATB.W        R12, R1, R0, R6
1A7F58:  MOV             R0, #0xFFFFA11E
1A7F60:  MUL.W           R6, R8, R0
1A7F64:  ADD             R9, R12
1A7F66:  ASRS            R6, R6, #0x10
1A7F68:  SMLATB.W        R8, R4, R0, R6
1A7F6C:  MOVS            R0, #1
1A7F6E:  ADD.W           R6, R8, LR,LSL#10
1A7F72:  ADD.W           R10, R9, R6
1A7F76:  ADD.W           R0, R0, R10,ASR#10
1A7F7A:  MOVW            R10, #0x7FFF
1A7F7E:  ASRS            R1, R0, #1
1A7F80:  CMP             R1, R5
1A7F82:  MOV             R1, R5
1A7F84:  IT GT
1A7F86:  ASRGT           R1, R0, #1
1A7F88:  SUB.W           R0, R9, R6
1A7F8C:  CMP             R1, R10
1A7F8E:  IT GE
1A7F90:  MOVGE           R1, R10
1A7F92:  STRH.W          R1, [R2],#2
1A7F96:  MOVS            R1, #1
1A7F98:  ADD.W           R0, R1, R0,ASR#10
1A7F9C:  ASRS            R1, R0, #1
1A7F9E:  CMP             R1, R5
1A7FA0:  MOV             R1, R5
1A7FA2:  IT GT
1A7FA4:  ASRGT           R1, R0, #1
1A7FA6:  CMP             R1, R10
1A7FA8:  IT GE
1A7FAA:  MOVGE           R1, R10
1A7FAC:  STRH.W          R1, [R3],#2
1A7FB0:  LDR             R0, [SP,#0x28+var_24]
1A7FB2:  LDR             R6, [SP,#0x28+var_20]
1A7FB4:  ADD.W           R9, R12, R0,LSL#10
1A7FB8:  ADD.W           R0, R4, LR,LSL#10
1A7FBC:  ADD.W           R4, R0, R8
1A7FC0:  SUBS            R6, #1
1A7FC2:  BNE             loc_1A7F2A
1A7FC4:  LDR             R0, [SP,#0x28+var_28]
1A7FC6:  STRD.W          R4, R9, [R0]
1A7FCA:  ADD             SP, SP, #0xC
1A7FCC:  POP.W           {R8-R11}
1A7FD0:  POP             {R4-R7,PC}
