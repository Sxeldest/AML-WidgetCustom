; =========================================================
; Game Engine Function: _ZNK24_rpGeometryStreamBuilder15WriteStreamInfoEP8RwStream
; Address            : 0x220EAA - 0x220F22
; =========================================================

220EAA:  PUSH            {R4,R5,R7,LR}
220EAC:  ADD             R7, SP, #8
220EAE:  SUB             SP, SP, #8
220EB0:  MOV             R5, R0
220EB2:  MOV             R4, R1
220EB4:  LDR             R0, [R5]
220EB6:  ADD             R1, SP, #0x10+var_C
220EB8:  STR             R0, [SP,#0x10+var_C]
220EBA:  MOV             R0, R4
220EBC:  MOVS            R2, #4
220EBE:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
220EC2:  CBZ             R0, loc_220F1C
220EC4:  LDR             R0, [R5,#0x14]
220EC6:  ADD             R1, SP, #0x10+var_C
220EC8:  STR             R0, [SP,#0x10+var_C]
220ECA:  MOV             R0, R4
220ECC:  MOVS            R2, #4
220ECE:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
220ED2:  CBZ             R0, loc_220F1C
220ED4:  LDRB            R0, [R5,#5]
220ED6:  ADD             R1, SP, #0x10+var_C
220ED8:  STR             R0, [SP,#0x10+var_C]
220EDA:  MOV             R0, R4
220EDC:  MOVS            R2, #4
220EDE:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
220EE2:  CBZ             R0, loc_220F1C
220EE4:  LDR             R0, [R5,#8]
220EE6:  ADD             R1, SP, #0x10+var_C
220EE8:  STR             R0, [SP,#0x10+var_C]
220EEA:  MOV             R0, R4
220EEC:  MOVS            R2, #4
220EEE:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
220EF2:  CBZ             R0, loc_220F1C
220EF4:  LDR             R0, [R5,#0xC]
220EF6:  ADD             R1, SP, #0x10+var_C
220EF8:  STR             R0, [SP,#0x10+var_C]
220EFA:  MOV             R0, R4
220EFC:  MOVS            R2, #4
220EFE:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
220F02:  CBZ             R0, loc_220F1C
220F04:  LDR             R0, [R5,#0x10]
220F06:  ADD             R1, SP, #0x10+var_C
220F08:  STR             R0, [SP,#0x10+var_C]
220F0A:  MOV             R0, R4
220F0C:  MOVS            R2, #4
220F0E:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
220F12:  CMP             R0, #0
220F14:  ITTT NE
220F16:  MOVNE           R0, #1
220F18:  ADDNE           SP, SP, #8
220F1A:  POPNE           {R4,R5,R7,PC}
220F1C:  MOVS            R0, #0
220F1E:  ADD             SP, SP, #8
220F20:  POP             {R4,R5,R7,PC}
