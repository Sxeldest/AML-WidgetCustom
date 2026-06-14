; =========================================================
; Game Engine Function: sub_1FFFE8
; Address            : 0x1FFFE8 - 0x2000A0
; =========================================================

1FFFE8:  PUSH            {R4-R7,LR}
1FFFEA:  ADD             R7, SP, #0xC
1FFFEC:  PUSH.W          {R11}
1FFFF0:  MOV             R4, R0
1FFFF2:  MOV             R5, R1
1FFFF4:  LDR.W           R1, [R4,#0x34C]; p
1FFFF8:  CBZ             R1, loc_200006
1FFFFA:  MOV             R0, R4; int
1FFFFC:  BLX             j_png_free
200000:  MOVS            R0, #0
200002:  STR.W           R0, [R4,#0x34C]
200006:  LDR.W           R0, [R4,#0x340]
20000A:  ADDS            R1, R0, #1
20000C:  CMP             R1, #2
20000E:  BCC             loc_200032
200010:  CMP             R0, R5
200012:  BCS             loc_200032
200014:  MOVS            R6, #0
200016:  CBZ             R5, loc_20007A
200018:  CBNZ            R6, loc_20007A
20001A:  MOV             R0, R4
20001C:  MOV             R1, R5
20001E:  BLX             j_png_crc_finish
200022:  ADR             R1, aUnknownChunkEx; "unknown chunk exceeds memory limits"
200024:  MOV             R0, R4
200026:  BLX             j_png_chunk_benign_error
20002A:  MOVS            R0, #0
20002C:  POP.W           {R11}
200030:  POP             {R4-R7,PC}
200032:  LDR.W           R1, [R4,#0x1DC]
200036:  MOVS            R6, #0
200038:  LDR.W           R0, [R4,#0x134]
20003C:  CMP             R5, #0
20003E:  STRB.W          R6, [R4,#0x348]
200042:  STR.W           R5, [R4,#0x350]
200046:  STRB.W          R1, [R4,#0x347]
20004A:  STRB.W          R0, [R4,#0x354]
20004E:  MOV.W           R0, R1,LSR#24
200052:  STRB.W          R0, [R4,#0x344]
200056:  MOV.W           R0, R1,LSR#16
20005A:  STRB.W          R0, [R4,#0x345]
20005E:  MOV.W           R0, R1,LSR#8
200062:  STRB.W          R0, [R4,#0x346]
200066:  BEQ             loc_200072
200068:  MOV             R0, R4; int
20006A:  MOV             R1, R5; byte_count
20006C:  BLX             j_png_malloc_warn
200070:  MOV             R6, R0
200072:  STR.W           R6, [R4,#0x34C]
200076:  CMP             R5, #0
200078:  BNE             loc_200018
20007A:  CBZ             R5, loc_200090
20007C:  MOV             R0, R4
20007E:  MOV             R1, R6
200080:  MOV             R2, R5
200082:  BLX             j_png_read_data
200086:  MOV             R0, R4
200088:  MOV             R1, R6
20008A:  MOV             R2, R5
20008C:  BLX             j_png_calculate_crc
200090:  MOV             R0, R4
200092:  MOVS            R1, #0
200094:  BLX             j_png_crc_finish
200098:  MOVS            R0, #1
20009A:  POP.W           {R11}
20009E:  POP             {R4-R7,PC}
