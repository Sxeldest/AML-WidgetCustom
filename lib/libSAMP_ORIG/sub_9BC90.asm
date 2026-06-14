; =========================================================
; Game Engine Function: sub_9BC90
; Address            : 0x9BC90 - 0x9BD30
; =========================================================

9BC90:  PUSH            {R4-R7,LR}
9BC92:  ADD             R7, SP, #0xC
9BC94:  PUSH.W          {R8,R9,R11}
9BC98:  VPUSH           {D8-D9}
9BC9C:  MOV             R9, R0
9BC9E:  LDR             R0, [R0,#8]
9BCA0:  CMP             R0, #1
9BCA2:  BLT             loc_9BD0C
9BCA4:  VMOV.I32        Q4, #0
9BCA8:  MOV.W           R8, #0
9BCAC:  MOVS            R6, #0
9BCAE:  MOVS            R5, #0
9BCB0:  B               loc_9BCBE
9BCB2:  LDR.W           R0, [R9,#8]
9BCB6:  ADDS            R5, #1
9BCB8:  ADDS            R6, #0x18
9BCBA:  CMP             R5, R0
9BCBC:  BGE             loc_9BD0C
9BCBE:  LDR.W           R0, [R9]
9BCC2:  CMP             R5, R0
9BCC4:  BNE             loc_9BCD8
9BCC6:  LDR.W           R0, [R9,#0x10]
9BCCA:  ADD             R0, R6
9BCCC:  STR.W           R8, [R0,#0x14]
9BCD0:  VST1.8          {D8-D9}, [R0]!
9BCD4:  STR.W           R8, [R0]
9BCD8:  LDR.W           R1, [R9,#0x10]
9BCDC:  ADDS            R4, R1, R6
9BCDE:  LDR             R0, [R4,#8]
9BCE0:  CBZ             R0, loc_9BCF6
9BCE2:  STR.W           R8, [R1,R6]
9BCE6:  STR.W           R8, [R4,#4]
9BCEA:  BL              sub_88614
9BCEE:  LDR.W           R1, [R9,#0x10]
9BCF2:  STR.W           R8, [R4,#8]
9BCF6:  ADDS            R4, R1, R6
9BCF8:  LDR             R0, [R4,#0x14]
9BCFA:  CMP             R0, #0
9BCFC:  BEQ             loc_9BCB2
9BCFE:  STRD.W          R8, R8, [R4,#0xC]
9BD02:  BL              sub_88614
9BD06:  STR.W           R8, [R4,#0x14]
9BD0A:  B               loc_9BCB2
9BD0C:  LDR.W           R0, [R9,#0x10]
9BD10:  MOVS            R1, #1
9BD12:  MOVS            R4, #0
9BD14:  STRD.W          R4, R1, [R9]
9BD18:  CBZ             R0, loc_9BD26
9BD1A:  STRD.W          R4, R4, [R9,#8]
9BD1E:  BL              sub_88614
9BD22:  STR.W           R4, [R9,#0x10]
9BD26:  VPOP            {D8-D9}
9BD2A:  POP.W           {R8,R9,R11}
9BD2E:  POP             {R4-R7,PC}
