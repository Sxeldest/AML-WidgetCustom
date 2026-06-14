; =========================================================
; Game Engine Function: sub_5FD08
; Address            : 0x5FD08 - 0x5FE06
; =========================================================

5FD08:  PUSH            {R4-R7,LR}
5FD0A:  ADD             R7, SP, #0xC
5FD0C:  PUSH.W          {R8-R11}
5FD10:  SUB             SP, SP, #0x1CC
5FD12:  MOV             R4, R0
5FD14:  LDR             R0, =(asc_4B4F4 - 0x5FD1E); " " ...
5FD16:  MOV             R5, R1
5FD18:  LDR             R1, =(__stack_chk_guard_ptr - 0x5FD20)
5FD1A:  ADD             R0, PC; " "
5FD1C:  ADD             R1, PC; __stack_chk_guard_ptr
5FD1E:  LDR             R1, [R1]; __stack_chk_guard
5FD20:  LDR             R1, [R1]
5FD22:  STR             R1, [SP,#0x1E8+var_20]
5FD24:  BL              sub_5F764
5FD28:  LDR             R0, =(aBacktrace - 0x5FD2E); "BackTrace:" ...
5FD2A:  ADD             R0, PC; "BackTrace:"
5FD2C:  BL              sub_5F764
5FD30:  ADD             R6, SP, #0x1E8+var_1B0
5FD32:  LDR             R0, =(sub_5F7E0+1 - 0x5FD3C)
5FD34:  ADD.W           R1, R6, #0x190
5FD38:  ADD             R0, PC; sub_5F7E0
5FD3A:  STRD.W          R6, R1, [SP,#0x1E8+var_1B8]
5FD3E:  ADD             R1, SP, #0x1E8+var_1B8
5FD40:  BLX             sub_10BFE8
5FD44:  LDR             R0, [SP,#0x1E8+var_1B8]
5FD46:  SUBS            R1, R0, R6
5FD48:  ASRS            R0, R1, #2
5FD4A:  CMP.W           R5, R1,ASR#2
5FD4E:  IT LT
5FD50:  ADDLT           R0, R5, #1
5FD52:  CMP             R0, R4
5FD54:  BLE             loc_5FDEC
5FD56:  ADD.W           R1, R6, R4,LSL#2
5FD5A:  SUBS            R0, R0, R4
5FD5C:  STR             R1, [SP,#0x1E8+var_1D0]
5FD5E:  MOVS            R4, #0
5FD60:  STR             R0, [SP,#0x1E8+var_1D4]
5FD62:  LDR             R0, =(byte_4FDB8 - 0x5FD68)
5FD64:  ADD             R0, PC; byte_4FDB8
5FD66:  STR             R0, [SP,#0x1E8+lpmangled]
5FD68:  LDR             R0, =(aUnknownSymbol - 0x5FD6E); "unknown symbol" ...
5FD6A:  ADD             R0, PC; "unknown symbol"
5FD6C:  MOV             R10, R0
5FD6E:  LDR             R0, =(aUnknownFile - 0x5FD74); "unknown file" ...
5FD70:  ADD             R0, PC; "unknown file"
5FD72:  MOV             R11, R0
5FD74:  LDR             R0, =(aDS0xX0xXSD - 0x5FD7A); "\t#%d [\"%s\":0x%X] + 0x%X | [\"%s\"+%d"... ...
5FD76:  ADD             R0, PC; "\t#%d [\"%s\":0x%X] + 0x%X | [\"%s\"+%d"...
5FD78:  MOV             R9, R0
5FD7A:  LDR             R0, [SP,#0x1E8+var_1D0]
5FD7C:  ADD             R1, SP, #0x1E8+var_1C8
5FD7E:  LDR.W           R6, [R0,R4,LSL#2]
5FD82:  MOV             R0, R6
5FD84:  BLX             dladdr
5FD88:  LDR             R1, [SP,#0x1E8+var_1C0]
5FD8A:  MOVS            R2, #0
5FD8C:  STR             R2, [SP,#0x1E8+status]
5FD8E:  ADD             R3, SP, #0x1E8+status; lpstatus
5FD90:  CMP             R1, #0
5FD92:  LDR             R2, [SP,#0x1E8+lpmangled]
5FD94:  IT EQ
5FD96:  MOVEQ           R1, R2
5FD98:  CMP             R0, #0
5FD9A:  IT EQ
5FD9C:  MOVEQ           R1, R2
5FD9E:  MOV             R0, R1; lpmangled
5FDA0:  MOVS            R1, #0; lpout
5FDA2:  MOVS            R2, #0; lpoutlen
5FDA4:  BLX             j___cxa_demangle
5FDA8:  ADD             R5, SP, #0x1E8+status
5FDAA:  MOV             R8, R0
5FDAC:  LDR             R1, [SP,#0x1E8+var_1BC]
5FDAE:  LDM             R5, {R0,R2,R3,R5}
5FDB0:  SUBS            R1, R6, R1
5FDB2:  CMP             R0, #0
5FDB4:  MOV             R0, R5
5FDB6:  IT EQ
5FDB8:  MOVEQ           R0, R8
5FDBA:  CMP             R5, #0
5FDBC:  IT EQ
5FDBE:  MOVEQ           R0, R10
5FDC0:  SUBS            R6, R6, R3
5FDC2:  STRD.W          R6, R0, [SP,#0x1E8+var_1E8]
5FDC6:  MOV             R0, R9
5FDC8:  STR             R1, [SP,#0x1E8+var_1E0]
5FDCA:  MOV             R1, R4
5FDCC:  CMP             R2, #0
5FDCE:  IT EQ
5FDD0:  MOVEQ           R2, R11
5FDD2:  MOV             R5, R10
5FDD4:  BL              sub_5F764
5FDD8:  CMP.W           R8, #0
5FDDC:  ITT NE
5FDDE:  MOVNE           R0, R8; ptr
5FDE0:  BLXNE           free
5FDE4:  LDR             R0, [SP,#0x1E8+var_1D4]
5FDE6:  ADDS            R4, #1
5FDE8:  CMP             R0, R4
5FDEA:  BNE             loc_5FD7A
5FDEC:  LDR             R0, [SP,#0x1E8+var_20]
5FDEE:  LDR             R1, =(__stack_chk_guard_ptr - 0x5FDF4)
5FDF0:  ADD             R1, PC; __stack_chk_guard_ptr
5FDF2:  LDR             R1, [R1]; __stack_chk_guard
5FDF4:  LDR             R1, [R1]
5FDF6:  CMP             R1, R0
5FDF8:  ITTT EQ
5FDFA:  ADDEQ           SP, SP, #0x1CC
5FDFC:  POPEQ.W         {R8-R11}
5FE00:  POPEQ           {R4-R7,PC}
5FE02:  BLX             __stack_chk_fail
