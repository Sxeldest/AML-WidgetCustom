; =========================================================
; Game Engine Function: _ZN12COctTreeBase10InsertTreeEhhh
; Address            : 0x45CA44 - 0x45CA6A
; =========================================================

45CA44:  PUSH            {R4,R5,R7,LR}
45CA46:  ADD             R7, SP, #8
45CA48:  MOV             R4, R0
45CA4A:  LDR             R0, =(_ZN8COctTree8ms_levelE_ptr - 0x45CA52)
45CA4C:  MOVS            R5, #0
45CA4E:  ADD             R0, PC; _ZN8COctTree8ms_levelE_ptr
45CA50:  LDR             R0, [R0]; COctTree::ms_level ...
45CA52:  STR             R5, [R0]; COctTree::ms_level
45CA54:  MOV             R0, R4; this
45CA56:  BLX             j__ZN8COctTree10InsertTreeEhhh; COctTree::InsertTree(uchar,uchar,uchar)
45CA5A:  CMP             R0, #1
45CA5C:  ITTTT EQ
45CA5E:  LDREQ           R0, [R4,#0x28]
45CA60:  SUBEQ           R0, #1
45CA62:  STREQ           R0, [R4,#0x28]
45CA64:  MOVEQ           R5, #1
45CA66:  MOV             R0, R5
45CA68:  POP             {R4,R5,R7,PC}
