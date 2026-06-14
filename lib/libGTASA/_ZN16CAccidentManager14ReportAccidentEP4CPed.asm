; =========================================================
; Game Engine Function: _ZN16CAccidentManager14ReportAccidentEP4CPed
; Address            : 0x3BEF52 - 0x3BF0B8
; =========================================================

3BEF52:  PUSH            {R4,R6,R7,LR}
3BEF54:  ADD             R7, SP, #8
3BEF56:  LDRB.W          R2, [R1,#0x448]
3BEF5A:  CMP             R2, #2
3BEF5C:  BEQ.W           locret_3BF0B6
3BEF60:  LDR.W           R2, [R1,#0x484]
3BEF64:  CMP.W           R2, #0xFFFFFFFF
3BEF68:  BGT.W           locret_3BF0B6
3BEF6C:  LDR             R3, [R0]
3BEF6E:  CMP             R3, R1
3BEF70:  ITT NE
3BEF72:  LDRNE           R2, [R0,#8]
3BEF74:  CMPNE           R2, R1
3BEF76:  BEQ.W           locret_3BF0B6
3BEF7A:  CMP             R3, #0
3BEF7C:  MOV             R4, R3
3BEF7E:  IT NE
3BEF80:  MOVNE.W         R4, #0xFFFFFFFF
3BEF84:  LDR.W           LR, [R0,#0x10]
3BEF88:  CMP             R2, #0
3BEF8A:  MOV             R12, R4
3BEF8C:  IT EQ
3BEF8E:  MOVEQ.W         R12, #1
3BEF92:  CMP             R3, #0
3BEF94:  IT EQ
3BEF96:  MOVEQ           R12, R4
3BEF98:  CMP             LR, R1
3BEF9A:  BEQ.W           locret_3BF0B6
3BEF9E:  ORN.W           R3, LR, R12
3BEFA2:  LDR             R2, [R0,#0x18]
3BEFA4:  CMP             R3, #0
3BEFA6:  IT EQ
3BEFA8:  MOVEQ.W         R12, #2
3BEFAC:  CMP             R2, R1
3BEFAE:  BEQ.W           locret_3BF0B6
3BEFB2:  ORN.W           R3, R2, R12
3BEFB6:  LDR             R2, [R0,#0x20]
3BEFB8:  CMP             R3, #0
3BEFBA:  IT EQ
3BEFBC:  MOVEQ.W         R12, #3
3BEFC0:  CMP             R2, R1
3BEFC2:  BEQ             locret_3BF0B6
3BEFC4:  ORN.W           R3, R2, R12
3BEFC8:  LDR             R2, [R0,#0x28]
3BEFCA:  CMP             R3, #0
3BEFCC:  IT EQ
3BEFCE:  MOVEQ.W         R12, #4
3BEFD2:  CMP             R2, R1
3BEFD4:  BEQ             locret_3BF0B6
3BEFD6:  ORN.W           R3, R2, R12
3BEFDA:  LDR             R2, [R0,#0x30]
3BEFDC:  CMP             R3, #0
3BEFDE:  IT EQ
3BEFE0:  MOVEQ.W         R12, #5
3BEFE4:  CMP             R2, R1
3BEFE6:  BEQ             locret_3BF0B6
3BEFE8:  ORN.W           R3, R2, R12
3BEFEC:  LDR             R2, [R0,#0x38]
3BEFEE:  CMP             R3, #0
3BEFF0:  IT EQ
3BEFF2:  MOVEQ.W         R12, #6
3BEFF6:  CMP             R2, R1
3BEFF8:  BEQ             locret_3BF0B6
3BEFFA:  ORN.W           R3, R2, R12
3BEFFE:  LDR             R2, [R0,#0x40]
3BF000:  CMP             R3, #0
3BF002:  IT EQ
3BF004:  MOVEQ.W         R12, #7
3BF008:  CMP             R2, R1
3BF00A:  BEQ             locret_3BF0B6
3BF00C:  ORN.W           R3, R2, R12
3BF010:  LDR             R2, [R0,#0x48]
3BF012:  CMP             R3, #0
3BF014:  IT EQ
3BF016:  MOVEQ.W         R12, #8
3BF01A:  CMP             R2, R1
3BF01C:  BEQ             locret_3BF0B6
3BF01E:  ORN.W           R3, R2, R12
3BF022:  LDR             R2, [R0,#0x50]
3BF024:  CMP             R3, #0
3BF026:  IT EQ
3BF028:  MOVEQ.W         R12, #9
3BF02C:  CMP             R2, R1
3BF02E:  BEQ             locret_3BF0B6
3BF030:  ORN.W           R3, R2, R12
3BF034:  LDR             R2, [R0,#0x58]
3BF036:  CMP             R3, #0
3BF038:  IT EQ
3BF03A:  MOVEQ.W         R12, #0xA
3BF03E:  CMP             R2, R1
3BF040:  BEQ             locret_3BF0B6
3BF042:  ORN.W           R3, R2, R12
3BF046:  LDR             R2, [R0,#0x60]
3BF048:  CMP             R3, #0
3BF04A:  IT EQ
3BF04C:  MOVEQ.W         R12, #0xB
3BF050:  CMP             R2, R1
3BF052:  BEQ             locret_3BF0B6
3BF054:  ORN.W           R3, R2, R12
3BF058:  LDR             R2, [R0,#0x68]
3BF05A:  CMP             R3, #0
3BF05C:  IT EQ
3BF05E:  MOVEQ.W         R12, #0xC
3BF062:  CMP             R2, R1
3BF064:  BEQ             locret_3BF0B6
3BF066:  ORN.W           R3, R2, R12
3BF06A:  LDR             R2, [R0,#0x70]
3BF06C:  CMP             R3, #0
3BF06E:  IT EQ
3BF070:  MOVEQ.W         R12, #0xD
3BF074:  CMP             R2, R1
3BF076:  BEQ             locret_3BF0B6
3BF078:  ORN.W           R3, R2, R12
3BF07C:  LDR             R2, [R0,#0x78]
3BF07E:  CMP             R3, #0
3BF080:  IT EQ
3BF082:  MOVEQ.W         R12, #0xE
3BF086:  CMP             R2, R1
3BF088:  IT EQ
3BF08A:  POPEQ           {R4,R6,R7,PC}
3BF08C:  ORN.W           R2, R2, R12
3BF090:  CMP             R2, #0
3BF092:  IT EQ
3BF094:  MOVEQ.W         R12, #0xF
3BF098:  ADDS.W          R2, R12, #1
3BF09C:  BEQ             locret_3BF0B6
3BF09E:  ADD.W           R2, R0, R12,LSL#3
3BF0A2:  STR.W           R1, [R0,R12,LSL#3]
3BF0A6:  MOVS            R0, #0
3BF0A8:  STRH            R0, [R2,#4]
3BF0AA:  MOV             R0, R1; this
3BF0AC:  MOV             R1, R2; CEntity **
3BF0AE:  POP.W           {R4,R6,R7,LR}
3BF0B2:  B.W             j_j__ZN7CEntity17RegisterReferenceEPPS_; j_CEntity::RegisterReference(CEntity**)
3BF0B6:  POP             {R4,R6,R7,PC}
