; =========================================================
; Game Engine Function: pitch_downsample
; Address            : 0x19FAD8 - 0x19FDD2
; =========================================================

19FAD8:  PUSH            {R4-R7,LR}
19FADA:  ADD             R7, SP, #0xC
19FADC:  PUSH.W          {R8-R11}
19FAE0:  SUB             SP, SP, #0x34; int
19FAE2:  MOV             R10, R1
19FAE4:  LDR             R1, =(__stack_chk_guard_ptr - 0x19FAEC)
19FAE6:  CMP             R2, #1
19FAE8:  ADD             R1, PC; __stack_chk_guard_ptr
19FAEA:  LDR             R1, [R1]; __stack_chk_guard
19FAEC:  LDR             R1, [R1]
19FAEE:  STR             R1, [SP,#0x50+var_20]
19FAF0:  LDR.W           R12, [R0]
19FAF4:  BLT             loc_19FB14
19FAF6:  MOVS            R6, #0
19FAF8:  MOV             LR, R12
19FAFA:  MOV             R4, R2
19FAFC:  MOVS            R1, #0
19FAFE:  LDR.W           R5, [LR],#4
19FB02:  CMP             R6, R5
19FB04:  IT GE
19FB06:  MOVGE           R6, R5
19FB08:  CMP             R1, R5
19FB0A:  IT LE
19FB0C:  MOVLE           R1, R5
19FB0E:  SUBS            R4, #1
19FB10:  BNE             loc_19FAFE
19FB12:  B               loc_19FB18
19FB14:  MOVS            R1, #0
19FB16:  MOVS            R6, #0
19FB18:  RSB.W           LR, R6, #0
19FB1C:  CMP             R1, LR
19FB1E:  IT GT
19FB20:  MOVGT           LR, R1
19FB22:  CMP             R3, #2
19FB24:  BNE             loc_19FB5C
19FB26:  CMP             R2, #1
19FB28:  BLT             loc_19FB4A
19FB2A:  LDR.W           R8, [R0,#4]
19FB2E:  MOVS            R5, #0
19FB30:  MOV             R4, R2
19FB32:  MOVS            R1, #0
19FB34:  LDR.W           R6, [R8],#4
19FB38:  CMP             R5, R6
19FB3A:  IT GE
19FB3C:  MOVGE           R5, R6
19FB3E:  CMP             R1, R6
19FB40:  IT LE
19FB42:  MOVLE           R1, R6
19FB44:  SUBS            R4, #1
19FB46:  BNE             loc_19FB34
19FB48:  B               loc_19FB4E
19FB4A:  MOVS            R1, #0
19FB4C:  MOVS            R5, #0
19FB4E:  NEGS            R4, R5
19FB50:  CMP             R1, R4
19FB52:  IT GT
19FB54:  MOVGT           R4, R1
19FB56:  CMP             LR, R4
19FB58:  IT LE
19FB5A:  MOVLE           LR, R4
19FB5C:  MOV.W           R9, #0
19FB60:  CMP             R3, #2
19FB62:  IT EQ
19FB64:  MOVEQ.W         R9, #1
19FB68:  CMP.W           LR, #1
19FB6C:  IT LE
19FB6E:  MOVLE.W         LR, #1
19FB72:  LDR.W           R8, [R12,#4]
19FB76:  CLZ.W           R1, LR
19FB7A:  MOV.W           R11, R2,ASR#1
19FB7E:  RSB.W           R1, R1, #0x15
19FB82:  CMP             R1, #0
19FB84:  IT GT
19FB86:  ADDGT           R9, R1
19FB88:  CMP.W           R11, #2
19FB8C:  BLT             loc_19FBD4
19FB8E:  LDRD.W          R1, R2, [R12,#8]
19FB92:  CMP.W           R11, #2
19FB96:  ADD             R2, R8
19FB98:  ADD.W           R1, R1, R2,ASR#1
19FB9C:  MOV.W           R1, R1,ASR#1
19FBA0:  ASR.W           R1, R1, R9
19FBA4:  STRH.W          R1, [R10,#2]
19FBA8:  BEQ             loc_19FBD4
19FBAA:  ADD.W           R2, R12, #0xC
19FBAE:  SUB.W           R1, R11, #2
19FBB2:  ADD.W           R5, R10, #4
19FBB6:  LDRD.W          LR, R6, [R2]
19FBBA:  SUBS            R1, #1
19FBBC:  LDR.W           R4, [R2,#8]!
19FBC0:  ADD             R4, LR
19FBC2:  ADD.W           R6, R6, R4,ASR#1
19FBC6:  MOV.W           R6, R6,ASR#1
19FBCA:  ASR.W           R6, R6, R9
19FBCE:  STRH.W          R6, [R5],#2
19FBD2:  BNE             loc_19FBB6
19FBD4:  LDR.W           R1, [R12]
19FBD8:  CMP             R3, #2
19FBDA:  LDR.W           LR, [R7,#arg_0]
19FBDE:  ADD.W           R1, R1, R8,ASR#1
19FBE2:  MOV.W           R1, R1,ASR#1
19FBE6:  ASR.W           R2, R1, R9
19FBEA:  STRH.W          R2, [R10]
19FBEE:  BNE             loc_19FC66
19FBF0:  LDR.W           R8, [R0,#4]
19FBF4:  CMP.W           R11, #2
19FBF8:  LDR.W           R12, [R8,#4]
19FBFC:  BLT             loc_19FC52
19FBFE:  LDRD.W          R3, R6, [R8,#8]
19FC02:  CMP.W           R11, #2
19FC06:  ADD             R6, R12
19FC08:  LDRH.W          R5, [R10,#2]
19FC0C:  ADD.W           R3, R3, R6,ASR#1
19FC10:  MOV.W           R3, R3,ASR#1
19FC14:  ASR.W           R3, R3, R9
19FC18:  ADD             R3, R5
19FC1A:  STRH.W          R3, [R10,#2]
19FC1E:  BEQ             loc_19FC52
19FC20:  SUB.W           R2, R11, #2
19FC24:  MOVS            R3, #0
19FC26:  ADD.W           R6, R8, R3,LSL#3
19FC2A:  ADD.W           R1, R10, R3,LSL#1
19FC2E:  LDRD.W          R5, R4, [R6,#0xC]
19FC32:  ADDS            R3, #1
19FC34:  LDR             R6, [R6,#0x14]
19FC36:  CMP             R2, R3
19FC38:  LDRH            R0, [R1,#4]
19FC3A:  ADD             R5, R6
19FC3C:  ADD.W           R4, R4, R5,ASR#1
19FC40:  MOV.W           R4, R4,ASR#1
19FC44:  ASR.W           R4, R4, R9
19FC48:  ADD             R0, R4
19FC4A:  STRH            R0, [R1,#4]
19FC4C:  BNE             loc_19FC26
19FC4E:  LDRH.W          R2, [R10]
19FC52:  LDR.W           R0, [R8]
19FC56:  ADD.W           R0, R0, R12,ASR#1
19FC5A:  ASRS            R0, R0, #1
19FC5C:  ASR.W           R0, R0, R9
19FC60:  ADD             R0, R2
19FC62:  STRH.W          R0, [R10]
19FC66:  ADD             R5, SP, #0x50+var_34
19FC68:  MOVS            R0, #4
19FC6A:  STMEA.W         SP, {R0,R11,LR}
19FC6E:  MOV             R0, R10; src
19FC70:  MOV             R1, R5; int
19FC72:  MOVS            R2, #0; int
19FC74:  MOVS            R3, #0; int
19FC76:  BLX             j__celt_autocorr
19FC7A:  ADD             R3, SP, #0x50+var_34
19FC7C:  LDM             R3, {R0-R3}
19FC7E:  ADD.W           R0, R0, R0,ASR#13
19FC82:  STR             R0, [SP,#0x50+var_34]
19FC84:  UBFX.W          R0, R1, #0xE, #2
19FC88:  SUBS            R0, R1, R0
19FC8A:  ASRS            R1, R1, #0x10
19FC8C:  SUB.W           R0, R0, R1,LSL#2
19FC90:  STR             R0, [SP,#0x50+var_30]
19FC92:  UBFX.W          R0, R2, #0xC, #4
19FC96:  ASRS            R1, R2, #0x10
19FC98:  SUBS            R0, R2, R0
19FC9A:  MOVS            R2, #4
19FC9C:  SUB.W           R0, R0, R1,LSL#4
19FCA0:  LDR             R1, [SP,#0x50+var_24]
19FCA2:  STR             R0, [SP,#0x50+var_2C]
19FCA4:  UBFX.W          R0, R1, #0xA, #6
19FCA8:  SUBS            R0, R1, R0
19FCAA:  ASRS            R1, R1, #0x10
19FCAC:  SUB.W           R0, R0, R1,LSL#6
19FCB0:  STR             R0, [SP,#0x50+var_24]
19FCB2:  UXTH            R0, R3
19FCB4:  ASRS            R1, R3, #0x10
19FCB6:  LSLS            R0, R0, #3
19FCB8:  ADD.W           R1, R1, R1,LSL#3
19FCBC:  UXTAH.W         R0, R0, R3
19FCC0:  NEGS            R1, R1
19FCC2:  LSLS            R0, R0, #1
19FCC4:  SUB.W           R0, R3, R0,LSR#15
19FCC8:  ADD.W           R0, R0, R1,LSL#2
19FCCC:  STR             R0, [SP,#0x50+var_28]
19FCCE:  ADD             R0, SP, #0x50+var_3C
19FCD0:  MOV             R1, R5
19FCD2:  BLX             j__celt_lpc
19FCD6:  LDRSH.W         R0, [SP,#0x50+var_3C]
19FCDA:  MOVW            R5, #0x7332
19FCDE:  LDRSH.W         R2, [SP,#0x50+var_38]
19FCE2:  MOVW            R6, #0x5D4D
19FCE6:  LDRSH.W         R1, [SP,#0x50+var_3A]
19FCEA:  CMP.W           R11, #1
19FCEE:  LDRSH.W         R3, [SP,#0x50+var_36]
19FCF2:  SMULBB.W        R0, R0, R5
19FCF6:  MOVW            R5, #0x67AC
19FCFA:  SMULBB.W        R2, R2, R6
19FCFE:  MOVW            R6, #0x53F8
19FD02:  SMULBB.W        R1, R1, R5
19FD06:  SMULBB.W        R6, R3, R6
19FD0A:  MOV.W           R3, R0,LSR#15
19FD0E:  STRH.W          R3, [SP,#0x50+var_3C]
19FD12:  MOV.W           R0, R1,LSR#15
19FD16:  MOV.W           R1, R2,LSR#15
19FD1A:  MOV.W           R2, R6,LSR#15
19FD1E:  STRH.W          R0, [SP,#0x50+var_3A]
19FD22:  STRH.W          R1, [SP,#0x50+var_38]
19FD26:  STRH.W          R2, [SP,#0x50+var_36]
19FD2A:  BLT             loc_19FDB8
19FD2C:  SXTH            R6, R2
19FD2E:  MOVW            R5, #0xCCCC
19FD32:  MULS            R6, R5
19FD34:  MOVS            R5, #0xCCD0000
19FD3A:  ADD.W           R5, R5, R3,LSL#16
19FD3E:  SXTH            R3, R3
19FD40:  MOVW            R4, #0x6666
19FD44:  SMULBB.W        R3, R3, R4
19FD48:  MOV.W           R12, R5,ASR#16
19FD4C:  SXTH            R5, R1
19FD4E:  MOV.W           LR, R6,ASR#16
19FD52:  STR             R3, [SP,#0x50+var_40]
19FD54:  SXTH            R3, R0
19FD56:  SMULBB.W        R3, R3, R4
19FD5A:  SMULBB.W        R4, R5, R4
19FD5E:  ADD.W           R1, R1, R3,LSR#15
19FD62:  MOVS            R3, #0
19FD64:  ADD.W           R2, R2, R4,LSR#15
19FD68:  MOVS            R4, #0
19FD6A:  SXTH.W          R9, R1
19FD6E:  LDR             R1, [SP,#0x50+var_40]
19FD70:  SXTH.W          R8, R2
19FD74:  MOVS            R2, #0
19FD76:  ADD.W           R0, R0, R1,LSR#15
19FD7A:  MOVS            R1, #0
19FD7C:  SXTH            R5, R0
19FD7E:  MOVS            R0, #0
19FD80:  MUL.W           R6, R0, R8
19FD84:  SUBS.W          R11, R11, #1
19FD88:  MLA.W           R4, R4, LR, R6
19FD8C:  LDRSH.W         R6, [R10]
19FD90:  MLA.W           R4, R1, R9, R4
19FD94:  MLA.W           R4, R2, R5, R4
19FD98:  MLA.W           R4, R3, R12, R4
19FD9C:  ADD.W           R4, R4, R6,LSL#12
19FDA0:  ADD.W           R4, R4, #0x800
19FDA4:  MOV.W           R4, R4,LSR#12
19FDA8:  STRH.W          R4, [R10],#2
19FDAC:  MOV             R4, R0
19FDAE:  MOV             R0, R1
19FDB0:  MOV             R1, R2
19FDB2:  MOV             R2, R3
19FDB4:  MOV             R3, R6
19FDB6:  BNE             loc_19FD80
19FDB8:  LDR             R0, =(__stack_chk_guard_ptr - 0x19FDC0)
19FDBA:  LDR             R1, [SP,#0x50+var_20]
19FDBC:  ADD             R0, PC; __stack_chk_guard_ptr
19FDBE:  LDR             R0, [R0]; __stack_chk_guard
19FDC0:  LDR             R0, [R0]
19FDC2:  SUBS            R0, R0, R1
19FDC4:  ITTT EQ
19FDC6:  ADDEQ           SP, SP, #0x34 ; '4'
19FDC8:  POPEQ.W         {R8-R11}
19FDCC:  POPEQ           {R4-R7,PC}
19FDCE:  BLX             __stack_chk_fail
