; =========================================================
; Game Engine Function: _ZN25CCustomBuildingDNPipeline33pluginExtraVertColourStreamReadCBEP8RwStreamiPvii
; Address            : 0x2CABA8 - 0x2CACA0
; =========================================================

2CABA8:  PUSH            {R4-R7,LR}
2CABAA:  ADD             R7, SP, #0xC
2CABAC:  PUSH.W          {R8,R9,R11}
2CABB0:  SUB             SP, SP, #8
2CABB2:  MOV             R9, R0
2CABB4:  LDR             R0, =(_ZN25CCustomBuildingDNPipeline30ms_extraVertColourPluginOffsetE_ptr - 0x2CABBE)
2CABB6:  MOV             R8, R1
2CABB8:  ADD             R1, SP, #0x20+var_1C; void *
2CABBA:  ADD             R0, PC; _ZN25CCustomBuildingDNPipeline30ms_extraVertColourPluginOffsetE_ptr
2CABBC:  MOV             R5, R2
2CABBE:  MOVS            R2, #4; size_t
2CABC0:  LDR             R0, [R0]; CCustomBuildingDNPipeline::ms_extraVertColourPluginOffset ...
2CABC2:  LDR             R6, [R0]; CCustomBuildingDNPipeline::ms_extraVertColourPluginOffset
2CABC4:  MOV             R0, R9; int
2CABC6:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
2CABCA:  LDR             R0, [SP,#0x20+var_1C]
2CABCC:  CMP             R0, #0
2CABCE:  BEQ             loc_2CAC5C
2CABD0:  LDR             R0, [R5,#8]
2CABD2:  ADD             R6, R5
2CABD4:  LDR             R1, [R5,#0x14]; unsigned int
2CABD6:  ORR.W           R0, R0, #0x200
2CABDA:  STR             R0, [R5,#8]
2CABDC:  LSLS            R0, R1, #2; byte_count
2CABDE:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
2CABE2:  STR             R0, [R6]
2CABE4:  LDR             R0, [R5,#0x14]
2CABE6:  LSLS            R0, R0, #2; byte_count
2CABE8:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
2CABEC:  MOV.W           R1, #0x3F800000
2CABF0:  STRD.W          R0, R1, [R6,#4]
2CABF4:  LDR             R0, [R5,#0x14]
2CABF6:  LDR             R1, [R6]; void *
2CABF8:  LSLS            R2, R0, #2; size_t
2CABFA:  MOV             R0, R9; int
2CABFC:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
2CAC00:  LDR             R6, [R5,#0x30]
2CAC02:  CBZ             R6, loc_2CAC76
2CAC04:  LDR             R1, [R5,#0x14]
2CAC06:  CMP             R1, #1
2CAC08:  BLT             loc_2CAC76
2CAC0A:  LDR             R0, =(_ZN25CCustomBuildingDNPipeline30ms_extraVertColourPluginOffsetE_ptr - 0x2CAC12)
2CAC0C:  CMP             R1, #0x10
2CAC0E:  ADD             R0, PC; _ZN25CCustomBuildingDNPipeline30ms_extraVertColourPluginOffsetE_ptr
2CAC10:  LDR             R0, [R0]; CCustomBuildingDNPipeline::ms_extraVertColourPluginOffset ...
2CAC12:  LDR             R0, [R0]; CCustomBuildingDNPipeline::ms_extraVertColourPluginOffset
2CAC14:  ADD             R0, R5
2CAC16:  LDR.W           R12, [R0,#4]
2CAC1A:  BCC             loc_2CAC32
2CAC1C:  BIC.W           R5, R1, #0xF
2CAC20:  CBZ             R5, loc_2CAC32
2CAC22:  ADD.W           R0, R6, R1,LSL#2
2CAC26:  CMP             R12, R0
2CAC28:  ITT CC
2CAC2A:  ADDCC.W         R0, R12, R1,LSL#2
2CAC2E:  CMPCC           R6, R0
2CAC30:  BCS             loc_2CAC80
2CAC32:  MOVS            R5, #0
2CAC34:  ADD.W           R2, R12, R5,LSL#2
2CAC38:  ADD.W           R0, R6, R5,LSL#2
2CAC3C:  SUBS            R1, R1, R5
2CAC3E:  MOVS            R3, #0
2CAC40:  LDRB            R6, [R0,R3]
2CAC42:  ADDS            R4, R2, R3
2CAC44:  STRB            R6, [R2,R3]
2CAC46:  ADDS            R6, R0, R3
2CAC48:  ADDS            R3, #4
2CAC4A:  SUBS            R1, #1
2CAC4C:  LDRB            R5, [R6,#2]
2CAC4E:  STRB            R5, [R4,#2]
2CAC50:  LDRB            R5, [R6,#1]
2CAC52:  STRB            R5, [R4,#1]
2CAC54:  LDRB            R6, [R6,#3]
2CAC56:  STRB            R6, [R4,#3]
2CAC58:  BNE             loc_2CAC40
2CAC5A:  B               loc_2CAC76
2CAC5C:  CMP.W           R8, #5
2CAC60:  BLT             loc_2CAC76
2CAC62:  RSB.W           R6, R8, #4
2CAC66:  ADD             R5, SP, #0x20+var_1C
2CAC68:  MOV             R0, R9; int
2CAC6A:  MOV             R1, R5; void *
2CAC6C:  MOVS            R2, #4; size_t
2CAC6E:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
2CAC72:  ADDS            R6, #4
2CAC74:  BNE             loc_2CAC68
2CAC76:  MOV             R0, R9
2CAC78:  ADD             SP, SP, #8
2CAC7A:  POP.W           {R8,R9,R11}
2CAC7E:  POP             {R4-R7,PC}
2CAC80:  MOV             R3, R5
2CAC82:  MOV             R2, R12
2CAC84:  MOV             R0, R6
2CAC86:  VLD4.8          {D16,D18,D20,D22}, [R0]!
2CAC8A:  SUBS            R3, #0x10
2CAC8C:  VLD4.8          {D17,D19,D21,D23}, [R0]!
2CAC90:  VST4.8          {D16,D18,D20,D22}, [R2]!
2CAC94:  VST4.8          {D17,D19,D21,D23}, [R2]!
2CAC98:  BNE             loc_2CAC86
2CAC9A:  CMP             R1, R5
2CAC9C:  BEQ             loc_2CAC76
2CAC9E:  B               loc_2CAC34
