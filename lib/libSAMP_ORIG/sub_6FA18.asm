; =========================================================
; Game Engine Function: sub_6FA18
; Address            : 0x6FA18 - 0x6FE4C
; =========================================================

6FA18:  PUSH            {R4-R7,LR}
6FA1A:  ADD             R7, SP, #0xC
6FA1C:  PUSH.W          {R8-R11}
6FA20:  SUB             SP, SP, #4
6FA22:  MOV             R5, R1
6FA24:  MOV             R11, R0
6FA26:  LDR             R1, [R1,#0xC]
6FA28:  MOV             R8, R2
6FA2A:  LDR             R0, [R5,#0x10]
6FA2C:  CMP             R0, R1
6FA2E:  BCS             loc_6FA36
6FA30:  ADDS            R0, #1
6FA32:  STR             R0, [R5,#0x10]
6FA34:  B               loc_6FA72
6FA36:  LDRB            R0, [R5,#0x1C]
6FA38:  CBNZ            R0, loc_6FA72
6FA3A:  LDRD.W          R1, R6, [R5,#0x14]
6FA3E:  MOVS            R4, #1
6FA40:  LDRD.W          R3, R0, [R5]; stream
6FA44:  LDR             R2, [R5,#8]; n
6FA46:  ADD             R1, R6
6FA48:  STR             R1, [R5,#0x18]
6FA4A:  MOVS            R1, #1; size
6FA4C:  BLX             fread
6FA50:  LDRD.W          R2, R3, [R5,#4]
6FA54:  CMP             R0, R3
6FA56:  STR             R0, [R5,#0x14]
6FA58:  ADD.W           R1, R2, R0
6FA5C:  SUB.W           R6, R1, #1
6FA60:  STRD.W          R6, R2, [R5,#0xC]
6FA64:  BCS             loc_6FA72
6FA66:  MOVS            R0, #0
6FA68:  STRB            R0, [R1]
6FA6A:  LDR             R0, [R5,#0xC]
6FA6C:  STRB            R4, [R5,#0x1C]
6FA6E:  ADDS            R0, #1
6FA70:  STR             R0, [R5,#0xC]
6FA72:  LDRD.W          R0, R1, [R8,#0x24]
6FA76:  SUBS            R1, R1, R0
6FA78:  CMP             R1, #0xF
6FA7A:  BLE             loc_6FB6E
6FA7C:  ADD.W           R1, R0, #0x10
6FA80:  STR.W           R1, [R8,#0x24]
6FA84:  VMOV.I32        Q8, #0
6FA88:  MOVS            R1, #0xE
6FA8A:  MOVW            R9, #0x13
6FA8E:  VST1.64         {D16-D17}, [R0],R1
6FA92:  MOVS            R1, #3
6FA94:  MOVS            R4, #1
6FA96:  MOVT            R9, #0x80
6FA9A:  MOV.W           R10, #0
6FA9E:  STRH            R1, [R0]
6FAA0:  B               loc_6FAA6
6FAA2:  ADDS            R0, #1
6FAA4:  STR             R0, [R5,#0x10]
6FAA6:  LDR             R0, [R5,#0x10]
6FAA8:  LDRB            R1, [R0]
6FAAA:  SUB.W           R2, R1, #9
6FAAE:  CMP             R2, #0x17
6FAB0:  BHI             loc_6FB00
6FAB2:  LSL.W           R2, R4, R2
6FAB6:  TST.W           R2, R9
6FABA:  BEQ             loc_6FB00
6FABC:  LDR             R1, [R5,#0xC]
6FABE:  CMP             R0, R1
6FAC0:  BCC             loc_6FAA2
6FAC2:  LDRB            R0, [R5,#0x1C]
6FAC4:  CMP             R0, #0
6FAC6:  BNE             loc_6FAA6
6FAC8:  LDRD.W          R1, R6, [R5,#0x14]
6FACC:  LDRD.W          R3, R0, [R5]; stream
6FAD0:  LDR             R2, [R5,#8]; n
6FAD2:  ADD             R1, R6
6FAD4:  STR             R1, [R5,#0x18]
6FAD6:  MOVS            R1, #1; size
6FAD8:  BLX             fread
6FADC:  LDRD.W          R2, R3, [R5,#4]
6FAE0:  CMP             R0, R3
6FAE2:  STR             R0, [R5,#0x14]
6FAE4:  ADD.W           R1, R2, R0
6FAE8:  SUB.W           R6, R1, #1
6FAEC:  STRD.W          R6, R2, [R5,#0xC]
6FAF0:  BCS             loc_6FAA6
6FAF2:  STRB.W          R10, [R1]
6FAF6:  LDR             R0, [R5,#0xC]
6FAF8:  STRB            R4, [R5,#0x1C]
6FAFA:  ADDS            R0, #1
6FAFC:  STR             R0, [R5,#0xC]
6FAFE:  B               loc_6FAA6
6FB00:  LDR.W           R2, [R11,#0x18]
6FB04:  CBNZ            R2, loc_6FB66
6FB06:  CMP             R1, #0x7D ; '}'
6FB08:  BNE             loc_6FB7E
6FB0A:  LDR             R1, [R5,#0xC]
6FB0C:  CMP             R0, R1
6FB0E:  BCS             loc_6FB16
6FB10:  ADDS            R0, #1
6FB12:  STR             R0, [R5,#0x10]
6FB14:  B               loc_6FB52
6FB16:  LDRB            R0, [R5,#0x1C]
6FB18:  CBNZ            R0, loc_6FB52
6FB1A:  LDRD.W          R1, R6, [R5,#0x14]
6FB1E:  MOVS            R4, #1
6FB20:  LDRD.W          R3, R0, [R5]; stream
6FB24:  LDR             R2, [R5,#8]; n
6FB26:  ADD             R1, R6
6FB28:  STR             R1, [R5,#0x18]
6FB2A:  MOVS            R1, #1; size
6FB2C:  BLX             fread
6FB30:  LDRD.W          R2, R3, [R5,#4]
6FB34:  CMP             R0, R3
6FB36:  STR             R0, [R5,#0x14]
6FB38:  ADD.W           R1, R2, R0
6FB3C:  SUB.W           R6, R1, #1
6FB40:  STRD.W          R6, R2, [R5,#0xC]
6FB44:  BCS             loc_6FB52
6FB46:  MOVS            R0, #0
6FB48:  STRB            R0, [R1]
6FB4A:  LDR             R0, [R5,#0xC]
6FB4C:  STRB            R4, [R5,#0x1C]
6FB4E:  ADDS            R0, #1
6FB50:  STR             R0, [R5,#0xC]
6FB52:  LDR.W           R0, [R8,#0x24]
6FB56:  MOVS            R1, #0
6FB58:  MOVS            R2, #3
6FB5A:  STRH.W          R2, [R0,#-2]
6FB5E:  STRD.W          R1, R1, [R0,#-0x10]
6FB62:  STR.W           R1, [R0,#-8]
6FB66:  ADD             SP, SP, #4
6FB68:  POP.W           {R8-R11}
6FB6C:  POP             {R4-R7,PC}
6FB6E:  ADD.W           R0, R8, #0x18
6FB72:  MOVS            R1, #1
6FB74:  BL              sub_70EA2
6FB78:  LDR.W           R0, [R8,#0x24]
6FB7C:  B               loc_6FA7C
6FB7E:  MOV             R10, R11
6FB80:  CMP             R1, #0x22 ; '"'
6FB82:  BNE.W           loc_6FE48
6FB86:  MOV.W           R11, #1
6FB8A:  MOVS            R0, #0
6FB8C:  STR             R0, [SP,#0x20+var_20]
6FB8E:  MOV             R0, R10
6FB90:  MOV             R1, R5
6FB92:  MOV             R2, R8
6FB94:  MOVS            R3, #1
6FB96:  MOV             R4, R10
6FB98:  BL              sub_6F598
6FB9C:  LDR.W           R0, [R10,#0x18]
6FBA0:  MOVS            R4, #0
6FBA2:  CBZ             R0, loc_6FBAA
6FBA4:  B               loc_6FB66
6FBA6:  ADDS            R0, #1
6FBA8:  STR             R0, [R5,#0x10]
6FBAA:  LDR             R0, [R5,#0x10]
6FBAC:  LDRB            R1, [R0]
6FBAE:  SUB.W           R2, R1, #9
6FBB2:  CMP             R2, #0x17
6FBB4:  BHI             loc_6FC04
6FBB6:  LSL.W           R2, R11, R2
6FBBA:  TST.W           R2, R9
6FBBE:  BEQ             loc_6FC04
6FBC0:  LDR             R1, [R5,#0xC]
6FBC2:  CMP             R0, R1
6FBC4:  BCC             loc_6FBA6
6FBC6:  LDRB            R0, [R5,#0x1C]
6FBC8:  CMP             R0, #0
6FBCA:  BNE             loc_6FBAA
6FBCC:  LDRD.W          R1, R6, [R5,#0x14]
6FBD0:  LDRD.W          R3, R0, [R5]; stream
6FBD4:  LDR             R2, [R5,#8]; n
6FBD6:  ADD             R1, R6
6FBD8:  STR             R1, [R5,#0x18]
6FBDA:  MOVS            R1, #1; size
6FBDC:  BLX             fread
6FBE0:  LDRD.W          R2, R3, [R5,#4]
6FBE4:  CMP             R0, R3
6FBE6:  STR             R0, [R5,#0x14]
6FBE8:  ADD.W           R1, R2, R0
6FBEC:  SUB.W           R6, R1, #1
6FBF0:  STRD.W          R6, R2, [R5,#0xC]
6FBF4:  BCS             loc_6FBAA
6FBF6:  STRB            R4, [R1]
6FBF8:  LDR             R0, [R5,#0xC]
6FBFA:  STRB.W          R11, [R5,#0x1C]
6FBFE:  ADDS            R0, #1
6FC00:  STR             R0, [R5,#0xC]
6FC02:  B               loc_6FBAA
6FC04:  LDR.W           R2, [R10,#0x18]
6FC08:  CMP             R2, #0
6FC0A:  BNE             loc_6FB66
6FC0C:  CMP             R1, #0x3A ; ':'
6FC0E:  BNE.W           loc_6FE44
6FC12:  LDR             R1, [R5,#0xC]
6FC14:  CMP             R0, R1
6FC16:  BCS             loc_6FC1E
6FC18:  ADDS            R0, #1
6FC1A:  STR             R0, [R5,#0x10]
6FC1C:  B               loc_6FC64
6FC1E:  LDRB            R0, [R5,#0x1C]
6FC20:  CBNZ            R0, loc_6FC64
6FC22:  B               loc_6FC32
6FC24:  LDR.W           R1, [R10,#0x18]
6FC28:  CMP             R1, #0
6FC2A:  BNE             loc_6FB66
6FC2C:  CMP             R3, #0x22 ; '"'
6FC2E:  BEQ             loc_6FB8E
6FC30:  B               loc_6FE48
6FC32:  LDR             R1, [R5,#0x14]
6FC34:  LDR             R6, [R5,#0x18]
6FC36:  LDR             R3, [R5]; stream
6FC38:  LDR             R0, [R5,#4]; ptr
6FC3A:  ADD             R1, R6
6FC3C:  LDR             R2, [R5,#8]; n
6FC3E:  STR             R1, [R5,#0x18]
6FC40:  MOVS            R1, #1; size
6FC42:  BLX             fread
6FC46:  LDR             R3, [R5,#4]
6FC48:  LDR             R6, [R5,#8]
6FC4A:  ADDS            R2, R3, R0
6FC4C:  STR             R3, [R5,#0x10]
6FC4E:  SUBS            R1, R2, #1
6FC50:  CMP             R0, R6
6FC52:  STR             R1, [R5,#0xC]
6FC54:  STR             R0, [R5,#0x14]
6FC56:  BCS             loc_6FC64
6FC58:  STRB            R4, [R2]
6FC5A:  LDR             R0, [R5,#0xC]
6FC5C:  STRB.W          R11, [R5,#0x1C]
6FC60:  ADDS            R1, R0, #1
6FC62:  STR             R1, [R5,#0xC]
6FC64:  LDRB            R0, [R5,#0x1C]
6FC66:  B               loc_6FC6C
6FC68:  ADDS            R2, #1
6FC6A:  STR             R2, [R5,#0x10]
6FC6C:  LDR             R2, [R5,#0x10]
6FC6E:  LDRB            R3, [R2]
6FC70:  SUBS            R3, #9
6FC72:  CMP             R3, #0x17
6FC74:  BHI             loc_6FC8A
6FC76:  LSL.W           R3, R11, R3
6FC7A:  TST.W           R3, R9
6FC7E:  BEQ             loc_6FC8A
6FC80:  CMP             R2, R1
6FC82:  BCC             loc_6FC68
6FC84:  CMP             R0, #0
6FC86:  BNE             loc_6FC6C
6FC88:  B               loc_6FC32
6FC8A:  LDR.W           R0, [R10,#0x18]
6FC8E:  CMP             R0, #0
6FC90:  BNE.W           loc_6FB66
6FC94:  MOV             R0, R10
6FC96:  MOV             R1, R5
6FC98:  MOV             R2, R8
6FC9A:  MOV             R4, R10
6FC9C:  BL              sub_6EF94
6FCA0:  LDR.W           R0, [R10,#0x18]
6FCA4:  MOVS            R4, #0
6FCA6:  CBZ             R0, loc_6FCAE
6FCA8:  B               loc_6FB66
6FCAA:  ADDS            R0, #1
6FCAC:  STR             R0, [R5,#0x10]
6FCAE:  LDR             R0, [R5,#0x10]
6FCB0:  LDRB            R1, [R0]
6FCB2:  SUB.W           R2, R1, #9
6FCB6:  CMP             R2, #0x17
6FCB8:  BHI             loc_6FD08
6FCBA:  LSL.W           R2, R11, R2
6FCBE:  TST.W           R2, R9
6FCC2:  BEQ             loc_6FD08
6FCC4:  LDR             R1, [R5,#0xC]
6FCC6:  CMP             R0, R1
6FCC8:  BCC             loc_6FCAA
6FCCA:  LDRB            R0, [R5,#0x1C]
6FCCC:  CMP             R0, #0
6FCCE:  BNE             loc_6FCAE
6FCD0:  LDRD.W          R1, R6, [R5,#0x14]
6FCD4:  LDRD.W          R3, R0, [R5]; stream
6FCD8:  LDR             R2, [R5,#8]; n
6FCDA:  ADD             R1, R6
6FCDC:  STR             R1, [R5,#0x18]
6FCDE:  MOVS            R1, #1; size
6FCE0:  BLX             fread
6FCE4:  LDRD.W          R2, R3, [R5,#4]
6FCE8:  CMP             R0, R3
6FCEA:  STR             R0, [R5,#0x14]
6FCEC:  ADD.W           R1, R2, R0
6FCF0:  SUB.W           R6, R1, #1
6FCF4:  STRD.W          R6, R2, [R5,#0xC]
6FCF8:  BCS             loc_6FCAE
6FCFA:  STRB            R4, [R1]
6FCFC:  LDR             R0, [R5,#0xC]
6FCFE:  STRB.W          R11, [R5,#0x1C]
6FD02:  ADDS            R0, #1
6FD04:  STR             R0, [R5,#0xC]
6FD06:  B               loc_6FCAE
6FD08:  LDR.W           R2, [R10,#0x18]
6FD0C:  CMP             R2, #0
6FD0E:  BNE.W           loc_6FB66
6FD12:  LDR             R2, [SP,#0x20+var_20]
6FD14:  CMP             R1, #0x2C ; ','
6FD16:  ADD.W           R2, R2, #1
6FD1A:  BNE             loc_6FDBE
6FD1C:  LDR             R1, [R5,#0xC]
6FD1E:  STR             R2, [SP,#0x20+var_20]
6FD20:  CMP             R0, R1
6FD22:  BCS             loc_6FD2A
6FD24:  ADDS            R0, #1
6FD26:  STR             R0, [R5,#0x10]
6FD28:  B               loc_6FD64
6FD2A:  LDRB            R0, [R5,#0x1C]
6FD2C:  CBNZ            R0, loc_6FD64
6FD2E:  LDRD.W          R1, R6, [R5,#0x14]
6FD32:  LDRD.W          R3, R0, [R5]; stream
6FD36:  LDR             R2, [R5,#8]; n
6FD38:  ADD             R1, R6
6FD3A:  STR             R1, [R5,#0x18]
6FD3C:  MOVS            R1, #1; size
6FD3E:  BLX             fread
6FD42:  LDRD.W          R3, R6, [R5,#4]
6FD46:  CMP             R0, R6
6FD48:  STR             R0, [R5,#0x14]
6FD4A:  ADD.W           R2, R3, R0
6FD4E:  SUB.W           R1, R2, #1
6FD52:  STRD.W          R1, R3, [R5,#0xC]
6FD56:  BCS             loc_6FD64
6FD58:  STRB            R4, [R2]
6FD5A:  LDR             R0, [R5,#0xC]
6FD5C:  STRB.W          R11, [R5,#0x1C]
6FD60:  ADDS            R1, R0, #1
6FD62:  STR             R1, [R5,#0xC]
6FD64:  LDRB            R2, [R5,#0x1C]
6FD66:  B               loc_6FD6C
6FD68:  ADDS            R0, #1
6FD6A:  STR             R0, [R5,#0x10]
6FD6C:  LDR             R0, [R5,#0x10]
6FD6E:  LDRB            R3, [R0]
6FD70:  SUB.W           R4, R3, #9
6FD74:  CMP             R4, #0x17
6FD76:  BHI.W           loc_6FC24
6FD7A:  LSL.W           R6, R11, R4
6FD7E:  TST.W           R6, R9
6FD82:  BEQ.W           loc_6FC24
6FD86:  CMP             R0, R1
6FD88:  BCC             loc_6FD68
6FD8A:  CMP             R2, #0
6FD8C:  BNE             loc_6FD6C
6FD8E:  LDRD.W          R1, R6, [R5,#0x14]
6FD92:  LDRD.W          R3, R0, [R5]; stream
6FD96:  LDR             R2, [R5,#8]; n
6FD98:  ADD             R1, R6
6FD9A:  STR             R1, [R5,#0x18]
6FD9C:  MOVS            R1, #1; size
6FD9E:  BLX             fread
6FDA2:  LDRD.W          R3, R6, [R5,#4]
6FDA6:  CMP             R0, R6
6FDA8:  STR             R0, [R5,#0x14]
6FDAA:  ADD.W           R2, R3, R0
6FDAE:  SUB.W           R1, R2, #1
6FDB2:  STRD.W          R1, R3, [R5,#0xC]
6FDB6:  BCS             loc_6FD64
6FDB8:  MOVS            R0, #0
6FDBA:  STRB            R0, [R2]
6FDBC:  B               loc_6FD5A
6FDBE:  CMP             R1, #0x7D ; '}'
6FDC0:  BNE             loc_6FDCE
6FDC2:  LDR             R1, [R5,#0xC]
6FDC4:  CMP             R0, R1
6FDC6:  BCS             loc_6FDE2
6FDC8:  ADDS            R0, #1
6FDCA:  STR             R0, [R5,#0x10]
6FDCC:  B               loc_6FE22
6FDCE:  MOVS            R1, #6
6FDD0:  LDR             R3, [R5,#0x18]
6FDD2:  LDR             R2, [R5,#4]
6FDD4:  ADD             R0, R3
6FDD6:  STR.W           R1, [R10,#0x18]
6FDDA:  SUBS            R0, R0, R2
6FDDC:  STR.W           R0, [R10,#0x1C]
6FDE0:  B               loc_6FB66
6FDE2:  LDRB            R0, [R5,#0x1C]
6FDE4:  CBNZ            R0, loc_6FE22
6FDE6:  LDRD.W          R1, R6, [R5,#0x14]
6FDEA:  MOV             R9, R2
6FDEC:  LDRD.W          R3, R0, [R5]; stream
6FDF0:  LDR             R2, [R5,#8]; n
6FDF2:  ADD             R1, R6
6FDF4:  STR             R1, [R5,#0x18]
6FDF6:  MOVS            R1, #1; size
6FDF8:  MOVS            R6, #1
6FDFA:  BLX             fread
6FDFE:  LDRD.W          R2, R3, [R5,#4]
6FE02:  CMP             R0, R3
6FE04:  STR             R0, [R5,#0x14]
6FE06:  ADD.W           R1, R2, R0
6FE0A:  SUB.W           R4, R1, #1
6FE0E:  STRD.W          R4, R2, [R5,#0xC]
6FE12:  MOV             R2, R9
6FE14:  BCS             loc_6FE22
6FE16:  MOVS            R0, #0
6FE18:  STRB            R0, [R1]
6FE1A:  LDR             R0, [R5,#0xC]
6FE1C:  STRB            R6, [R5,#0x1C]
6FE1E:  ADDS            R0, #1
6FE20:  STR             R0, [R5,#0xC]
6FE22:  LDR.W           R0, [R8,#0x24]
6FE26:  LDR.W           R3, [R8,#0x10]
6FE2A:  SUB.W           R1, R0, R2,LSL#5; src
6FE2E:  STR.W           R1, [R8,#0x24]
6FE32:  SUB.W           R0, R1, #0x10; int
6FE36:  ADD             SP, SP, #4
6FE38:  POP.W           {R8-R11}
6FE3C:  POP.W           {R4-R7,LR}
6FE40:  B.W             sub_713F6
6FE44:  MOVS            R1, #5
6FE46:  B               loc_6FDD0
6FE48:  MOVS            R1, #4
6FE4A:  B               loc_6FDD0
