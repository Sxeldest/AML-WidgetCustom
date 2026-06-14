; =========================================================
; Game Engine Function: _Z26_rwDataBlockMgrEmptyBlocksP14RwDataBlockMgr
; Address            : 0x1A9FDC - 0x1AA036
; =========================================================

1A9FDC:  PUSH            {R4,R6,R7,LR}
1A9FDE:  ADD             R7, SP, #8
1A9FE0:  MOV             R4, R0
1A9FE2:  LDR             R0, [R4,#8]
1A9FE4:  LDR             R1, [R4,#0x1C]
1A9FE6:  CMP             R0, R1
1A9FE8:  ITT HI
1A9FEA:  STRHI           R0, [R4,#0x1C]
1A9FEC:  MOVHI           R1, R0
1A9FEE:  LDR             R0, [R4,#0x18]
1A9FF0:  ADDS            R0, #1
1A9FF2:  ANDS.W          R0, R0, #0x3F ; '?'
1A9FF6:  STR             R0, [R4,#0x18]
1A9FF8:  BNE             loc_1AA02C
1A9FFA:  LDR             R0, [R4,#4]
1A9FFC:  ADD.W           R2, R1, R1,LSR#1
1AA000:  CMP             R0, R2
1AA002:  BLS             loc_1AA028
1AA004:  LDR             R0, =(dgGGlobals_ptr - 0x1AA00C)
1AA006:  CMP             R1, #0
1AA008:  ADD             R0, PC; dgGGlobals_ptr
1AA00A:  LDR             R0, [R0]; dgGGlobals
1AA00C:  LDR             R2, [R0,#(dword_6B31F8 - 0x6B31F4)]
1AA00E:  BEQ             loc_1AA01A
1AA010:  LDR             R0, [R4]
1AA012:  LDR             R2, [R2,#8]
1AA014:  BLX             R2
1AA016:  CBNZ            R0, loc_1AA022
1AA018:  B               loc_1AA028
1AA01A:  LDR             R0, [R4]
1AA01C:  LDR             R1, [R2,#4]
1AA01E:  BLX             R1
1AA020:  MOVS            R0, #0
1AA022:  STR             R0, [R4]
1AA024:  LDR             R0, [R4,#0x1C]
1AA026:  STR             R0, [R4,#4]
1AA028:  MOVS            R0, #0
1AA02A:  STR             R0, [R4,#0x1C]
1AA02C:  MOVS            R0, #0
1AA02E:  STR             R0, [R4,#0x14]
1AA030:  STR             R0, [R4,#8]
1AA032:  MOV             R0, R4
1AA034:  POP             {R4,R6,R7,PC}
