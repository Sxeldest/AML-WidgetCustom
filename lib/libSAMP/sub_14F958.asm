; =========================================================
; Game Engine Function: sub_14F958
; Address            : 0x14F958 - 0x14FB5C
; =========================================================

14F958:  PUSH            {R4-R7,LR}
14F95A:  ADD             R7, SP, #0xC
14F95C:  PUSH.W          {R8-R11}
14F960:  SUB             SP, SP, #4
14F962:  VPUSH           {D8-D12}
14F966:  SUB             SP, SP, #0x60
14F968:  STR             R1, [SP,#0xA8+var_94]
14F96A:  MOV             R5, R0
14F96C:  LDR             R0, =(off_234970 - 0x14F972)
14F96E:  ADD             R0, PC; off_234970
14F970:  LDR             R0, [R0]; dword_23DEF0
14F972:  LDR             R0, [R0]
14F974:  BL              sub_E35A0
14F978:  CMP             R0, #0
14F97A:  STR             R0, [SP,#0xA8+var_8C]
14F97C:  BEQ.W           loc_14FB4E
14F980:  LDR             R0, =(off_23496C - 0x14F986)
14F982:  ADD             R0, PC; off_23496C
14F984:  LDR             R0, [R0]; dword_23DEF4
14F986:  LDR             R0, [R0]
14F988:  CMP             R0, #0
14F98A:  BEQ.W           loc_14FB4E
14F98E:  LDR.W           R0, [R0,#0x3B0]
14F992:  MOV.W           R6, #0x14000
14F996:  VLDR            S16, =0.05
14F99A:  MOV.W           R9, #0
14F99E:  LDRD.W          R8, R0, [R0]
14F9A2:  MOVW            R10, #0xFFFF
14F9A6:  STR             R0, [SP,#0xA8+var_90]
14F9A8:  LDRB            R0, [R5,R6]
14F9AA:  CMP             R0, #0
14F9AC:  BEQ.W           loc_14FB40
14F9B0:  ADD.W           R11, R5, R9
14F9B4:  LDRH.W          R0, [R11,#0x22]
14F9B8:  VLDR            S20, [R11,#0x10]
14F9BC:  VLDR            S22, [R11,#0x14]
14F9C0:  CMP             R0, R10
14F9C2:  VLDR            S18, [R11,#0x18]
14F9C6:  BEQ             loc_14FA3C
14F9C8:  CMP.W           R0, #0x3EC
14F9CC:  BHI.W           loc_14FB40
14F9D0:  ADD.W           R1, R8, R0
14F9D4:  LDRB.W          R1, [R1,#0xFB4]
14F9D8:  CMP             R1, #0
14F9DA:  BEQ.W           loc_14FB40
14F9DE:  ADD.W           R0, R8, R0,LSL#2
14F9E2:  LDR             R0, [R0,#4]
14F9E4:  CMP             R0, #0
14F9E6:  BEQ.W           loc_14FB40
14F9EA:  LDR             R4, [R0]
14F9EC:  CMP             R4, #0
14F9EE:  BEQ.W           loc_14FB40
14F9F2:  MOV             R0, R4
14F9F4:  BL              sub_14B4F8
14F9F8:  VMOV            S24, R0
14F9FC:  VLDR            S0, [R11,#0x1C]
14FA00:  VCMP.F32        S24, S0
14FA04:  VMRS            APSR_nzcv, FPSCR
14FA08:  BGT.W           loc_14FB40
14FA0C:  LDR.W           R0, [R4,#0x128]
14FA10:  CMP             R0, #0
14FA12:  BEQ.W           loc_14FB40
14FA16:  ADD             R2, SP, #0xA8+var_88
14FA18:  MOVS            R1, #8
14FA1A:  BL              sub_104D90
14FA1E:  VLDR            S4, [SP,#0xA8+var_80]
14FA22:  VMLA.F32        S4, S24, S16
14FA26:  VLDR            S0, [SP,#0xA8+var_88]
14FA2A:  VLDR            S2, [SP,#0xA8+var_84]
14FA2E:  VADD.F32        S20, S20, S0
14FA32:  VADD.F32        S22, S22, S2
14FA36:  VADD.F32        S18, S18, S4
14FA3A:  B               loc_14FB1A
14FA3C:  LDRH.W          R4, [R11,#0x24]
14FA40:  CMP             R4, R10
14FA42:  BEQ             loc_14FAF6
14FA44:  LSRS            R0, R4, #4
14FA46:  CMP             R0, #0x7C ; '|'
14FA48:  BHI             loc_14FB40
14FA4A:  LDR             R0, [SP,#0xA8+var_90]
14FA4C:  MOV             R1, R4
14FA4E:  BL              sub_F2396
14FA52:  CMP             R0, #0
14FA54:  BEQ             loc_14FB40
14FA56:  LDR             R0, [SP,#0xA8+var_90]
14FA58:  LDR.W           R4, [R0,R4,LSL#2]
14FA5C:  CMP             R4, #0
14FA5E:  BEQ             loc_14FB40
14FA60:  LDR             R1, [R4,#0xC]
14FA62:  CMP             R1, #0
14FA64:  BEQ             loc_14FB40
14FA66:  LDR             R0, [R1,#0x14]
14FA68:  CMP             R0, #0
14FA6A:  BEQ             loc_14FB40
14FA6C:  MOV             R0, R4
14FA6E:  STR             R1, [SP,#0xA8+var_98]
14FA70:  BL              sub_F8E1C
14FA74:  VMOV            S0, R0
14FA78:  VLDR            S2, [R11,#0x1C]
14FA7C:  LDR             R1, [SP,#0xA8+var_98]
14FA7E:  VCMP.F32        S0, S2
14FA82:  VMRS            APSR_nzcv, FPSCR
14FA86:  BGT             loc_14FB40
14FA88:  MOV             R0, R4
14FA8A:  MOV             R4, R1
14FA8C:  ADD             R1, SP, #0xA8+var_88
14FA8E:  BL              sub_F8910
14FA92:  VLDR            S0, [SP,#0xA8+var_70]
14FA96:  VLDR            S2, [SP,#0xA8+var_74]
14FA9A:  VLDR            S10, [SP,#0xA8+var_78]
14FA9E:  VMUL.F32        S0, S22, S0
14FAA2:  VMUL.F32        S2, S22, S2
14FAA6:  VLDR            S6, [SP,#0xA8+var_84]
14FAAA:  VMUL.F32        S10, S22, S10
14FAAE:  VLDR            S4, [SP,#0xA8+var_88]
14FAB2:  VLDR            S8, [SP,#0xA8+var_80]
14FAB6:  LDR             R0, [R4,#0x14]
14FAB8:  VMLA.F32        S0, S20, S8
14FABC:  VLDR            S8, [SP,#0xA8+var_68]
14FAC0:  VMLA.F32        S2, S20, S6
14FAC4:  VLDR            S6, [SP,#0xA8+var_64]
14FAC8:  VMLA.F32        S10, S20, S4
14FACC:  VLDR            S4, [SP,#0xA8+var_60]
14FAD0:  VMLA.F32        S0, S18, S4
14FAD4:  VLDR            S4, [R0,#0x30]
14FAD8:  VMLA.F32        S2, S18, S6
14FADC:  VLDR            S6, [R0,#0x34]
14FAE0:  VMLA.F32        S10, S18, S8
14FAE4:  VLDR            S8, [R0,#0x38]
14FAE8:  VADD.F32        S18, S0, S8
14FAEC:  VADD.F32        S22, S2, S6
14FAF0:  VADD.F32        S20, S10, S4
14FAF4:  B               loc_14FB1A
14FAF6:  VMOV            R1, S20
14FAFA:  LDR             R0, [SP,#0xA8+var_8C]
14FAFC:  VMOV            R2, S22
14FB00:  VMOV            R3, S18
14FB04:  BL              sub_F8DB8
14FB08:  VMOV            S0, R0
14FB0C:  VLDR            S2, [R11,#0x1C]
14FB10:  VCMP.F32        S0, S2
14FB14:  VMRS            APSR_nzcv, FPSCR
14FB18:  BGT             loc_14FB40
14FB1A:  VMOV            R2, S20
14FB1E:  LDR.W           R1, [R11,#0xC]
14FB22:  VMOV            R3, S22
14FB26:  LDRB.W          R0, [R11,#0x20]
14FB2A:  CMP             R0, #0
14FB2C:  IT NE
14FB2E:  MOVNE           R0, #1
14FB30:  STRD.W          R11, R1, [SP,#0xA8+var_A4]
14FB34:  LDR             R1, [SP,#0xA8+var_94]
14FB36:  STR             R0, [SP,#0xA8+var_9C]
14FB38:  VSTR            S18, [SP,#0xA8+var_A8]
14FB3C:  BL              sub_14FB68
14FB40:  ADDS            R6, #1
14FB42:  ADD.W           R9, R9, #0x28 ; '('
14FB46:  CMP.W           R6, #0x14800
14FB4A:  BNE.W           loc_14F9A8
14FB4E:  ADD             SP, SP, #0x60 ; '`'
14FB50:  VPOP            {D8-D12}
14FB54:  ADD             SP, SP, #4
14FB56:  POP.W           {R8-R11}
14FB5A:  POP             {R4-R7,PC}
