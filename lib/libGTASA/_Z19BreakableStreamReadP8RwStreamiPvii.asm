; =========================================================
; Game Engine Function: _Z19BreakableStreamReadP8RwStreamiPvii
; Address            : 0x450EC8 - 0x45105A
; =========================================================

450EC8:  PUSH            {R4-R7,LR}
450ECA:  ADD             R7, SP, #0xC
450ECC:  PUSH.W          {R8-R11}
450ED0:  SUB             SP, SP, #0x64
450ED2:  MOV             R8, R0
450ED4:  LDR             R0, =(g_BreakablePlugin_ptr - 0x450EDE)
450ED6:  MOV             R4, R2
450ED8:  MOVS            R2, #4; size_t
450EDA:  ADD             R0, PC; g_BreakablePlugin_ptr
450EDC:  LDR             R0, [R0]; g_BreakablePlugin
450EDE:  LDR             R5, [R0]
450EE0:  MOV             R0, R8; int
450EE2:  ADDS            R6, R4, R5
450EE4:  MOV             R1, R6; void *
450EE6:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
450EEA:  LDR             R0, [R4,R5]
450EEC:  CMP             R0, #0
450EEE:  BEQ.W           loc_451050
450EF2:  ADD             R4, SP, #0x80+var_50
450EF4:  MOV             R0, R8; int
450EF6:  MOVS            R2, #0x34 ; '4'; size_t
450EF8:  MOVS            R5, #0x34 ; '4'
450EFA:  MOV             R1, R4; void *
450EFC:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
450F00:  LDRH.W          R10, [SP,#0x80+var_4C]
450F04:  LDRH.W          R0, [SP,#0x80+var_3C]
450F08:  LDRH.W          R2, [SP,#0x80+var_30]
450F0C:  ADD.W           R9, R10, R10,LSL#1
450F10:  STR             R0, [SP,#0x80+var_68]
450F12:  STR             R2, [SP,#0x80+var_64]
450F14:  ADD.W           R1, R5, R9,LSL#2
450F18:  STR             R1, [SP,#0x80+var_7C]
450F1A:  ADD.W           R1, R1, R10,LSL#3
450F1E:  STR             R1, [SP,#0x80+var_78]
450F20:  ADD.W           R3, R1, R10,LSL#2
450F24:  ADD.W           R1, R0, R0,LSL#1
450F28:  STR             R1, [SP,#0x80+var_70]
450F2A:  ADD.W           R1, R3, R1,LSL#1
450F2E:  STR             R1, [SP,#0x80+var_6C]
450F30:  ADD.W           R1, R1, R0,LSL#1
450F34:  STR             R1, [SP,#0x80+var_60]
450F36:  ADD.W           R0, R1, R2,LSL#5
450F3A:  STR             R0, [SP,#0x80+var_5C]
450F3C:  ADD.W           R1, R0, R2,LSL#5
450F40:  ADD.W           R0, R2, R2,LSL#1
450F44:  STR             R0, [SP,#0x80+var_54]
450F46:  ADD.W           R11, R1, R0,LSL#2
450F4A:  STR             R3, [SP,#0x80+var_74]
450F4C:  ADD.W           R0, R11, R2,LSL#2; unsigned int
450F50:  STR             R1, [SP,#0x80+var_58]
450F52:  BLX             _Znaj; operator new[](uint)
450F56:  MOV             R5, R0
450F58:  ADD.W           R1, R5, #0x34 ; '4'; void *
450F5C:  STR             R5, [R6]
450F5E:  MOV.W           R2, R9,LSL#2; size_t
450F62:  LDR             R0, [SP,#0x80+var_20]
450F64:  STR             R0, [R5,#0x30]
450F66:  ADD.W           R0, R4, #0x20 ; ' '
450F6A:  VLD1.64         {D16-D17}, [R0]
450F6E:  ADD.W           R0, R5, #0x20 ; ' '
450F72:  VST1.32         {D16-D17}, [R0]
450F76:  ADD.W           R0, R5, #0x10
450F7A:  VLD1.32         {D16-D17}, [R4]!
450F7E:  VLD1.64         {D18-D19}, [R4]
450F82:  VST1.32         {D18-D19}, [R0]
450F86:  MOV             R0, R5
450F88:  VST1.32         {D16-D17}, [R0],R11
450F8C:  MOV             R11, R0
450F8E:  MOV             R0, R8; int
450F90:  STR             R1, [R5,#8]
450F92:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
450F96:  LDR             R0, [SP,#0x80+var_7C]
450F98:  MOV.W           R2, R10,LSL#3; size_t
450F9C:  ADD             R0, R5
450F9E:  STR             R0, [R5,#0xC]
450FA0:  LDR             R0, [R6]
450FA2:  LDR             R1, [R0,#0xC]; void *
450FA4:  MOV             R0, R8; int
450FA6:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
450FAA:  LDR             R0, [SP,#0x80+var_78]
450FAC:  MOV.W           R2, R10,LSL#2; size_t
450FB0:  ADD             R0, R5
450FB2:  STR             R0, [R5,#0x10]
450FB4:  LDR             R0, [R6]
450FB6:  LDR             R1, [R0,#0x10]; void *
450FB8:  MOV             R0, R8; int
450FBA:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
450FBE:  LDR             R0, [SP,#0x80+var_74]
450FC0:  ADD             R0, R5
450FC2:  STR             R0, [R5,#0x18]
450FC4:  LDR             R0, [R6]
450FC6:  LDR             R1, [R0,#0x18]; void *
450FC8:  LDR             R0, [SP,#0x80+var_70]
450FCA:  LSLS            R2, R0, #1; size_t
450FCC:  MOV             R0, R8; int
450FCE:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
450FD2:  LDR             R0, [SP,#0x80+var_6C]
450FD4:  ADD             R0, R5
450FD6:  STR             R0, [R5,#0x1C]
450FD8:  LDR             R0, [R6]
450FDA:  LDR             R1, [R0,#0x1C]; void *
450FDC:  LDR             R0, [SP,#0x80+var_68]
450FDE:  LSLS            R2, R0, #1; size_t
450FE0:  MOV             R0, R8; int
450FE2:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
450FE6:  LDR             R0, [SP,#0x80+var_60]
450FE8:  ADD             R0, R5
450FEA:  STR             R0, [R5,#0x28]
450FEC:  LDR             R0, [R6]
450FEE:  LDR             R1, [R0,#0x28]; void *
450FF0:  LDR             R0, [SP,#0x80+var_64]
450FF2:  LSLS            R4, R0, #5
450FF4:  MOV             R0, R8; int
450FF6:  MOV             R2, R4; size_t
450FF8:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
450FFC:  LDR             R0, [SP,#0x80+var_5C]
450FFE:  MOV             R2, R4; size_t
451000:  ADD             R0, R5
451002:  STR             R0, [R5,#0x2C]
451004:  LDR             R0, [R6]
451006:  LDR             R1, [R0,#0x2C]; void *
451008:  MOV             R0, R8; int
45100A:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
45100E:  LDR             R0, [SP,#0x80+var_58]
451010:  ADD             R0, R5
451012:  STR             R0, [R5,#0x30]
451014:  LDR             R0, [R6]
451016:  LDR             R1, [R0,#0x30]; void *
451018:  LDR             R0, [SP,#0x80+var_54]
45101A:  LSLS            R2, R0, #2; size_t
45101C:  MOV             R0, R8; int
45101E:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
451022:  LDRH            R0, [R5,#0x20]
451024:  STR.W           R11, [R5,#0x24]
451028:  CBZ             R0, loc_451050
45102A:  MOVS            R4, #0
45102C:  MOVS            R6, #0
45102E:  LDRD.W          R0, R2, [R5,#0x28]
451032:  LDRB            R1, [R2,R4]
451034:  ADD             R0, R4; char *
451036:  CMP             R1, #0
451038:  IT NE
45103A:  ADDNE           R1, R2, R4; char *
45103C:  BLX             j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
451040:  LDR             R1, [R5,#0x24]
451042:  ADDS            R4, #0x20 ; ' '
451044:  STR.W           R0, [R1,R6,LSL#2]
451048:  ADDS            R6, #1
45104A:  LDRH            R0, [R5,#0x20]
45104C:  CMP             R6, R0
45104E:  BLT             loc_45102E
451050:  MOV             R0, R8
451052:  ADD             SP, SP, #0x64 ; 'd'
451054:  POP.W           {R8-R11}
451058:  POP             {R4-R7,PC}
