; =========================================================
; Game Engine Function: silk_gains_quant
; Address            : 0x195F0C - 0x19605E
; =========================================================

195F0C:  PUSH            {R4-R7,LR}
195F0E:  ADD             R7, SP, #0xC
195F10:  PUSH.W          {R8-R11}
195F14:  SUB             SP, SP, #4
195F16:  LDR.W           R9, [R7,#arg_0]
195F1A:  MOV             R8, R3
195F1C:  MOV             R5, R2
195F1E:  MOV             R6, R1
195F20:  MOV             R4, R0
195F22:  CMP.W           R9, #1
195F26:  BLT.W           loc_196056
195F2A:  MOVW            R11, #0xF7F
195F2E:  MOV.W           R10, #0
195F32:  LDR.W           R0, [R6,R10,LSL#2]
195F36:  BLX             j_silk_lin2log
195F3A:  LDR.W           R0, [R6,R10,LSL#2]
195F3E:  BLX             j_silk_lin2log
195F42:  MOVS            R1, #0xF7D60000
195F48:  ADD.W           R0, R1, R0,LSL#16
195F4C:  MOVW            R1, #0x8CB
195F50:  SMULTB.W        R1, R0, R1
195F54:  LSRS            R0, R1, #0x10
195F56:  STRB.W          R0, [R4,R10]
195F5A:  LDRSB.W         R2, [R5]
195F5E:  SBFX.W          R1, R1, #0x10, #8
195F62:  CMP             R1, R2
195F64:  MOV.W           R1, #0
195F68:  ITT LT
195F6A:  ADDLT           R0, #1
195F6C:  STRBLT.W        R0, [R4,R10]
195F70:  SXTB            R2, R0
195F72:  CMP             R2, #0
195F74:  IT LE
195F76:  MOVLE           R0, R1
195F78:  CMP             R2, #0x3F ; '?'
195F7A:  UXTB            R1, R0
195F7C:  IT GT
195F7E:  MOVGT           R1, #0x3F ; '?'
195F80:  ORRS.W          R2, R10, R8
195F84:  STRB.W          R1, [R4,R10]
195F88:  LDRB            R0, [R5]
195F8A:  BEQ             loc_195FE4
195F8C:  SUBS            R1, R1, R0
195F8E:  STRB.W          R1, [R4,R10]
195F92:  LDRSB.W         R2, [R5]
195F96:  SXTB            R3, R1
195F98:  ADD.W           R0, R2, #8
195F9C:  CMP             R3, R0
195F9E:  BLE             loc_195FB0
195FA0:  RSB.W           R1, R2, #0x1F8
195FA4:  ADD             R1, R3
195FA6:  ADDS            R1, #1
195FA8:  ADD.W           R1, R0, R1,LSR#1
195FAC:  STRB.W          R1, [R4,R10]
195FB0:  SXTB            R2, R1
195FB2:  CMN.W           R2, #4
195FB6:  IT LE
195FB8:  MOVLE           R1, #0xFFFFFFFC
195FBC:  SXTB            R2, R1
195FBE:  CMP             R2, #0x24 ; '$'
195FC0:  IT GE
195FC2:  MOVGE           R1, #0x24 ; '$'
195FC4:  STRB.W          R1, [R4,R10]
195FC8:  SXTB            R1, R1
195FCA:  CMP             R0, R1
195FCC:  BGE             loc_195FFE
195FCE:  LDRB            R2, [R5]
195FD0:  RSB.W           R0, R0, R1,LSL#1
195FD4:  MOVS            R1, #0x3F ; '?'
195FD6:  ADD             R0, R2
195FD8:  STRB            R0, [R5]
195FDA:  SXTB            R0, R0
195FDC:  CMP             R0, #0x3F ; '?'
195FDE:  IT GE
195FE0:  MOVGE           R0, R1
195FE2:  B               loc_196002
195FE4:  SXTB            R2, R0
195FE6:  SUBS            R0, R2, #4
195FE8:  CMP             R2, #0x44 ; 'D'
195FEA:  BLT             loc_196012
195FEC:  CMP             R1, R0
195FEE:  BGT             loc_196020
195FF0:  CMP             R1, #0x3F ; '?'
195FF2:  MOV.W           R0, #0x3F ; '?'
195FF6:  IT LS
195FF8:  MOVLS           R1, R0
195FFA:  MOV             R0, R1
195FFC:  B               loc_196020
195FFE:  LDRB            R0, [R5]
196000:  ADD             R0, R1
196002:  STRB            R0, [R5]
196004:  LDRB.W          R0, [R4,R10]
196008:  ADDS            R0, #4
19600A:  STRB.W          R0, [R4,R10]
19600E:  LDRB            R0, [R5]
196010:  B               loc_196026
196012:  CMP             R1, #0x3F ; '?'
196014:  BLS             loc_19601A
196016:  MOVS            R0, #0x3F ; '?'
196018:  B               loc_196020
19601A:  CMP             R1, R0
19601C:  IT GE
19601E:  MOVGE           R0, R1
196020:  STRB.W          R0, [R4,R10]
196024:  STRB            R0, [R5]
196026:  SXTB            R0, R0
196028:  MOVW            R1, #0x1C71
19602C:  SMULBB.W        R1, R0, R1
196030:  MOVS            R2, #0x1D
196032:  SMULBB.W        R0, R0, R2
196036:  ADD.W           R0, R0, R1,ASR#16
19603A:  ADDW            R0, R0, #0x82A
19603E:  CMP             R0, R11
196040:  IT GE
196042:  MOVGE           R0, R11
196044:  BLX             j_silk_log2lin
196048:  STR.W           R0, [R6,R10,LSL#2]
19604C:  ADD.W           R10, R10, #1
196050:  CMP             R9, R10
196052:  BNE.W           loc_195F32
196056:  ADD             SP, SP, #4
196058:  POP.W           {R8-R11}
19605C:  POP             {R4-R7,PC}
