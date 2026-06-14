; =========================================================
; Game Engine Function: _ZN18CPtrListDoubleLink5FlushEv
; Address            : 0x40DA50 - 0x40DAB4
; =========================================================

40DA50:  PUSH            {R4,R5,R7,LR}
40DA52:  ADD             R7, SP, #8
40DA54:  LDR             R1, [R0]
40DA56:  CBZ             R1, locret_40DAB2
40DA58:  LDR             R2, =(_ZN6CPools25ms_pPtrNodeDoubleLinkPoolE_ptr - 0x40DA68)
40DA5A:  MOV             R12, #0xAAAAAAAB
40DA62:  MOV             R3, R1
40DA64:  ADD             R2, PC; _ZN6CPools25ms_pPtrNodeDoubleLinkPoolE_ptr
40DA66:  LDR.W           LR, [R2]; CPools::ms_pPtrNodeDoubleLinkPool ...
40DA6A:  LDR             R2, [R3,#4]
40DA6C:  CMP             R1, R3
40DA6E:  IT EQ
40DA70:  STREQ           R2, [R0]
40DA72:  LDR             R1, [R3,#8]
40DA74:  CMP             R1, #0
40DA76:  ITT NE
40DA78:  LDRNE           R4, [R3,#4]
40DA7A:  STRNE           R4, [R1,#4]
40DA7C:  LDR             R1, [R3,#4]
40DA7E:  CMP             R1, #0
40DA80:  ITT NE
40DA82:  LDRNE           R4, [R3,#8]
40DA84:  STRNE           R4, [R1,#8]
40DA86:  LDR.W           R1, [LR]; CPools::ms_pPtrNodeDoubleLinkPool
40DA8A:  LDRD.W          R4, R5, [R1]
40DA8E:  SUBS            R3, R3, R4
40DA90:  ASRS            R3, R3, #2
40DA92:  MUL.W           R3, R3, R12
40DA96:  LDRB            R4, [R5,R3]
40DA98:  ORR.W           R4, R4, #0x80
40DA9C:  STRB            R4, [R5,R3]
40DA9E:  LDR             R4, [R1,#0xC]
40DAA0:  CMP             R3, R4
40DAA2:  IT LT
40DAA4:  STRLT           R3, [R1,#0xC]
40DAA6:  CMP             R2, #0
40DAA8:  IT EQ
40DAAA:  POPEQ           {R4,R5,R7,PC}
40DAAC:  LDR             R1, [R0]
40DAAE:  MOV             R3, R2
40DAB0:  B               loc_40DA6A
40DAB2:  POP             {R4,R5,R7,PC}
