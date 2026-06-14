; =========================================================
; Game Engine Function: sub_177B80
; Address            : 0x177B80 - 0x177BDE
; =========================================================

177B80:  PUSH            {R4-R7,LR}
177B82:  ADD             R7, SP, #0xC
177B84:  PUSH.W          {R8}
177B88:  MOV             R4, R0
177B8A:  ADDS            R1, #0x1F
177B8C:  LDR             R0, [R0,#4]
177B8E:  ASRS            R6, R1, #5
177B90:  CMP.W           R0, R1,ASR#5
177B94:  BGE             loc_177BCE
177B96:  CMP             R0, #0
177B98:  ITTE NE
177B9A:  ADDNE.W         R1, R0, R0,LSR#31
177B9E:  ADDNE.W         R5, R0, R1,ASR#1
177BA2:  MOVEQ           R5, #8
177BA4:  CMP             R5, R6
177BA6:  IT LE
177BA8:  MOVLE           R5, R6
177BAA:  CMP             R0, R5
177BAC:  BGE             loc_177BCE
177BAE:  LSLS            R0, R5, #2
177BB0:  BL              sub_1654B0
177BB4:  LDR             R1, [R4,#8]; src
177BB6:  MOV             R8, R0
177BB8:  CBZ             R1, loc_177BCA
177BBA:  LDR             R0, [R4]
177BBC:  LSLS            R2, R0, #2; n
177BBE:  MOV             R0, R8; dest
177BC0:  BLX             j_memcpy
177BC4:  LDR             R0, [R4,#8]
177BC6:  BL              sub_165578
177BCA:  STRD.W          R5, R8, [R4,#4]
177BCE:  LDR             R0, [R4,#8]; int
177BD0:  LSLS            R1, R6, #2; n
177BD2:  STR             R6, [R4]
177BD4:  BLX             sub_22178C
177BD8:  POP.W           {R8}
177BDC:  POP             {R4-R7,PC}
