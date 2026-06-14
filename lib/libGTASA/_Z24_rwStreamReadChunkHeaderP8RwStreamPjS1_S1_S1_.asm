; =========================================================
; Game Engine Function: _Z24_rwStreamReadChunkHeaderP8RwStreamPjS1_S1_S1_
; Address            : 0x1E1F74 - 0x1E2000
; =========================================================

1E1F74:  PUSH            {R4-R7,LR}
1E1F76:  ADD             R7, SP, #0xC
1E1F78:  PUSH.W          {R11}
1E1F7C:  SUB             SP, SP, #0x18
1E1F7E:  MOV             R6, R1
1E1F80:  ADD             R1, SP, #0x28+var_1C; void *
1E1F82:  MOV             R5, R2
1E1F84:  MOVS            R2, #0xC; size_t
1E1F86:  MOV             R4, R3
1E1F88:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1E1F8C:  CMP             R0, #0xC
1E1F8E:  BNE             loc_1E1FCE
1E1F90:  CMP             R6, #0
1E1F92:  MOV.W           R2, #0
1E1F96:  ITT NE
1E1F98:  LDRNE           R0, [SP,#0x28+var_1C]
1E1F9A:  STRNE           R0, [R6]
1E1F9C:  CMP             R5, #0
1E1F9E:  ITT NE
1E1FA0:  LDRNE           R0, [SP,#0x28+var_18]
1E1FA2:  STRNE           R0, [R5]
1E1FA4:  LDR             R1, [SP,#0x28+var_14]
1E1FA6:  LDR             R0, [R7,#arg_0]
1E1FA8:  CMP.W           R2, R1,LSR#16
1E1FAC:  BEQ             loc_1E1FE8
1E1FAE:  CBZ             R4, loc_1E1FC8
1E1FB0:  MOVW            R2, #:lower16:stru_3FEF8.st_size
1E1FB4:  UBFX.W          R3, R1, #0x10, #6
1E1FB8:  MOVT            R2, #:upper16:stru_3FEF8.st_size
1E1FBC:  AND.W           R2, R2, R1,LSR#14
1E1FC0:  ADD.W           R2, R2, #0x30000
1E1FC4:  ORRS            R2, R3
1E1FC6:  STR             R2, [R4]
1E1FC8:  CBZ             R0, loc_1E1FF6
1E1FCA:  UXTH            R1, R1
1E1FCC:  B               loc_1E1FF4
1E1FCE:  MOVS            R0, #1
1E1FD0:  STR             R0, [SP,#0x28+var_24]
1E1FD2:  MOVS            R0, #0x8000001A; int
1E1FD8:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1E1FDC:  STR             R0, [SP,#0x28+var_20]
1E1FDE:  ADD             R0, SP, #0x28+var_24
1E1FE0:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1E1FE4:  MOVS            R0, #0
1E1FE6:  B               loc_1E1FF8
1E1FE8:  CMP             R4, #0
1E1FEA:  ITT NE
1E1FEC:  LSLNE           R1, R1, #8
1E1FEE:  STRNE           R1, [R4]
1E1FF0:  CBZ             R0, loc_1E1FF6
1E1FF2:  MOVS            R1, #0
1E1FF4:  STR             R1, [R0]
1E1FF6:  MOVS            R0, #1
1E1FF8:  ADD             SP, SP, #0x18
1E1FFA:  POP.W           {R11}
1E1FFE:  POP             {R4-R7,PC}
