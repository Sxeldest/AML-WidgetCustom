; =========================================================
; Game Engine Function: sub_139B94
; Address            : 0x139B94 - 0x139BE2
; =========================================================

139B94:  PUSH            {R4,R6,R7,LR}
139B96:  ADD             R7, SP, #8
139B98:  MOV             R4, R0
139B9A:  LDR             R1, [R0,#4]
139B9C:  LDR             R0, [R0,#0x10]
139B9E:  MOV             R2, #0xC0C0C0C1
139BA6:  UMULL.W         R2, R3, R0, R2
139BAA:  LSRS            R2, R3, #7
139BAC:  MOVS            R3, #0xAA
139BAE:  MLS.W           R3, R2, R3, R0
139BB2:  LDR.W           R1, [R1,R2,LSL#2]
139BB6:  ADD.W           R2, R3, R3,LSL#1
139BBA:  ADD.W           R1, R1, R2,LSL#3
139BBE:  LDRB            R2, [R1,#4]
139BC0:  LSLS            R2, R2, #0x1F
139BC2:  BEQ             loc_139BCC
139BC4:  LDR             R0, [R1,#0xC]; void *
139BC6:  BLX             j__ZdlPv; operator delete(void *)
139BCA:  LDR             R0, [R4,#0x10]
139BCC:  LDR             R1, [R4,#0x14]
139BCE:  ADDS            R0, #1
139BD0:  SUBS            R1, #1
139BD2:  STRD.W          R0, R1, [R4,#0x10]
139BD6:  MOV             R0, R4
139BD8:  MOVS            R1, #1
139BDA:  POP.W           {R4,R6,R7,LR}
139BDE:  B.W             sub_139BE2
