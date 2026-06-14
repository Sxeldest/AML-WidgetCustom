; =========================================================
; Game Engine Function: silk_apply_sine_window
; Address            : 0xCDF00 - 0xCE014
; =========================================================

CDF00:  PUSH            {R4-R7,LR}
CDF02:  ADD             R7, SP, #0xC
CDF04:  PUSH.W          {R8-R11}
CDF08:  SUB             SP, SP, #8
CDF0A:  LDR             R6, =(unk_5C78C - 0xCDF14)
CDF0C:  ASRS            R5, R3, #2
CDF0E:  CMP             R2, #1
CDF10:  ADD             R6, PC; unk_5C78C
CDF12:  ADD.W           R6, R6, R5,LSL#1
CDF16:  LDRSH.W         R6, [R6,#-8]
CDF1A:  RSB.W           R4, R6, #0
CDF1E:  UXTH.W          R12, R6
CDF22:  SXTH            R5, R4
CDF24:  MUL.W           R5, R5, R12
CDF28:  MOV.W           R5, R5,ASR#16
CDF2C:  SMLABT.W        R5, R4, R6, R5
CDF30:  BNE             loc_CDF3C
CDF32:  ASRS            R4, R3, #3
CDF34:  MOVS            R2, #0
CDF36:  CMP             R3, #1
CDF38:  BGE             loc_CDF4A
CDF3A:  B               loc_CE00C
CDF3C:  MOV.W           R2, #0x10000
CDF40:  ADD.W           R4, R2, R5,ASR#1
CDF44:  ASRS            R6, R3, #4
CDF46:  CMP             R3, #1
CDF48:  BLT             loc_CE00C
CDF4A:  SXTH            R5, R5
CDF4C:  ADD             R6, R4
CDF4E:  STR             R5, [SP,#0x24+var_24]
CDF50:  MOV.W           LR, #0
CDF54:  LDR.W           R9, [SP,#0x24+var_24]
CDF58:  MOV.W           R12, #0
CDF5C:  ADDS            R5, R6, R2
CDF5E:  LDRSH.W         R10, [R1,LR]
CDF62:  ADD.W           R11, R1, LR
CDF66:  UBFX.W          R4, R5, #1, #0x10
CDF6A:  ASRS            R5, R5, #0x11
CDF6C:  SMULBB.W        R5, R5, R10
CDF70:  RSB.W           R2, R2, #1
CDF74:  MUL.W           R4, R4, R10
CDF78:  ADD.W           R10, R2, R6,LSL#1
CDF7C:  UXTH            R2, R6
CDF7E:  SMLATB.W        R10, R6, R9, R10
CDF82:  ADD.W           R12, R12, #4
CDF86:  ADD.W           R4, R5, R4,LSR#16
CDF8A:  STRH.W          R4, [R0,LR]
CDF8E:  LDRSH.W         R5, [R11,#2]
CDF92:  MUL.W           R4, R2, R5
CDF96:  MUL.W           R2, R2, R9
CDF9A:  LSRS            R4, R4, #0x10
CDF9C:  SMLATB.W        R4, R6, R5, R4
CDFA0:  ADD.W           R5, R0, LR
CDFA4:  ADD.W           R2, R10, R2,ASR#16
CDFA8:  MOV             R10, R3
CDFAA:  CMP.W           R2, #0x10000
CDFAE:  ADD.W           LR, LR, #8
CDFB2:  STRH            R4, [R5,#2]
CDFB4:  MOV.W           R4, #0x10000
CDFB8:  IT GE
CDFBA:  MOVGE           R2, R4
CDFBC:  RSB.W           R4, R6, R2,LSL#1
CDFC0:  ADD             R6, R2
CDFC2:  SMLATB.W        R4, R2, R9, R4
CDFC6:  STR             R4, [SP,#0x24+var_20]
CDFC8:  LDRSH.W         R4, [R11,#4]
CDFCC:  UBFX.W          R8, R6, #1, #0x10
CDFD0:  ASRS            R6, R6, #0x11
CDFD2:  MUL.W           R3, R8, R4
CDFD6:  SMULBB.W        R4, R6, R4
CDFDA:  ADD.W           R3, R4, R3,LSR#16
CDFDE:  STRH            R3, [R5,#4]
CDFE0:  LDRSH.W         R6, [R11,#6]
CDFE4:  UXTH            R3, R2
CDFE6:  MUL.W           R4, R3, R9
CDFEA:  MULS            R3, R6
CDFEC:  LSRS            R3, R3, #0x10
CDFEE:  SMLATB.W        R3, R2, R6, R3
CDFF2:  STRH            R3, [R5,#6]
CDFF4:  MOV             R3, R10
CDFF6:  LDR             R5, [SP,#0x24+var_20]
CDFF8:  ADD.W           R6, R5, R4,ASR#16
CDFFC:  MOV.W           R4, #0x10000
CE000:  CMP.W           R6, #0x10000
CE004:  IT GE
CE006:  MOVGE           R6, R4
CE008:  CMP             R12, R3
CE00A:  BLT             loc_CDF5C
CE00C:  ADD             SP, SP, #8
CE00E:  POP.W           {R8-R11}
CE012:  POP             {R4-R7,PC}
