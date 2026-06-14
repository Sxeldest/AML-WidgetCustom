; =========================================================
; Game Engine Function: _Z22RwImageReadMaskedImagePKcS0_
; Address            : 0x1D9E5C - 0x1DA036
; =========================================================

1D9E5C:  PUSH            {R4,R5,R7,LR}
1D9E5E:  ADD             R7, SP, #8
1D9E60:  MOV             R5, R1
1D9E62:  BLX             j__Z11RwImageReadPKc; RwImageRead(char const*)
1D9E66:  MOV             R4, R0
1D9E68:  CMP             R4, #0
1D9E6A:  BEQ.W           loc_1DA030
1D9E6E:  CMP             R5, #0
1D9E70:  ITT NE
1D9E72:  LDRBNE          R0, [R5]
1D9E74:  CMPNE           R0, #0
1D9E76:  BEQ             loc_1D9EE0
1D9E78:  MOV             R0, R5; char *
1D9E7A:  BLX             j__Z11RwImageReadPKc; RwImageRead(char const*)
1D9E7E:  MOV             R5, R0
1D9E80:  CBZ             R5, loc_1D9EE4
1D9E82:  MOV             R0, R5
1D9E84:  BLX             j__Z15RwImageMakeMaskP7RwImage; RwImageMakeMask(RwImage *)
1D9E88:  CMP             R5, #0
1D9E8A:  BEQ             loc_1D9F26
1D9E8C:  MOV             R0, R4
1D9E8E:  MOV             R1, R5
1D9E90:  BLX             j__Z16RwImageApplyMaskP7RwImagePKS_; RwImageApplyMask(RwImage *,RwImage const*)
1D9E94:  CMP             R0, #0
1D9E96:  BEQ.W           loc_1D9FA4
1D9E9A:  LDRB            R0, [R5]
1D9E9C:  LSLS            R0, R0, #0x1F
1D9E9E:  BEQ             loc_1D9EBE
1D9EA0:  LDR             R0, =(RwEngineInstance_ptr - 0x1D9EA6)
1D9EA2:  ADD             R0, PC; RwEngineInstance_ptr
1D9EA4:  LDR             R0, [R0]; RwEngineInstance
1D9EA6:  LDR             R1, [R0]
1D9EA8:  LDR             R0, [R5,#0x14]
1D9EAA:  LDR.W           R1, [R1,#0x130]
1D9EAE:  BLX             R1
1D9EB0:  LDR             R0, [R5]
1D9EB2:  MOVS            R1, #0
1D9EB4:  STRD.W          R1, R1, [R5,#0x14]
1D9EB8:  BIC.W           R0, R0, #1
1D9EBC:  STR             R0, [R5]
1D9EBE:  LDR             R0, =(dword_682580 - 0x1D9EC6)
1D9EC0:  MOV             R1, R5
1D9EC2:  ADD             R0, PC; dword_682580
1D9EC4:  BLX             j__Z29_rwPluginRegistryDeInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryDeInitObject(RwPluginRegistry const*,void *)
1D9EC8:  LDR             R0, =(RwEngineInstance_ptr - 0x1D9ED0)
1D9ECA:  LDR             R1, =(dword_6BCF04 - 0x1D9ED2)
1D9ECC:  ADD             R0, PC; RwEngineInstance_ptr
1D9ECE:  ADD             R1, PC; dword_6BCF04
1D9ED0:  LDR             R0, [R0]; RwEngineInstance
1D9ED2:  LDR             R1, [R1]
1D9ED4:  LDR             R2, [R0]
1D9ED6:  LDR             R0, [R2,R1]
1D9ED8:  MOV             R1, R5
1D9EDA:  LDR.W           R2, [R2,#0x140]
1D9EDE:  BLX             R2
1D9EE0:  MOV             R0, R4
1D9EE2:  POP             {R4,R5,R7,PC}
1D9EE4:  LDRB            R0, [R4]
1D9EE6:  LSLS            R0, R0, #0x1F
1D9EE8:  BEQ             loc_1D9F08
1D9EEA:  LDR             R0, =(RwEngineInstance_ptr - 0x1D9EF0)
1D9EEC:  ADD             R0, PC; RwEngineInstance_ptr
1D9EEE:  LDR             R0, [R0]; RwEngineInstance
1D9EF0:  LDR             R1, [R0]
1D9EF2:  LDR             R0, [R4,#0x14]
1D9EF4:  LDR.W           R1, [R1,#0x130]
1D9EF8:  BLX             R1
1D9EFA:  LDR             R0, [R4]
1D9EFC:  MOVS            R1, #0
1D9EFE:  STRD.W          R1, R1, [R4,#0x14]
1D9F02:  BIC.W           R0, R0, #1
1D9F06:  STR             R0, [R4]
1D9F08:  LDR             R0, =(dword_682580 - 0x1D9F10)
1D9F0A:  MOV             R1, R4
1D9F0C:  ADD             R0, PC; dword_682580
1D9F0E:  BLX             j__Z29_rwPluginRegistryDeInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryDeInitObject(RwPluginRegistry const*,void *)
1D9F12:  LDR             R0, =(RwEngineInstance_ptr - 0x1D9F1A)
1D9F14:  LDR             R1, =(dword_6BCF04 - 0x1D9F1C)
1D9F16:  ADD             R0, PC; RwEngineInstance_ptr
1D9F18:  ADD             R1, PC; dword_6BCF04
1D9F1A:  LDR             R0, [R0]; RwEngineInstance
1D9F1C:  LDR             R1, [R1]
1D9F1E:  LDR             R2, [R0]
1D9F20:  LDR             R0, [R2,R1]
1D9F22:  MOV             R1, R4
1D9F24:  B               loc_1DA02A
1D9F26:  LDRB            R0, [R4]
1D9F28:  LSLS            R0, R0, #0x1F
1D9F2A:  BEQ             loc_1D9F4A
1D9F2C:  LDR             R0, =(RwEngineInstance_ptr - 0x1D9F32)
1D9F2E:  ADD             R0, PC; RwEngineInstance_ptr
1D9F30:  LDR             R0, [R0]; RwEngineInstance
1D9F32:  LDR             R1, [R0]
1D9F34:  LDR             R0, [R4,#0x14]
1D9F36:  LDR.W           R1, [R1,#0x130]
1D9F3A:  BLX             R1
1D9F3C:  LDR             R0, [R4]
1D9F3E:  MOVS            R1, #0
1D9F40:  STRD.W          R1, R1, [R4,#0x14]
1D9F44:  BIC.W           R0, R0, #1
1D9F48:  STR             R0, [R4]
1D9F4A:  LDR             R0, =(dword_682580 - 0x1D9F52)
1D9F4C:  MOV             R1, R4
1D9F4E:  ADD             R0, PC; dword_682580
1D9F50:  BLX             j__Z29_rwPluginRegistryDeInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryDeInitObject(RwPluginRegistry const*,void *)
1D9F54:  LDR             R0, =(RwEngineInstance_ptr - 0x1D9F5C)
1D9F56:  LDR             R1, =(dword_6BCF04 - 0x1D9F5E)
1D9F58:  ADD             R0, PC; RwEngineInstance_ptr
1D9F5A:  ADD             R1, PC; dword_6BCF04
1D9F5C:  LDR             R0, [R0]; RwEngineInstance
1D9F5E:  LDR             R1, [R1]
1D9F60:  LDR             R2, [R0]
1D9F62:  LDR             R0, [R2,R1]
1D9F64:  MOV             R1, R4
1D9F66:  LDR.W           R2, [R2,#0x140]
1D9F6A:  BLX             R2
1D9F6C:  LDRB            R0, [R5]
1D9F6E:  LSLS            R0, R0, #0x1F
1D9F70:  BEQ             loc_1D9F90
1D9F72:  LDR             R0, =(RwEngineInstance_ptr - 0x1D9F78)
1D9F74:  ADD             R0, PC; RwEngineInstance_ptr
1D9F76:  LDR             R0, [R0]; RwEngineInstance
1D9F78:  LDR             R1, [R0]
1D9F7A:  LDR             R0, [R5,#0x14]
1D9F7C:  LDR.W           R1, [R1,#0x130]
1D9F80:  BLX             R1
1D9F82:  LDR             R0, [R5]
1D9F84:  MOVS            R1, #0
1D9F86:  STRD.W          R1, R1, [R5,#0x14]
1D9F8A:  BIC.W           R0, R0, #1
1D9F8E:  STR             R0, [R5]
1D9F90:  LDR             R0, =(dword_682580 - 0x1D9F98)
1D9F92:  MOV             R1, R5
1D9F94:  ADD             R0, PC; dword_682580
1D9F96:  BLX             j__Z29_rwPluginRegistryDeInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryDeInitObject(RwPluginRegistry const*,void *)
1D9F9A:  LDR             R0, =(RwEngineInstance_ptr - 0x1D9FA2)
1D9F9C:  LDR             R1, =(dword_6BCF04 - 0x1D9FA4)
1D9F9E:  ADD             R0, PC; RwEngineInstance_ptr
1D9FA0:  ADD             R1, PC; dword_6BCF04
1D9FA2:  B               loc_1DA020
1D9FA4:  LDRB            R0, [R4]
1D9FA6:  LSLS            R0, R0, #0x1F
1D9FA8:  BEQ             loc_1D9FC8
1D9FAA:  LDR             R0, =(RwEngineInstance_ptr - 0x1D9FB0)
1D9FAC:  ADD             R0, PC; RwEngineInstance_ptr
1D9FAE:  LDR             R0, [R0]; RwEngineInstance
1D9FB0:  LDR             R1, [R0]
1D9FB2:  LDR             R0, [R4,#0x14]
1D9FB4:  LDR.W           R1, [R1,#0x130]
1D9FB8:  BLX             R1
1D9FBA:  LDR             R0, [R4]
1D9FBC:  MOVS            R1, #0
1D9FBE:  STRD.W          R1, R1, [R4,#0x14]
1D9FC2:  BIC.W           R0, R0, #1
1D9FC6:  STR             R0, [R4]
1D9FC8:  LDR             R0, =(dword_682580 - 0x1D9FD0)
1D9FCA:  MOV             R1, R4
1D9FCC:  ADD             R0, PC; dword_682580
1D9FCE:  BLX             j__Z29_rwPluginRegistryDeInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryDeInitObject(RwPluginRegistry const*,void *)
1D9FD2:  LDR             R0, =(RwEngineInstance_ptr - 0x1D9FDA)
1D9FD4:  LDR             R1, =(dword_6BCF04 - 0x1D9FDC)
1D9FD6:  ADD             R0, PC; RwEngineInstance_ptr
1D9FD8:  ADD             R1, PC; dword_6BCF04
1D9FDA:  LDR             R0, [R0]; RwEngineInstance
1D9FDC:  LDR             R1, [R1]
1D9FDE:  LDR             R2, [R0]
1D9FE0:  LDR             R0, [R2,R1]
1D9FE2:  MOV             R1, R4
1D9FE4:  LDR.W           R2, [R2,#0x140]
1D9FE8:  BLX             R2
1D9FEA:  LDRB            R0, [R5]
1D9FEC:  LSLS            R0, R0, #0x1F
1D9FEE:  BEQ             loc_1DA00E
1D9FF0:  LDR             R0, =(RwEngineInstance_ptr - 0x1D9FF6)
1D9FF2:  ADD             R0, PC; RwEngineInstance_ptr
1D9FF4:  LDR             R0, [R0]; RwEngineInstance
1D9FF6:  LDR             R1, [R0]
1D9FF8:  LDR             R0, [R5,#0x14]
1D9FFA:  LDR.W           R1, [R1,#0x130]
1D9FFE:  BLX             R1
1DA000:  LDR             R0, [R5]
1DA002:  MOVS            R1, #0
1DA004:  STRD.W          R1, R1, [R5,#0x14]
1DA008:  BIC.W           R0, R0, #1
1DA00C:  STR             R0, [R5]
1DA00E:  LDR             R0, =(dword_682580 - 0x1DA016)
1DA010:  MOV             R1, R5
1DA012:  ADD             R0, PC; dword_682580
1DA014:  BLX             j__Z29_rwPluginRegistryDeInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryDeInitObject(RwPluginRegistry const*,void *)
1DA018:  LDR             R0, =(RwEngineInstance_ptr - 0x1DA020)
1DA01A:  LDR             R1, =(dword_6BCF04 - 0x1DA022)
1DA01C:  ADD             R0, PC; RwEngineInstance_ptr
1DA01E:  ADD             R1, PC; dword_6BCF04
1DA020:  LDR             R0, [R0]; RwEngineInstance
1DA022:  LDR             R1, [R1]
1DA024:  LDR             R2, [R0]
1DA026:  LDR             R0, [R2,R1]
1DA028:  MOV             R1, R5
1DA02A:  LDR.W           R2, [R2,#0x140]
1DA02E:  BLX             R2
1DA030:  MOVS            R4, #0
1DA032:  MOV             R0, R4
1DA034:  POP             {R4,R5,R7,PC}
