; =========================================================
; Game Engine Function: sub_21AAE0
; Address            : 0x21AAE0 - 0x21AC0E
; =========================================================

21AAE0:  PUSH            {R4,R5,R7,LR}
21AAE2:  ADD             R7, SP, #8
21AAE4:  LDR.W           R12, [R1,#0x1C]
21AAE8:  CMP             R12, R0
21AAEA:  BEQ             loc_21AB22
21AAEC:  LDRH.W          R4, [R12,#0x18]
21AAF0:  CMP             R4, R2
21AAF2:  ITT NE
21AAF4:  LDRHNE.W        R4, [R12,#0x1A]
21AAF8:  CMPNE           R4, R2
21AAFA:  BEQ             loc_21AB22
21AAFC:  MOV             LR, R12
21AAFE:  LDR.W           R4, [LR,#0x10]!
21AB02:  CMP             R4, R1
21AB04:  IT EQ
21AB06:  ADDEQ.W         LR, LR, #4
21AB0A:  LDR.W           LR, [LR]
21AB0E:  CMP.W           LR, #0
21AB12:  ITT NE
21AB14:  LDRNE.W         R4, [LR,#0x30]
21AB18:  CMPNE           R4, R3
21AB1A:  BEQ             loc_21AB22
21AB1C:  LDR.W           R4, [LR,#0x10]
21AB20:  CBNZ            R4, loc_21AB8E
21AB22:  LDR.W           LR, [R1,#0x20]
21AB26:  CMP             LR, R0
21AB28:  BEQ             loc_21AB3A
21AB2A:  LDRH.W          R4, [LR,#0x18]
21AB2E:  CMP             R4, R2
21AB30:  ITT NE
21AB32:  LDRHNE.W        R4, [LR,#0x1A]
21AB36:  CMPNE           R4, R2
21AB38:  BNE             loc_21ABB6
21AB3A:  LDR             R4, [R1,#0x24]
21AB3C:  CMP             R4, R0
21AB3E:  BEQ             loc_21AB4C
21AB40:  LDRH            R5, [R4,#0x18]
21AB42:  CMP             R5, R2
21AB44:  ITT NE
21AB46:  LDRHNE          R5, [R4,#0x1A]
21AB48:  CMPNE           R5, R2
21AB4A:  BNE             loc_21ABDA
21AB4C:  CMP             R12, R0
21AB4E:  BEQ             loc_21AB6C
21AB50:  MOV             R2, R12
21AB52:  LDR.W           R5, [R2,#0x10]!
21AB56:  CMP             R5, R1
21AB58:  IT EQ
21AB5A:  ADDEQ           R2, #4
21AB5C:  LDR             R2, [R2]
21AB5E:  CMP             R2, #0
21AB60:  ITT NE
21AB62:  LDRNE           R5, [R2,#0x30]
21AB64:  CMPNE           R5, R3
21AB66:  BEQ             loc_21AB6C
21AB68:  LDR             R2, [R2,#0x10]
21AB6A:  CBNZ            R2, loc_21AB8E
21AB6C:  CMP             LR, R0
21AB6E:  BEQ             loc_21AB92
21AB70:  MOV             R2, LR
21AB72:  LDR.W           R5, [R2,#0x10]!
21AB76:  CMP             R5, R1
21AB78:  IT EQ
21AB7A:  ADDEQ           R2, #4
21AB7C:  LDR             R2, [R2]
21AB7E:  CMP             R2, #0
21AB80:  ITT NE
21AB82:  LDRNE           R5, [R2,#0x30]
21AB84:  CMPNE           R5, R3
21AB86:  BEQ             loc_21AB92
21AB88:  LDR             R2, [R2,#0x10]
21AB8A:  MOV             R12, LR
21AB8C:  CBZ             R2, loc_21AB92
21AB8E:  MOV             R0, R12
21AB90:  POP             {R4,R5,R7,PC}
21AB92:  CMP             R4, R0
21AB94:  BEQ             loc_21ABAE
21AB96:  MOV             R0, R4
21AB98:  LDR.W           R2, [R0,#0x10]!
21AB9C:  CMP             R2, R1
21AB9E:  IT EQ
21ABA0:  ADDEQ           R0, #4
21ABA2:  LDR             R0, [R0]
21ABA4:  CMP             R0, #0
21ABA6:  ITT NE
21ABA8:  LDRNE           R1, [R0,#0x30]
21ABAA:  CMPNE           R1, R3
21ABAC:  BNE             loc_21ABFE
21ABAE:  MOV.W           R12, #0
21ABB2:  MOV             R0, R12
21ABB4:  POP             {R4,R5,R7,PC}
21ABB6:  MOV             R4, LR
21ABB8:  LDR.W           R5, [R4,#0x10]!
21ABBC:  CMP             R5, R1
21ABBE:  IT EQ
21ABC0:  ADDEQ           R4, #4
21ABC2:  LDR             R4, [R4]
21ABC4:  CMP             R4, #0
21ABC6:  BEQ             loc_21AB3A
21ABC8:  LDR             R5, [R4,#0x30]
21ABCA:  CMP             R5, R3
21ABCC:  ITT NE
21ABCE:  LDRNE           R4, [R4,#0x10]
21ABD0:  CMPNE           R4, #0
21ABD2:  BEQ             loc_21AB3A
21ABD4:  MOV             R12, LR
21ABD6:  MOV             R0, R12
21ABD8:  POP             {R4,R5,R7,PC}
21ABDA:  MOV             R2, R4
21ABDC:  LDR.W           R5, [R2,#0x10]!
21ABE0:  CMP             R5, R1
21ABE2:  IT EQ
21ABE4:  ADDEQ           R2, #4
21ABE6:  LDR             R2, [R2]
21ABE8:  CMP             R2, #0
21ABEA:  BEQ             loc_21AB4C
21ABEC:  LDR             R5, [R2,#0x30]
21ABEE:  CMP             R5, R3
21ABF0:  ITT NE
21ABF2:  LDRNE           R2, [R2,#0x10]
21ABF4:  CMPNE           R2, #0
21ABF6:  BEQ             loc_21AB4C
21ABF8:  MOV             R12, R4
21ABFA:  MOV             R0, R12
21ABFC:  POP             {R4,R5,R7,PC}
21ABFE:  LDR             R0, [R0,#0x10]
21AC00:  MOV             R12, R4
21AC02:  CMP             R0, #0
21AC04:  IT EQ
21AC06:  MOVEQ.W         R12, #0
21AC0A:  MOV             R0, R12
21AC0C:  POP             {R4,R5,R7,PC}
