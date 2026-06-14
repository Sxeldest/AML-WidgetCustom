; =========================================================
; Game Engine Function: sub_9BAD4
; Address            : 0x9BAD4 - 0x9BC18
; =========================================================

9BAD4:  PUSH            {R4-R7,LR}
9BAD6:  ADD             R7, SP, #0xC
9BAD8:  PUSH.W          {R8}
9BADC:  MOV             R4, R0
9BADE:  LDR             R0, [R0,#4]
9BAE0:  CMP.W           R0, #0xFFFFFFFF
9BAE4:  BGT             loc_9BB0C
9BAE6:  MOVS            R0, #0
9BAE8:  MOVS            R6, #0
9BAEA:  BL              sub_885E4
9BAEE:  LDR             R1, [R4,#8]; src
9BAF0:  MOV             R5, R0
9BAF2:  CBZ             R1, loc_9BB08
9BAF4:  LDR             R0, [R4]
9BAF6:  ADD.W           R0, R0, R0,LSL#2
9BAFA:  LSLS            R2, R0, #3; n
9BAFC:  MOV             R0, R5; dest
9BAFE:  BLX             j_memcpy
9BB02:  LDR             R0, [R4,#8]
9BB04:  BL              sub_88614
9BB08:  STRD.W          R6, R5, [R4,#4]
9BB0C:  LDR             R0, [R4,#0x10]
9BB0E:  MOVS            R6, #0
9BB10:  STR             R6, [R4]
9BB12:  CMP.W           R0, #0xFFFFFFFF
9BB16:  BGT             loc_9BB3C
9BB18:  MOVS            R0, #0
9BB1A:  MOV.W           R8, #0
9BB1E:  BL              sub_885E4
9BB22:  LDR             R1, [R4,#0x14]; src
9BB24:  MOV             R5, R0
9BB26:  CBZ             R1, loc_9BB38
9BB28:  LDR             R0, [R4,#0xC]
9BB2A:  LSLS            R2, R0, #1; n
9BB2C:  MOV             R0, R5; dest
9BB2E:  BLX             j_memcpy
9BB32:  LDR             R0, [R4,#0x14]
9BB34:  BL              sub_88614
9BB38:  STRD.W          R8, R5, [R4,#0x10]
9BB3C:  LDR             R0, [R4,#0x1C]
9BB3E:  STR             R6, [R4,#0xC]
9BB40:  CMP.W           R0, #0xFFFFFFFF
9BB44:  BGT             loc_9BB6C
9BB46:  MOVS            R0, #0
9BB48:  MOVS            R6, #0
9BB4A:  BL              sub_885E4
9BB4E:  LDR             R1, [R4,#0x20]; src
9BB50:  MOV             R5, R0
9BB52:  CBZ             R1, loc_9BB68
9BB54:  LDR             R0, [R4,#0x18]
9BB56:  ADD.W           R0, R0, R0,LSL#2
9BB5A:  LSLS            R2, R0, #2; n
9BB5C:  MOV             R0, R5; dest
9BB5E:  BLX             j_memcpy
9BB62:  LDR             R0, [R4,#0x20]
9BB64:  BL              sub_88614
9BB68:  STRD.W          R6, R5, [R4,#0x1C]
9BB6C:  LDR             R0, [R4,#0x28]
9BB6E:  VMOV.I32        Q8, #0
9BB72:  ADD.W           R1, R4, #0x30 ; '0'
9BB76:  MOVS            R6, #0
9BB78:  STR             R6, [R4,#0x18]
9BB7A:  LDR             R0, [R0,#0x24]
9BB7C:  VST1.32         {D16-D17}, [R1]!
9BB80:  LDR             R1, [R1,#4]
9BB82:  STR             R0, [R4,#0x24]
9BB84:  CMP.W           R1, #0xFFFFFFFF
9BB88:  BGT             loc_9BBAE
9BB8A:  MOVS            R0, #0
9BB8C:  MOV.W           R8, #0
9BB90:  BL              sub_885E4
9BB94:  LDR             R1, [R4,#0x48]; src
9BB96:  MOV             R5, R0
9BB98:  CBZ             R1, loc_9BBAA
9BB9A:  LDR             R0, [R4,#0x40]
9BB9C:  LSLS            R2, R0, #4; n
9BB9E:  MOV             R0, R5; dest
9BBA0:  BLX             j_memcpy
9BBA4:  LDR             R0, [R4,#0x48]
9BBA6:  BL              sub_88614
9BBAA:  STRD.W          R8, R5, [R4,#0x44]
9BBAE:  LDR             R0, [R4,#0x50]
9BBB0:  STR             R6, [R4,#0x40]
9BBB2:  CMP.W           R0, #0xFFFFFFFF
9BBB6:  BGT             loc_9BBDA
9BBB8:  MOVS            R0, #0
9BBBA:  MOVS            R6, #0
9BBBC:  BL              sub_885E4
9BBC0:  LDR             R1, [R4,#0x54]; src
9BBC2:  MOV             R5, R0
9BBC4:  CBZ             R1, loc_9BBD6
9BBC6:  LDR             R0, [R4,#0x4C]
9BBC8:  LSLS            R2, R0, #2; n
9BBCA:  MOV             R0, R5; dest
9BBCC:  BLX             j_memcpy
9BBD0:  LDR             R0, [R4,#0x54]
9BBD2:  BL              sub_88614
9BBD6:  STRD.W          R6, R5, [R4,#0x50]
9BBDA:  LDR             R0, [R4,#0x5C]
9BBDC:  MOVS            R6, #0
9BBDE:  STR             R6, [R4,#0x4C]
9BBE0:  CMP.W           R0, #0xFFFFFFFF
9BBE4:  BGT             loc_9BC0A
9BBE6:  MOVS            R0, #0
9BBE8:  MOV.W           R8, #0
9BBEC:  BL              sub_885E4
9BBF0:  LDR             R1, [R4,#0x60]; src
9BBF2:  MOV             R5, R0
9BBF4:  CBZ             R1, loc_9BC06
9BBF6:  LDR             R0, [R4,#0x58]
9BBF8:  LSLS            R2, R0, #3; n
9BBFA:  MOV             R0, R5; dest
9BBFC:  BLX             j_memcpy
9BC00:  LDR             R0, [R4,#0x60]
9BC02:  BL              sub_88614
9BC06:  STRD.W          R8, R5, [R4,#0x5C]
9BC0A:  MOVS            R0, #1
9BC0C:  STR             R6, [R4,#0x58]
9BC0E:  STRD.W          R6, R0, [R4,#0x64]
9BC12:  POP.W           {R8}
9BC16:  POP             {R4-R7,PC}
