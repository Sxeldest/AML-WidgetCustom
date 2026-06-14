; =========================================================
; Game Engine Function: _Z22_rpGeometryNativeWriteP8RwStreamPK10RpGeometry
; Address            : 0x21FA28 - 0x2206A0
; =========================================================

21FA28:  PUSH            {R4-R7,LR}
21FA2A:  ADD             R7, SP, #0xC
21FA2C:  PUSH.W          {R8-R11}
21FA30:  SUB             SP, SP, #0x14
21FA32:  MOV             R9, R1
21FA34:  STR             R0, [SP,#0x30+var_28]
21FA36:  LDRB.W          R0, [R9,#0xB]
21FA3A:  LSLS            R0, R0, #0x1F
21FA3C:  BEQ.W           loc_22064C
21FA40:  LDR.W           R0, =(streams_ptr - 0x21FA4A)
21FA44:  MOVS            R1, #0
21FA46:  ADD             R0, PC; streams_ptr
21FA48:  LDR             R0, [R0]; streams
21FA4A:  STR             R1, [R0,#(dword_6BD69C - 0x6BD698)]
21FA4C:  LDR.W           R1, [R9,#0x60]
21FA50:  LDR             R0, [R0]
21FA52:  LDR             R5, [R1,#0x14]
21FA54:  CBZ             R0, loc_21FA64
21FA56:  LDR.W           R0, =(streams_ptr - 0x21FA5E)
21FA5A:  ADD             R0, PC; streams_ptr
21FA5C:  LDR             R0, [R0]; streams
21FA5E:  LDR             R4, [R0,#(dword_6BD6A0 - 0x6BD698)]
21FA60:  MOVS            R0, #0
21FA62:  B               loc_21FA98
21FA64:  MOVS            R0, #0x80; byte_count
21FA66:  BLX             malloc
21FA6A:  MOV             R4, R0
21FA6C:  LDR.W           R0, =(streams_ptr - 0x21FA74)
21FA70:  ADD             R0, PC; streams_ptr
21FA72:  LDR             R0, [R0]; streams
21FA74:  LDR             R0, [R0,#(dword_6BD6A0 - 0x6BD698)]; p
21FA76:  CBZ             R0, loc_21FA88
21FA78:  BLX             free
21FA7C:  LDR.W           R0, =(streams_ptr - 0x21FA84)
21FA80:  ADD             R0, PC; streams_ptr
21FA82:  LDR             R0, [R0]; streams
21FA84:  LDR             R0, [R0,#(dword_6BD69C - 0x6BD698)]
21FA86:  B               loc_21FA8A
21FA88:  MOVS            R0, #0
21FA8A:  LDR.W           R1, =(streams_ptr - 0x21FA94)
21FA8E:  MOVS            R2, #4
21FA90:  ADD             R1, PC; streams_ptr
21FA92:  LDR             R1, [R1]; streams
21FA94:  STR             R4, [R1,#(dword_6BD6A0 - 0x6BD698)]
21FA96:  STR             R2, [R1]
21FA98:  LDR.W           R1, =(streams_ptr - 0x21FAAA)
21FA9C:  VMOV.I32        Q8, #0
21FAA0:  ADD.W           R2, R4, R0,LSL#5
21FAA4:  MOVS            R3, #0
21FAA6:  ADD             R1, PC; streams_ptr
21FAA8:  MOVS            R6, #3
21FAAA:  VST1.32         {D16-D17}, [R2]!
21FAAE:  LDR             R1, [R1]; streams
21FAB0:  VST1.32         {D16-D17}, [R2]
21FAB4:  ADDS            R2, R0, #1
21FAB6:  STR             R2, [R1,#(dword_6BD69C - 0x6BD698)]
21FAB8:  LSLS            R2, R0, #5
21FABA:  STR             R3, [R4,R2]
21FABC:  LDR             R2, [R1,#(dword_6BD6A0 - 0x6BD698)]
21FABE:  ADD.W           R2, R2, R0,LSL#5
21FAC2:  STR             R6, [R2,#8]
21FAC4:  LDR             R2, [R1,#(dword_6BD6A0 - 0x6BD698)]
21FAC6:  ADD.W           R2, R2, R0,LSL#5
21FACA:  STRB            R3, [R2,#5]
21FACC:  STR             R3, [R2,#0x14]
21FACE:  LDR.W           R10, [R1,#(dword_6BD6A0 - 0x6BD698)]
21FAD2:  MOVS            R1, #0xC
21FAD4:  ADD.W           R0, R10, R0,LSL#5
21FAD8:  STRB            R3, [R0,#0x1C]
21FADA:  STR             R5, [R0,#0x18]
21FADC:  STR             R1, [R0,#0xC]
21FADE:  LDR.W           R0, [R9,#0x1C]
21FAE2:  CMP             R0, #1
21FAE4:  BLT.W           loc_21FCDE
21FAE8:  LDR.W           R4, [R9,#0x14]
21FAEC:  CMP             R4, #0
21FAEE:  BLE             loc_21FBCA
21FAF0:  LDR.W           R5, [R9,#0x34]
21FAF4:  MOVS            R1, #0
21FAF6:  VLDR            S0, =63.998
21FAFA:  ADDS            R0, R5, #4
21FAFC:  VLDR            S2, [R0,#-4]
21FB00:  VCMPE.F32       S2, S0
21FB04:  VMRS            APSR_nzcv, FPSCR
21FB08:  ITTT LE
21FB0A:  VLDRLE          S2, [R0]
21FB0E:  VCMPELE.F32     S2, S0
21FB12:  VMRSLE          APSR_nzcv, FPSCR
21FB16:  BGT             loc_21FB6A
21FB18:  ADDS            R1, #1
21FB1A:  ADDS            R0, #8
21FB1C:  CMP             R1, R4
21FB1E:  BLT             loc_21FAFC
21FB20:  LSLS            R0, R4, #2; byte_count
21FB22:  BLX             malloc
21FB26:  MOV             R6, R0
21FB28:  CMP             R4, #1
21FB2A:  BLT             loc_21FBD2
21FB2C:  VLDR            S0, =512.0
21FB30:  MOVS            R0, #0
21FB32:  VLDR            S2, [R5]
21FB36:  VMUL.F32        S2, S2, S0
21FB3A:  VCVT.S32.F32    S2, S2
21FB3E:  VMOV            R1, S2
21FB42:  STRH.W          R1, [R6,R0,LSL#2]
21FB46:  ADD.W           R1, R6, R0,LSL#2
21FB4A:  ADDS            R0, #1
21FB4C:  VLDR            S2, [R5,#4]
21FB50:  ADDS            R5, #8
21FB52:  VMUL.F32        S2, S2, S0
21FB56:  VCVT.S32.F32    S2, S2
21FB5A:  VMOV            R2, S2
21FB5E:  STRH            R2, [R1,#2]
21FB60:  LDR.W           R1, [R9,#0x14]
21FB64:  CMP             R0, R1
21FB66:  BLT             loc_21FB32
21FB68:  B               loc_21FBD2
21FB6A:  LDR.W           R0, =(streams_ptr - 0x21FB72)
21FB6E:  ADD             R0, PC; streams_ptr
21FB70:  LDR             R0, [R0]; streams
21FB72:  LDRD.W          R1, R6, [R0]
21FB76:  ADDS            R0, R6, #1
21FB78:  CMP             R1, R0
21FB7A:  BCS.W           loc_21FC90
21FB7E:  MOVW            R1, #0xAAAB
21FB82:  LSLS            R0, R0, #2
21FB84:  MOVT            R1, #0xAAAA
21FB88:  UMULL.W         R0, R1, R0, R1
21FB8C:  MOVS            R0, #3
21FB8E:  ADD.W           R4, R0, R1,LSR#1
21FB92:  LSLS            R0, R4, #5; byte_count
21FB94:  BLX             malloc
21FB98:  MOV             R8, R0
21FB9A:  CMP.W           R10, #0
21FB9E:  BEQ             loc_21FBBA
21FBA0:  LSLS            R2, R6, #5; size_t
21FBA2:  MOV             R0, R8; void *
21FBA4:  MOV             R1, R10; void *
21FBA6:  BLX             memcpy_0
21FBAA:  MOV             R0, R10; p
21FBAC:  BLX             free
21FBB0:  LDR.W           R0, =(streams_ptr - 0x21FBB8)
21FBB4:  ADD             R0, PC; streams_ptr
21FBB6:  LDR             R0, [R0]; streams
21FBB8:  LDR             R6, [R0,#(dword_6BD69C - 0x6BD698)]
21FBBA:  LDR.W           R0, =(streams_ptr - 0x21FBC2)
21FBBE:  ADD             R0, PC; streams_ptr
21FBC0:  LDR             R0, [R0]; streams
21FBC2:  STR.W           R8, [R0,#(dword_6BD6A0 - 0x6BD698)]
21FBC6:  STR             R4, [R0]
21FBC8:  B               loc_21FC92
21FBCA:  LSLS            R0, R4, #2; byte_count
21FBCC:  BLX             malloc
21FBD0:  MOV             R6, R0
21FBD2:  LDR.W           R0, =(streams_ptr - 0x21FBDA)
21FBD6:  ADD             R0, PC; streams_ptr
21FBD8:  LDR             R0, [R0]; streams
21FBDA:  LDRD.W          R1, R5, [R0]
21FBDE:  ADDS            R0, R5, #1
21FBE0:  CMP             R1, R0
21FBE2:  BCS             loc_21FC3E
21FBE4:  MOVW            R1, #0xAAAB
21FBE8:  LSLS            R0, R0, #2
21FBEA:  MOVT            R1, #0xAAAA
21FBEE:  UMULL.W         R0, R1, R0, R1
21FBF2:  MOVS            R0, #3
21FBF4:  ADD.W           R10, R0, R1,LSR#1
21FBF8:  MOV.W           R0, R10,LSL#5; byte_count
21FBFC:  BLX             malloc
21FC00:  MOV             R4, R0
21FC02:  LDR.W           R0, =(streams_ptr - 0x21FC0A)
21FC06:  ADD             R0, PC; streams_ptr
21FC08:  LDR             R0, [R0]; streams
21FC0A:  LDR.W           R8, [R0,#(dword_6BD6A0 - 0x6BD698)]
21FC0E:  CMP.W           R8, #0
21FC12:  BEQ             loc_21FC2E
21FC14:  LSLS            R2, R5, #5; size_t
21FC16:  MOV             R0, R4; void *
21FC18:  MOV             R1, R8; void *
21FC1A:  BLX             memcpy_0
21FC1E:  MOV             R0, R8; p
21FC20:  BLX             free
21FC24:  LDR.W           R0, =(streams_ptr - 0x21FC2C)
21FC28:  ADD             R0, PC; streams_ptr
21FC2A:  LDR             R0, [R0]; streams
21FC2C:  LDR             R5, [R0,#(dword_6BD69C - 0x6BD698)]
21FC2E:  LDR.W           R0, =(streams_ptr - 0x21FC36)
21FC32:  ADD             R0, PC; streams_ptr
21FC34:  LDR             R0, [R0]; streams
21FC36:  STR             R4, [R0,#(dword_6BD6A0 - 0x6BD698)]
21FC38:  STR.W           R10, [R0]
21FC3C:  B               loc_21FC48
21FC3E:  LDR.W           R0, =(streams_ptr - 0x21FC46)
21FC42:  ADD             R0, PC; streams_ptr
21FC44:  LDR             R0, [R0]; streams
21FC46:  LDR             R4, [R0,#(dword_6BD6A0 - 0x6BD698)]
21FC48:  LDR.W           R0, =(streams_ptr - 0x21FC58)
21FC4C:  VMOV.I32        Q8, #0
21FC50:  LSLS            R2, R5, #5
21FC52:  MOVS            R3, #2
21FC54:  ADD             R0, PC; streams_ptr
21FC56:  LDR             R1, [R0]; streams
21FC58:  ADD.W           R0, R4, R5,LSL#5
21FC5C:  VST1.32         {D16-D17}, [R0]!
21FC60:  VST1.32         {D16-D17}, [R0]
21FC64:  ADDS            R0, R5, #1
21FC66:  STR             R0, [R1,#(dword_6BD69C - 0x6BD698)]
21FC68:  MOVS            R0, #1
21FC6A:  STR             R0, [R4,R2]
21FC6C:  LDR             R2, [R1,#(dword_6BD6A0 - 0x6BD698)]
21FC6E:  ADD.W           R2, R2, R5,LSL#5
21FC72:  STR             R3, [R2,#8]
21FC74:  MOVS            R3, #0
21FC76:  LDR             R2, [R1,#(dword_6BD6A0 - 0x6BD698)]
21FC78:  ADD.W           R2, R2, R5,LSL#5
21FC7C:  STRB            R3, [R2,#5]
21FC7E:  MOVS            R3, #3
21FC80:  STR             R3, [R2,#0x14]
21FC82:  MOVS            R2, #4
21FC84:  LDR.W           R10, [R1,#(dword_6BD6A0 - 0x6BD698)]
21FC88:  ADD.W           R1, R10, R5,LSL#5
21FC8C:  STR             R6, [R1,#0x18]
21FC8E:  B               loc_21FCD8
21FC90:  MOV             R8, R10
21FC92:  LDR.W           R0, =(streams_ptr - 0x21FCA0)
21FC96:  VMOV.I32        Q8, #0
21FC9A:  MOVS            R2, #1
21FC9C:  ADD             R0, PC; streams_ptr
21FC9E:  LDR             R1, [R0]; streams
21FCA0:  ADD.W           R0, R8, R6,LSL#5
21FCA4:  VST1.32         {D16-D17}, [R0]!
21FCA8:  VST1.32         {D16-D17}, [R0]
21FCAC:  ADDS            R0, R6, #1
21FCAE:  STR             R0, [R1,#(dword_6BD69C - 0x6BD698)]
21FCB0:  LSLS            R0, R6, #5
21FCB2:  STR.W           R2, [R8,R0]
21FCB6:  MOVS            R2, #2
21FCB8:  LDR             R0, [R1,#(dword_6BD6A0 - 0x6BD698)]
21FCBA:  ADD.W           R0, R0, R6,LSL#5
21FCBE:  STR             R2, [R0,#8]
21FCC0:  LDR             R0, [R1,#(dword_6BD6A0 - 0x6BD698)]
21FCC2:  ADD.W           R2, R0, R6,LSL#5
21FCC6:  MOVS            R0, #0
21FCC8:  STRB            R0, [R2,#5]
21FCCA:  STR             R0, [R2,#0x14]
21FCCC:  MOVS            R2, #8
21FCCE:  LDR.W           R10, [R1,#(dword_6BD6A0 - 0x6BD698)]
21FCD2:  ADD.W           R1, R10, R6,LSL#5
21FCD6:  STR             R5, [R1,#0x18]
21FCD8:  STR             R2, [R1,#0xC]
21FCDA:  ADDS            R1, #0x1C
21FCDC:  STRB            R0, [R1]
21FCDE:  LDR.W           R0, [R9,#8]
21FCE2:  TST.W           R0, #0x10
21FCE6:  BNE             loc_21FCF6
21FCE8:  LSLS            R1, R0, #0x1C
21FCEA:  BMI.W           loc_21FEDC
21FCEE:  LSLS            R1, R0, #0x16
21FCF0:  BMI.W           loc_21FF90
21FCF4:  B               loc_220056
21FCF6:  LDR.W           R4, [R9,#0x14]
21FCFA:  LSLS            R0, R4, #2; byte_count
21FCFC:  BLX             malloc
21FD00:  MOV             R6, R0
21FD02:  CMP             R4, #1
21FD04:  BLT             loc_21FDF8
21FD06:  VMOV.F32        S2, #0.5
21FD0A:  LDR.W           R0, [R9,#0x60]
21FD0E:  VLDR            S0, =128.0
21FD12:  MOV.W           R12, #0
21FD16:  VLDR            S4, =127.0
21FD1A:  MOV             R2, #0xFFFFFF80
21FD1E:  LDR             R0, [R0,#0x18]
21FD20:  MOVS            R3, #0x7F
21FD22:  MOVS            R5, #0
21FD24:  VLDR            S6, [R0]
21FD28:  ADD.W           R4, R6, R5,LSL#2
21FD2C:  VCMPE.F32       S6, #0.0
21FD30:  VMRS            APSR_nzcv, FPSCR
21FD34:  BGE             loc_21FD50
21FD36:  VMUL.F32        S6, S6, S0
21FD3A:  VADD.F32        S6, S6, S2
21FD3E:  VCVT.S32.F32    S6, S6
21FD42:  VMOV            R1, S6
21FD46:  CMN.W           R1, #0x80
21FD4A:  IT LE
21FD4C:  MOVLE           R1, R2
21FD4E:  B               loc_21FD66
21FD50:  VMUL.F32        S6, S6, S4
21FD54:  VADD.F32        S6, S6, S2
21FD58:  VCVT.S32.F32    S6, S6
21FD5C:  VMOV            R1, S6
21FD60:  CMP             R1, #0x7F
21FD62:  IT GE
21FD64:  MOVGE           R1, R3
21FD66:  STRB            R1, [R4]
21FD68:  VLDR            S6, [R0,#4]
21FD6C:  VCMPE.F32       S6, #0.0
21FD70:  VMRS            APSR_nzcv, FPSCR
21FD74:  BGE             loc_21FD90
21FD76:  VMUL.F32        S6, S6, S0
21FD7A:  VADD.F32        S6, S6, S2
21FD7E:  VCVT.S32.F32    S6, S6
21FD82:  VMOV            R1, S6
21FD86:  CMN.W           R1, #0x80
21FD8A:  IT LE
21FD8C:  MOVLE           R1, R2
21FD8E:  B               loc_21FDA6
21FD90:  VMUL.F32        S6, S6, S4
21FD94:  VADD.F32        S6, S6, S2
21FD98:  VCVT.S32.F32    S6, S6
21FD9C:  VMOV            R1, S6
21FDA0:  CMP             R1, #0x7F
21FDA2:  IT GE
21FDA4:  MOVGE           R1, R3
21FDA6:  STRB            R1, [R4,#1]
21FDA8:  VLDR            S6, [R0,#8]
21FDAC:  VCMPE.F32       S6, #0.0
21FDB0:  VMRS            APSR_nzcv, FPSCR
21FDB4:  BGE             loc_21FDD0
21FDB6:  VMUL.F32        S6, S6, S0
21FDBA:  VADD.F32        S6, S6, S2
21FDBE:  VCVT.S32.F32    S6, S6
21FDC2:  VMOV            R1, S6
21FDC6:  CMN.W           R1, #0x80
21FDCA:  IT LE
21FDCC:  MOVLE           R1, R2
21FDCE:  B               loc_21FDE6
21FDD0:  VMUL.F32        S6, S6, S4
21FDD4:  VADD.F32        S6, S6, S2
21FDD8:  VCVT.S32.F32    S6, S6
21FDDC:  VMOV            R1, S6
21FDE0:  CMP             R1, #0x7F
21FDE2:  IT GE
21FDE4:  MOVGE           R1, R3
21FDE6:  STRB.W          R12, [R4,#3]
21FDEA:  ADDS            R0, #0xC
21FDEC:  STRB            R1, [R4,#2]
21FDEE:  ADDS            R5, #1
21FDF0:  LDR.W           R1, [R9,#0x14]
21FDF4:  CMP             R5, R1
21FDF6:  BLT             loc_21FD24
21FDF8:  LDR.W           R0, =(streams_ptr - 0x21FE00)
21FDFC:  ADD             R0, PC; streams_ptr
21FDFE:  LDR             R0, [R0]; streams
21FE00:  LDRD.W          R1, R5, [R0]
21FE04:  ADDS            R0, R5, #1
21FE06:  CMP             R1, R0
21FE08:  BCS             loc_21FE80
21FE0A:  MOVW            R1, #0xAAAB
21FE0E:  LSLS            R0, R0, #2
21FE10:  MOVT            R1, #0xAAAA
21FE14:  UMULL.W         R0, R1, R0, R1
21FE18:  MOVS            R0, #3
21FE1A:  ADD.W           R10, R0, R1,LSR#1
21FE1E:  MOV.W           R0, R10,LSL#5; byte_count
21FE22:  BLX             malloc
21FE26:  MOV             R4, R0
21FE28:  LDR.W           R0, =(streams_ptr - 0x21FE30)
21FE2C:  ADD             R0, PC; streams_ptr
21FE2E:  LDR             R0, [R0]; streams
21FE30:  LDR.W           R8, [R0,#(dword_6BD6A0 - 0x6BD698)]
21FE34:  CMP.W           R8, #0
21FE38:  BEQ             loc_21FE54
21FE3A:  LSLS            R2, R5, #5; size_t
21FE3C:  MOV             R0, R4; void *
21FE3E:  MOV             R1, R8; void *
21FE40:  BLX             memcpy_0
21FE44:  MOV             R0, R8; p
21FE46:  BLX             free
21FE4A:  LDR.W           R0, =(streams_ptr - 0x21FE52)
21FE4E:  ADD             R0, PC; streams_ptr
21FE50:  LDR             R0, [R0]; streams
21FE52:  LDR             R5, [R0,#(dword_6BD69C - 0x6BD698)]
21FE54:  LDR.W           R0, =(streams_ptr - 0x21FE5C)
21FE58:  ADD             R0, PC; streams_ptr
21FE5A:  LDR             R0, [R0]; streams
21FE5C:  STR             R4, [R0,#(dword_6BD6A0 - 0x6BD698)]
21FE5E:  STR.W           R10, [R0]
21FE62:  B               loc_21FE8A
21FE64:  DCFS 63.998
21FE68:  DCFS 512.0
21FE6C:  DCFS 128.0
21FE70:  DCFS 127.0
21FE74:  DCFS 0.0
21FE78:  DCFS 0.07
21FE7C:  DCFS 65535.0
21FE80:  LDR.W           R0, =(streams_ptr - 0x21FE88)
21FE84:  ADD             R0, PC; streams_ptr
21FE86:  LDR             R0, [R0]; streams
21FE88:  LDR             R4, [R0,#(dword_6BD6A0 - 0x6BD698)]
21FE8A:  LDR.W           R0, =(streams_ptr - 0x21FE9C)
21FE8E:  VMOV.I32        Q8, #0
21FE92:  ADD.W           R1, R4, R5,LSL#5
21FE96:  MOVS            R2, #2
21FE98:  ADD             R0, PC; streams_ptr
21FE9A:  VST1.32         {D16-D17}, [R1]!
21FE9E:  LDR             R0, [R0]; streams
21FEA0:  VST1.32         {D16-D17}, [R1]
21FEA4:  ADDS            R1, R5, #1
21FEA6:  STR             R1, [R0,#(dword_6BD69C - 0x6BD698)]
21FEA8:  LSLS            R1, R5, #5
21FEAA:  STR             R2, [R4,R1]
21FEAC:  MOVS            R2, #3
21FEAE:  LDR             R1, [R0,#(dword_6BD6A0 - 0x6BD698)]
21FEB0:  ADD.W           R1, R1, R5,LSL#5
21FEB4:  STR             R2, [R1,#8]
21FEB6:  MOVS            R2, #1
21FEB8:  LDR             R1, [R0,#(dword_6BD6A0 - 0x6BD698)]
21FEBA:  ADD.W           R1, R1, R5,LSL#5
21FEBE:  STRB            R2, [R1,#5]
21FEC0:  STR             R2, [R1,#0x14]
21FEC2:  MOVS            R1, #4
21FEC4:  LDR.W           R10, [R0,#(dword_6BD6A0 - 0x6BD698)]
21FEC8:  ADD.W           R0, R10, R5,LSL#5
21FECC:  STRB            R2, [R0,#0x1C]
21FECE:  STR             R6, [R0,#0x18]
21FED0:  STR             R1, [R0,#0xC]
21FED2:  LDR.W           R0, [R9,#8]
21FED6:  LSLS            R1, R0, #0x1C
21FED8:  BPL.W           loc_21FCEE
21FEDC:  LDR.W           R0, =(streams_ptr - 0x21FEE4)
21FEE0:  ADD             R0, PC; streams_ptr
21FEE2:  LDR             R0, [R0]; streams
21FEE4:  LDRD.W          R1, R5, [R0]
21FEE8:  ADDS            R0, R5, #1
21FEEA:  LDR.W           R8, [R9,#0x30]
21FEEE:  CMP             R1, R0
21FEF0:  BCS             loc_21FF3C
21FEF2:  MOVW            R1, #0xAAAB
21FEF6:  LSLS            R0, R0, #2
21FEF8:  MOVT            R1, #0xAAAA
21FEFC:  UMULL.W         R0, R1, R0, R1
21FF00:  MOVS            R0, #3
21FF02:  ADD.W           R4, R0, R1,LSR#1
21FF06:  LSLS            R0, R4, #5; byte_count
21FF08:  BLX             malloc
21FF0C:  MOV             R6, R0
21FF0E:  CMP.W           R10, #0
21FF12:  BEQ             loc_21FF2E
21FF14:  LSLS            R2, R5, #5; size_t
21FF16:  MOV             R0, R6; void *
21FF18:  MOV             R1, R10; void *
21FF1A:  BLX             memcpy_0
21FF1E:  MOV             R0, R10; p
21FF20:  BLX             free
21FF24:  LDR.W           R0, =(streams_ptr - 0x21FF2C)
21FF28:  ADD             R0, PC; streams_ptr
21FF2A:  LDR             R0, [R0]; streams
21FF2C:  LDR             R5, [R0,#(dword_6BD69C - 0x6BD698)]
21FF2E:  LDR.W           R0, =(streams_ptr - 0x21FF36)
21FF32:  ADD             R0, PC; streams_ptr
21FF34:  LDR             R0, [R0]; streams
21FF36:  STR             R6, [R0,#(dword_6BD6A0 - 0x6BD698)]
21FF38:  STR             R4, [R0]
21FF3A:  B               loc_21FF3E
21FF3C:  MOV             R6, R10
21FF3E:  LDR.W           R0, =(streams_ptr - 0x21FF50)
21FF42:  VMOV.I32        Q8, #0
21FF46:  ADD.W           R1, R6, R5,LSL#5
21FF4A:  MOVS            R2, #3
21FF4C:  ADD             R0, PC; streams_ptr
21FF4E:  MOVS            R3, #1
21FF50:  VST1.32         {D16-D17}, [R1]!
21FF54:  LDR             R0, [R0]; streams
21FF56:  VST1.32         {D16-D17}, [R1]
21FF5A:  ADDS            R1, R5, #1
21FF5C:  STR             R1, [R0,#(dword_6BD69C - 0x6BD698)]
21FF5E:  LSLS            R1, R5, #5
21FF60:  STR             R2, [R6,R1]
21FF62:  MOVS            R2, #4
21FF64:  LDR             R1, [R0,#(dword_6BD6A0 - 0x6BD698)]
21FF66:  ADD.W           R1, R1, R5,LSL#5
21FF6A:  STR             R2, [R1,#8]
21FF6C:  LDR             R1, [R0,#(dword_6BD6A0 - 0x6BD698)]
21FF6E:  ADD.W           R1, R1, R5,LSL#5
21FF72:  STRB            R3, [R1,#5]
21FF74:  MOVS            R3, #2
21FF76:  STR             R3, [R1,#0x14]
21FF78:  MOVS            R1, #0
21FF7A:  LDR             R0, [R0,#(dword_6BD6A0 - 0x6BD698)]
21FF7C:  ADD.W           R0, R0, R5,LSL#5
21FF80:  STRB            R1, [R0,#0x1C]
21FF82:  STR.W           R8, [R0,#0x18]
21FF86:  STR             R2, [R0,#0xC]
21FF88:  LDR.W           R0, [R9,#8]
21FF8C:  LSLS            R1, R0, #0x16
21FF8E:  BPL             loc_220056
21FF90:  MOV             R0, R9
21FF92:  BLX             j__Z16GetExtraColorPtrP10RpGeometry; GetExtraColorPtr(RpGeometry *)
21FF96:  MOV             R8, R0
21FF98:  LDR.W           R0, =(streams_ptr - 0x21FFA0)
21FF9C:  ADD             R0, PC; streams_ptr
21FF9E:  LDR             R0, [R0]; streams
21FFA0:  LDRD.W          R1, R5, [R0]
21FFA4:  ADDS            R0, R5, #1
21FFA6:  CMP             R1, R0
21FFA8:  BCS             loc_21FFFE
21FFAA:  MOVW            R1, #0xAAAB
21FFAE:  LSLS            R0, R0, #2
21FFB0:  MOVT            R1, #0xAAAA
21FFB4:  UMULL.W         R0, R1, R0, R1
21FFB8:  MOVS            R0, #3
21FFBA:  ADD.W           R10, R0, R1,LSR#1
21FFBE:  MOV.W           R0, R10,LSL#5; byte_count
21FFC2:  BLX             malloc
21FFC6:  MOV             R6, R0
21FFC8:  LDR.W           R0, =(streams_ptr - 0x21FFD0)
21FFCC:  ADD             R0, PC; streams_ptr
21FFCE:  LDR             R0, [R0]; streams
21FFD0:  LDR             R4, [R0,#(dword_6BD6A0 - 0x6BD698)]
21FFD2:  CBZ             R4, loc_21FFEE
21FFD4:  LSLS            R2, R5, #5; size_t
21FFD6:  MOV             R0, R6; void *
21FFD8:  MOV             R1, R4; void *
21FFDA:  BLX             memcpy_0
21FFDE:  MOV             R0, R4; p
21FFE0:  BLX             free
21FFE4:  LDR.W           R0, =(streams_ptr - 0x21FFEC)
21FFE8:  ADD             R0, PC; streams_ptr
21FFEA:  LDR             R0, [R0]; streams
21FFEC:  LDR             R5, [R0,#(dword_6BD69C - 0x6BD698)]
21FFEE:  LDR.W           R0, =(streams_ptr - 0x21FFF6)
21FFF2:  ADD             R0, PC; streams_ptr
21FFF4:  LDR             R0, [R0]; streams
21FFF6:  STR             R6, [R0,#(dword_6BD6A0 - 0x6BD698)]
21FFF8:  STR.W           R10, [R0]
21FFFC:  B               loc_220008
21FFFE:  LDR.W           R0, =(streams_ptr - 0x220006)
220002:  ADD             R0, PC; streams_ptr
220004:  LDR             R0, [R0]; streams
220006:  LDR             R6, [R0,#(dword_6BD6A0 - 0x6BD698)]
220008:  LDR.W           R0, =(streams_ptr - 0x22001A)
22000C:  VMOV.I32        Q8, #0
220010:  ADD.W           R1, R6, R5,LSL#5
220014:  MOVS            R2, #6
220016:  ADD             R0, PC; streams_ptr
220018:  MOVS            R3, #1
22001A:  VST1.32         {D16-D17}, [R1]!
22001E:  LDR             R0, [R0]; streams
220020:  VST1.32         {D16-D17}, [R1]
220024:  ADDS            R1, R5, #1
220026:  STR             R1, [R0,#(dword_6BD69C - 0x6BD698)]
220028:  LSLS            R1, R5, #5
22002A:  STR             R2, [R6,R1]
22002C:  MOVS            R2, #4
22002E:  LDR             R1, [R0,#(dword_6BD6A0 - 0x6BD698)]
220030:  ADD.W           R1, R1, R5,LSL#5
220034:  STR             R2, [R1,#8]
220036:  LDR             R1, [R0,#(dword_6BD6A0 - 0x6BD698)]
220038:  ADD.W           R1, R1, R5,LSL#5
22003C:  STRB            R3, [R1,#5]
22003E:  MOVS            R3, #2
220040:  STR             R3, [R1,#0x14]
220042:  MOVS            R1, #0
220044:  LDR             R0, [R0,#(dword_6BD6A0 - 0x6BD698)]
220046:  ADD.W           R0, R0, R5,LSL#5
22004A:  STRB            R1, [R0,#0x1C]
22004C:  STR.W           R8, [R0,#0x18]
220050:  STR             R2, [R0,#0xC]
220052:  LDR.W           R0, [R9,#8]
220056:  AND.W           R0, R0, #0x208
22005A:  CMP.W           R0, #0x208
22005E:  BNE             loc_2200E6
220060:  MOV             R0, R9
220062:  BLX             j__Z16GetExtraColorPtrP10RpGeometry; GetExtraColorPtr(RpGeometry *)
220066:  LDR.W           R1, [R9,#0x14]
22006A:  CBZ             R1, loc_2200E6
22006C:  MOVS            R1, #0
22006E:  MOVS            R2, #0xFF
220070:  LDR.W           R3, [R9,#0x30]
220074:  LDRB.W          R6, [R3,R1,LSL#2]
220078:  ADDS            R6, #0x12
22007A:  CMP             R6, #0xFF
22007C:  IT CS
22007E:  MOVCS           R6, R2
220080:  STRB.W          R6, [R3,R1,LSL#2]
220084:  LDR.W           R3, [R9,#0x30]
220088:  ADD.W           R3, R3, R1,LSL#2
22008C:  LDRB            R6, [R3,#1]
22008E:  ADDS            R6, #0x12
220090:  CMP             R6, #0xFF
220092:  IT CS
220094:  MOVCS           R6, R2
220096:  STRB            R6, [R3,#1]
220098:  LDR.W           R3, [R9,#0x30]
22009C:  ADD.W           R3, R3, R1,LSL#2
2200A0:  LDRB            R6, [R3,#2]
2200A2:  ADDS            R6, #0x12
2200A4:  CMP             R6, #0xFF
2200A6:  IT CS
2200A8:  MOVCS           R6, R2
2200AA:  STRB            R6, [R3,#2]
2200AC:  ADD.W           R6, R0, R1,LSL#2
2200B0:  LDRB.W          R3, [R0,R1,LSL#2]
2200B4:  ADDS            R3, #0x12
2200B6:  CMP             R3, #0xFF
2200B8:  IT CS
2200BA:  MOVCS           R3, R2
2200BC:  LDRB            R5, [R6,#1]
2200BE:  LDRB            R4, [R6,#2]
2200C0:  STRB.W          R3, [R0,R1,LSL#2]
2200C4:  ADD.W           R3, R5, #0x12
2200C8:  CMP             R3, #0xFF
2200CA:  IT CS
2200CC:  MOVCS           R3, R2
2200CE:  ADDS            R1, #1
2200D0:  STRB            R3, [R6,#1]
2200D2:  ADD.W           R3, R4, #0x12
2200D6:  CMP             R3, #0xFF
2200D8:  IT CS
2200DA:  MOVCS           R3, R2
2200DC:  STRB            R3, [R6,#2]
2200DE:  LDR.W           R3, [R9,#0x14]
2200E2:  CMP             R1, R3
2200E4:  BCC             loc_220070
2200E6:  MOV             R0, R9
2200E8:  BLX             j_RpSkinGeometryGetSkin
2200EC:  MOV             R8, R0
2200EE:  CMP.W           R8, #0
2200F2:  BEQ.W           loc_2204F6
2200F6:  MOV             R0, R8
2200F8:  BLX             j_RpSkinGetVertexBoneWeights
2200FC:  MOV             R6, R0
2200FE:  LDR.W           R0, [R8,#0x10]
220102:  CMP             R0, #4
220104:  BNE             loc_220124
220106:  MOV             R0, R9
220108:  BLX             j_RpSkinGeometryGetSkin
22010C:  BLX             j_RpSkinGetVertexBoneWeights
220110:  MOV             R11, R9
220112:  LDR.W           R5, [R11,#0x14]!
220116:  CBZ             R5, loc_22012C
220118:  VLDR            S0, =0.0
22011C:  CMP             R5, #3
22011E:  BHI             loc_220136
220120:  MOV             R3, R5
220122:  B               loc_22018A
220124:  MOV             R11, R9
220126:  LDR.W           R5, [R11,#0x14]!
22012A:  B               loc_220282
22012C:  MOVS            R0, #0; byte_count
22012E:  BLX             malloc
220132:  MOV             LR, R0
220134:  B               loc_22033A
220136:  ANDS.W          R1, R5, #3
22013A:  MOV             R3, R5
22013C:  IT EQ
22013E:  MOVEQ           R1, #4
220140:  SUBS            R2, R5, R1
220142:  BEQ             loc_22018A
220144:  VMOV.I32        Q8, #0
220148:  ADD.W           R2, R0, R2,LSL#4
22014C:  ADDS            R0, #0xC
22014E:  MOV             R3, R5
220150:  VLD4.32         {D18,D20,D22,D24}, [R0]!
220154:  SUBS            R3, #4
220156:  CMP             R1, R3
220158:  VLD4.32         {D19,D21,D23,D25}, [R0]!
22015C:  VMAX.F32        Q8, Q9, Q8
220160:  BNE             loc_220150
220162:  VEXT.8          Q9, Q8, Q8, #8
220166:  MOV             R3, R1
220168:  VMAX.F32        Q0, Q8, Q9
22016C:  VDUP.32         Q8, D0[1]
220170:  VCGT.F32        Q8, Q0, Q8
220174:  VMOVN.I32       D16, Q8
220178:  VMOV.U16        R0, D16[0]
22017C:  LSLS            R0, R0, #0x1F
22017E:  IT NE
220180:  VMOVNE.F32      S1, S0
220184:  MOV             R0, R2
220186:  VMOV.F32        S0, S1
22018A:  ADDS            R0, #0xC
22018C:  VLDR            S2, [R0]
220190:  ADDS            R0, #0x10
220192:  SUBS            R3, #1
220194:  VMAX.F32        D0, D1, D0
220198:  BNE             loc_22018C
22019A:  VLDR            S2, =0.07
22019E:  VCMPE.F32       S0, S2
2201A2:  VMRS            APSR_nzcv, FPSCR
2201A6:  BLT             loc_220282
2201A8:  LSLS            R0, R5, #3; byte_count
2201AA:  BLX             malloc
2201AE:  MOV             R4, R0
2201B0:  CMP             R5, #1
2201B2:  BLT             loc_220214
2201B4:  VLDR            S0, =65535.0
2201B8:  MOVS            R0, #0
2201BA:  VLDR            S2, [R6]
2201BE:  VMUL.F32        S2, S2, S0
2201C2:  VCVT.U32.F32    S2, S2
2201C6:  VMOV            R1, S2
2201CA:  STRH.W          R1, [R4,R0,LSL#3]
2201CE:  ADD.W           R1, R4, R0,LSL#3
2201D2:  ADDS            R0, #1
2201D4:  VLDR            S2, [R6,#4]
2201D8:  VMUL.F32        S2, S2, S0
2201DC:  VCVT.U32.F32    S2, S2
2201E0:  VMOV            R2, S2
2201E4:  STRH            R2, [R1,#2]
2201E6:  VLDR            S2, [R6,#8]
2201EA:  VMUL.F32        S2, S2, S0
2201EE:  VCVT.U32.F32    S2, S2
2201F2:  VMOV            R2, S2
2201F6:  STRH            R2, [R1,#4]
2201F8:  VLDR            S2, [R6,#0xC]
2201FC:  ADDS            R6, #0x10
2201FE:  VMUL.F32        S2, S2, S0
220202:  VCVT.U32.F32    S2, S2
220206:  VMOV            R2, S2
22020A:  STRH            R2, [R1,#6]
22020C:  LDR.W           R1, [R11]
220210:  CMP             R0, R1
220212:  BLT             loc_2201BA
220214:  LDR.W           R0, =(streams_ptr - 0x22021C)
220218:  ADD             R0, PC; streams_ptr
22021A:  LDR             R0, [R0]; streams
22021C:  LDRD.W          R1, R5, [R0]
220220:  ADDS            R0, R5, #1
220222:  CMP             R1, R0
220224:  BCS.W           loc_220656
220228:  MOVW            R1, #0xAAAB
22022C:  LSLS            R0, R0, #2
22022E:  MOVT            R1, #0xAAAA
220232:  UMULL.W         R0, R1, R0, R1
220236:  MOVS            R0, #3
220238:  ADD.W           R0, R0, R1,LSR#1
22023C:  STR             R0, [SP,#0x30+var_24]
22023E:  LSLS            R0, R0, #5; byte_count
220240:  BLX             malloc
220244:  MOV             R6, R0
220246:  LDR.W           R0, =(streams_ptr - 0x22024E)
22024A:  ADD             R0, PC; streams_ptr
22024C:  LDR             R0, [R0]; streams
22024E:  LDR.W           R10, [R0,#(dword_6BD6A0 - 0x6BD698)]
220252:  CMP.W           R10, #0
220256:  BEQ             loc_220272
220258:  LSLS            R2, R5, #5; size_t
22025A:  MOV             R0, R6; void *
22025C:  MOV             R1, R10; void *
22025E:  BLX             memcpy_0
220262:  MOV             R0, R10; p
220264:  BLX             free
220268:  LDR.W           R0, =(streams_ptr - 0x220270)
22026C:  ADD             R0, PC; streams_ptr
22026E:  LDR             R0, [R0]; streams
220270:  LDR             R5, [R0,#(dword_6BD69C - 0x6BD698)]
220272:  LDR.W           R0, =(streams_ptr - 0x22027C)
220276:  LDR             R1, [SP,#0x30+var_24]
220278:  ADD             R0, PC; streams_ptr
22027A:  LDR             R0, [R0]; streams
22027C:  STR             R6, [R0,#(dword_6BD6A0 - 0x6BD698)]
22027E:  STR             R1, [R0]
220280:  B               loc_22065E
220282:  LSLS            R0, R5, #2; byte_count
220284:  BLX             malloc
220288:  MOV             LR, R0
22028A:  CMP             R5, #1
22028C:  BLT             loc_22033A
22028E:  ADD.W           R0, R6, #0xC
220292:  ADD.W           R1, LR, #3
220296:  ADD.W           R2, LR, #1
22029A:  VLDR            S0, =255.0
22029E:  MOV.W           R12, #0
2202A2:  MOVS            R5, #0
2202A4:  VLDR            S2, [R0]
2202A8:  VLDR            S4, [R0,#-0xC]
2202AC:  VCMP.F32        S2, #0.0
2202B0:  VMRS            APSR_nzcv, FPSCR
2202B4:  BEQ             loc_2202E6
2202B6:  VLDR            S2, [R0,#-8]
2202BA:  VLDR            S6, [R0,#-4]
2202BE:  VADD.F32        S2, S4, S2
2202C2:  VADD.F32        S2, S2, S6
2202C6:  VDIV.F32        S2, S0, S2
2202CA:  VMUL.F32        S4, S4, S2
2202CE:  VCVT.U32.F32    S4, S4
2202D2:  VMOV            R4, S4
2202D6:  STRB.W          R4, [R1,#-3]
2202DA:  SUBS            R4, R0, #4
2202DC:  VLDR            S4, [R0,#-8]
2202E0:  VMUL.F32        S4, S4, S2
2202E4:  B               loc_220306
2202E6:  VMUL.F32        S2, S4, S0
2202EA:  VCVT.U32.F32    S2, S2
2202EE:  VMOV            R4, S2
2202F2:  STRB.W          R4, [R1,#-3]
2202F6:  ADD.W           R4, R6, #8
2202FA:  VLDR            S2, [R0,#-8]
2202FE:  VMUL.F32        S4, S2, S0
220302:  VMOV.F32        S2, S0
220306:  VCVT.U32.F32    S4, S4
22030A:  ADDS            R0, #0x10
22030C:  ADDS            R6, #0x10
22030E:  VMOV            R3, S4
220312:  STRB.W          R3, [R2,R5,LSL#2]
220316:  ADDS            R5, #1
220318:  VLDR            S4, [R4]
22031C:  VMUL.F32        S2, S2, S4
220320:  VCVT.U32.F32    S2, S2
220324:  STRB.W          R12, [R1]
220328:  VMOV            R3, S2
22032C:  STRB.W          R3, [R1,#-1]
220330:  ADDS            R1, #4
220332:  LDR.W           R3, [R11]
220336:  CMP             R5, R3
220338:  BLT             loc_2202A4
22033A:  LDR.W           R0, =(streams_ptr - 0x220342)
22033E:  ADD             R0, PC; streams_ptr
220340:  LDR             R0, [R0]; streams
220342:  LDRD.W          R1, R5, [R0]
220346:  ADDS            R0, R5, #1
220348:  CMP             R1, R0
22034A:  BCS             loc_2203AC
22034C:  MOVW            R1, #0xAAAB
220350:  LSLS            R0, R0, #2
220352:  MOVT            R1, #0xAAAA
220356:  STR.W           R8, [SP,#0x30+var_24]
22035A:  UMULL.W         R0, R1, R0, R1
22035E:  MOV             R8, LR
220360:  MOVS            R0, #3
220362:  ADD.W           R10, R0, R1,LSR#1
220366:  MOV.W           R0, R10,LSL#5; byte_count
22036A:  BLX             malloc
22036E:  MOV             R4, R0
220370:  LDR.W           R0, =(streams_ptr - 0x220378)
220374:  ADD             R0, PC; streams_ptr
220376:  LDR             R0, [R0]; streams
220378:  LDR             R6, [R0,#(dword_6BD6A0 - 0x6BD698)]
22037A:  CBZ             R6, loc_220396
22037C:  LSLS            R2, R5, #5; size_t
22037E:  MOV             R0, R4; void *
220380:  MOV             R1, R6; void *
220382:  BLX             memcpy_0
220386:  MOV             R0, R6; p
220388:  BLX             free
22038C:  LDR.W           R0, =(streams_ptr - 0x220394)
220390:  ADD             R0, PC; streams_ptr
220392:  LDR             R0, [R0]; streams
220394:  LDR             R5, [R0,#(dword_6BD69C - 0x6BD698)]
220396:  LDR.W           R0, =(streams_ptr - 0x2203A4)
22039A:  MOV             LR, R8
22039C:  LDR.W           R8, [SP,#0x30+var_24]
2203A0:  ADD             R0, PC; streams_ptr
2203A2:  LDR             R0, [R0]; streams
2203A4:  STR             R4, [R0,#(dword_6BD6A0 - 0x6BD698)]
2203A6:  STR.W           R10, [R0]
2203AA:  B               loc_2203B4
2203AC:  LDR             R0, =(streams_ptr - 0x2203B2)
2203AE:  ADD             R0, PC; streams_ptr
2203B0:  LDR             R0, [R0]; streams
2203B2:  LDR             R4, [R0,#(dword_6BD6A0 - 0x6BD698)]
2203B4:  LDR             R0, =(streams_ptr - 0x2203C4)
2203B6:  VMOV.I32        Q8, #0
2203BA:  ADD.W           R1, R4, R5,LSL#5
2203BE:  MOVS            R2, #4
2203C0:  ADD             R0, PC; streams_ptr
2203C2:  MOVS            R3, #1
2203C4:  VST1.32         {D16-D17}, [R1]!
2203C8:  LDR             R0, [R0]; streams
2203CA:  VST1.32         {D16-D17}, [R1]
2203CE:  ADDS            R1, R5, #1
2203D0:  STR             R1, [R0,#(dword_6BD69C - 0x6BD698)]
2203D2:  LSLS            R1, R5, #5
2203D4:  STR             R2, [R4,R1]
2203D6:  LDR             R1, [R0,#(dword_6BD6A0 - 0x6BD698)]
2203D8:  ADD.W           R1, R1, R5,LSL#5
2203DC:  STR             R2, [R1,#8]
2203DE:  LDR             R1, [R0,#(dword_6BD6A0 - 0x6BD698)]
2203E0:  ADD.W           R1, R1, R5,LSL#5
2203E4:  STRB            R3, [R1,#5]
2203E6:  MOVS            R3, #2
2203E8:  STR             R3, [R1,#0x14]
2203EA:  LDR             R0, [R0,#(dword_6BD6A0 - 0x6BD698)]
2203EC:  ADD.W           R0, R0, R5,LSL#5
2203F0:  STR.W           LR, [R0,#0x18]
2203F4:  STR             R2, [R0,#0xC]
2203F6:  ADDS            R0, #0x1C
2203F8:  MOVS            R1, #1
2203FA:  STRB            R1, [R0]
2203FC:  MOV             R0, R8
2203FE:  BLX             j_RpSkinGetVertexBoneIndices
220402:  MOV             R6, R0
220404:  LDR.W           R0, [R11]
220408:  LSLS            R0, R0, #2; byte_count
22040A:  BLX             malloc
22040E:  MOV             R4, R0
220410:  LDR.W           R0, [R11]
220414:  CMP             R0, #1
220416:  BLT             loc_220444
220418:  MOVS            R0, #0
22041A:  LDR.W           R1, [R6,R0,LSL#2]
22041E:  ADD.W           R2, R4, R0,LSL#2
220422:  STRB.W          R1, [R4,R0,LSL#2]
220426:  LDR.W           R1, [R6,R0,LSL#2]
22042A:  LSRS            R1, R1, #8
22042C:  STRB            R1, [R2,#1]
22042E:  ADD.W           R1, R6, R0,LSL#2
220432:  ADDS            R0, #1
220434:  LDRH            R3, [R1,#2]
220436:  STRB            R3, [R2,#2]
220438:  LDRB            R1, [R1,#3]
22043A:  STRB            R1, [R2,#3]
22043C:  LDR.W           R1, [R11]
220440:  CMP             R0, R1
220442:  BLT             loc_22041A
220444:  LDR             R0, =(streams_ptr - 0x22044A)
220446:  ADD             R0, PC; streams_ptr
220448:  LDR             R0, [R0]; streams
22044A:  LDRD.W          R1, R5, [R0]
22044E:  ADDS            R0, R5, #1
220450:  CMP             R1, R0
220452:  BCS             loc_2204A8
220454:  MOVW            R1, #0xAAAB
220458:  LSLS            R0, R0, #2
22045A:  MOVT            R1, #0xAAAA
22045E:  UMULL.W         R0, R1, R0, R1
220462:  MOVS            R0, #3
220464:  ADD.W           R10, R0, R1,LSR#1
220468:  MOV.W           R0, R10,LSL#5; byte_count
22046C:  BLX             malloc
220470:  MOV             R6, R0
220472:  LDR             R0, =(streams_ptr - 0x220478)
220474:  ADD             R0, PC; streams_ptr
220476:  LDR             R0, [R0]; streams
220478:  LDR.W           R8, [R0,#(dword_6BD6A0 - 0x6BD698)]
22047C:  CMP.W           R8, #0
220480:  BEQ             loc_22049A
220482:  LSLS            R2, R5, #5; size_t
220484:  MOV             R0, R6; void *
220486:  MOV             R1, R8; void *
220488:  BLX             memcpy_0
22048C:  MOV             R0, R8; p
22048E:  BLX             free
220492:  LDR             R0, =(streams_ptr - 0x220498)
220494:  ADD             R0, PC; streams_ptr
220496:  LDR             R0, [R0]; streams
220498:  LDR             R5, [R0,#(dword_6BD69C - 0x6BD698)]
22049A:  LDR             R0, =(streams_ptr - 0x2204A0)
22049C:  ADD             R0, PC; streams_ptr
22049E:  LDR             R0, [R0]; streams
2204A0:  STR             R6, [R0,#(dword_6BD6A0 - 0x6BD698)]
2204A2:  STR.W           R10, [R0]
2204A6:  B               loc_2204B0
2204A8:  LDR             R0, =(streams_ptr - 0x2204AE)
2204AA:  ADD             R0, PC; streams_ptr
2204AC:  LDR             R0, [R0]; streams
2204AE:  LDR             R6, [R0,#(dword_6BD6A0 - 0x6BD698)]
2204B0:  LDR             R0, =(streams_ptr - 0x2204C0)
2204B2:  VMOV.I32        Q8, #0
2204B6:  ADD.W           R1, R6, R5,LSL#5
2204BA:  MOVS            R2, #5
2204BC:  ADD             R0, PC; streams_ptr
2204BE:  MOVS            R3, #0
2204C0:  VST1.32         {D16-D17}, [R1]!
2204C4:  LDR             R0, [R0]; streams
2204C6:  VST1.32         {D16-D17}, [R1]
2204CA:  ADDS            R1, R5, #1
2204CC:  STR             R1, [R0,#(dword_6BD69C - 0x6BD698)]
2204CE:  LSLS            R1, R5, #5
2204D0:  STR             R2, [R6,R1]
2204D2:  MOVS            R2, #4
2204D4:  LDR             R1, [R0,#(dword_6BD6A0 - 0x6BD698)]
2204D6:  ADD.W           R1, R1, R5,LSL#5
2204DA:  STR             R2, [R1,#8]
2204DC:  LDR             R1, [R0,#(dword_6BD6A0 - 0x6BD698)]
2204DE:  ADD.W           R1, R1, R5,LSL#5
2204E2:  STRB            R3, [R1,#5]
2204E4:  MOVS            R3, #2
2204E6:  STR             R3, [R1,#0x14]
2204E8:  MOVS            R1, #1
2204EA:  LDR             R0, [R0,#(dword_6BD6A0 - 0x6BD698)]
2204EC:  ADD.W           R0, R0, R5,LSL#5
2204F0:  STR             R4, [R0,#0x18]
2204F2:  STR             R2, [R0,#0xC]
2204F4:  STRB            R1, [R0,#0x1C]
2204F6:  LDR             R0, =(streams_ptr - 0x2204FC)
2204F8:  ADD             R0, PC; streams_ptr
2204FA:  LDR             R0, [R0]; streams
2204FC:  LDR             R4, [R0,#(dword_6BD69C - 0x6BD698)]
2204FE:  CBZ             R4, loc_220520
220500:  LDR             R0, =(streams_ptr - 0x22050A)
220502:  MOVS            R1, #0
220504:  MOVS            R5, #0
220506:  ADD             R0, PC; streams_ptr
220508:  LDR             R0, [R0]; streams
22050A:  LDR             R0, [R0,#(dword_6BD6A0 - 0x6BD698)]
22050C:  ADDS            R0, #0x10
22050E:  LDR.W           R2, [R0,#-4]
220512:  ADDS            R1, #1
220514:  STR             R5, [R0]
220516:  ADDS            R0, #0x20 ; ' '
220518:  ADD             R5, R2
22051A:  CMP             R1, R4
22051C:  BCC             loc_22050E
22051E:  B               loc_220522
220520:  MOVS            R5, #0
220522:  LDR.W           R6, [R9,#0x14]
220526:  MUL.W           R0, R6, R5; byte_count
22052A:  BLX             malloc
22052E:  MOVS            R1, #0
220530:  CMP             R4, #0
220532:  STR             R0, [SP,#0x30+var_2C]
220534:  BEQ             loc_2205E6
220536:  LDR             R1, =(streams_ptr - 0x220542)
220538:  MOV.W           R8, #0
22053C:  LDR             R0, =(streams_ptr - 0x220544)
22053E:  ADD             R1, PC; streams_ptr
220540:  ADD             R0, PC; streams_ptr
220542:  LDR.W           R10, [R1]; streams
220546:  LDR             R1, =(streams_ptr - 0x22054E)
220548:  LDR             R0, [R0]; streams
22054A:  ADD             R1, PC; streams_ptr
22054C:  LDR             R1, [R1]; streams
22054E:  STR             R1, [SP,#0x30+var_24]
220550:  LDR             R1, =(streams_ptr - 0x220558)
220552:  LDR             R0, [R0,#(dword_6BD6A0 - 0x6BD698)]
220554:  ADD             R1, PC; streams_ptr
220556:  LDR             R1, [R1]; streams
220558:  STR             R1, [SP,#0x30+var_30]
22055A:  CMP             R6, #1
22055C:  BGE             loc_220568
22055E:  B               loc_22059C
220560:  LDR.W           R6, [R9,#0x14]
220564:  CMP             R6, #1
220566:  BLT             loc_22059C
220568:  ADD.W           R0, R0, R8,LSL#5
22056C:  MOV.W           R11, #0
220570:  LDRD.W          R2, R1, [R0,#0xC]; size_t
220574:  LDR             R4, [R0,#0x18]
220576:  LDR             R0, [SP,#0x30+var_2C]
220578:  ADDS            R6, R0, R1
22057A:  MOV             R0, R6; void *
22057C:  MOV             R1, R4; void *
22057E:  BLX             memcpy_1
220582:  LDR.W           R0, [R10,#(dword_6BD6A0 - 0x6BD698)]
220586:  ADD             R6, R5
220588:  ADD.W           R11, R11, #1
22058C:  ADD.W           R1, R0, R8,LSL#5
220590:  LDR             R2, [R1,#0xC]
220592:  LDR.W           R1, [R9,#0x14]
220596:  ADD             R4, R2
220598:  CMP             R11, R1
22059A:  BLT             loc_22057A
22059C:  ADD.W           R1, R0, R8,LSL#5
2205A0:  LDRB            R2, [R1,#0x1C]
2205A2:  CBZ             R2, loc_2205B8
2205A4:  LDR             R0, [R1,#0x18]; p
2205A6:  BLX             free
2205AA:  LDR             R0, [SP,#0x30+var_30]
2205AC:  MOVS            R2, #0
2205AE:  LDR             R0, [R0,#8]
2205B0:  ADD.W           R1, R0, R8,LSL#5
2205B4:  STRB            R2, [R1,#0x1C]
2205B6:  STR             R2, [R1,#0x18]
2205B8:  LDR             R1, [SP,#0x30+var_24]
2205BA:  ADD.W           R8, R8, #1
2205BE:  LDR             R1, [R1,#4]
2205C0:  CMP             R8, R1
2205C2:  BCC             loc_220560
2205C4:  CBZ             R1, loc_2205E4
2205C6:  LDR             R0, =(streams_ptr - 0x2205CE)
2205C8:  MOVS            R2, #0
2205CA:  ADD             R0, PC; streams_ptr
2205CC:  LDR             R0, [R0]; streams
2205CE:  LDR             R0, [R0,#(dword_6BD6A0 - 0x6BD698)]
2205D0:  ADDS            R0, #0xC
2205D2:  ADDS            R2, #1
2205D4:  STR.W           R5, [R0],#0x20
2205D8:  CMP             R2, R1
2205DA:  BCC             loc_2205D2
2205DC:  B               loc_2205E6
2205DE:  ALIGN 0x10
2205E0:  DCFS 255.0
2205E4:  MOVS            R1, #0
2205E6:  LDR             R0, [SP,#0x30+var_28]
2205E8:  MOVS            R2, #4
2205EA:  STR             R1, [SP,#0x30+var_20]
2205EC:  ADD             R1, SP, #0x30+var_20
2205EE:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
2205F2:  LDR             R0, =(streams_ptr - 0x2205F8)
2205F4:  ADD             R0, PC; streams_ptr
2205F6:  LDR             R0, [R0]; streams
2205F8:  LDR             R0, [R0,#(dword_6BD69C - 0x6BD698)]
2205FA:  CMP             R0, #0
2205FC:  BEQ             loc_22062C
2205FE:  LDR             R0, =(streams_ptr - 0x220608)
220600:  MOVS            R4, #0
220602:  MOVS            R6, #0
220604:  ADD             R0, PC; streams_ptr
220606:  LDR.W           R8, [R0]; streams
22060A:  LDR             R0, =(streams_ptr - 0x220610)
22060C:  ADD             R0, PC; streams_ptr
22060E:  LDR.W           R10, [R0]; streams
220612:  LDR.W           R0, [R8,#(dword_6BD6A0 - 0x6BD698)]
220616:  LDR             R1, [SP,#0x30+var_28]
220618:  ADD             R0, R4
22061A:  BLX             j__ZNK24_rpGeometryStreamBuilder15WriteStreamInfoEP8RwStream; _rpGeometryStreamBuilder::WriteStreamInfo(RwStream *)
22061E:  CBZ             R0, loc_220648
220620:  LDR.W           R0, [R10,#(dword_6BD69C - 0x6BD698)]
220624:  ADDS            R6, #1
220626:  ADDS            R4, #0x20 ; ' '
220628:  CMP             R6, R0
22062A:  BCC             loc_220612
22062C:  LDR.W           R0, [R9,#0x14]
220630:  MUL.W           R2, R0, R5; size_t
220634:  LDRD.W          R4, R0, [SP,#0x30+var_2C]; int
220638:  MOV             R1, R4; void *
22063A:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
22063E:  CBZ             R0, loc_220648
220640:  MOV             R0, R4; p
220642:  BLX             free
220646:  B               loc_22064C
220648:  MOVS            R0, #0
22064A:  STR             R0, [SP,#0x30+var_28]
22064C:  LDR             R0, [SP,#0x30+var_28]
22064E:  ADD             SP, SP, #0x14
220650:  POP.W           {R8-R11}
220654:  POP             {R4-R7,PC}
220656:  LDR             R0, =(streams_ptr - 0x22065C)
220658:  ADD             R0, PC; streams_ptr
22065A:  LDR             R0, [R0]; streams
22065C:  LDR             R6, [R0,#(dword_6BD6A0 - 0x6BD698)]
22065E:  LDR             R0, =(streams_ptr - 0x22066E)
220660:  VMOV.I32        Q8, #0
220664:  ADD.W           R1, R6, R5,LSL#5
220668:  MOVS            R2, #4
22066A:  ADD             R0, PC; streams_ptr
22066C:  MOVS            R3, #1
22066E:  VST1.32         {D16-D17}, [R1]!
220672:  LDR             R0, [R0]; streams
220674:  VST1.32         {D16-D17}, [R1]
220678:  ADDS            R1, R5, #1
22067A:  STR             R1, [R0,#(dword_6BD69C - 0x6BD698)]
22067C:  LSLS            R1, R5, #5
22067E:  STR             R2, [R6,R1]
220680:  LDR             R1, [R0,#(dword_6BD6A0 - 0x6BD698)]
220682:  ADD.W           R1, R1, R5,LSL#5
220686:  STR             R2, [R1,#8]
220688:  LDR             R1, [R0,#(dword_6BD6A0 - 0x6BD698)]
22068A:  ADD.W           R1, R1, R5,LSL#5
22068E:  STRB            R3, [R1,#5]
220690:  STR             R2, [R1,#0x14]
220692:  MOVS            R1, #8
220694:  LDR             R0, [R0,#(dword_6BD6A0 - 0x6BD698)]
220696:  ADD.W           R0, R0, R5,LSL#5
22069A:  STR             R4, [R0,#0x18]
22069C:  STR             R1, [R0,#0xC]
22069E:  B               loc_2203F6
