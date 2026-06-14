; =========================================================
; Game Engine Function: _ZN8COctTree5emptyEv
; Address            : 0x45BF74 - 0x45C00C
; =========================================================

45BF74:  PUSH            {R4-R7,LR}
45BF76:  ADD             R7, SP, #0xC
45BF78:  PUSH.W          {R8-R11}
45BF7C:  SUB             SP, SP, #4
45BF7E:  LDR.W           R9, =(dword_9ABF40 - 0x45BF94)
45BF82:  MOV             R8, R0
45BF84:  LDR.W           R10, =(dword_9ABF40 - 0x45BF96)
45BF88:  ADD.W           R6, R8, #0xA
45BF8C:  LDR.W           R11, =(dword_9ABF40 - 0x45BF9A)
45BF90:  ADD             R9, PC; dword_9ABF40
45BF92:  ADD             R10, PC; dword_9ABF40
45BF94:  MOVS            R5, #0
45BF96:  ADD             R11, PC; dword_9ABF40
45BF98:  MOV.W           R4, #0xFFFFFFFF
45BF9C:  STR.W           R5, [R8,#4]
45BFA0:  STRD.W          R5, R5, [R8,#0x1C]
45BFA4:  STR.W           R5, [R8,#0x24]
45BFA8:  LDRSH.W         R0, [R6,R5,LSL#1]
45BFAC:  CMP             R0, R4
45BFAE:  BLE             loc_45BFF8
45BFB0:  LDR.W           R1, [R9,#(dword_9ABF44 - 0x9ABF40)]
45BFB4:  LDRSB           R1, [R1,R0]
45BFB6:  CMP             R1, #0
45BFB8:  BLT             loc_45BFF4
45BFBA:  LDR.W           R1, [R10]
45BFBE:  ADD.W           R0, R0, R0,LSL#2
45BFC2:  ADD.W           R0, R1, R0,LSL#3; this
45BFC6:  CBZ             R0, loc_45BFF4
45BFC8:  BLX             j__ZN8COctTreeD2Ev; COctTree::~COctTree()
45BFCC:  LDRD.W          R1, R2, [R11]
45BFD0:  SUBS            R0, R0, R1
45BFD2:  MOV             R1, #0xCCCCCCCD
45BFDA:  ASRS            R0, R0, #3
45BFDC:  MULS            R0, R1
45BFDE:  LDRB            R1, [R2,R0]
45BFE0:  ORR.W           R1, R1, #0x80
45BFE4:  STRB            R1, [R2,R0]
45BFE6:  LDR.W           R1, [R11,#(dword_9ABF4C - 0x9ABF40)]
45BFEA:  CMP             R0, R1
45BFEC:  BGE             loc_45BFF4
45BFEE:  LDR             R1, =(dword_9ABF40 - 0x45BFF4)
45BFF0:  ADD             R1, PC; dword_9ABF40
45BFF2:  STR             R0, [R1,#(dword_9ABF4C - 0x9ABF40)]
45BFF4:  STRH.W          R4, [R6,R5,LSL#1]
45BFF8:  ADDS            R5, #1
45BFFA:  CMP             R5, #8
45BFFC:  BNE             loc_45BFA8
45BFFE:  MOVS            R0, #0
45C000:  STRB.W          R0, [R8,#8]
45C004:  ADD             SP, SP, #4
45C006:  POP.W           {R8-R11}
45C00A:  POP             {R4-R7,PC}
