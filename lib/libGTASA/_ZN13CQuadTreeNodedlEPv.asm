; =========================================================
; Game Engine Function: _ZN13CQuadTreeNodedlEPv
; Address            : 0x40DBD8 - 0x40DC04
; =========================================================

40DBD8:  LDR             R1, =(_ZN13CQuadTreeNode20ms_pQuadTreeNodePoolE_ptr - 0x40DBDE)
40DBDA:  ADD             R1, PC; _ZN13CQuadTreeNode20ms_pQuadTreeNodePoolE_ptr
40DBDC:  LDR             R1, [R1]; CQuadTreeNode::ms_pQuadTreeNodePool ...
40DBDE:  LDR             R1, [R1]; CQuadTreeNode::ms_pQuadTreeNodePool
40DBE0:  LDRD.W          R2, R3, [R1]
40DBE4:  SUBS            R0, R0, R2
40DBE6:  MOV             R2, #0xCCCCCCCD
40DBEE:  ASRS            R0, R0, #3
40DBF0:  MULS            R0, R2
40DBF2:  LDRB            R2, [R3,R0]
40DBF4:  ORR.W           R2, R2, #0x80
40DBF8:  STRB            R2, [R3,R0]
40DBFA:  LDR             R2, [R1,#0xC]
40DBFC:  CMP             R0, R2
40DBFE:  IT LT
40DC00:  STRLT           R0, [R1,#0xC]
40DC02:  BX              LR
