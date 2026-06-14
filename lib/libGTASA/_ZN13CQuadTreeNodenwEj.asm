; =========================================================
; Game Engine Function: _ZN13CQuadTreeNodenwEj
; Address            : 0x40DB74 - 0x40DBD4
; =========================================================

40DB74:  PUSH            {R7,LR}
40DB76:  MOV             R7, SP
40DB78:  LDR             R0, =(_ZN13CQuadTreeNode20ms_pQuadTreeNodePoolE_ptr - 0x40DB82)
40DB7A:  MOV.W           LR, #0
40DB7E:  ADD             R0, PC; _ZN13CQuadTreeNode20ms_pQuadTreeNodePoolE_ptr
40DB80:  LDR             R0, [R0]; CQuadTreeNode::ms_pQuadTreeNodePool ...
40DB82:  LDR             R1, [R0]; CQuadTreeNode::ms_pQuadTreeNodePool
40DB84:  LDRD.W          R12, R0, [R1,#8]
40DB88:  ADDS            R0, #1
40DB8A:  STR             R0, [R1,#0xC]
40DB8C:  CMP             R0, R12
40DB8E:  BNE             loc_40DBA0
40DB90:  MOVS            R0, #0
40DB92:  MOVS.W          R2, LR,LSL#31
40DB96:  STR             R0, [R1,#0xC]
40DB98:  IT NE
40DB9A:  POPNE           {R7,PC}
40DB9C:  MOV.W           LR, #1
40DBA0:  LDR             R2, [R1,#4]
40DBA2:  LDRSB           R3, [R2,R0]
40DBA4:  CMP.W           R3, #0xFFFFFFFF
40DBA8:  BGT             loc_40DB88
40DBAA:  AND.W           R3, R3, #0x7F
40DBAE:  STRB            R3, [R2,R0]
40DBB0:  LDR             R0, [R1,#4]
40DBB2:  LDR             R2, [R1,#0xC]
40DBB4:  LDRB            R3, [R0,R2]
40DBB6:  AND.W           R12, R3, #0x80
40DBBA:  ADDS            R3, #1
40DBBC:  AND.W           R3, R3, #0x7F
40DBC0:  ORR.W           R3, R3, R12
40DBC4:  STRB            R3, [R0,R2]
40DBC6:  LDR             R0, [R1]
40DBC8:  LDR             R1, [R1,#0xC]
40DBCA:  ADD.W           R1, R1, R1,LSL#2
40DBCE:  ADD.W           R0, R0, R1,LSL#3
40DBD2:  POP             {R7,PC}
