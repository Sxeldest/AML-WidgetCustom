; =========================================================
; Game Engine Function: _ZN13CQuadTreeNodeD2Ev
; Address            : 0x40DC28 - 0x40DD02
; =========================================================

40DC28:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CQuadTreeNode::~CQuadTreeNode()'
40DC2A:  ADD             R7, SP, #8
40DC2C:  MOV             R4, R0
40DC2E:  LDR             R0, [R4,#0x14]; this
40DC30:  CBZ             R0, loc_40DC60
40DC32:  BLX             j__ZN13CQuadTreeNodeD2Ev; CQuadTreeNode::~CQuadTreeNode()
40DC36:  LDR             R1, =(_ZN13CQuadTreeNode20ms_pQuadTreeNodePoolE_ptr - 0x40DC3C)
40DC38:  ADD             R1, PC; _ZN13CQuadTreeNode20ms_pQuadTreeNodePoolE_ptr
40DC3A:  LDR             R1, [R1]; CQuadTreeNode::ms_pQuadTreeNodePool ...
40DC3C:  LDR             R1, [R1]; CQuadTreeNode::ms_pQuadTreeNodePool
40DC3E:  LDRD.W          R2, R3, [R1]
40DC42:  SUBS            R0, R0, R2
40DC44:  MOV             R2, #0xCCCCCCCD
40DC4C:  ASRS            R0, R0, #3
40DC4E:  MULS            R0, R2
40DC50:  LDRB            R2, [R3,R0]
40DC52:  ORR.W           R2, R2, #0x80
40DC56:  STRB            R2, [R3,R0]
40DC58:  LDR             R2, [R1,#0xC]
40DC5A:  CMP             R0, R2
40DC5C:  IT LT
40DC5E:  STRLT           R0, [R1,#0xC]
40DC60:  LDR             R0, [R4,#0x18]; this
40DC62:  CBZ             R0, loc_40DC92
40DC64:  BLX             j__ZN13CQuadTreeNodeD2Ev; CQuadTreeNode::~CQuadTreeNode()
40DC68:  LDR             R1, =(_ZN13CQuadTreeNode20ms_pQuadTreeNodePoolE_ptr - 0x40DC6E)
40DC6A:  ADD             R1, PC; _ZN13CQuadTreeNode20ms_pQuadTreeNodePoolE_ptr
40DC6C:  LDR             R1, [R1]; CQuadTreeNode::ms_pQuadTreeNodePool ...
40DC6E:  LDR             R1, [R1]; CQuadTreeNode::ms_pQuadTreeNodePool
40DC70:  LDRD.W          R2, R3, [R1]
40DC74:  SUBS            R0, R0, R2
40DC76:  MOV             R2, #0xCCCCCCCD
40DC7E:  ASRS            R0, R0, #3
40DC80:  MULS            R0, R2
40DC82:  LDRB            R2, [R3,R0]
40DC84:  ORR.W           R2, R2, #0x80
40DC88:  STRB            R2, [R3,R0]
40DC8A:  LDR             R2, [R1,#0xC]
40DC8C:  CMP             R0, R2
40DC8E:  IT LT
40DC90:  STRLT           R0, [R1,#0xC]
40DC92:  LDR             R0, [R4,#0x1C]; this
40DC94:  CBZ             R0, loc_40DCC4
40DC96:  BLX             j__ZN13CQuadTreeNodeD2Ev; CQuadTreeNode::~CQuadTreeNode()
40DC9A:  LDR             R1, =(_ZN13CQuadTreeNode20ms_pQuadTreeNodePoolE_ptr - 0x40DCA0)
40DC9C:  ADD             R1, PC; _ZN13CQuadTreeNode20ms_pQuadTreeNodePoolE_ptr
40DC9E:  LDR             R1, [R1]; CQuadTreeNode::ms_pQuadTreeNodePool ...
40DCA0:  LDR             R1, [R1]; CQuadTreeNode::ms_pQuadTreeNodePool
40DCA2:  LDRD.W          R2, R3, [R1]
40DCA6:  SUBS            R0, R0, R2
40DCA8:  MOV             R2, #0xCCCCCCCD
40DCB0:  ASRS            R0, R0, #3
40DCB2:  MULS            R0, R2
40DCB4:  LDRB            R2, [R3,R0]
40DCB6:  ORR.W           R2, R2, #0x80
40DCBA:  STRB            R2, [R3,R0]
40DCBC:  LDR             R2, [R1,#0xC]
40DCBE:  CMP             R0, R2
40DCC0:  IT LT
40DCC2:  STRLT           R0, [R1,#0xC]
40DCC4:  LDR             R0, [R4,#0x20]; this
40DCC6:  CBZ             R0, loc_40DCF6
40DCC8:  BLX             j__ZN13CQuadTreeNodeD2Ev; CQuadTreeNode::~CQuadTreeNode()
40DCCC:  LDR             R1, =(_ZN13CQuadTreeNode20ms_pQuadTreeNodePoolE_ptr - 0x40DCD2)
40DCCE:  ADD             R1, PC; _ZN13CQuadTreeNode20ms_pQuadTreeNodePoolE_ptr
40DCD0:  LDR             R1, [R1]; CQuadTreeNode::ms_pQuadTreeNodePool ...
40DCD2:  LDR             R1, [R1]; CQuadTreeNode::ms_pQuadTreeNodePool
40DCD4:  LDRD.W          R2, R3, [R1]
40DCD8:  SUBS            R0, R0, R2
40DCDA:  MOV             R2, #0xCCCCCCCD
40DCE2:  ASRS            R0, R0, #3
40DCE4:  MULS            R0, R2
40DCE6:  LDRB            R2, [R3,R0]
40DCE8:  ORR.W           R2, R2, #0x80
40DCEC:  STRB            R2, [R3,R0]
40DCEE:  LDR             R2, [R1,#0xC]
40DCF0:  CMP             R0, R2
40DCF2:  IT LT
40DCF4:  STRLT           R0, [R1,#0xC]
40DCF6:  ADD.W           R0, R4, #0x10; this
40DCFA:  BLX             j__ZN18CPtrListSingleLink5FlushEv; CPtrListSingleLink::Flush(void)
40DCFE:  MOV             R0, R4
40DD00:  POP             {R4,R6,R7,PC}
