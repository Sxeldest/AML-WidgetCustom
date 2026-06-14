; =========================================================
; Game Engine Function: _Z22dxtSwizzler_SwizzlePVRjjPKv
; Address            : 0x1B1DA0 - 0x1B1EF6
; =========================================================

1B1DA0:  PUSH            {R4-R7,LR}
1B1DA2:  ADD             R7, SP, #0xC
1B1DA4:  PUSH.W          {R8-R11}
1B1DA8:  SUB             SP, SP, #4
1B1DAA:  MOV             R9, R2
1B1DAC:  MOVS            R2, #0
1B1DAE:  MOV.W           R10, R0,LSR#2
1B1DB2:  CMP.W           R2, R0,LSR#2
1B1DB6:  IT EQ
1B1DB8:  MOVEQ.W         R10, #1
1B1DBC:  LSRS            R0, R1, #2
1B1DBE:  CMP.W           R2, R1,LSR#2
1B1DC2:  IT EQ
1B1DC4:  MOVEQ           R0, #1
1B1DC6:  MUL.W           R11, R0, R10
1B1DCA:  MOV.W           R4, R11,LSL#3
1B1DCE:  MOV             R0, R4; byte_count
1B1DD0:  BLX             malloc
1B1DD4:  MOV             R1, R9; void *
1B1DD6:  MOV             R2, R4; size_t
1B1DD8:  STR             R0, [SP,#0x20+var_20]
1B1DDA:  BLX             memcpy_1
1B1DDE:  CMP.W           R11, #0
1B1DE2:  BEQ.W           loc_1B1EE6
1B1DE6:  LDR             R4, [SP,#0x20+var_20]
1B1DE8:  MOVS            R6, #0
1B1DEA:  MOV.W           R8, #0x400000
1B1DEE:  MOV             R0, R6
1B1DF0:  MOV             R1, R10
1B1DF2:  BLX             __aeabi_idivmod
1B1DF6:  MOV             R5, R1
1B1DF8:  MOV             R0, R6
1B1DFA:  MOV             R1, R10
1B1DFC:  BLX             __aeabi_uidiv
1B1E00:  AND.W           R1, R0, #1
1B1E04:  MOVS            R2, #8
1B1E06:  BFI.W           R1, R5, #1, #1
1B1E0A:  AND.W           R2, R2, R5,LSL#2
1B1E0E:  ORRS            R1, R2
1B1E10:  MOVS            R2, #0x20 ; ' '
1B1E12:  AND.W           R2, R2, R5,LSL#3
1B1E16:  ORRS            R1, R2
1B1E18:  MOVS            R2, #0x80
1B1E1A:  AND.W           R2, R2, R5,LSL#4
1B1E1E:  ORRS            R1, R2
1B1E20:  MOV.W           R2, #0x200
1B1E24:  AND.W           R2, R2, R5,LSL#5
1B1E28:  ORRS            R1, R2
1B1E2A:  MOV.W           R2, #0x800
1B1E2E:  AND.W           R2, R2, R5,LSL#6
1B1E32:  ORRS            R1, R2
1B1E34:  MOV.W           R2, #0x2000
1B1E38:  AND.W           R2, R2, R5,LSL#7
1B1E3C:  ORRS            R1, R2
1B1E3E:  MOV.W           R2, #0x8000
1B1E42:  AND.W           R2, R2, R5,LSL#8
1B1E46:  ORRS            R1, R2
1B1E48:  MOV.W           R2, #0x20000
1B1E4C:  AND.W           R2, R2, R5,LSL#9
1B1E50:  ORRS            R1, R2
1B1E52:  MOV.W           R2, #0x80000
1B1E56:  AND.W           R2, R2, R5,LSL#10
1B1E5A:  ORRS            R1, R2
1B1E5C:  MOV.W           R2, #0x200000
1B1E60:  AND.W           R2, R2, R5,LSL#11
1B1E64:  ORRS            R1, R2
1B1E66:  MOV.W           R2, #0x800000
1B1E6A:  AND.W           R2, R2, R5,LSL#12
1B1E6E:  ORRS            R1, R2
1B1E70:  MOVS            R2, #4
1B1E72:  AND.W           R2, R2, R0,LSL#1
1B1E76:  ORRS            R1, R2
1B1E78:  MOVS            R2, #0x10
1B1E7A:  AND.W           R2, R2, R0,LSL#2
1B1E7E:  ORRS            R1, R2
1B1E80:  MOVS            R2, #0x40 ; '@'
1B1E82:  AND.W           R2, R2, R0,LSL#3
1B1E86:  ORRS            R1, R2
1B1E88:  MOV.W           R2, #0x100
1B1E8C:  AND.W           R2, R2, R0,LSL#4
1B1E90:  ORRS            R1, R2
1B1E92:  MOV.W           R2, #0x400
1B1E96:  AND.W           R2, R2, R0,LSL#5
1B1E9A:  ORRS            R1, R2
1B1E9C:  MOV.W           R2, #0x1000
1B1EA0:  AND.W           R2, R2, R0,LSL#6
1B1EA4:  ORRS            R1, R2
1B1EA6:  MOV.W           R2, #0x4000
1B1EAA:  AND.W           R2, R2, R0,LSL#7
1B1EAE:  ORRS            R1, R2
1B1EB0:  MOV.W           R2, #0x10000
1B1EB4:  AND.W           R2, R2, R0,LSL#8
1B1EB8:  ORRS            R1, R2
1B1EBA:  MOV.W           R2, #0x40000
1B1EBE:  AND.W           R2, R2, R0,LSL#9
1B1EC2:  ORRS            R1, R2
1B1EC4:  MOV.W           R2, #0x100000
1B1EC8:  AND.W           R2, R2, R0,LSL#10
1B1ECC:  AND.W           R0, R8, R0,LSL#11
1B1ED0:  ORRS            R1, R2
1B1ED2:  ORRS            R0, R1
1B1ED4:  ADD.W           R1, R9, R0,LSL#3
1B1ED8:  MOV             R0, R4
1B1EDA:  BLX             j__Z22dxtSwizzler_DXTCtoPVRCP10colorblockP8pvrblock; dxtSwizzler_DXTCtoPVRC(colorblock *,pvrblock *)
1B1EDE:  ADDS            R6, #1
1B1EE0:  ADDS            R4, #8
1B1EE2:  CMP             R6, R11
1B1EE4:  BLT             loc_1B1DEE
1B1EE6:  POP.W           {R0}; p
1B1EEA:  POP.W           {R8-R11}
1B1EEE:  POP.W           {R4-R7,LR}
1B1EF2:  B.W             j_free
