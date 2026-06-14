; =========================================================
; Game Engine Function: sub_9D9C8
; Address            : 0x9D9C8 - 0x9DF00
; =========================================================

9D9C8:  PUSH            {R4-R7,LR}
9D9CA:  ADD             R7, SP, #0xC
9D9CC:  PUSH.W          {R8-R11}
9D9D0:  SUB             SP, SP, #4
9D9D2:  VPUSH           {D8-D15}
9D9D6:  SUB             SP, SP, #0x20; float
9D9D8:  MOV             R9, R0
9D9DA:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x9D9E6)
9D9DE:  LDR             R5, [R7,#arg_10]
9D9E0:  MOV             R10, R3
9D9E2:  ADD             R0, PC; __stack_chk_guard_ptr
9D9E4:  LDRD.W          R8, R6, [R7,#arg_8]
9D9E8:  VLDR            S16, [R7,#arg_0]
9D9EC:  MOV             R4, R2
9D9EE:  LDR             R0, [R0]; __stack_chk_guard
9D9F0:  MOV             R11, R1
9D9F2:  LDR             R0, [R0]
9D9F4:  STR             R0, [SP,#0x80+var_64]
9D9F6:  CBNZ            R5, loc_9DA00
9D9F8:  MOV             R0, R6; s
9D9FA:  BLX             strlen
9D9FE:  ADDS            R5, R6, R0
9DA00:  VCVT.S32.F32    S0, S16
9DA04:  VLDR            S2, [R9,#0x34]
9DA08:  VLDR            S26, [R8,#0xC]
9DA0C:  VCVT.F32.S32    S0, S0
9DA10:  VADD.F32        S18, S2, S0
9DA14:  VCMP.F32        S18, S26
9DA18:  VMRS            APSR_nzcv, FPSCR
9DA1C:  BGT.W           loc_9DED4
9DA20:  VMOV            S0, R4
9DA24:  VLDR            S2, [R9,#0x10]
9DA28:  VLDR            S16, [R7,#arg_14]
9DA2C:  VDIV.F32        S20, S0, S2
9DA30:  VMUL.F32        S22, S2, S20
9DA34:  VLDR            S24, [R9,#0x30]
9DA38:  VCMP.F32        S16, #0.0
9DA3C:  VMRS            APSR_nzcv, FPSCR
9DA40:  BGT             loc_9DA80
9DA42:  VADD.F32        S0, S18, S22
9DA46:  VLDR            S28, [R8,#4]
9DA4A:  VCMP.F32        S0, S28
9DA4E:  VMRS            APSR_nzcv, FPSCR
9DA52:  BPL             loc_9DA80
9DA54:  CMP             R5, R6
9DA56:  BLS             loc_9DA80
9DA58:  SUBS            R2, R5, R6; n
9DA5A:  MOV             R0, R6; s
9DA5C:  MOVS            R1, #0xA; c
9DA5E:  VMOV.F32        S18, S0
9DA62:  BLX             memchr
9DA66:  VADD.F32        S0, S22, S18
9DA6A:  CMP             R0, #0
9DA6C:  MOV             R6, R5
9DA6E:  IT NE
9DA70:  ADDNE           R6, R0, #1
9DA72:  VCMP.F32        S0, S28
9DA76:  VMRS            APSR_nzcv, FPSCR
9DA7A:  BPL             loc_9DA80
9DA7C:  CMP             R6, R5
9DA7E:  BCC             loc_9DA58
9DA80:  VCMP.F32        S16, #0.0
9DA84:  VMRS            APSR_nzcv, FPSCR
9DA88:  BGT             loc_9DAD2
9DA8A:  SUBS            R0, R5, R6
9DA8C:  MOVW            R1, #0x2711
9DA90:  CMP             R0, R1
9DA92:  BLT             loc_9DADA
9DA94:  VCMP.F32        S18, S26
9DA98:  VMRS            APSR_nzcv, FPSCR
9DA9C:  BPL.W           loc_9DEF6
9DAA0:  CMP             R6, R5
9DAA2:  MOV             R4, R6
9DAA4:  BCS             loc_9DADC
9DAA6:  VMOV.F32        S28, S18
9DAAA:  MOV             R4, R6
9DAAC:  SUBS            R2, R5, R4; n
9DAAE:  MOV             R0, R4; s
9DAB0:  MOVS            R1, #0xA; c
9DAB2:  BLX             memchr
9DAB6:  VADD.F32        S28, S22, S28
9DABA:  CMP             R0, #0
9DABC:  MOV             R4, R5
9DABE:  IT NE
9DAC0:  ADDNE           R4, R0, #1
9DAC2:  VCMP.F32        S28, S26
9DAC6:  VMRS            APSR_nzcv, FPSCR
9DACA:  BPL             loc_9DADC
9DACC:  CMP             R4, R5
9DACE:  BCC             loc_9DAAC
9DAD0:  B               loc_9DADC
9DAD2:  MOV             R4, R5
9DAD4:  CMP             R6, R4
9DAD6:  BNE             loc_9DAE2
9DAD8:  B               loc_9DED4
9DADA:  MOV             R4, R5
9DADC:  CMP             R6, R4
9DADE:  BEQ.W           loc_9DED4
9DAE2:  SUBS            R0, R4, R6
9DAE4:  LDR.W           R1, [R11,#0xC]
9DAE8:  STR             R1, [SP,#0x80+var_78]
9DAEA:  LSLS            R2, R0, #2
9DAEC:  ADD.W           R0, R0, R0,LSL#1
9DAF0:  LSLS            R1, R0, #1
9DAF2:  MOV             R0, R11
9DAF4:  STR             R1, [SP,#0x80+var_7C]
9DAF6:  BL              sub_9C1B4
9DAFA:  LDR.W           R0, [R11,#0x34]
9DAFE:  CMP             R6, R4
9DB00:  STR             R0, [SP,#0x80+var_74]
9DB02:  LDR.W           R0, [R11,#0x38]
9DB06:  STR             R0, [SP,#0x80+var_6C]
9DB08:  LDR.W           R0, [R11,#0x3C]
9DB0C:  STR             R0, [SP,#0x80+var_70]
9DB0E:  BCS.W           loc_9DDEC
9DB12:  VMOV            S0, R10
9DB16:  VLDR            S26, =0.0
9DB1A:  VMOV.F32        S28, #1.0
9DB1E:  MOV.W           R10, #0
9DB22:  VCVT.S32.F32    S0, S0
9DB26:  VCVT.F32.S32    S0, S0
9DB2A:  VADD.F32        S24, S24, S0
9DB2E:  VMOV.F32        S30, S24
9DB32:  VMOV.F32        S19, S30
9DB36:  MOV             R5, R6
9DB38:  VMOV.F32        S17, S18
9DB3C:  MOV             R0, R10
9DB3E:  B               loc_9DB56
9DB40:  CMP             R2, #0xA
9DB42:  IT EQ
9DB44:  ADDEQ           R5, #1
9DB46:  VADD.F32        S17, S22, S17
9DB4A:  MOVS            R0, #0
9DB4C:  VMOV.F32        S19, S24
9DB50:  CMP             R5, R4
9DB52:  BCS.W           loc_9DDEC
9DB56:  VCMP.F32        S16, #0.0
9DB5A:  VMRS            APSR_nzcv, FPSCR
9DB5E:  BLE             loc_9DBB0
9DB60:  CBNZ            R0, loc_9DB82
9DB62:  VMOV            R1, S20; int
9DB66:  MOV             R0, R9; int
9DB68:  VSUB.F32        S0, S19, S24
9DB6C:  MOV             R2, R5; int
9DB6E:  MOV             R3, R4; int
9DB70:  VSUB.F32        S0, S16, S0
9DB74:  VSTR            S0, [SP,#0x80+var_80]
9DB78:  BL              sub_A37F4
9DB7C:  CMP             R0, R5
9DB7E:  IT EQ
9DB80:  ADDEQ           R0, #1
9DB82:  CMP             R5, R0
9DB84:  BCC             loc_9DBA4
9DB86:  CMP             R5, R4
9DB88:  BCS             loc_9DB46
9DB8A:  SUBS            R0, R4, R5
9DB8C:  MOV             R1, R5
9DB8E:  LDRB.W          R2, [R1],#1
9DB92:  CMP             R2, #0x20 ; ' '
9DB94:  IT NE
9DB96:  CMPNE           R2, #9
9DB98:  BNE             loc_9DB40
9DB9A:  SUBS            R0, #1
9DB9C:  MOV             R5, R1
9DB9E:  BNE             loc_9DB8E
9DBA0:  MOV             R5, R4
9DBA2:  B               loc_9DB46
9DBA4:  VMOV.F32        S30, S19
9DBA8:  MOV             R6, R5
9DBAA:  VMOV.F32        S18, S17
9DBAE:  MOV             R10, R0
9DBB0:  LDRSB.W         R0, [R6]
9DBB4:  CMP             R0, #0
9DBB6:  UXTB            R1, R0
9DBB8:  STR             R1, [SP,#0x80+var_68]
9DBBA:  BMI             loc_9DBC4
9DBBC:  ADDS            R6, #1
9DBBE:  CMP             R1, #0x1F
9DBC0:  BLS             loc_9DBDC
9DBC2:  B               loc_9DC02
9DBC4:  ADD             R0, SP, #0x80+var_68
9DBC6:  MOV             R1, R6
9DBC8:  MOV             R2, R4
9DBCA:  BL              sub_88448
9DBCE:  LDR             R1, [SP,#0x80+var_68]
9DBD0:  CMP             R1, #0
9DBD2:  BEQ.W           loc_9DDEC
9DBD6:  ADD             R6, R0
9DBD8:  CMP             R1, #0x1F
9DBDA:  BHI             loc_9DC02
9DBDC:  CMP             R1, #0xD
9DBDE:  BEQ             loc_9DBFC
9DBE0:  CMP             R1, #0xA
9DBE2:  BNE             loc_9DC02
9DBE4:  VADD.F32        S18, S22, S18
9DBE8:  VLDR            S0, [R8,#0xC]
9DBEC:  VCMP.F32        S18, S0
9DBF0:  VMRS            APSR_nzcv, FPSCR
9DBF4:  BGT.W           loc_9DDEC
9DBF8:  VMOV.F32        S30, S24
9DBFC:  CMP             R6, R4
9DBFE:  BCC             loc_9DB32
9DC00:  B               loc_9DDEC
9DC02:  LDR.W           R0, [R9,#0x14]
9DC06:  UXTH            R2, R1
9DC08:  CMP             R0, R2
9DC0A:  BLE             loc_9DCC0
9DC0C:  LDR.W           R3, [R9,#0x1C]
9DC10:  MOVW            R5, #0xFFFF
9DC14:  LDRD.W          R12, R0, [R9,#0x28]
9DC18:  LDRH.W          R2, [R3,R2,LSL#1]
9DC1C:  CMP             R2, R5
9DC1E:  ADD.W           R3, R2, R2,LSL#2
9DC22:  IT NE
9DC24:  ADDNE.W         R0, R12, R3,LSL#3
9DC28:  CMP             R0, #0
9DC2A:  BEQ             loc_9DCC8
9DC2C:  VLDR            S0, [R0,#4]
9DC30:  CMP             R1, #9
9DC32:  IT NE
9DC34:  CMPNE           R1, #0x20 ; ' '
9DC36:  VMUL.F32        S0, S20, S0
9DC3A:  BEQ             loc_9DCCC
9DC3C:  VMOV.F32        S14, S30
9DC40:  VLDR            S2, [R0,#8]
9DC44:  VMLA.F32        S14, S2, S20
9DC48:  VLDR            S2, [R8,#8]
9DC4C:  VCMP.F32        S14, S2
9DC50:  VMRS            APSR_nzcv, FPSCR
9DC54:  BHI             loc_9DCCC
9DC56:  VMOV.F32        S3, S30
9DC5A:  VLDR            S4, [R0,#0x10]
9DC5E:  VMLA.F32        S3, S4, S20
9DC62:  VLDR            S4, [R8]
9DC66:  VCMP.F32        S3, S4
9DC6A:  VMRS            APSR_nzcv, FPSCR
9DC6E:  BLT             loc_9DCCC
9DC70:  VMOV.F32        S1, S18
9DC74:  VLDR            S5, [R0,#0x14]
9DC78:  VLDR            S7, [R0,#0xC]
9DC7C:  VLDR            S6, [R0,#0x18]
9DC80:  VLDR            S12, [R0,#0x1C]
9DC84:  VLDR            S10, [R0,#0x20]
9DC88:  VLDR            S8, [R0,#0x24]
9DC8C:  VMLA.F32        S1, S5, S20
9DC90:  LDR             R0, [R7,#arg_18]
9DC92:  VMOV.F32        S5, S18
9DC96:  VMLA.F32        S5, S7, S20
9DC9A:  CBZ             R0, loc_9DCD8
9DC9C:  VCMP.F32        S14, S4
9DCA0:  VMRS            APSR_nzcv, FPSCR
9DCA4:  BPL             loc_9DCEA
9DCA6:  VSUB.F32        S14, S3, S14
9DCAA:  VSUB.F32        S7, S3, S4
9DCAE:  VDIV.F32        S14, S7, S14
9DCB2:  VSUB.F32        S7, S10, S6
9DCB6:  VSUB.F32        S14, S28, S14
9DCBA:  VMLA.F32        S6, S14, S7
9DCBE:  B               loc_9DCEE
9DCC0:  LDR.W           R0, [R9,#0x2C]
9DCC4:  CMP             R0, #0
9DCC6:  BNE             loc_9DC2C
9DCC8:  VMOV.F32        S0, S26
9DCCC:  VADD.F32        S30, S30, S0
9DCD0:  CMP             R6, R4
9DCD2:  BCC.W           loc_9DB32
9DCD6:  B               loc_9DDEC
9DCD8:  VMOV.F32        S4, S14
9DCDC:  VMOV.F32        S2, S3
9DCE0:  VMOV.F32        S14, S5
9DCE4:  VMOV.F32        S3, S1
9DCE8:  B               loc_9DD78
9DCEA:  VMOV.F32        S4, S14
9DCEE:  VLDR            S14, [R8,#4]
9DCF2:  VCMP.F32        S5, S14
9DCF6:  VMRS            APSR_nzcv, FPSCR
9DCFA:  BPL             loc_9DD16
9DCFC:  VSUB.F32        S5, S1, S5
9DD00:  VSUB.F32        S7, S1, S14
9DD04:  VDIV.F32        S5, S7, S5
9DD08:  VSUB.F32        S7, S8, S12
9DD0C:  VSUB.F32        S5, S28, S5
9DD10:  VMLA.F32        S12, S5, S7
9DD14:  B               loc_9DD1A
9DD16:  VMOV.F32        S14, S5
9DD1A:  VCMP.F32        S3, S2
9DD1E:  VMRS            APSR_nzcv, FPSCR
9DD22:  BLE             loc_9DD3E
9DD24:  VSUB.F32        S3, S3, S4
9DD28:  VSUB.F32        S5, S2, S4
9DD2C:  VDIV.F32        S3, S5, S3
9DD30:  VSUB.F32        S5, S10, S6
9DD34:  VMOV.F32        S10, S6
9DD38:  VMLA.F32        S10, S3, S5
9DD3C:  B               loc_9DD42
9DD3E:  VMOV.F32        S2, S3
9DD42:  VLDR            S3, [R8,#0xC]
9DD46:  VCMP.F32        S1, S3
9DD4A:  VMRS            APSR_nzcv, FPSCR
9DD4E:  BLE             loc_9DD6A
9DD50:  VSUB.F32        S1, S1, S14
9DD54:  VSUB.F32        S5, S3, S14
9DD58:  VDIV.F32        S1, S5, S1
9DD5C:  VSUB.F32        S5, S8, S12
9DD60:  VMOV.F32        S8, S12
9DD64:  VMLA.F32        S8, S1, S5
9DD68:  B               loc_9DD6E
9DD6A:  VMOV.F32        S3, S1
9DD6E:  VCMP.F32        S14, S3
9DD72:  VMRS            APSR_nzcv, FPSCR
9DD76:  BGE             loc_9DCCC
9DD78:  LDR             R2, [SP,#0x80+var_74]
9DD7A:  LDR             R1, [SP,#0x80+var_70]
9DD7C:  ADDS            R0, R2, #3
9DD7E:  LDR             R3, [R7,#arg_4]
9DD80:  STRH            R0, [R1,#0xA]
9DD82:  ADDS            R0, R2, #2
9DD84:  STRH            R0, [R1,#8]
9DD86:  STRH            R0, [R1,#4]
9DD88:  ADDS            R0, R2, #1
9DD8A:  STRH            R0, [R1,#2]
9DD8C:  LDR             R0, [SP,#0x80+var_6C]
9DD8E:  STRH            R2, [R1,#6]
9DD90:  STRH            R2, [R1]
9DD92:  ADDS            R1, #0xC
9DD94:  ADDS            R2, #4
9DD96:  STR             R3, [R0,#0x10]
9DD98:  STR             R3, [R0,#0x24]
9DD9A:  VSTR            S4, [R0]
9DD9E:  VSTR            S14, [R0,#4]
9DDA2:  VSTR            S6, [R0,#8]
9DDA6:  VSTR            S12, [R0,#0xC]
9DDAA:  STR             R3, [R0,#0x38]
9DDAC:  VSTR            S2, [R0,#0x14]
9DDB0:  VSTR            S14, [R0,#0x18]
9DDB4:  VSTR            S10, [R0,#0x1C]
9DDB8:  VSTR            S12, [R0,#0x20]
9DDBC:  STR             R3, [R0,#0x4C]
9DDBE:  VSTR            S2, [R0,#0x28]
9DDC2:  VSTR            S3, [R0,#0x2C]
9DDC6:  VSTR            S10, [R0,#0x30]
9DDCA:  VSTR            S8, [R0,#0x34]
9DDCE:  VSTR            S4, [R0,#0x3C]
9DDD2:  VSTR            S3, [R0,#0x40]
9DDD6:  VSTR            S6, [R0,#0x44]
9DDDA:  VSTR            S8, [R0,#0x48]
9DDDE:  ADDS            R0, #0x50 ; 'P'
9DDE0:  STR             R1, [SP,#0x80+var_70]
9DDE2:  STR             R2, [SP,#0x80+var_74]
9DDE4:  STR             R0, [SP,#0x80+var_6C]
9DDE6:  B               loc_9DCCC
9DDE8:  DCFS 0.0
9DDEC:  LDR.W           R9, [SP,#0x80+var_6C]
9DDF0:  MOVW            R2, #0xCCCD
9DDF4:  LDRD.W          R0, R1, [R11,#0x1C]
9DDF8:  MOVT            R2, #0xCCCC
9DDFC:  SUB.W           R1, R9, R1
9DE00:  LDR             R4, [SP,#0x80+var_70]
9DE02:  ASRS            R1, R1, #2
9DE04:  MUL.W           R5, R1, R2
9DE08:  CMP             R0, R5
9DE0A:  BGE             loc_9DE54
9DE0C:  CMP             R0, #0
9DE0E:  ITTE NE
9DE10:  ADDNE.W         R1, R0, R0,LSR#31
9DE14:  ADDNE.W         R1, R0, R1,ASR#1
9DE18:  MOVEQ           R1, #8
9DE1A:  CMP             R1, R5
9DE1C:  MOV             R6, R5
9DE1E:  IT GT
9DE20:  MOVGT           R6, R1
9DE22:  CMP             R0, R6
9DE24:  BGE             loc_9DE54
9DE26:  ADD.W           R0, R6, R6,LSL#2
9DE2A:  LSLS            R0, R0, #2
9DE2C:  BL              sub_885E4
9DE30:  LDR.W           R1, [R11,#0x20]; src
9DE34:  MOV             R8, R0
9DE36:  CBZ             R1, loc_9DE50
9DE38:  LDR.W           R0, [R11,#0x18]
9DE3C:  ADD.W           R0, R0, R0,LSL#2
9DE40:  LSLS            R2, R0, #2; n
9DE42:  MOV             R0, R8; dest
9DE44:  BLX             j_memcpy
9DE48:  LDR.W           R0, [R11,#0x20]
9DE4C:  BL              sub_88614
9DE50:  STRD.W          R6, R8, [R11,#0x1C]
9DE54:  LDRD.W          R0, R1, [R11,#0x10]
9DE58:  SUBS            R1, R4, R1
9DE5A:  STR.W           R5, [R11,#0x18]
9DE5E:  ASRS            R5, R1, #1
9DE60:  CMP.W           R0, R1,ASR#1
9DE64:  BGE             loc_9DEA4
9DE66:  CMP             R0, #0
9DE68:  ITTE NE
9DE6A:  ADDNE.W         R1, R0, R0,LSR#31
9DE6E:  ADDNE.W         R6, R0, R1,ASR#1
9DE72:  MOVEQ           R6, #8
9DE74:  CMP             R6, R5
9DE76:  IT LE
9DE78:  MOVLE           R6, R5
9DE7A:  CMP             R0, R6
9DE7C:  BGE             loc_9DEA4
9DE7E:  LSLS            R0, R6, #1
9DE80:  BL              sub_885E4
9DE84:  LDR.W           R1, [R11,#0x14]; src
9DE88:  MOV             R8, R0
9DE8A:  CBZ             R1, loc_9DEA0
9DE8C:  LDR.W           R0, [R11,#0xC]
9DE90:  LSLS            R2, R0, #1; n
9DE92:  MOV             R0, R8; dest
9DE94:  BLX             j_memcpy
9DE98:  LDR.W           R0, [R11,#0x14]
9DE9C:  BL              sub_88614
9DEA0:  STRD.W          R6, R8, [R11,#0x10]
9DEA4:  LDR.W           R0, [R11]
9DEA8:  LDR.W           R1, [R11,#8]
9DEAC:  LDR             R2, [SP,#0x80+var_74]
9DEAE:  ADD.W           R0, R0, R0,LSL#2
9DEB2:  STRD.W          R2, R9, [R11,#0x34]
9DEB6:  LDRD.W          R3, R2, [SP,#0x80+var_7C]
9DEBA:  ADD.W           R0, R1, R0,LSL#3
9DEBE:  STR.W           R5, [R11,#0xC]
9DEC2:  ADD             R2, R3
9DEC4:  STR.W           R4, [R11,#0x3C]
9DEC8:  LDR.W           R1, [R0,#-0x28]
9DECC:  SUBS            R2, R5, R2
9DECE:  ADD             R1, R2
9DED0:  STR.W           R1, [R0,#-0x28]
9DED4:  LDR             R0, [SP,#0x80+var_64]
9DED6:  LDR             R1, =(__stack_chk_guard_ptr - 0x9DEDC)
9DED8:  ADD             R1, PC; __stack_chk_guard_ptr
9DEDA:  LDR             R1, [R1]; __stack_chk_guard
9DEDC:  LDR             R1, [R1]
9DEDE:  CMP             R1, R0
9DEE0:  ITTTT EQ
9DEE2:  ADDEQ           SP, SP, #0x20 ; ' '
9DEE4:  VPOPEQ          {D8-D15}
9DEE8:  ADDEQ           SP, SP, #4
9DEEA:  POPEQ.W         {R8-R11}
9DEEE:  IT EQ
9DEF0:  POPEQ           {R4-R7,PC}
9DEF2:  BLX             __stack_chk_fail
9DEF6:  MOV             R4, R6
9DEF8:  CMP             R6, R4
9DEFA:  BNE.W           loc_9DAE2
9DEFE:  B               loc_9DED4
