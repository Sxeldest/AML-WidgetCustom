; =========================================================
; Game Engine Function: _ZN9CPhysical6RemoveEv
; Address            : 0x3FCFDC - 0x3FD05A
; =========================================================

3FCFDC:  PUSH            {R4-R7,LR}
3FCFDE:  ADD             R7, SP, #0xC
3FCFE0:  PUSH.W          {R11}
3FCFE4:  MOV             R4, R0
3FCFE6:  LDRB            R0, [R4,#0x1D]
3FCFE8:  LSLS            R0, R0, #0x1F
3FCFEA:  BNE             loc_3FD04C
3FCFEC:  LDR.W           R5, [R4,#0xB4]
3FCFF0:  CBZ             R5, loc_3FD046
3FCFF2:  LDRD.W          R1, R0, [R5]; void *
3FCFF6:  LDR             R2, [R1]
3FCFF8:  CMP             R2, R0
3FCFFA:  ITT EQ
3FCFFC:  LDREQ           R2, [R0,#4]
3FCFFE:  STREQ           R2, [R1]
3FD000:  LDR             R1, [R0,#8]
3FD002:  CMP             R1, #0
3FD004:  ITT NE
3FD006:  LDRNE           R2, [R0,#4]
3FD008:  STRNE           R2, [R1,#4]
3FD00A:  LDR             R1, [R0,#4]
3FD00C:  CMP             R1, #0
3FD00E:  ITT NE
3FD010:  LDRNE           R2, [R0,#8]
3FD012:  STRNE           R2, [R1,#8]
3FD014:  BLX             j__ZN18CPtrNodeDoubleLinkdlEPv; CPtrNodeDoubleLink::operator delete(void *)
3FD018:  LDR.W           R0, [R4,#0xB4]
3FD01C:  LDR             R6, [R5,#0x10]
3FD01E:  CMP             R0, R5
3FD020:  IT EQ
3FD022:  STREQ.W         R6, [R4,#0xB4]
3FD026:  LDR             R0, [R5,#0xC]
3FD028:  CMP             R0, #0
3FD02A:  ITT NE
3FD02C:  LDRNE           R1, [R5,#0x10]
3FD02E:  STRNE           R1, [R0,#0x10]
3FD030:  LDR             R0, [R5,#0x10]
3FD032:  CMP             R0, #0
3FD034:  ITT NE
3FD036:  LDRNE           R1, [R5,#0xC]
3FD038:  STRNE           R1, [R0,#0xC]
3FD03A:  MOV             R0, R5; void *
3FD03C:  BLX             j__ZN14CEntryInfoNodedlEPv; CEntryInfoNode::operator delete(void *)
3FD040:  CMP             R6, #0
3FD042:  MOV             R5, R6
3FD044:  BNE             loc_3FCFF2
3FD046:  POP.W           {R11}
3FD04A:  POP             {R4-R7,PC}
3FD04C:  MOV             R0, R4; this
3FD04E:  POP.W           {R11}
3FD052:  POP.W           {R4-R7,LR}
3FD056:  B.W             sub_18E0D8
