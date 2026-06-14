; =========================================================
; Game Engine Function: _ZN8CAESoundC2ERS_
; Address            : 0x3A7964 - 0x3A7A1C
; =========================================================

3A7964:  PUSH            {R4,R6,R7,LR}
3A7966:  ADD             R7, SP, #8
3A7968:  MOV             R4, R0
3A796A:  LDRH            R0, [R1]
3A796C:  STRH            R0, [R4]
3A796E:  MOVS            R3, #0
3A7970:  LDRH            R0, [R1,#2]
3A7972:  MOV             R2, R4
3A7974:  STRH            R0, [R4,#2]
3A7976:  LDR             R0, [R1,#4]
3A7978:  STR             R0, [R4,#4]
3A797A:  LDR             R0, [R1,#0xC]
3A797C:  STR             R0, [R4,#0xC]
3A797E:  LDR             R0, [R1,#0x10]
3A7980:  STR             R0, [R4,#0x10]
3A7982:  LDR             R0, [R1,#0x14]
3A7984:  STR             R0, [R4,#0x14]
3A7986:  LDR             R0, [R1,#0x18]
3A7988:  STR             R0, [R4,#0x18]
3A798A:  LDR             R0, [R1,#0x1C]
3A798C:  STR             R0, [R4,#0x1C]
3A798E:  LDR             R0, [R1,#0x20]
3A7990:  STR             R0, [R4,#0x20]
3A7992:  VLDR            D16, [R1,#0x24]
3A7996:  LDR             R0, [R1,#0x2C]
3A7998:  STR             R0, [R4,#0x2C]
3A799A:  VSTR            D16, [R4,#0x24]
3A799E:  VLDR            D16, [R1,#0x30]
3A79A2:  LDR             R0, [R1,#0x38]
3A79A4:  STR             R0, [R4,#0x38]
3A79A6:  VSTR            D16, [R4,#0x30]
3A79AA:  LDR             R0, [R1,#0x3C]
3A79AC:  STR             R0, [R4,#0x3C]
3A79AE:  LDR             R0, [R1,#0x40]
3A79B0:  STR             R0, [R4,#0x40]
3A79B2:  LDR             R0, [R1,#0x44]
3A79B4:  STR             R0, [R4,#0x44]
3A79B6:  LDR             R0, [R1,#0x48]
3A79B8:  STR             R0, [R4,#0x48]
3A79BA:  LDR             R0, [R1,#0x4C]
3A79BC:  STR             R0, [R4,#0x4C]
3A79BE:  LDR             R0, [R1,#0x50]
3A79C0:  STR             R0, [R4,#0x50]
3A79C2:  LDRB.W          R0, [R1,#0x54]
3A79C6:  STRB.W          R0, [R4,#0x54]
3A79CA:  LDRH.W          R0, [R1,#0x56]
3A79CE:  STRH.W          R0, [R4,#0x56]
3A79D2:  LDRH.W          R0, [R1,#0x58]
3A79D6:  STRH.W          R0, [R4,#0x58]
3A79DA:  LDRH.W          R0, [R1,#0x5C]
3A79DE:  STRH.W          R0, [R4,#0x5C]
3A79E2:  LDRH.W          R0, [R1,#0x5E]
3A79E6:  STRH.W          R0, [R4,#0x5E]
3A79EA:  LDR             R0, [R1,#0x60]
3A79EC:  STR             R0, [R4,#0x60]
3A79EE:  LDR             R0, [R1,#0x64]
3A79F0:  STR             R0, [R4,#0x64]
3A79F2:  LDRH.W          R0, [R1,#0x68]
3A79F6:  STRH.W          R0, [R4,#0x68]
3A79FA:  LDR             R0, [R1,#0x6C]
3A79FC:  STR             R0, [R4,#0x6C]
3A79FE:  LDRH.W          R0, [R1,#0x70]
3A7A02:  STR.W           R3, [R2,#8]!
3A7A06:  STRH.W          R0, [R2,#0x68]
3A7A0A:  LDR             R0, [R1,#8]
3A7A0C:  CBZ             R0, loc_3A7A18
3A7A0E:  STR             R0, [R2]
3A7A10:  LDR             R0, [R1,#8]; this
3A7A12:  MOV             R1, R2; CEntity **
3A7A14:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3A7A18:  MOV             R0, R4
3A7A1A:  POP             {R4,R6,R7,PC}
