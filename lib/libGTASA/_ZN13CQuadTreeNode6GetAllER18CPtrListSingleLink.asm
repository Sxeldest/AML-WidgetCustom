; =========================================================
; Game Engine Function: _ZN13CQuadTreeNode6GetAllER18CPtrListSingleLink
; Address            : 0x40DD14 - 0x40DD7E
; =========================================================

40DD14:  PUSH            {R4-R7,LR}
40DD16:  ADD             R7, SP, #0xC
40DD18:  PUSH.W          {R8}
40DD1C:  MOV             R8, R0
40DD1E:  MOV             R4, R1
40DD20:  LDR.W           R6, [R8,#0x10]
40DD24:  CBZ             R6, loc_40DD3C
40DD26:  MOVS            R0, #byte_8; this
40DD28:  LDR             R5, [R6]
40DD2A:  BLX             j__ZN18CPtrNodeSingleLinknwEj; CPtrNodeSingleLink::operator new(uint)
40DD2E:  STR             R5, [R0]
40DD30:  LDR             R1, [R4]
40DD32:  STR             R1, [R0,#4]
40DD34:  STR             R0, [R4]
40DD36:  LDR             R6, [R6,#4]
40DD38:  CMP             R6, #0
40DD3A:  BNE             loc_40DD26
40DD3C:  LDR.W           R0, [R8,#0x14]; this
40DD40:  CMP             R0, #0
40DD42:  ITT NE
40DD44:  MOVNE           R1, R4; CPtrListSingleLink *
40DD46:  BLXNE           j__ZN13CQuadTreeNode6GetAllER18CPtrListSingleLink; CQuadTreeNode::GetAll(CPtrListSingleLink &)
40DD4A:  LDR.W           R0, [R8,#0x18]; this
40DD4E:  CMP             R0, #0
40DD50:  ITT NE
40DD52:  MOVNE           R1, R4; CPtrListSingleLink *
40DD54:  BLXNE           j__ZN13CQuadTreeNode6GetAllER18CPtrListSingleLink; CQuadTreeNode::GetAll(CPtrListSingleLink &)
40DD58:  LDR.W           R0, [R8,#0x1C]; this
40DD5C:  CMP             R0, #0
40DD5E:  ITT NE
40DD60:  MOVNE           R1, R4; CPtrListSingleLink *
40DD62:  BLXNE           j__ZN13CQuadTreeNode6GetAllER18CPtrListSingleLink; CQuadTreeNode::GetAll(CPtrListSingleLink &)
40DD66:  LDR.W           R0, [R8,#0x20]; this
40DD6A:  CBZ             R0, loc_40DD78
40DD6C:  MOV             R1, R4; unsigned int
40DD6E:  POP.W           {R8}
40DD72:  POP.W           {R4-R7,LR}
40DD76:  B               _ZN13CQuadTreeNode6GetAllER18CPtrListSingleLink; CQuadTreeNode::GetAll(CPtrListSingleLink &)
40DD78:  POP.W           {R8}
40DD7C:  POP             {R4-R7,PC}
