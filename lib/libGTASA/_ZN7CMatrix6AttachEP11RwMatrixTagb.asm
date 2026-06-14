; =========================================================
; Game Engine Function: _ZN7CMatrix6AttachEP11RwMatrixTagb
; Address            : 0x44EC5A - 0x44ECB0
; =========================================================

44EC5A:  PUSH            {R4-R7,LR}
44EC5C:  ADD             R7, SP, #0xC
44EC5E:  PUSH.W          {R11}
44EC62:  MOV             R4, R0
44EC64:  MOV             R6, R2
44EC66:  LDR             R0, [R4,#0x40]
44EC68:  MOV             R5, R1
44EC6A:  CBZ             R0, loc_44EC76
44EC6C:  LDR             R1, [R4,#0x44]
44EC6E:  CMP             R1, #0
44EC70:  IT NE
44EC72:  BLXNE           j__Z15RwMatrixDestroyP11RwMatrixTag; RwMatrixDestroy(RwMatrixTag *)
44EC76:  STRD.W          R5, R6, [R4,#0x40]
44EC7A:  LDR             R0, [R5]
44EC7C:  STR             R0, [R4]
44EC7E:  LDR             R0, [R5,#4]
44EC80:  STR             R0, [R4,#4]
44EC82:  LDR             R0, [R5,#8]
44EC84:  STR             R0, [R4,#8]
44EC86:  LDR             R0, [R5,#0x10]
44EC88:  STR             R0, [R4,#0x10]
44EC8A:  LDR             R0, [R5,#0x14]
44EC8C:  STR             R0, [R4,#0x14]
44EC8E:  LDR             R0, [R5,#0x18]
44EC90:  STR             R0, [R4,#0x18]
44EC92:  LDR             R0, [R5,#0x20]
44EC94:  STR             R0, [R4,#0x20]
44EC96:  LDR             R0, [R5,#0x24]
44EC98:  STR             R0, [R4,#0x24]
44EC9A:  LDR             R0, [R5,#0x28]
44EC9C:  STR             R0, [R4,#0x28]
44EC9E:  LDR             R0, [R5,#0x30]
44ECA0:  STR             R0, [R4,#0x30]
44ECA2:  LDR             R0, [R5,#0x34]
44ECA4:  STR             R0, [R4,#0x34]
44ECA6:  LDR             R0, [R5,#0x38]
44ECA8:  STR             R0, [R4,#0x38]
44ECAA:  POP.W           {R11}
44ECAE:  POP             {R4-R7,PC}
