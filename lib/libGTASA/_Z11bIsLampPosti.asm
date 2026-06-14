; =========================================================
; Game Engine Function: _Z11bIsLampPosti
; Address            : 0x3D1F5C - 0x3D2012
; =========================================================

3D1F5C:  LDR             R1, =(MI_SINGLESTREETLIGHTS1_ptr - 0x3D1F62)
3D1F5E:  ADD             R1, PC; MI_SINGLESTREETLIGHTS1_ptr
3D1F60:  LDR             R1, [R1]; MI_SINGLESTREETLIGHTS1
3D1F62:  LDRH            R1, [R1]
3D1F64:  CMP             R1, R0
3D1F66:  BEQ             loc_3D1FF8
3D1F68:  LDR             R1, =(MI_SINGLESTREETLIGHTS2_ptr - 0x3D1F6E)
3D1F6A:  ADD             R1, PC; MI_SINGLESTREETLIGHTS2_ptr
3D1F6C:  LDR             R1, [R1]; MI_SINGLESTREETLIGHTS2
3D1F6E:  LDRH            R1, [R1]
3D1F70:  CMP             R1, R0
3D1F72:  BEQ             loc_3D1FF8
3D1F74:  LDR             R1, =(MI_SINGLESTREETLIGHTS3_ptr - 0x3D1F7A)
3D1F76:  ADD             R1, PC; MI_SINGLESTREETLIGHTS3_ptr
3D1F78:  LDR             R1, [R1]; MI_SINGLESTREETLIGHTS3
3D1F7A:  LDRH            R1, [R1]
3D1F7C:  CMP             R1, R0
3D1F7E:  BEQ             loc_3D1FF8
3D1F80:  LDR             R1, =(MI_BOLLARDLIGHT_ptr - 0x3D1F86)
3D1F82:  ADD             R1, PC; MI_BOLLARDLIGHT_ptr
3D1F84:  LDR             R1, [R1]; MI_BOLLARDLIGHT
3D1F86:  LDRH            R1, [R1]
3D1F88:  CMP             R1, R0
3D1F8A:  BEQ             loc_3D1FF8
3D1F8C:  LDR             R1, =(MI_MLAMPPOST_ptr - 0x3D1F92)
3D1F8E:  ADD             R1, PC; MI_MLAMPPOST_ptr
3D1F90:  LDR             R1, [R1]; MI_MLAMPPOST
3D1F92:  LDRH            R1, [R1]
3D1F94:  CMP             R1, R0
3D1F96:  BEQ             loc_3D1FF8
3D1F98:  LDR             R1, =(MI_STREETLAMP1_ptr - 0x3D1F9E)
3D1F9A:  ADD             R1, PC; MI_STREETLAMP1_ptr
3D1F9C:  LDR             R1, [R1]; MI_STREETLAMP1
3D1F9E:  LDRH            R1, [R1]
3D1FA0:  CMP             R1, R0
3D1FA2:  BEQ             loc_3D1FF8
3D1FA4:  LDR             R1, =(MI_STREETLAMP2_ptr - 0x3D1FAA)
3D1FA6:  ADD             R1, PC; MI_STREETLAMP2_ptr
3D1FA8:  LDR             R1, [R1]; MI_STREETLAMP2
3D1FAA:  LDRH            R1, [R1]
3D1FAC:  CMP             R1, R0
3D1FAE:  BEQ             loc_3D1FF8
3D1FB0:  LDR             R1, =(MI_TELPOLE02_ptr - 0x3D1FB6)
3D1FB2:  ADD             R1, PC; MI_TELPOLE02_ptr
3D1FB4:  LDR             R1, [R1]; MI_TELPOLE02
3D1FB6:  LDRH            R1, [R1]
3D1FB8:  CMP             R1, R0
3D1FBA:  BEQ             loc_3D1FF8
3D1FBC:  LDR             R1, =(MI_TRAFFICLIGHTS_MIAMI_ptr - 0x3D1FC2)
3D1FBE:  ADD             R1, PC; MI_TRAFFICLIGHTS_MIAMI_ptr
3D1FC0:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_MIAMI
3D1FC2:  LDRH            R1, [R1]
3D1FC4:  CMP             R1, R0
3D1FC6:  BEQ             loc_3D1FF8
3D1FC8:  LDR             R1, =(MI_TRAFFICLIGHTS_TWOVERTICAL_ptr - 0x3D1FCE)
3D1FCA:  ADD             R1, PC; MI_TRAFFICLIGHTS_TWOVERTICAL_ptr
3D1FCC:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_TWOVERTICAL
3D1FCE:  LDRH            R1, [R1]
3D1FD0:  CMP             R1, R0
3D1FD2:  BEQ             loc_3D1FF8
3D1FD4:  LDR             R1, =(MI_TRAFFICLIGHTS_3_ptr - 0x3D1FDA)
3D1FD6:  ADD             R1, PC; MI_TRAFFICLIGHTS_3_ptr
3D1FD8:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_3
3D1FDA:  LDRH            R1, [R1]
3D1FDC:  CMP             R1, R0
3D1FDE:  BEQ             loc_3D1FF8
3D1FE0:  LDR             R1, =(MI_TRAFFICLIGHTS_4_ptr - 0x3D1FE6)
3D1FE2:  ADD             R1, PC; MI_TRAFFICLIGHTS_4_ptr
3D1FE4:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_4
3D1FE6:  LDRH            R1, [R1]
3D1FE8:  CMP             R1, R0
3D1FEA:  BEQ             loc_3D1FF8
3D1FEC:  LDR             R1, =(MI_TRAFFICLIGHTS_GAY_ptr - 0x3D1FF2)
3D1FEE:  ADD             R1, PC; MI_TRAFFICLIGHTS_GAY_ptr
3D1FF0:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_GAY
3D1FF2:  LDRH            R1, [R1]
3D1FF4:  CMP             R1, R0
3D1FF6:  BNE             loc_3D1FFE
3D1FF8:  MOVS            R1, #1
3D1FFA:  MOV             R0, R1
3D1FFC:  BX              LR
3D1FFE:  LDR             R1, =(MI_TRAFFICLIGHTS_5_ptr - 0x3D2004)
3D2000:  ADD             R1, PC; MI_TRAFFICLIGHTS_5_ptr
3D2002:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_5
3D2004:  LDRH            R2, [R1]
3D2006:  MOVS            R1, #0
3D2008:  CMP             R2, R0
3D200A:  IT EQ
3D200C:  MOVEQ           R1, #1
3D200E:  MOV             R0, R1
3D2010:  BX              LR
