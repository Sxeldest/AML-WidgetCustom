; =========================================================
; Game Engine Function: _ZNK7CMatrix8UpdateRWEv
; Address            : 0x44ED64 - 0x44EDA2
; =========================================================

44ED64:  MOV             R1, R0
44ED66:  LDR             R0, [R1,#0x40]
44ED68:  CMP             R0, #0
44ED6A:  IT EQ
44ED6C:  BXEQ            LR
44ED6E:  LDR             R2, [R1]
44ED70:  STR             R2, [R0]
44ED72:  LDR             R2, [R1,#4]
44ED74:  STR             R2, [R0,#4]
44ED76:  LDR             R2, [R1,#8]
44ED78:  STR             R2, [R0,#8]
44ED7A:  LDR             R2, [R1,#0x10]
44ED7C:  STR             R2, [R0,#0x10]
44ED7E:  LDR             R2, [R1,#0x14]
44ED80:  STR             R2, [R0,#0x14]
44ED82:  LDR             R2, [R1,#0x18]
44ED84:  STR             R2, [R0,#0x18]
44ED86:  LDR             R2, [R1,#0x20]
44ED88:  STR             R2, [R0,#0x20]
44ED8A:  LDR             R2, [R1,#0x24]
44ED8C:  STR             R2, [R0,#0x24]
44ED8E:  LDR             R2, [R1,#0x28]
44ED90:  STR             R2, [R0,#0x28]
44ED92:  LDR             R2, [R1,#0x30]
44ED94:  STR             R2, [R0,#0x30]
44ED96:  LDR             R2, [R1,#0x34]
44ED98:  STR             R2, [R0,#0x34]
44ED9A:  LDR             R1, [R1,#0x38]
44ED9C:  STR             R1, [R0,#0x38]
44ED9E:  B.W             j_j__Z14RwMatrixUpdateP11RwMatrixTag; j_RwMatrixUpdate(RwMatrixTag *)
