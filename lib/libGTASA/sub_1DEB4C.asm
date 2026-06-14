; =========================================================
; Game Engine Function: sub_1DEB4C
; Address            : 0x1DEB4C - 0x1DEDC8
; =========================================================

1DEB4C:  PUSH            {R4-R7,LR}
1DEB4E:  ADD             R7, SP, #0xC
1DEB50:  PUSH.W          {R8-R11}
1DEB54:  SUB             SP, SP, #0x1C
1DEB56:  MOV             R10, R0
1DEB58:  MOV             R4, R1
1DEB5A:  LDR.W           R8, [R10]
1DEB5E:  LDR.W           R0, [R8]; char *
1DEB62:  LDR.W           R5, [R8,#0x20]
1DEB66:  BLX             strlen
1DEB6A:  LDR.W           R9, [R8,#0x2C]
1DEB6E:  ADDS            R0, #0x44 ; 'D'
1DEB70:  CMP             R4, #0
1DEB72:  STR             R4, [SP,#0x38+var_2C]
1DEB74:  IT NE
1DEB76:  ADDNE           R5, #1
1DEB78:  BIC.W           R0, R0, #3
1DEB7C:  ADD.W           R1, R9, R9,LSL#1
1DEB80:  ADD.W           R0, R0, R5,LSL#4
1DEB84:  CMP.W           R9, #0
1DEB88:  STR             R5, [SP,#0x38+var_30]
1DEB8A:  ADD.W           R6, R0, R1,LSL#2
1DEB8E:  MOV.W           R0, R5,LSL#2
1DEB92:  STR             R0, [SP,#0x38+var_28]
1DEB94:  BEQ             loc_1DEBB8
1DEB96:  LDR.W           R5, [R8,#0x30]
1DEB9A:  MOVS            R4, #0
1DEB9C:  LDR.W           R11, [SP,#0x38+var_28]
1DEBA0:  LDR.W           R0, [R5],#0xC; char *
1DEBA4:  ADD             R6, R11
1DEBA6:  BLX             strlen
1DEBAA:  ADDS            R0, #4
1DEBAC:  ADDS            R4, #1
1DEBAE:  BIC.W           R0, R0, #3
1DEBB2:  CMP             R4, R9
1DEBB4:  ADD             R6, R0
1DEBB6:  BCC             loc_1DEBA0
1DEBB8:  LDR             R0, =(RwEngineInstance_ptr - 0x1DEBBE)
1DEBBA:  ADD             R0, PC; RwEngineInstance_ptr
1DEBBC:  LDR             R0, [R0]; RwEngineInstance
1DEBBE:  LDR             R0, [R0]
1DEBC0:  LDR.W           R1, [R0,#0x12C]
1DEBC4:  MOV             R0, R6
1DEBC6:  BLX             R1
1DEBC8:  MOV             R4, R0
1DEBCA:  CMP             R4, #0
1DEBCC:  BEQ.W           loc_1DED98
1DEBD0:  LDR             R5, [SP,#0x38+var_30]
1DEBD2:  ADD.W           R6, R4, #0x40 ; '@'
1DEBD6:  STR.W           R10, [SP,#0x38+var_34]
1DEBDA:  STR             R6, [R4]
1DEBDC:  LDR.W           R9, [R8]
1DEBE0:  ADD.W           R0, R5, R5,LSL#1
1DEBE4:  MOV.W           R10, R0,LSL#2
1DEBE8:  MOV             R0, R9; char *
1DEBEA:  BLX             strlen
1DEBEE:  MOV             R11, R0
1DEBF0:  MOV             R0, R6; char *
1DEBF2:  MOV             R1, R9; char *
1DEBF4:  BLX             strcpy
1DEBF8:  ADD.W           R0, R8, #4
1DEBFC:  VLD1.32         {D16-D17}, [R0]
1DEC00:  ADD.W           R0, R8, #0x10
1DEC04:  VLD1.32         {D18-D19}, [R0]
1DEC08:  ADD.W           R0, R11, #4
1DEC0C:  BIC.W           R0, R0, #3
1DEC10:  ADDS            R2, R6, R0
1DEC12:  ADD.W           R0, R4, #0x10
1DEC16:  ADD.W           R9, R2, R10
1DEC1A:  STRD.W          R5, R2, [R4,#0x20]
1DEC1E:  VST1.32         {D18-D19}, [R0]
1DEC22:  ADDS            R0, R4, #4
1DEC24:  VST1.32         {D16-D17}, [R0]
1DEC28:  LDR.W           R0, [R8,#0x20]
1DEC2C:  CMP             R0, #0
1DEC2E:  BEQ.W           loc_1DEDBA
1DEC32:  LDRD.W          R6, R5, [SP,#0x38+var_2C]
1DEC36:  MOVS            R1, #0
1DEC38:  MOVS            R0, #1
1DEC3A:  B               loc_1DEC42
1DEC3C:  ADDS            R0, #1
1DEC3E:  LDR             R2, [R4,#0x24]
1DEC40:  ADDS            R1, #0xC
1DEC42:  LDR.W           R3, [R8,#0x24]
1DEC46:  ADD             R2, R1
1DEC48:  ADD             R3, R1
1DEC4A:  LDR             R3, [R3,#4]
1DEC4C:  STR             R3, [R2,#4]
1DEC4E:  LDR.W           R2, [R8,#0x24]
1DEC52:  LDR             R3, [R4,#0x24]
1DEC54:  LDR             R2, [R2,R1]
1DEC56:  STR             R2, [R3,R1]
1DEC58:  LDR.W           R2, [R8,#0x24]
1DEC5C:  LDR             R3, [R4,#0x24]
1DEC5E:  ADD             R2, R1
1DEC60:  ADD             R3, R1
1DEC62:  LDR             R2, [R2,#8]
1DEC64:  STR             R2, [R3,#8]
1DEC66:  LDR.W           R2, [R8,#0x20]
1DEC6A:  CMP             R0, R2
1DEC6C:  BCC             loc_1DEC3C
1DEC6E:  CBZ             R6, loc_1DEC8C
1DEC70:  LDR             R1, [R4,#0x24]
1DEC72:  ADD.W           R0, R0, R0,LSL#1
1DEC76:  MOVS            R2, #0
1DEC78:  ADD.W           R1, R1, R0,LSL#2
1DEC7C:  STR             R2, [R1,#4]
1DEC7E:  LDR             R1, [R4,#0x24]
1DEC80:  STR.W           R6, [R1,R0,LSL#2]
1DEC84:  LDR             R1, [R4,#0x24]
1DEC86:  ADD.W           R0, R1, R0,LSL#2
1DEC8A:  STR             R2, [R0,#8]
1DEC8C:  STR.W           R9, [R4,#0x28]
1DEC90:  LDR.W           R0, [R8,#0x20]
1DEC94:  LDR.W           R1, [R8,#0x28]; void *
1DEC98:  LSLS            R2, R0, #2; size_t
1DEC9A:  MOV             R0, R9; void *
1DEC9C:  BLX             memcpy_0
1DECA0:  CMP             R6, #0
1DECA2:  ADD.W           R0, R9, R5
1DECA6:  ITTTT NE
1DECA8:  LDRNE           R1, [R4,#0x28]
1DECAA:  LDRNE           R2, [SP,#0x38+var_30]
1DECAC:  ADDNE.W         R1, R1, R2,LSL#2
1DECB0:  MOVNE           R2, #0
1DECB2:  IT NE
1DECB4:  STRNE.W         R2, [R1,#-4]
1DECB8:  LDR.W           R1, [R8,#0x2C]
1DECBC:  STRD.W          R1, R0, [R4,#0x2C]
1DECC0:  LDR.W           R1, [R8,#0x2C]
1DECC4:  CMP             R1, #0
1DECC6:  BEQ             loc_1DED68
1DECC8:  ADD.W           R1, R1, R1,LSL#1
1DECCC:  MOV.W           R10, #1
1DECD0:  MOV.W           R9, #0
1DECD4:  ADD.W           R11, R0, R1,LSL#2
1DECD8:  LDR             R1, [SP,#0x38+var_30]
1DECDA:  SUBS            R1, #1
1DECDC:  STR             R1, [SP,#0x38+var_30]
1DECDE:  B               loc_1DECF0
1DECE0:  LDR             R0, [SP,#0x38+var_28]
1DECE2:  ADD.W           R9, R9, #0xC
1DECE6:  ADD.W           R10, R10, #1
1DECEA:  ADD.W           R11, R5, R0
1DECEE:  LDR             R0, [R4,#0x30]
1DECF0:  STR.W           R11, [R0,R9]
1DECF4:  LDR.W           R0, [R8,#0x30]
1DECF8:  LDR.W           R6, [R0,R9]
1DECFC:  MOV             R0, R6; char *
1DECFE:  BLX             strlen
1DED02:  MOV             R5, R0
1DED04:  LDR             R0, [R4,#0x30]
1DED06:  MOV             R1, R6; char *
1DED08:  LDR.W           R0, [R0,R9]; char *
1DED0C:  BLX             strcpy
1DED10:  LDR             R0, [R4,#0x30]
1DED12:  ADDS            R1, R5, #4
1DED14:  BIC.W           R1, R1, #3
1DED18:  ADD             R0, R9
1DED1A:  ADD.W           R5, R11, R1
1DED1E:  STR             R5, [R0,#4]
1DED20:  LDR.W           R0, [R8,#0x30]
1DED24:  LDR             R3, [R4,#0x30]
1DED26:  ADD             R0, R9
1DED28:  LDR.W           R2, [R8,#0x20]
1DED2C:  LDR             R1, [R0,#4]; void *
1DED2E:  ADD.W           R0, R3, R9
1DED32:  LSLS            R2, R2, #2; size_t
1DED34:  LDR             R0, [R0,#4]; void *
1DED36:  BLX             memcpy_0
1DED3A:  LDR             R0, [SP,#0x38+var_2C]
1DED3C:  CBZ             R0, loc_1DED52
1DED3E:  LDR             R0, [R4,#0x30]
1DED40:  LDR.W           R1, [R8,#0x30]
1DED44:  ADD             R0, R9
1DED46:  LDR             R2, [SP,#0x38+var_30]
1DED48:  ADD             R1, R9
1DED4A:  LDR             R0, [R0,#4]
1DED4C:  LDR             R1, [R1,#8]
1DED4E:  STR.W           R1, [R0,R2,LSL#2]
1DED52:  LDR.W           R0, [R8,#0x30]
1DED56:  LDR             R1, [R4,#0x30]
1DED58:  ADD             R0, R9
1DED5A:  ADD             R1, R9
1DED5C:  LDR             R0, [R0,#8]
1DED5E:  STR             R0, [R1,#8]
1DED60:  LDR.W           R0, [R8,#0x2C]
1DED64:  CMP             R10, R0
1DED66:  BCC             loc_1DECE0
1DED68:  MOVS            R0, #1
1DED6A:  LDR.W           R1, [R8,#0x34]
1DED6E:  MOVS            R2, #0
1DED70:  STRD.W          R1, R0, [R4,#0x34]
1DED74:  STR             R2, [R4,#0x3C]
1DED76:  LDR.W           R0, [R8,#0x3C]
1DED7A:  CBNZ            R0, loc_1DED92
1DED7C:  LDR.W           R0, [R8,#0x38]
1DED80:  CBZ             R0, loc_1DED92
1DED82:  LDR             R0, =(RwEngineInstance_ptr - 0x1DED88)
1DED84:  ADD             R0, PC; RwEngineInstance_ptr
1DED86:  LDR             R0, [R0]; RwEngineInstance
1DED88:  LDR             R0, [R0]
1DED8A:  LDR.W           R1, [R0,#0x130]
1DED8E:  MOV             R0, R8
1DED90:  BLX             R1
1DED92:  LDR             R0, [SP,#0x38+var_34]
1DED94:  STR             R4, [R0]
1DED96:  B               loc_1DEDB0
1DED98:  MOVS            R0, #0x13
1DED9A:  MOVS            R4, #0
1DED9C:  MOVT            R0, #0x8000; int
1DEDA0:  MOV             R1, R6
1DEDA2:  STR             R4, [SP,#0x38+var_24]
1DEDA4:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1DEDA8:  STR             R0, [SP,#0x38+var_20]
1DEDAA:  ADD             R0, SP, #0x38+var_24
1DEDAC:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1DEDB0:  MOV             R0, R4
1DEDB2:  ADD             SP, SP, #0x1C
1DEDB4:  POP.W           {R8-R11}
1DEDB8:  POP             {R4-R7,PC}
1DEDBA:  LDRD.W          R6, R5, [SP,#0x38+var_2C]
1DEDBE:  MOVS            R0, #0
1DEDC0:  CMP             R6, #0
1DEDC2:  BNE.W           loc_1DEC70
1DEDC6:  B               loc_1DEC8C
