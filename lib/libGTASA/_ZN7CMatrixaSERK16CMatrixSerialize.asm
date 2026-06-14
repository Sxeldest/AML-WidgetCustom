; =========================================================
; Game Engine Function: _ZN7CMatrixaSERK16CMatrixSerialize
; Address            : 0x44EB76 - 0x44EBEC
; =========================================================

44EB76:  PUSH            {R4,R6,R7,LR}
44EB78:  ADD             R7, SP, #8
44EB7A:  MOV             R4, R0
44EB7C:  MOV             R0, R1
44EB7E:  VLD1.32         {D16-D17}, [R0]!
44EB82:  VLD1.32         {D18-D19}, [R0]
44EB86:  ADD.W           R0, R1, #0x20 ; ' '
44EB8A:  ADDS            R1, #0x30 ; '0'
44EB8C:  VLD1.32         {D22-D23}, [R1]
44EB90:  ADD.W           R1, R4, #0x30 ; '0'
44EB94:  VLD1.32         {D20-D21}, [R0]
44EB98:  LDR             R0, [R4,#0x40]
44EB9A:  VST1.32         {D22-D23}, [R1]
44EB9E:  ADD.W           R1, R4, #0x20 ; ' '
44EBA2:  CMP             R0, #0
44EBA4:  VST1.32         {D20-D21}, [R1]
44EBA8:  MOV             R1, R4
44EBAA:  VST1.32         {D16-D17}, [R1]!
44EBAE:  VST1.32         {D18-D19}, [R1]
44EBB2:  BEQ             loc_44EBE8
44EBB4:  LDR             R1, [R4]
44EBB6:  STR             R1, [R0]
44EBB8:  LDR             R1, [R4,#4]
44EBBA:  STR             R1, [R0,#4]
44EBBC:  LDR             R1, [R4,#8]
44EBBE:  STR             R1, [R0,#8]
44EBC0:  LDR             R1, [R4,#0x10]
44EBC2:  STR             R1, [R0,#0x10]
44EBC4:  LDR             R1, [R4,#0x14]
44EBC6:  STR             R1, [R0,#0x14]
44EBC8:  LDR             R1, [R4,#0x18]
44EBCA:  STR             R1, [R0,#0x18]
44EBCC:  LDR             R1, [R4,#0x20]
44EBCE:  STR             R1, [R0,#0x20]
44EBD0:  LDR             R1, [R4,#0x24]
44EBD2:  STR             R1, [R0,#0x24]
44EBD4:  LDR             R1, [R4,#0x28]
44EBD6:  STR             R1, [R0,#0x28]
44EBD8:  LDR             R1, [R4,#0x30]
44EBDA:  STR             R1, [R0,#0x30]
44EBDC:  LDR             R1, [R4,#0x34]
44EBDE:  STR             R1, [R0,#0x34]
44EBE0:  LDR             R1, [R4,#0x38]
44EBE2:  STR             R1, [R0,#0x38]
44EBE4:  BLX             j__Z14RwMatrixUpdateP11RwMatrixTag; RwMatrixUpdate(RwMatrixTag *)
44EBE8:  MOV             R0, R4
44EBEA:  POP             {R4,R6,R7,PC}
