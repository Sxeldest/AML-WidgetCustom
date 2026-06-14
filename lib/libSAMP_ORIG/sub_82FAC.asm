; =========================================================
; Game Engine Function: sub_82FAC
; Address            : 0x82FAC - 0x8303A
; =========================================================

82FAC:  PUSH            {R4-R7,LR}
82FAE:  ADD             R7, SP, #0xC
82FB0:  PUSH.W          {R11}
82FB4:  MOV             R3, R1
82FB6:  LDRB.W          LR, [R0]
82FBA:  LDRB            R4, [R3]
82FBC:  LDR             R2, [R0,#4]
82FBE:  ANDS.W          R6, LR, #1
82FC2:  LDR             R1, [R1,#4]
82FC4:  IT EQ
82FC6:  MOVEQ.W         R2, LR,LSR#1; n
82FCA:  ANDS.W          R5, R4, #1
82FCE:  IT EQ
82FD0:  LSREQ           R1, R4, #1
82FD2:  CMP             R2, R1
82FD4:  BNE             loc_83016
82FD6:  LDR             R1, [R3,#8]
82FD8:  CMP             R5, #0
82FDA:  LDR.W           R12, [R0,#8]
82FDE:  IT EQ
82FE0:  ADDEQ           R1, R3, #1; s2
82FE2:  ADDS            R3, R0, #1
82FE4:  CMP             R6, #0
82FE6:  IT EQ
82FE8:  MOVEQ           R12, R3
82FEA:  BNE             loc_8301E
82FEC:  CBZ             R2, loc_83032
82FEE:  MOV.W           R0, LR,LSR#1
82FF2:  SUBS            R2, R0, #1
82FF4:  LDRB.W          R0, [R1],#1
82FF8:  LDRB.W          R6, [R3],#1
82FFC:  SUBS            R0, R6, R0
82FFE:  CLZ.W           R0, R0
83002:  MOV.W           R0, R0,LSR#5
83006:  BNE             loc_83010
83008:  SUBS            R6, R2, #1
8300A:  CMP             R2, #0
8300C:  MOV             R2, R6
8300E:  BNE             loc_82FF4
83010:  POP.W           {R11}
83014:  POP             {R4-R7,PC}
83016:  MOVS            R0, #0
83018:  POP.W           {R11}
8301C:  POP             {R4-R7,PC}
8301E:  CBZ             R2, loc_83032
83020:  MOV             R0, R12; s1
83022:  BLX             memcmp
83026:  CLZ.W           R0, R0
8302A:  LSRS            R0, R0, #5
8302C:  POP.W           {R11}
83030:  POP             {R4-R7,PC}
83032:  MOVS            R0, #1
83034:  POP.W           {R11}
83038:  POP             {R4-R7,PC}
