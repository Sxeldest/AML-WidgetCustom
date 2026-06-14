; =========================================================
; Game Engine Function: sub_13FB70
; Address            : 0x13FB70 - 0x13FCBE
; =========================================================

13FB70:  PUSH            {R4-R7,LR}
13FB72:  ADD             R7, SP, #0xC
13FB74:  PUSH.W          {R11}
13FB78:  VPUSH           {D8}
13FB7C:  SUB             SP, SP, #0x138
13FB7E:  MOV             R4, R0
13FB80:  LDR             R0, [R0,#0x1C]
13FB82:  BL              sub_10510C
13FB86:  MOV             R5, R0
13FB88:  LDR             R0, [R4,#0x1C]
13FB8A:  BL              sub_105118
13FB8E:  CMP             R0, #0x22 ; '"'
13FB90:  STRB.W          R0, [SP,#0x150+s2]
13FB94:  BNE             loc_13FBA8
13FB96:  LDR             R0, [R4,#0x1C]
13FB98:  BL              sub_104648
13FB9C:  CMP             R0, #0x21 ; '!'
13FB9E:  ITT EQ
13FBA0:  MOVEQ           R0, #0x35 ; '5'
13FBA2:  STRBEQ.W        R0, [SP,#0x150+s2]
13FBA6:  B               loc_13FBAE
13FBA8:  CMP             R0, #0x41 ; 'A'
13FBAA:  BHI.W           loc_13FCB2
13FBAE:  ADD             R0, SP, #0x150+s2
13FBB0:  ADDS            R6, R0, #1
13FBB2:  MOV             R0, R5
13FBB4:  VLD1.32         {D16-D17}, [R0]!
13FBB8:  MOV             R1, R6
13FBBA:  VST1.8          {D16-D17}, [R1]!
13FBBE:  LDR             R0, [R0]
13FBC0:  STR             R0, [R1]
13FBC2:  LDR             R0, [R4,#0x1C]
13FBC4:  LDR             R1, [R5,#0x14]
13FBC6:  STR             R1, [R6,#0x14]
13FBC8:  BL              sub_105130
13FBCC:  STR             R0, [R6,#0x18]
13FBCE:  BL              sub_F803C
13FBD2:  VMOV            S0, R0
13FBD6:  VLDR            D17, =255.0
13FBDA:  VCVT.F64.F32    D16, S0
13FBDE:  VMUL.F64        D16, D16, D17
13FBE2:  VCVT.U32.F64    S0, D16
13FBE6:  VMOV            R0, S0
13FBEA:  STRB.W          R0, [SP,#0x150+var_1A]
13FBEE:  BL              sub_F8000
13FBF2:  VMOV            S2, R0
13FBF6:  LDR             R0, [R4,#0x1C]
13FBF8:  VLDR            S0, =63.0
13FBFC:  VMUL.F32        S16, S2, S0
13FC00:  BL              sub_105190
13FC04:  VCVT.U32.F32    S0, S16
13FC08:  LDR             R2, [R0,#4]
13FC0A:  CMP             R2, #2
13FC0C:  VMOV            R1, S0
13FC10:  BNE             loc_13FC18
13FC12:  ORN.W           R0, R1, #0x3F ; '?'
13FC16:  B               loc_13FC2C
13FC18:  LDR             R0, [R0,#8]
13FC1A:  CMP             R0, #1
13FC1C:  MOV.W           R2, R0,LSL#6
13FC20:  AND.W           R0, R1, #0x3F ; '?'
13FC24:  IT HI
13FC26:  MOVHI           R2, #0xFFFFFF80
13FC2A:  ADD             R0, R2
13FC2C:  STRB.W          R0, [SP,#0x150+var_1B]
13FC30:  BL              sub_F0B30
13FC34:  LDR.W           R1, [R4,#0x1C4]
13FC38:  SUBS            R0, R0, R1
13FC3A:  CMP.W           R0, #0x1F4
13FC3E:  BHI             loc_13FC4E
13FC40:  ADD.W           R0, R4, #0x13C; s1
13FC44:  ADD             R1, SP, #0x150+s2; s2
13FC46:  MOVS            R2, #0x1F; n
13FC48:  BLX             memcmp
13FC4C:  CBZ             R0, loc_13FCB2
13FC4E:  BL              sub_F0B30
13FC52:  STR.W           R0, [R4,#0x1C4]
13FC56:  ADD             R0, SP, #0x150+var_14C
13FC58:  BL              sub_17D4A8
13FC5C:  MOVS            R1, #0xCB
13FC5E:  STRB.W          R1, [R7,#var_19]
13FC62:  SUB.W           R1, R7, #-var_19
13FC66:  MOVS            R2, #8
13FC68:  MOVS            R3, #1
13FC6A:  BL              sub_17D628
13FC6E:  ADD             R5, SP, #0x150+s2
13FC70:  ADD             R0, SP, #0x150+var_14C
13FC72:  MOVS            R2, #0x1F
13FC74:  MOV             R1, R5
13FC76:  BL              sub_17D566
13FC7A:  LDR             R0, =(off_23496C - 0x13FC80)
13FC7C:  ADD             R0, PC; off_23496C
13FC7E:  LDR             R0, [R0]; dword_23DEF4
13FC80:  LDR             R0, [R0]
13FC82:  LDR.W           R0, [R0,#0x210]
13FC86:  LDR             R1, [R0]
13FC88:  LDR             R6, [R1,#0x20]
13FC8A:  MOVS            R1, #1
13FC8C:  MOVS            R2, #1
13FC8E:  STR             R1, [SP,#0x150+var_150]
13FC90:  ADD             R1, SP, #0x150+var_14C
13FC92:  MOVS            R3, #7
13FC94:  BLX             R6
13FC96:  MOVS            R0, #0xF
13FC98:  ADD.W           R1, R4, #0x13C
13FC9C:  VLD1.32         {D16-D17}, [R5],R0
13FCA0:  VST1.32         {D16-D17}, [R1],R0
13FCA4:  ADD             R0, SP, #0x150+var_14C
13FCA6:  VLD1.8          {D18-D19}, [R5]
13FCAA:  VST1.8          {D18-D19}, [R1]
13FCAE:  BL              sub_17D542
13FCB2:  ADD             SP, SP, #0x138
13FCB4:  VPOP            {D8}
13FCB8:  POP.W           {R11}
13FCBC:  POP             {R4-R7,PC}
