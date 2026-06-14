; =========================================================
; Game Engine Function: _ZN13CQuadTreeNode8InitPoolEv
; Address            : 0x40DAEC - 0x40DB6C
; =========================================================

40DAEC:  LDR             R0, =(_ZN13CQuadTreeNode20ms_pQuadTreeNodePoolE_ptr - 0x40DAF2)
40DAEE:  ADD             R0, PC; _ZN13CQuadTreeNode20ms_pQuadTreeNodePoolE_ptr
40DAF0:  LDR             R0, [R0]; CQuadTreeNode::ms_pQuadTreeNodePool ...
40DAF2:  LDR             R0, [R0]; CQuadTreeNode::ms_pQuadTreeNodePool
40DAF4:  CMP             R0, #0
40DAF6:  IT NE
40DAF8:  BXNE            LR
40DAFA:  PUSH            {R4,R5,R7,LR}
40DAFC:  ADD             R7, SP, #0x10+var_8
40DAFE:  MOVS            R0, #0x14; unsigned int
40DB00:  BLX             _Znwj; operator new(uint)
40DB04:  MOV             R4, R0
40DB06:  MOV.W           R0, #0x3E80; unsigned int
40DB0A:  BLX             _Znaj; operator new[](uint)
40DB0E:  STR             R0, [R4]
40DB10:  MOV.W           R0, #0x190; unsigned int
40DB14:  MOV.W           R5, #0x190
40DB18:  BLX             _Znaj; operator new[](uint)
40DB1C:  MOVS            R1, #1
40DB1E:  MOVS            R2, #0x80
40DB20:  STRB            R1, [R4,#0x10]
40DB22:  MOV.W           R1, #0xFFFFFFFF
40DB26:  STRD.W          R0, R5, [R4,#4]
40DB2A:  STR             R1, [R4,#0xC]
40DB2C:  LDRB            R1, [R0,#1]
40DB2E:  STRB            R2, [R0]
40DB30:  ORR.W           R1, R1, #0x80
40DB34:  STRB            R1, [R0,#1]
40DB36:  LDR             R0, [R4,#4]
40DB38:  LDRB            R1, [R0,#1]
40DB3A:  AND.W           R1, R1, #0x80
40DB3E:  STRB            R1, [R0,#1]
40DB40:  MOVS            R0, #2
40DB42:  LDR             R1, [R4,#4]
40DB44:  LDRB            R2, [R1,R0]
40DB46:  ORR.W           R2, R2, #0x80
40DB4A:  STRB            R2, [R1,R0]
40DB4C:  LDR             R1, [R4,#4]
40DB4E:  LDRB            R2, [R1,R0]
40DB50:  AND.W           R2, R2, #0x80
40DB54:  STRB            R2, [R1,R0]
40DB56:  ADDS            R0, #1
40DB58:  CMP.W           R0, #0x190
40DB5C:  BNE             loc_40DB42
40DB5E:  LDR             R0, =(_ZN13CQuadTreeNode20ms_pQuadTreeNodePoolE_ptr - 0x40DB64)
40DB60:  ADD             R0, PC; _ZN13CQuadTreeNode20ms_pQuadTreeNodePoolE_ptr
40DB62:  LDR             R0, [R0]; CQuadTreeNode::ms_pQuadTreeNodePool ...
40DB64:  STR             R4, [R0]; CQuadTreeNode::ms_pQuadTreeNodePool
40DB66:  POP.W           {R4,R5,R7,LR}
40DB6A:  BX              LR
