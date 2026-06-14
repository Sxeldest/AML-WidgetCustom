; =========================================================
; Game Engine Function: _ZN8COctTreeD2Ev
; Address            : 0x45BEC0 - 0x45BF5E
; =========================================================

45BEC0:  PUSH            {R4-R7,LR}; Alternative name is 'COctTree::~COctTree()'
45BEC2:  ADD             R7, SP, #0xC
45BEC4:  PUSH.W          {R8-R11}
45BEC8:  SUB             SP, SP, #4
45BECA:  MOV             R4, R0
45BECC:  LDR             R0, =(_ZTV8COctTree_ptr - 0x45BEDA)
45BECE:  LDR.W           R8, =(dword_9ABF40 - 0x45BEE4)
45BED2:  MOVW            R11, #0xCCCD
45BED6:  ADD             R0, PC; _ZTV8COctTree_ptr
45BED8:  LDR.W           R9, =(dword_9ABF40 - 0x45BEE8)
45BEDC:  LDR.W           R10, =(dword_9ABF40 - 0x45BEEA)
45BEE0:  ADD             R8, PC; dword_9ABF40
45BEE2:  LDR             R0, [R0]; `vtable for'COctTree ...
45BEE4:  ADD             R9, PC; dword_9ABF40
45BEE6:  ADD             R10, PC; dword_9ABF40
45BEE8:  MOVS            R1, #0
45BEEA:  MOVS            R5, #5
45BEEC:  MOV.W           R6, #0xFFFFFFFF
45BEF0:  MOVT            R11, #0xCCCC
45BEF4:  STRD.W          R1, R1, [R4,#0x1C]
45BEF8:  STR             R1, [R4,#0x24]
45BEFA:  ADDS            R0, #8
45BEFC:  STRD.W          R0, R1, [R4]
45BF00:  LDRSH.W         R0, [R4,R5,LSL#1]
45BF04:  CMP             R0, R6
45BF06:  BLE             loc_45BF4A
45BF08:  LDR.W           R1, [R8,#(dword_9ABF44 - 0x9ABF40)]
45BF0C:  LDRSB           R1, [R1,R0]
45BF0E:  CMP             R1, #0
45BF10:  BLT             loc_45BF46
45BF12:  LDR.W           R1, [R9]
45BF16:  ADD.W           R0, R0, R0,LSL#2
45BF1A:  ADD.W           R0, R1, R0,LSL#3; this
45BF1E:  CBZ             R0, loc_45BF46
45BF20:  BLX             j__ZN8COctTreeD2Ev; COctTree::~COctTree()
45BF24:  LDRD.W          R1, R2, [R10]
45BF28:  SUBS            R0, R0, R1
45BF2A:  ASRS            R0, R0, #3
45BF2C:  MUL.W           R0, R0, R11
45BF30:  LDRB            R1, [R2,R0]
45BF32:  ORR.W           R1, R1, #0x80
45BF36:  STRB            R1, [R2,R0]
45BF38:  LDR.W           R1, [R10,#(dword_9ABF4C - 0x9ABF40)]
45BF3C:  CMP             R0, R1
45BF3E:  BGE             loc_45BF46
45BF40:  LDR             R1, =(dword_9ABF40 - 0x45BF46)
45BF42:  ADD             R1, PC; dword_9ABF40
45BF44:  STR             R0, [R1,#(dword_9ABF4C - 0x9ABF40)]
45BF46:  STRH.W          R6, [R4,R5,LSL#1]
45BF4A:  ADDS            R5, #1
45BF4C:  CMP             R5, #0xD
45BF4E:  BNE             loc_45BF00
45BF50:  MOVS            R0, #0
45BF52:  STRB            R0, [R4,#8]
45BF54:  MOV             R0, R4
45BF56:  ADD             SP, SP, #4
45BF58:  POP.W           {R8-R11}
45BF5C:  POP             {R4-R7,PC}
