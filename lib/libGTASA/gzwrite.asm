; =========================================================
; Game Engine Function: gzwrite
; Address            : 0x20CD18 - 0x20CD96
; =========================================================

20CD18:  PUSH            {R4-R7,LR}
20CD1A:  ADD             R7, SP, #0xC
20CD1C:  PUSH.W          {R8}
20CD20:  MOV             R5, R0
20CD22:  MOV             R4, R2
20CD24:  MOV             R6, R1
20CD26:  CBZ             R5, loc_20CD70
20CD28:  LDRB.W          R0, [R5,#0x5C]
20CD2C:  CMP             R0, #0x77 ; 'w'
20CD2E:  BNE             loc_20CD70
20CD30:  CMP             R4, #0
20CD32:  STRD.W          R6, R4, [R5]
20CD36:  BEQ             loc_20CD80
20CD38:  MOV.W           R8, #0x4000
20CD3C:  LDR             R0, [R5,#0x10]
20CD3E:  CBNZ            R0, loc_20CD5A
20CD40:  LDR             R3, [R5,#0x40]; s
20CD42:  MOVS            R1, #1; size
20CD44:  LDR             R0, [R5,#0x48]; ptr
20CD46:  MOV.W           R2, #0x4000; n
20CD4A:  STR             R0, [R5,#0xC]
20CD4C:  BLX             fwrite
20CD50:  CMP.W           R0, #0x4000
20CD54:  BNE             loc_20CD7A
20CD56:  STR.W           R8, [R5,#0x10]
20CD5A:  MOV             R0, R5
20CD5C:  MOVS            R1, #0
20CD5E:  BLX             j_deflate
20CD62:  CMP             R0, #0
20CD64:  STR             R0, [R5,#0x38]
20CD66:  BNE             loc_20CD80
20CD68:  LDR             R0, [R5,#4]
20CD6A:  CMP             R0, #0
20CD6C:  BNE             loc_20CD3C
20CD6E:  B               loc_20CD80
20CD70:  MOV             R0, #0xFFFFFFFE
20CD74:  POP.W           {R8}
20CD78:  POP             {R4-R7,PC}
20CD7A:  MOV.W           R0, #0xFFFFFFFF
20CD7E:  STR             R0, [R5,#0x38]
20CD80:  LDR             R0, [R5,#0x4C]
20CD82:  MOV             R1, R6
20CD84:  MOV             R2, R4
20CD86:  BLX             j_crc32
20CD8A:  LDR             R1, [R5,#4]
20CD8C:  STR             R0, [R5,#0x4C]
20CD8E:  SUBS            R0, R4, R1
20CD90:  POP.W           {R8}
20CD94:  POP             {R4-R7,PC}
