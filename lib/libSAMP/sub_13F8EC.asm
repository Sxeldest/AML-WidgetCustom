; =========================================================
; Game Engine Function: sub_13F8EC
; Address            : 0x13F8EC - 0x13FB50
; =========================================================

13F8EC:  PUSH            {R4-R7,LR}
13F8EE:  ADD             R7, SP, #0xC
13F8F0:  PUSH.W          {R8-R11}
13F8F4:  SUB             SP, SP, #0x18C
13F8F6:  MOV             R11, R0
13F8F8:  ADD             R0, SP, #0x1A8+var_134
13F8FA:  BL              sub_17D4A8
13F8FE:  LDR.W           R0, [R11,#0x1C]
13F902:  MOVS            R1, #1
13F904:  ADD             R2, SP, #0x1A8+var_18C
13F906:  STR             R1, [SP,#0x1A8+var_1A8]
13F908:  ADD.W           R1, SP, #0x1A8+var_18A
13F90C:  ADD.W           R3, SP, #0x1A8+var_18D
13F910:  BL              sub_104BA4
13F914:  MOV             R6, R0
13F916:  LDR             R0, =(off_234970 - 0x13F91C)
13F918:  ADD             R0, PC; off_234970
13F91A:  LDR             R5, [R0]; dword_23DEF0
13F91C:  LDR             R0, [R5]
13F91E:  LDR             R0, [R0,#4]
13F920:  ADD             R1, SP, #0x1A8+var_188
13F922:  BL              sub_F8828
13F926:  LDR             R0, =(off_23496C - 0x13F92C)
13F928:  ADD             R0, PC; off_23496C
13F92A:  LDR.W           R10, [R0]; dword_23DEF4
13F92E:  LDR.W           R0, [R10]
13F932:  LDR.W           R0, [R0,#0x3B0]
13F936:  LDR             R1, [R0]
13F938:  CMP             R1, #0
13F93A:  BEQ.W           loc_13FA76
13F93E:  LDR             R0, [R0,#4]
13F940:  STR             R0, [SP,#0x1A8+var_198]
13F942:  CMP             R0, #0
13F944:  BEQ.W           loc_13FA76
13F948:  ADD             R0, SP, #0x1A8+var_148
13F94A:  ADD             R2, SP, #0x1A8+var_158
13F94C:  MOV             R4, R5
13F94E:  LDRH.W          R5, [SP,#0x1A8+var_18A]
13F952:  ADD.W           R9, R0, #6
13F956:  STR             R1, [SP,#0x1A8+var_194]
13F958:  LDM             R2, {R0-R2}
13F95A:  LDRH.W          R3, [SP,#0x1A8+var_18C]
13F95E:  STRH.W          R5, [SP,#0x1A8+var_148]
13F962:  MOV             R5, R4
13F964:  STR.W           R0, [R9]
13F968:  STR.W           R1, [R9,#4]
13F96C:  STR.W           R2, [R9,#8]
13F970:  STRH.W          R6, [SP,#0x1A8+var_144]
13F974:  STRH.W          R3, [SP,#0x1A8+var_146]
13F978:  BL              sub_F0B30
13F97C:  LDR.W           R8, [R11,#0x1C8]
13F980:  MOV             R6, R0
13F982:  MOV             R0, R11
13F984:  BL              sub_140128
13F988:  SUB.W           R1, R6, R8
13F98C:  CMP             R1, R0
13F98E:  BLS             loc_13F9F4
13F990:  BL              sub_F0B30
13F994:  STR.W           R0, [R11,#0x1C8]
13F998:  MOVS            R0, #0xD4
13F99A:  STRB.W          R0, [R7,#var_1D]
13F99E:  ADD             R0, SP, #0x1A8+var_134
13F9A0:  SUB.W           R1, R7, #-var_1D
13F9A4:  MOVS            R2, #8
13F9A6:  MOVS            R3, #1
13F9A8:  BL              sub_17D628
13F9AC:  ADD             R0, SP, #0x1A8+var_134
13F9AE:  ADD             R1, SP, #0x1A8+var_148
13F9B0:  MOVS            R2, #0x12
13F9B2:  BL              sub_17D566
13F9B6:  LDR.W           R0, [R10]
13F9BA:  LDR.W           R0, [R0,#0x210]
13F9BE:  LDR             R1, [R0]
13F9C0:  LDR             R6, [R1,#0x20]
13F9C2:  MOVS            R1, #0
13F9C4:  MOVS            R2, #1
13F9C6:  STR             R1, [SP,#0x1A8+var_1A8]
13F9C8:  ADD             R1, SP, #0x1A8+var_134
13F9CA:  MOVS            R3, #6
13F9CC:  BLX             R6
13F9CE:  BL              sub_F0B30
13F9D2:  LDR.W           R4, [R11,#0x1C0]
13F9D6:  MOV             R6, R0
13F9D8:  MOV             R0, R11
13F9DA:  BL              sub_140128
13F9DE:  SUBS            R1, R6, R4
13F9E0:  CMP.W           R1, R0,LSL#1
13F9E4:  BLS             loc_13F9F4
13F9E6:  BL              sub_F0B30
13F9EA:  STR.W           R0, [R11,#0x1C0]
13F9EE:  MOV             R0, R11
13F9F0:  BL              sub_13FB70
13F9F4:  LDR             R0, [R5]
13F9F6:  MOVS            R1, #0
13F9F8:  BL              sub_F97A8
13F9FC:  LDR.W           R0, [R11,#0x1C]
13FA00:  MOVS            R1, #0x42C80000
13FA06:  BL              sub_1042F4
13FA0A:  VMOV.F32        S0, #20.0
13FA0E:  LDR.W           R0, [R9,#8]
13FA12:  LDR.W           R1, [R9]
13FA16:  LDR.W           R2, [R9,#4]
13FA1A:  VMOV            S2, R0
13FA1E:  LDR.W           R0, [R11,#0x1C]
13FA22:  LDR             R6, [R0]
13FA24:  VADD.F32        S0, S2, S0
13FA28:  LDR             R6, [R6,#0x10]
13FA2A:  VMOV            R3, S0
13FA2E:  BLX             R6
13FA30:  LDRB.W          R0, [R11,#0x11]
13FA34:  LDR             R2, [SP,#0x1A8+var_194]
13FA36:  CMP             R0, #1
13FA38:  BNE             loc_13FA70
13FA3A:  LDRH.W          R0, [R11,#4]
13FA3E:  CMP.W           R0, #0x3EC
13FA42:  BHI             loc_13FA66
13FA44:  ADDS            R1, R2, R0
13FA46:  LDRB.W          R1, [R1,#0xFB4]
13FA4A:  CBZ             R1, loc_13FA66
13FA4C:  ADD.W           R0, R2, R0,LSL#2
13FA50:  LDR             R0, [R0,#4]
13FA52:  LDR             R0, [R0]
13FA54:  LDR.W           R1, [R0,#0x128]
13FA58:  CBZ             R1, loc_13FA66
13FA5A:  LDRB            R0, [R0,#0x19]
13FA5C:  CBZ             R0, loc_13FA66
13FA5E:  CMP             R0, #0x20 ; ' '
13FA60:  BEQ             loc_13FA66
13FA62:  MOVS            R0, #1
13FA64:  B               loc_13FA70
13FA66:  MOVS            R0, #0
13FA68:  STRB.W          R0, [R11,#8]
13FA6C:  STRB.W          R0, [R11,#0x11]
13FA70:  LDRB.W          R1, [R11,#8]
13FA74:  CBZ             R1, loc_13FA84
13FA76:  ADD             R0, SP, #0x1A8+var_134
13FA78:  BL              sub_17D542
13FA7C:  ADD             SP, SP, #0x18C
13FA7E:  POP.W           {R8-R11}
13FA82:  POP             {R4-R7,PC}
13FA84:  CMP             R0, #2
13FA86:  BEQ             loc_13FAE8
13FA88:  CMP             R0, #1
13FA8A:  BEQ             loc_13FB1A
13FA8C:  CMP             R0, #0
13FA8E:  BNE             loc_13FA76
13FA90:  LDR             R0, [R5]
13FA92:  LDR             R0, [R0,#4]
13FA94:  MOVS            R1, #0
13FA96:  BL              sub_F885C
13FA9A:  LDR.W           R0, [R11,#0x1C]
13FA9E:  MOVS            R3, #0
13FAA0:  MOVS            R1, #0
13FAA2:  MOVT            R3, #0x4120
13FAA6:  MOVS            R2, #0
13FAA8:  MOVS            R4, #0
13FAAA:  BL              sub_104098
13FAAE:  LDR             R0, [R5]
13FAB0:  LDR             R0, [R0,#4]; int
13FAB2:  MOVS            R1, #0
13FAB4:  STRD.W          R4, R4, [SP,#0x1A8+var_1A8]; float
13FAB8:  MOVT            R1, #0x4248; int
13FABC:  STR             R4, [SP,#0x1A8+var_1A0]; float
13FABE:  MOV             R2, R1; int
13FAC0:  MOV             R3, R1; int
13FAC2:  BL              sub_F8630
13FAC6:  LDR             R0, [R5]
13FAC8:  LDR             R0, [R0,#4]
13FACA:  MOVS            R1, #2
13FACC:  MOVS            R3, #0
13FACE:  STR             R1, [SP,#0x1A8+var_1A8]
13FAD0:  MOVS            R1, #0x42700000
13FAD6:  MOVT            R3, #0x4248
13FADA:  MOV             R2, R1
13FADC:  BL              sub_F86AC
13FAE0:  MOVS            R0, #1
13FAE2:  STRB.W          R0, [R11,#8]
13FAE6:  B               loc_13FA76
13FAE8:  LDRH.W          R6, [R11,#4]
13FAEC:  LSRS            R0, R6, #4
13FAEE:  CMP             R0, #0x7C ; '|'
13FAF0:  BHI             loc_13FA76
13FAF2:  LDR             R0, [SP,#0x1A8+var_198]
13FAF4:  MOV             R1, R6
13FAF6:  BL              sub_F2396
13FAFA:  CMP             R0, #0
13FAFC:  BEQ             loc_13FA76
13FAFE:  LDR             R0, [SP,#0x1A8+var_198]
13FB00:  LDR.W           R0, [R0,R6,LSL#2]
13FB04:  CMP             R0, #0
13FB06:  BEQ             loc_13FA76
13FB08:  LDRB.W          R2, [R11,#0x10]
13FB0C:  LDR             R1, [R0,#8]
13FB0E:  LDR             R0, =(unk_B94C8 - 0x13FB14)
13FB10:  ADD             R0, PC; unk_B94C8
13FB12:  MOVS            R3, #2
13FB14:  BL              sub_107188
13FB18:  B               loc_13FAE0
13FB1A:  LDRH.W          R0, [R11,#4]
13FB1E:  CMP.W           R0, #0x3EC
13FB22:  BHI             loc_13FA76
13FB24:  ADDS            R1, R2, R0
13FB26:  LDRB.W          R1, [R1,#0xFB4]
13FB2A:  CMP             R1, #0
13FB2C:  BEQ             loc_13FA76
13FB2E:  ADD.W           R0, R2, R0,LSL#2
13FB32:  LDR             R0, [R0,#4]
13FB34:  LDR             R0, [R0]
13FB36:  LDR.W           R0, [R0,#0x128]
13FB3A:  CMP             R0, #0
13FB3C:  BEQ             loc_13FA76
13FB3E:  LDRB.W          R2, [R11,#0x10]
13FB42:  LDR             R1, [R0,#8]
13FB44:  LDR             R0, =(unk_B94B4 - 0x13FB4A)
13FB46:  ADD             R0, PC; unk_B94B4
13FB48:  MOVS            R3, #2
13FB4A:  BL              sub_107188
13FB4E:  B               loc_13FAE0
