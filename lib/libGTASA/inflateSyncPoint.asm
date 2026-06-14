; =========================================================
; Game Engine Function: inflateSyncPoint
; Address            : 0x20EE84 - 0x20EE9E
; =========================================================

20EE84:  CMP             R0, #0
20EE86:  ITT NE
20EE88:  LDRNE           R0, [R0,#0x1C]
20EE8A:  CMPNE           R0, #0
20EE8C:  BEQ             loc_20EE98
20EE8E:  LDR             R0, [R0,#0x14]
20EE90:  CMP             R0, #0
20EE92:  IT NE
20EE94:  BNE.W           j_j_inflate_blocks_sync_point
20EE98:  MOV             R0, #0xFFFFFFFE
20EE9C:  BX              LR
