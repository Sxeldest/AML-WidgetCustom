; =========================================================
; Game Engine Function: _Z14RtBMPImageReadPKc
; Address            : 0x1EBC0C - 0x1EC0F2
; =========================================================

1EBC0C:  PUSH            {R4-R7,LR}
1EBC0E:  ADD             R7, SP, #0xC
1EBC10:  PUSH.W          {R8-R11}
1EBC14:  SUB.W           SP, SP, #0x430
1EBC18:  SUB             SP, SP, #4
1EBC1A:  MOV             R2, R0
1EBC1C:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x1EBC26)
1EBC20:  MOVS            R1, #1
1EBC22:  ADD             R0, PC; __stack_chk_guard_ptr
1EBC24:  LDR             R0, [R0]; __stack_chk_guard
1EBC26:  LDR             R0, [R0]
1EBC28:  STR.W           R0, [R7,#var_20]
1EBC2C:  MOVS            R0, #2
1EBC2E:  BLX             j__Z12RwStreamOpen12RwStreamType18RwStreamAccessTypePKv; RwStreamOpen(RwStreamType,RwStreamAccessType,void const*)
1EBC32:  MOV             R4, R0
1EBC34:  CMP             R4, #0
1EBC36:  BEQ.W           loc_1EBD7C
1EBC3A:  ADD             R1, SP, #0x450+var_424; void *
1EBC3C:  MOV             R0, R4; int
1EBC3E:  MOVS            R2, #4; size_t
1EBC40:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1EBC44:  CMP             R0, #4
1EBC46:  BNE.W           loc_1EC090
1EBC4A:  ADD             R0, SP, #0x450+var_424; void *
1EBC4C:  MOVS            R1, #4; unsigned int
1EBC4E:  BLX             j__Z13RwMemNative32Pvj; RwMemNative32(void *,uint)
1EBC52:  LDRH.W          R0, [SP,#0x450+var_424]
1EBC56:  MOVW            R1, #0x4D42
1EBC5A:  CMP             R0, R1
1EBC5C:  BNE.W           loc_1EC090
1EBC60:  ADD             R0, SP, #0x450+var_420
1EBC62:  MOVS            R2, #0xE; size_t
1EBC64:  ORR.W           R1, R0, #2; void *
1EBC68:  MOV             R0, R4; int
1EBC6A:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1EBC6E:  CMP             R0, #0xE
1EBC70:  BNE.W           loc_1EC090
1EBC74:  LDRD.W          R6, R11, [SP,#0x450+var_418]
1EBC78:  SUB.W           R5, R11, #4
1EBC7C:  ADD             R1, SP, #0x450+var_420; void *
1EBC7E:  MOV             R0, R4; int
1EBC80:  MOV             R2, R5; size_t
1EBC82:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1EBC86:  CMP             R0, R5
1EBC88:  BNE.W           loc_1EC090
1EBC8C:  MOVW            R10, #9
1EBC90:  CMP.W           R11, #0xC
1EBC94:  MOVT            R10, #0x8000
1EBC98:  BNE             loc_1EBD80
1EBC9A:  MOVS            R1, #0
1EBC9C:  STR             R6, [SP,#0x450+var_430]
1EBC9E:  LDRSH.W         R0, [SP,#0x450+var_420]; int
1EBCA2:  LDRSH.W         R9, [SP,#0x450+var_420+2]
1EBCA6:  LDRH.W          R5, [SP,#0x450+var_41A]
1EBCAA:  STR             R1, [SP,#0x450+var_438]
1EBCAC:  SXTH            R2, R5
1EBCAE:  MOVS            R1, #1
1EBCB0:  LSL.W           R8, R1, R2
1EBCB4:  CMP             R5, #1
1EBCB6:  SXTH            R6, R5
1EBCB8:  MOV.W           R2, #4
1EBCBC:  IT NE
1EBCBE:  CMPNE           R6, #4
1EBCC0:  BEQ             loc_1EBCCA
1EBCC2:  CMP             R6, #8
1EBCC4:  ITE NE
1EBCC6:  MOVNE           R2, #0x20 ; ' '
1EBCC8:  MOVEQ           R2, #8; int
1EBCCA:  MOV             R1, R0
1EBCCC:  STR             R5, [SP,#0x450+var_43C]
1EBCCE:  STR             R1, [SP,#0x450+var_434]
1EBCD0:  MOV             R1, R9; int
1EBCD2:  BLX             j__Z13RwImageCreateiii; RwImageCreate(int,int,int)
1EBCD6:  MOV             R5, R0
1EBCD8:  CMP             R5, #0
1EBCDA:  BEQ.W           loc_1EC090
1EBCDE:  MOV             R0, R5
1EBCE0:  BLX             j__Z21RwImageAllocatePixelsP7RwImage; RwImageAllocatePixels(RwImage *)
1EBCE4:  CMP             R0, #0
1EBCE6:  BEQ.W           loc_1EC08A
1EBCEA:  ADD.W           R12, R11, #0xE
1EBCEE:  CMP             R6, #8
1EBCF0:  STR             R6, [SP,#0x450+var_440]
1EBCF2:  BGT.W           loc_1EBEE2
1EBCF6:  STR.W           R9, [SP,#0x450+var_444]
1EBCFA:  CMP.W           R11, #0xC
1EBCFE:  LDR.W           R10, [R5,#0x18]
1EBD02:  BNE             loc_1EBDC0
1EBD04:  ADD.W           R6, R8, R8,LSL#1
1EBD08:  ADD.W           R9, SP, #0x450+var_420
1EBD0C:  MOV             R0, R4; int
1EBD0E:  MOV             R11, R12
1EBD10:  MOV             R1, R9; void *
1EBD12:  MOV             R2, R6; size_t
1EBD14:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1EBD18:  CMP             R0, R6
1EBD1A:  BNE.W           loc_1EC090
1EBD1E:  CMP.W           R8, #1
1EBD22:  MOV             R12, R11
1EBD24:  BLT.W           loc_1EBED4
1EBD28:  CMP.W           R8, #0xF
1EBD2C:  BLS.W           loc_1EBE46
1EBD30:  BIC.W           R0, R8, #0xF
1EBD34:  CMP             R0, #0
1EBD36:  BEQ.W           loc_1EBE46
1EBD3A:  ADD.W           R1, R9, R6
1EBD3E:  CMP             R10, R1
1EBD40:  ITT CC
1EBD42:  ADDCC.W         R1, R10, R8,LSL#2
1EBD46:  CMPCC           R9, R1
1EBD48:  BCC             loc_1EBE46
1EBD4A:  VMOV.I8         Q11, #0xFF
1EBD4E:  ADD             R1, SP, #0x450+var_420
1EBD50:  MOV             R2, R0
1EBD52:  MOV             R3, R10
1EBD54:  VLD3.8          {D24,D26,D28}, [R1]!
1EBD58:  SUBS            R2, #0x10
1EBD5A:  VLD3.8          {D25,D27,D29}, [R1]!
1EBD5E:  VMOV            Q8, Q14
1EBD62:  VMOV            Q9, Q13
1EBD66:  VMOV            Q10, Q12
1EBD6A:  VST4.8          {D16,D18,D20,D22}, [R3]!
1EBD6E:  VST4.8          {D17,D19,D21,D23}, [R3]!
1EBD72:  BNE             loc_1EBD54
1EBD74:  MOV             R1, R9
1EBD76:  CMP             R8, R0
1EBD78:  BNE             loc_1EBE4A
1EBD7A:  B               loc_1EBED4
1EBD7C:  MOVS            R5, #0
1EBD7E:  B               loc_1EC09A
1EBD80:  LDR             R0, [SP,#0x450+var_414]
1EBD82:  CMP             R0, #2
1EBD84:  BNE             loc_1EBD9A
1EBD86:  MOVS            R5, #0
1EBD88:  MOV             R0, R10; int
1EBD8A:  STR             R5, [SP,#0x450+var_42C]
1EBD8C:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1EBD90:  STR             R0, [SP,#0x450+var_428]
1EBD92:  ADD             R0, SP, #0x450+var_42C
1EBD94:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1EBD98:  B               loc_1EC092
1EBD9A:  STR             R0, [SP,#0x450+var_438]
1EBD9C:  LDRD.W          R0, R9, [SP,#0x450+var_420]
1EBDA0:  LDRSH.W         R2, [SP,#0x450+var_418+2]
1EBDA4:  LDR.W           R8, [SP,#0x450+var_404]
1EBDA8:  STR             R6, [SP,#0x450+var_430]
1EBDAA:  UXTH            R5, R2
1EBDAC:  CMP.W           R8, #1
1EBDB0:  BLT.W           loc_1EBCAC
1EBDB4:  MOVS            R1, #1
1EBDB6:  LSLS            R1, R2
1EBDB8:  CMP             R8, R1
1EBDBA:  BGT.W           loc_1EBCAC
1EBDBE:  B               loc_1EBCB4
1EBDC0:  CMP.W           R11, #0x28 ; '('
1EBDC4:  MOV             R0, R8
1EBDC6:  BNE             loc_1EBE3A
1EBDC8:  ADD             R1, SP, #0x450+var_420; void *
1EBDCA:  LSLS            R2, R0, #2; size_t
1EBDCC:  MOV             R0, R4; int
1EBDCE:  STR.W           R12, [SP,#0x450+var_448]
1EBDD2:  MOV             R9, R1
1EBDD4:  MOV             R11, R2
1EBDD6:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1EBDDA:  CMP.W           R0, R8,LSL#2
1EBDDE:  BNE.W           loc_1EC090
1EBDE2:  CMP.W           R8, #1
1EBDE6:  BLT             loc_1EBECE
1EBDE8:  CMP.W           R8, #0xF
1EBDEC:  BLS             loc_1EBE9C
1EBDEE:  ANDS.W          R0, R8, #0xF
1EBDF2:  IT EQ
1EBDF4:  MOVEQ           R0, #0x10
1EBDF6:  SUBS.W          R0, R8, R0
1EBDFA:  BEQ             loc_1EBE9C
1EBDFC:  ADD.W           R1, R9, R8,LSL#2
1EBE00:  SUBS            R1, #1
1EBE02:  CMP             R10, R1
1EBE04:  ITT CC
1EBE06:  ADDCC.W         R1, R10, R8,LSL#2
1EBE0A:  CMPCC           R9, R1
1EBE0C:  BCC             loc_1EBE9C
1EBE0E:  VMOV.I8         Q11, #0xFF
1EBE12:  ADD             R1, SP, #0x450+var_420
1EBE14:  MOV             R2, R0
1EBE16:  MOV             R3, R10
1EBE18:  VLD4.8          {D24,D26,D28,D30}, [R1]!
1EBE1C:  SUBS            R2, #0x10
1EBE1E:  VLD4.8          {D25,D27,D29,D31}, [R1]!
1EBE22:  VMOV            Q8, Q14
1EBE26:  VMOV            Q9, Q13
1EBE2A:  VMOV            Q10, Q12
1EBE2E:  VST4.8          {D16,D18,D20,D22}, [R3]!
1EBE32:  VST4.8          {D17,D19,D21,D23}, [R3]!
1EBE36:  BNE             loc_1EBE18
1EBE38:  B               loc_1EBE9E
1EBE3A:  MOVS            R0, #9
1EBE3C:  MOVS            R5, #0
1EBE3E:  STR             R5, [SP,#0x450+var_42C]
1EBE40:  MOVT            R0, #0x8000
1EBE44:  B               loc_1EBD8C
1EBE46:  MOV             R1, R9
1EBE48:  MOVS            R0, #0
1EBE4A:  ADD.W           R9, R10, R0,LSL#2
1EBE4E:  SUB.W           R12, R8, R0
1EBE52:  ADD.W           R0, R0, R0,LSL#1
1EBE56:  ADD.W           R3, R9, #3
1EBE5A:  ADD             R1, R0
1EBE5C:  MOV.W           LR, #0xFF
1EBE60:  ADDS            R0, R1, #2
1EBE62:  ADD.W           R10, R1, #1
1EBE66:  MOVS            R1, #0
1EBE68:  STR             R6, [SP,#0x450+var_448]
1EBE6A:  LDRB            R2, [R0]
1EBE6C:  ADD.W           R6, R9, R1,LSL#2
1EBE70:  STRB.W          R2, [R3,#-3]
1EBE74:  ADD.W           R2, R1, R1,LSL#1
1EBE78:  ADDS            R1, #1
1EBE7A:  LDRB.W          R2, [R10,R2]
1EBE7E:  CMP             R12, R1
1EBE80:  STRB            R2, [R6,#1]
1EBE82:  LDRB.W          R2, [R0,#-2]
1EBE86:  ADD.W           R0, R0, #3
1EBE8A:  STRB            R2, [R6,#2]
1EBE8C:  STRB.W          LR, [R3]
1EBE90:  ADD.W           R3, R3, #4
1EBE94:  BNE             loc_1EBE6A
1EBE96:  MOV             R12, R11
1EBE98:  LDR             R6, [SP,#0x450+var_448]
1EBE9A:  B               loc_1EBED4
1EBE9C:  MOVS            R0, #0
1EBE9E:  SUB.W           R1, R8, R0
1EBEA2:  ADD             R2, SP, #0x450+var_420
1EBEA4:  LSLS            R0, R0, #2
1EBEA6:  MOV.W           R12, #0xFF
1EBEAA:  ADDS            R6, R2, R0
1EBEAC:  SUBS            R1, #1
1EBEAE:  LDRB            R3, [R6,#2]
1EBEB0:  STRB.W          R3, [R10,R0]
1EBEB4:  LDRB            R3, [R6,#1]
1EBEB6:  ADD.W           R6, R10, R0
1EBEBA:  ADD.W           R10, R10, #4
1EBEBE:  STRB            R3, [R6,#1]
1EBEC0:  LDRB            R3, [R2,R0]
1EBEC2:  ADD.W           R2, R2, #4
1EBEC6:  STRB.W          R12, [R6,#3]
1EBECA:  STRB            R3, [R6,#2]
1EBECC:  BNE             loc_1EBEAA
1EBECE:  LDR.W           R12, [SP,#0x450+var_448]
1EBED2:  MOV             R6, R11
1EBED4:  LDR.W           R9, [SP,#0x450+var_444]
1EBED8:  MOVW            R10, #9
1EBEDC:  ADD             R12, R6
1EBEDE:  MOVT            R10, #0x8000
1EBEE2:  LDR             R0, [SP,#0x450+var_430]
1EBEE4:  SUB.W           R1, R0, R12
1EBEE8:  MOV             R0, R4
1EBEEA:  BLX             j__Z12RwStreamSkipP8RwStreamj; RwStreamSkip(RwStream *,uint)
1EBEEE:  CMP             R0, #0
1EBEF0:  BEQ.W           loc_1EC08A
1EBEF4:  LDR             R0, =(RwEngineInstance_ptr - 0x1EBEFC)
1EBEF6:  MOV             R11, R10
1EBEF8:  ADD             R0, PC; RwEngineInstance_ptr
1EBEFA:  LDR             R0, [R0]; RwEngineInstance
1EBEFC:  LDR             R0, [R0]
1EBEFE:  LDR.W           R1, [R0,#0x12C]
1EBF02:  LDR             R0, [SP,#0x450+var_434]
1EBF04:  ADDS            R0, #7
1EBF06:  BIC.W           R0, R0, #7
1EBF0A:  ADD.W           R10, R0, R0,LSL#1
1EBF0E:  MOV             R0, R10
1EBF10:  BLX             R1
1EBF12:  MOV             R6, R0
1EBF14:  CBZ             R0, loc_1EBF78
1EBF16:  LDR             R0, [SP,#0x450+var_43C]
1EBF18:  CMP             R0, #0x18
1EBF1A:  LDR             R0, [SP,#0x450+var_438]
1EBF1C:  IT NE
1EBF1E:  CMPNE           R0, #0
1EBF20:  BNE             loc_1EBF90
1EBF22:  MOV             R8, R9
1EBF24:  CMP.W           R9, #1
1EBF28:  MOV             R9, R6
1EBF2A:  BLT.W           loc_1EC046
1EBF2E:  LDR             R0, [SP,#0x450+var_440]
1EBF30:  SUB.W           R11, R8, #1
1EBF34:  LDR             R1, [SP,#0x450+var_434]
1EBF36:  MOVS            R6, #0
1EBF38:  MULS            R0, R1
1EBF3A:  ADDS            R0, #7
1EBF3C:  ASRS            R1, R0, #0x1F
1EBF3E:  ADD.W           R0, R0, R1,LSR#29
1EBF42:  MOVS            R1, #3
1EBF44:  ADD.W           R0, R1, R0,ASR#3
1EBF48:  BIC.W           R10, R0, #3
1EBF4C:  MOV             R0, R4; int
1EBF4E:  MOV             R1, R9; void *
1EBF50:  MOV             R2, R10; size_t
1EBF52:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1EBF56:  CMP             R0, R10
1EBF58:  BNE.W           loc_1EC07A
1EBF5C:  LDR             R3, [SP,#0x450+var_440]; int
1EBF5E:  MOVS            R0, #0
1EBF60:  STR             R0, [SP,#0x450+var_450]; int
1EBF62:  MOV             R0, R5; int
1EBF64:  MOV             R1, R11; int
1EBF66:  MOV             R2, R9; void *
1EBF68:  BL              sub_1EC11C
1EBF6C:  ADDS            R6, #1
1EBF6E:  SUB.W           R11, R11, #1
1EBF72:  CMP             R6, R8
1EBF74:  BLT             loc_1EBF4C
1EBF76:  B               loc_1EC046
1EBF78:  MOVS            R0, #0
1EBF7A:  MOV             R1, R10
1EBF7C:  STR             R0, [SP,#0x450+var_42C]
1EBF7E:  ADD.W           R0, R11, #0xA; int
1EBF82:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1EBF86:  STR             R0, [SP,#0x450+var_428]
1EBF88:  ADD             R0, SP, #0x450+var_42C
1EBF8A:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1EBF8E:  B               loc_1EC0DA
1EBF90:  CMP             R0, #1
1EBF92:  BNE             loc_1EC058
1EBF94:  MOV             R0, R9
1EBF96:  CMP.W           R9, #1
1EBF9A:  MOV             R9, R6
1EBF9C:  STR             R0, [SP,#0x450+var_444]
1EBF9E:  BLT             loc_1EC046
1EBFA0:  LDR             R0, [SP,#0x450+var_444]
1EBFA2:  ADD.W           R10, SP, #0x450+var_42C
1EBFA6:  MOV.W           R11, #0
1EBFAA:  SUBS            R0, #1
1EBFAC:  STR             R0, [SP,#0x450+var_430]
1EBFAE:  MOV             R0, R4; int
1EBFB0:  MOV             R1, R10; void *
1EBFB2:  MOVS            R2, #2; size_t
1EBFB4:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1EBFB8:  CMP             R0, #2
1EBFBA:  BNE.W           loc_1EC0BE
1EBFBE:  MOV.W           R8, #0
1EBFC2:  LDRB.W          R1, [SP,#0x450+var_42C]
1EBFC6:  CBZ             R1, loc_1EBFDC
1EBFC8:  LDRB.W          R2, [SP,#0x450+var_42C+1]
1EBFCC:  ADD.W           R0, R9, R8
1EBFD0:  BLX             j___aeabi_memset8
1EBFD4:  LDRB.W          R0, [SP,#0x450+var_42C]
1EBFD8:  ADD             R8, R0
1EBFDA:  B               loc_1EC00E
1EBFDC:  LDRB.W          R6, [SP,#0x450+var_42C+1]
1EBFE0:  CMP             R6, #3
1EBFE2:  BCC             loc_1EC01E
1EBFE4:  ADD.W           R1, R9, R8; void *
1EBFE8:  MOV             R0, R4; int
1EBFEA:  MOV             R2, R6; size_t
1EBFEC:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1EBFF0:  CMP             R0, R6
1EBFF2:  BNE             loc_1EC0C4
1EBFF4:  LDRB.W          R0, [SP,#0x450+var_42C+1]
1EBFF8:  ADD             R8, R0
1EBFFA:  TST.W           R0, #1
1EBFFE:  BEQ             loc_1EC00E
1EC000:  MOV             R0, R4; int
1EC002:  MOV             R1, R10; void *
1EC004:  MOVS            R2, #1; size_t
1EC006:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1EC00A:  CMP             R0, #1
1EC00C:  BNE             loc_1EC0CA
1EC00E:  MOV             R0, R4; int
1EC010:  MOV             R1, R10; void *
1EC012:  MOVS            R2, #2; size_t
1EC014:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1EC018:  CMP             R0, #2
1EC01A:  BEQ             loc_1EBFC2
1EC01C:  B               loc_1EC0BE
1EC01E:  CBZ             R6, loc_1EC028
1EC020:  LDR.W           R11, [SP,#0x450+var_430]
1EC024:  CMP             R6, #1
1EC026:  BNE             loc_1EC0EC
1EC028:  MOVS            R0, #1
1EC02A:  LDR             R3, [SP,#0x450+var_440]; int
1EC02C:  STR             R0, [SP,#0x450+var_450]; int
1EC02E:  MOV             R2, R9; void *
1EC030:  LDR             R0, [SP,#0x450+var_430]
1EC032:  SUB.W           R1, R0, R11; int
1EC036:  MOV             R0, R5; int
1EC038:  BL              sub_1EC11C
1EC03C:  LDR             R0, [SP,#0x450+var_444]
1EC03E:  ADD.W           R11, R11, #1
1EC042:  CMP             R11, R0
1EC044:  BLT             loc_1EBFAE
1EC046:  LDR             R0, =(RwEngineInstance_ptr - 0x1EC04C)
1EC048:  ADD             R0, PC; RwEngineInstance_ptr
1EC04A:  LDR             R0, [R0]; RwEngineInstance
1EC04C:  LDR             R0, [R0]
1EC04E:  LDR.W           R1, [R0,#0x130]
1EC052:  MOV             R0, R9
1EC054:  BLX             R1
1EC056:  B               loc_1EC092
1EC058:  MOVS            R0, #0
1EC05A:  STR             R0, [SP,#0x450+var_42C]
1EC05C:  MOV             R0, R11; int
1EC05E:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1EC062:  STR             R0, [SP,#0x450+var_428]
1EC064:  ADD             R0, SP, #0x450+var_42C
1EC066:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1EC06A:  LDR             R0, =(RwEngineInstance_ptr - 0x1EC070)
1EC06C:  ADD             R0, PC; RwEngineInstance_ptr
1EC06E:  LDR             R0, [R0]; RwEngineInstance
1EC070:  LDR             R0, [R0]
1EC072:  LDR.W           R1, [R0,#0x130]
1EC076:  MOV             R0, R6
1EC078:  B               loc_1EC0D8
1EC07A:  LDR             R0, =(RwEngineInstance_ptr - 0x1EC080)
1EC07C:  ADD             R0, PC; RwEngineInstance_ptr
1EC07E:  LDR             R0, [R0]; RwEngineInstance
1EC080:  LDR             R0, [R0]
1EC082:  LDR.W           R1, [R0,#0x130]
1EC086:  MOV             R0, R9
1EC088:  BLX             R1
1EC08A:  MOV             R0, R5
1EC08C:  BLX             j__Z14RwImageDestroyP7RwImage; RwImageDestroy(RwImage *)
1EC090:  MOVS            R5, #0
1EC092:  MOV             R0, R4
1EC094:  MOVS            R1, #0
1EC096:  BLX             j__Z13RwStreamCloseP8RwStreamPv; RwStreamClose(RwStream *,void *)
1EC09A:  LDR             R0, =(__stack_chk_guard_ptr - 0x1EC0A4)
1EC09C:  LDR.W           R1, [R7,#var_20]
1EC0A0:  ADD             R0, PC; __stack_chk_guard_ptr
1EC0A2:  LDR             R0, [R0]; __stack_chk_guard
1EC0A4:  LDR             R0, [R0]
1EC0A6:  SUBS            R0, R0, R1
1EC0A8:  ITTTT EQ
1EC0AA:  MOVEQ           R0, R5
1EC0AC:  ADDEQ.W         SP, SP, #0x430
1EC0B0:  ADDEQ           SP, SP, #4
1EC0B2:  POPEQ.W         {R8-R11}
1EC0B6:  IT EQ
1EC0B8:  POPEQ           {R4-R7,PC}
1EC0BA:  BLX             __stack_chk_fail
1EC0BE:  LDR             R0, =(RwEngineInstance_ptr - 0x1EC0C4)
1EC0C0:  ADD             R0, PC; RwEngineInstance_ptr
1EC0C2:  B               loc_1EC0CE
1EC0C4:  LDR             R0, =(RwEngineInstance_ptr - 0x1EC0CA)
1EC0C6:  ADD             R0, PC; RwEngineInstance_ptr
1EC0C8:  B               loc_1EC0CE
1EC0CA:  LDR             R0, =(RwEngineInstance_ptr - 0x1EC0D0)
1EC0CC:  ADD             R0, PC; RwEngineInstance_ptr
1EC0CE:  LDR             R0, [R0]; RwEngineInstance
1EC0D0:  LDR             R0, [R0]
1EC0D2:  LDR.W           R1, [R0,#0x130]
1EC0D6:  MOV             R0, R9
1EC0D8:  BLX             R1
1EC0DA:  MOV             R0, R5
1EC0DC:  BLX             j__Z14RwImageDestroyP7RwImage; RwImageDestroy(RwImage *)
1EC0E0:  MOV             R0, R4
1EC0E2:  MOVS            R1, #0
1EC0E4:  BLX             j__Z13RwStreamCloseP8RwStreamPv; RwStreamClose(RwStream *,void *)
1EC0E8:  MOVS            R5, #0
1EC0EA:  B               loc_1EC09A
1EC0EC:  LDR             R0, =(RwEngineInstance_ptr - 0x1EC0F2)
1EC0EE:  ADD             R0, PC; RwEngineInstance_ptr
1EC0F0:  B               loc_1EC0CE
