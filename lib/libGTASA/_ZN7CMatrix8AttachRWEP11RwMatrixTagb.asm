; =========================================================
; Game Engine Function: _ZN7CMatrix8AttachRWEP11RwMatrixTagb
; Address            : 0x44ECFC - 0x44ED64
; =========================================================

44ECFC:  PUSH            {R4-R7,LR}
44ECFE:  ADD             R7, SP, #0xC
44ED00:  PUSH.W          {R11}
44ED04:  MOV             R5, R0
44ED06:  MOV             R6, R2
44ED08:  LDR             R0, [R5,#0x40]
44ED0A:  MOV             R4, R1
44ED0C:  CBZ             R0, loc_44ED18
44ED0E:  LDR             R1, [R5,#0x44]
44ED10:  CMP             R1, #0
44ED12:  IT NE
44ED14:  BLXNE           j__Z15RwMatrixDestroyP11RwMatrixTag; RwMatrixDestroy(RwMatrixTag *)
44ED18:  CMP             R4, #0
44ED1A:  STRD.W          R4, R6, [R5,#0x40]
44ED1E:  BEQ             loc_44ED5E
44ED20:  LDR             R0, [R5]
44ED22:  STR             R0, [R4]
44ED24:  LDR             R0, [R5,#4]
44ED26:  STR             R0, [R4,#4]
44ED28:  LDR             R0, [R5,#8]
44ED2A:  STR             R0, [R4,#8]
44ED2C:  LDR             R0, [R5,#0x10]
44ED2E:  STR             R0, [R4,#0x10]
44ED30:  LDR             R0, [R5,#0x14]
44ED32:  STR             R0, [R4,#0x14]
44ED34:  LDR             R0, [R5,#0x18]
44ED36:  STR             R0, [R4,#0x18]
44ED38:  LDR             R0, [R5,#0x20]
44ED3A:  STR             R0, [R4,#0x20]
44ED3C:  LDR             R0, [R5,#0x24]
44ED3E:  STR             R0, [R4,#0x24]
44ED40:  LDR             R0, [R5,#0x28]
44ED42:  STR             R0, [R4,#0x28]
44ED44:  LDR             R0, [R5,#0x30]
44ED46:  STR             R0, [R4,#0x30]
44ED48:  LDR             R0, [R5,#0x34]
44ED4A:  STR             R0, [R4,#0x34]
44ED4C:  LDR             R0, [R5,#0x38]
44ED4E:  STR             R0, [R4,#0x38]
44ED50:  MOV             R0, R4
44ED52:  POP.W           {R11}
44ED56:  POP.W           {R4-R7,LR}
44ED5A:  B.W             j_j__Z14RwMatrixUpdateP11RwMatrixTag; j_RwMatrixUpdate(RwMatrixTag *)
44ED5E:  POP.W           {R11}
44ED62:  POP             {R4-R7,PC}
