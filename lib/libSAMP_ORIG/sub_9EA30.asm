; =========================================================
; Game Engine Function: sub_9EA30
; Address            : 0x9EA30 - 0x9EB08
; =========================================================

9EA30:  PUSH            {R4-R7,LR}
9EA32:  ADD             R7, SP, #0xC
9EA34:  PUSH.W          {R8-R11}
9EA38:  SUB             SP, SP, #0xC
9EA3A:  MOV             R10, R0
9EA3C:  MOV             R0, R1; s
9EA3E:  MOV             R9, R3
9EA40:  STR             R2, [SP,#0x28+var_20]
9EA42:  MOV             R5, R1
9EA44:  BLX             strlen
9EA48:  MOVW            R1, #0x6667
9EA4C:  ADDS            R0, #4
9EA4E:  MOVT            R1, #0x6666
9EA52:  SMMUL.W         R0, R0, R1
9EA56:  LSRS            R1, R0, #1
9EA58:  ADD.W           R0, R1, R0,LSR#31
9EA5C:  LSLS            R0, R0, #2
9EA5E:  BL              sub_885E4
9EA62:  LDRB            R1, [R5]
9EA64:  MOV             R11, R0
9EA66:  CBZ             R1, loc_9EAE4
9EA68:  ADDS            R2, R5, #2
9EA6A:  MOV.W           LR, #0x55 ; 'U'
9EA6E:  MOV             R4, R11
9EA70:  LDRB.W          R8, [R2,#-1]
9EA74:  MOV             R12, #0xFFFFFFDD
9EA78:  LDRB.W          R0, [R2],#5
9EA7C:  MOV             R5, #0xFFFFFFDD
9EA80:  LDRB.W          R3, [R2,#-3]
9EA84:  LDRB.W          R6, [R2,#-4]
9EA88:  CMP             R3, #0x5B ; '['
9EA8A:  IT HI
9EA8C:  MOVHI           R12, #0xFFFFFFDC
9EA90:  ADD             R3, R12
9EA92:  CMP             R6, #0x5B ; '['
9EA94:  IT HI
9EA96:  MOVHI           R5, #0xFFFFFFDC
9EA9A:  ADD             R6, R5
9EA9C:  SMLABB.W        R3, R3, LR, R6
9EAA0:  MOV             R6, #0xFFFFFFDD
9EAA4:  CMP             R0, #0x5B ; '['
9EAA6:  IT HI
9EAA8:  MOVHI           R6, #0xFFFFFFDC
9EAAC:  ADD             R0, R6
9EAAE:  CMP.W           R8, #0x5B ; '['
9EAB2:  MLA.W           R0, R3, LR, R0
9EAB6:  MOV             R3, #0xFFFFFFDD
9EABA:  IT HI
9EABC:  MOVHI           R3, #0xFFFFFFDC
9EAC0:  CMP             R1, #0x5B ; '['
9EAC2:  ADD             R3, R8
9EAC4:  MLA.W           R0, R0, LR, R3
9EAC8:  MOV             R3, #0xFFFFFFDD
9EACC:  IT HI
9EACE:  MOVHI           R3, #0xFFFFFFDC
9EAD2:  ADD             R1, R3
9EAD4:  MLA.W           R0, R0, LR, R1
9EAD8:  STR.W           R0, [R4],#4
9EADC:  LDRB.W          R1, [R2,#-2]
9EAE0:  CMP             R1, #0
9EAE2:  BNE             loc_9EA70
9EAE4:  LDR             R3, [SP,#0x28+var_20]
9EAE6:  MOV             R1, R11
9EAE8:  LDR             R0, [R7,#arg_0]
9EAEA:  STR             R0, [SP,#0x28+var_24]
9EAEC:  MOV             R0, R10
9EAEE:  STR.W           R9, [SP,#0x28+var_28]
9EAF2:  BL              sub_9EC48
9EAF6:  MOV             R5, R0
9EAF8:  MOV             R0, R11
9EAFA:  BL              sub_88614
9EAFE:  MOV             R0, R5
9EB00:  ADD             SP, SP, #0xC
9EB02:  POP.W           {R8-R11}
9EB06:  POP             {R4-R7,PC}
