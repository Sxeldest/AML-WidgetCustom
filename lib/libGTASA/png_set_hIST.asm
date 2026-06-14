; =========================================================
; Game Engine Function: png_set_hIST
; Address            : 0x201B68 - 0x201BFC
; =========================================================

201B68:  PUSH            {R4-R7,LR}
201B6A:  ADD             R7, SP, #0xC
201B6C:  PUSH.W          {R11}
201B70:  MOV             R6, R0
201B72:  CMP             R6, #0
201B74:  MOV             R4, R1
201B76:  MOV             R5, R2
201B78:  IT NE
201B7A:  CMPNE           R4, #0
201B7C:  BEQ             loc_201BE6
201B7E:  LDRH            R0, [R4,#0x14]
201B80:  SUBS            R0, #1
201B82:  UXTH            R0, R0
201B84:  CMP.W           R0, #0x100
201B88:  BCC             loc_201B8E
201B8A:  ADR             R1, aInvalidPalette; "Invalid palette size, hIST allocation s"...
201B8C:  B               loc_201BEE
201B8E:  MOV             R0, R6; int
201B90:  MOV             R1, R4
201B92:  MOVS            R2, #8
201B94:  MOVS            R3, #0
201B96:  BLX             j_png_free_data
201B9A:  MOV             R0, R6; int
201B9C:  MOV.W           R1, #0x200; byte_count
201BA0:  BLX             j_png_malloc_warn
201BA4:  CMP             R0, #0
201BA6:  STR.W           R0, [R4,#0xD8]
201BAA:  BEQ             loc_201BEC
201BAC:  LDRH            R2, [R4,#0x14]
201BAE:  LDR.W           R1, [R4,#0xF4]
201BB2:  CMP             R2, #0
201BB4:  ORR.W           R1, R1, #8
201BB8:  STR.W           R1, [R4,#0xF4]
201BBC:  BEQ             loc_201BDE
201BBE:  LDRH            R1, [R5]
201BC0:  STRH            R1, [R0]
201BC2:  LDRH            R0, [R4,#0x14]
201BC4:  CMP             R0, #2
201BC6:  BCC             loc_201BDE
201BC8:  MOVS            R0, #1
201BCA:  LDR.W           R1, [R4,#0xD8]
201BCE:  LDRH.W          R2, [R5,R0,LSL#1]
201BD2:  STRH.W          R2, [R1,R0,LSL#1]
201BD6:  ADDS            R0, #1
201BD8:  LDRH            R1, [R4,#0x14]
201BDA:  CMP             R0, R1
201BDC:  BLT             loc_201BCA
201BDE:  LDR             R0, [R4,#8]
201BE0:  ORR.W           R0, R0, #0x40 ; '@'
201BE4:  STR             R0, [R4,#8]
201BE6:  POP.W           {R11}
201BEA:  POP             {R4-R7,PC}
201BEC:  ADR             R1, aInsufficientMe_2; "Insufficient memory for hIST chunk data"
201BEE:  MOV             R0, R6
201BF0:  POP.W           {R11}
201BF4:  POP.W           {R4-R7,LR}
201BF8:  B.W             j_j_png_warning
