; =========================================================
; Game Engine Function: _ZN15InteriorGroup_c19GetNumInteriorInfosEi
; Address            : 0x449C48 - 0x449C98
; =========================================================

449C48:  PUSH            {R4,R5,R7,LR}
449C4A:  ADD             R7, SP, #8
449C4C:  MOV.W           R12, #0
449C50:  MOVS            R2, #0
449C52:  ADD.W           R3, R0, R12,LSL#2
449C56:  LDR             R3, [R3,#0x10]
449C58:  CBZ             R3, loc_449C8A
449C5A:  LDRSB.W         LR, [R3,#0x40D]
449C5E:  CMP.W           LR, #1
449C62:  BLT             loc_449C8A
449C64:  LDRSB.W         R4, [R3,#0x590]
449C68:  CMP             R4, R1
449C6A:  IT EQ
449C6C:  ADDEQ           R2, #1
449C6E:  CMP.W           LR, #1
449C72:  BEQ             loc_449C8A
449C74:  ADD.W           R3, R3, #0x5B0
449C78:  MOVS            R4, #1
449C7A:  LDRSB.W         R5, [R3],#0x20
449C7E:  ADDS            R4, #1
449C80:  CMP             R5, R1
449C82:  IT EQ
449C84:  ADDEQ           R2, #1
449C86:  CMP             R4, LR
449C88:  BLT             loc_449C7A
449C8A:  ADD.W           R12, R12, #1
449C8E:  CMP.W           R12, #8
449C92:  BNE             loc_449C52
449C94:  MOV             R0, R2
449C96:  POP             {R4,R5,R7,PC}
