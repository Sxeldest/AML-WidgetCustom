; =========================================================
; Game Engine Function: _Z23_rwOpenGLImageSetRasterPvS_i
; Address            : 0x1ACC1C - 0x1AD168
; =========================================================

1ACC1C:  PUSH            {R4-R7,LR}
1ACC1E:  ADD             R7, SP, #0xC
1ACC20:  PUSH.W          {R8-R11}
1ACC24:  SUB             SP, SP, #0xC
1ACC26:  MOV             R8, R0
1ACC28:  MOV             R10, R1
1ACC2A:  LDR.W           R6, [R8,#0x14]
1ACC2E:  CBZ             R6, loc_1ACC48
1ACC30:  LDR.W           R0, [R10,#0xC]
1ACC34:  LDR.W           R1, [R8,#4]
1ACC38:  CMP             R1, R0
1ACC3A:  BLT             loc_1ACC48
1ACC3C:  LDR.W           R0, [R10,#0x10]
1ACC40:  LDR.W           R1, [R8,#8]
1ACC44:  CMP             R1, R0
1ACC46:  BGE             loc_1ACC54
1ACC48:  MOVS            R5, #0
1ACC4A:  MOV             R0, R5
1ACC4C:  ADD             SP, SP, #0xC
1ACC4E:  POP.W           {R8-R11}
1ACC52:  POP             {R4-R7,PC}
1ACC54:  LDRB.W          R0, [R10,#0x22]
1ACC58:  MOV.W           R11, R0,LSL#8
1ACC5C:  ANDS.W          R9, R11, #0x6000
1ACC60:  BNE             loc_1ACC6A
1ACC62:  LDR.W           R0, [R8,#0xC]
1ACC66:  CMP             R0, #0x20 ; ' '
1ACC68:  BNE             loc_1ACC48
1ACC6A:  MOVS.W          R0, R11,LSL#18
1ACC6E:  BPL             loc_1ACC78
1ACC70:  LDR.W           R0, [R8,#0xC]
1ACC74:  CMP             R0, #8
1ACC76:  BLT             loc_1ACC48
1ACC78:  LDRH.W          R0, [R10,#0x30]
1ACC7C:  ANDS.W          R4, R0, #2
1ACC80:  BNE             loc_1ACC92
1ACC82:  MOV             R0, R10
1ACC84:  MOVS            R1, #0
1ACC86:  MOVS            R2, #2
1ACC88:  MOVS            R5, #0
1ACC8A:  BLX             j__Z12RwRasterLockP8RwRasterhi; RwRasterLock(RwRaster *,uchar,int)
1ACC8E:  CMP             R0, #0
1ACC90:  BEQ             loc_1ACC4A
1ACC92:  LDR.W           R5, [R10,#4]
1ACC96:  MOVS            R0, #8
1ACC98:  AND.W           R1, R11, #0x6F00
1ACC9C:  MOVT            R0, #0x8000
1ACCA0:  CMP.W           R1, #0x2600
1ACCA4:  STR             R4, [SP,#0x28+var_28]
1ACCA6:  BGE             loc_1ACD08
1ACCA8:  CMP.W           R1, #0x500
1ACCAC:  BEQ             loc_1ACD70
1ACCAE:  CMP.W           R1, #0x600
1ACCB2:  BEQ             loc_1ACDA2
1ACCB4:  CMP.W           R1, #0x2500
1ACCB8:  BNE.W           loc_1ACE9A
1ACCBC:  LDR.W           R1, [R8,#0xC]
1ACCC0:  CMP             R1, #0x20 ; ' '
1ACCC2:  BEQ.W           loc_1ACEC8
1ACCC6:  CMP             R1, #8
1ACCC8:  BNE.W           loc_1ACE96
1ACCCC:  LDR.W           R1, [R10,#8]
1ACCD0:  LDR.W           R12, [R8,#0x18]
1ACCD4:  ADD.W           R2, R1, #0x400
1ACCD8:  CMP             R12, R2
1ACCDA:  ITT CC
1ACCDC:  ADDCC.W         R2, R12, #0x400
1ACCE0:  CMPCC           R1, R2
1ACCE2:  BCC.W           loc_1AD00A
1ACCE6:  MOVS            R2, #0
1ACCE8:  ADDS            R3, R1, R2
1ACCEA:  VLD4.8          {D16,D18,D20,D22}, [R3]!
1ACCEE:  VLD4.8          {D17,D19,D21,D23}, [R3]
1ACCF2:  ADD.W           R3, R12, R2
1ACCF6:  ADDS            R2, #0x40 ; '@'
1ACCF8:  CMP.W           R2, #0x400
1ACCFC:  VST4.8          {D16,D18,D20,D22}, [R3]!
1ACD00:  VST4.8          {D17,D19,D21,D23}, [R3]
1ACD04:  BNE             loc_1ACCE8
1ACD06:  B               loc_1AD02C
1ACD08:  BEQ             loc_1ACDFA
1ACD0A:  CMP.W           R1, #0x4500
1ACD0E:  BEQ.W           loc_1ACE48
1ACD12:  CMP.W           R1, #0x4600
1ACD16:  BNE.W           loc_1ACE9A
1ACD1A:  LDR.W           R1, [R8,#0xC]
1ACD1E:  CMP             R1, #4
1ACD20:  BEQ             loc_1ACD2E
1ACD22:  CMP             R1, #0x20 ; ' '
1ACD24:  BEQ.W           loc_1ACF68
1ACD28:  CMP             R1, #8
1ACD2A:  BNE.W           loc_1ACE96
1ACD2E:  LDR.W           R0, [R10,#8]
1ACD32:  LDR.W           R1, [R8,#0x18]
1ACD36:  ADD.W           R2, R0, #0x30 ; '0'
1ACD3A:  CMP             R1, R2
1ACD3C:  ITT CC
1ACD3E:  ADDCC.W         R2, R1, #0x40 ; '@'
1ACD42:  CMPCC           R0, R2
1ACD44:  BCS.W           loc_1AD068
1ACD48:  ADDS            R1, #1
1ACD4A:  MOVS            R2, #0
1ACD4C:  MOV.W           R12, #0xFF
1ACD50:  LDRB            R4, [R0,R2]
1ACD52:  STRB.W          R4, [R1,#-1]
1ACD56:  ADDS            R4, R0, R2
1ACD58:  ADDS            R2, #3
1ACD5A:  CMP             R2, #0x30 ; '0'
1ACD5C:  LDRB            R3, [R4,#1]
1ACD5E:  STRB            R3, [R1]
1ACD60:  LDRB            R3, [R4,#2]
1ACD62:  STRB.W          R12, [R1,#2]
1ACD66:  STRB            R3, [R1,#1]
1ACD68:  ADD.W           R1, R1, #4
1ACD6C:  BNE             loc_1ACD50
1ACD6E:  B               loc_1AD07C
1ACD70:  LDR.W           R0, [R10,#0x10]
1ACD74:  CMP             R0, #1
1ACD76:  BLT.W           loc_1ACEAC
1ACD7A:  MOVS            R4, #0
1ACD7C:  LDR.W           R0, [R10,#0xC]
1ACD80:  MOV             R1, R5; void *
1ACD82:  LSLS            R2, R0, #2; size_t
1ACD84:  MOV             R0, R6; void *
1ACD86:  BLX             memcpy_1
1ACD8A:  LDR.W           R1, [R10,#0x18]
1ACD8E:  ADDS            R4, #1
1ACD90:  LDR.W           R2, [R8,#0x10]
1ACD94:  LDR.W           R0, [R10,#0x10]
1ACD98:  ADD             R5, R1
1ACD9A:  ADD             R6, R2
1ACD9C:  CMP             R4, R0
1ACD9E:  BLT             loc_1ACD7C
1ACDA0:  B               loc_1ACEAC
1ACDA2:  LDR.W           R3, [R10,#0x10]
1ACDA6:  CMP             R3, #1
1ACDA8:  BLT.W           loc_1ACEAC
1ACDAC:  LDR.W           R2, [R10,#0xC]
1ACDB0:  MOV.W           R12, #0
1ACDB4:  MOVS            R1, #0xFF
1ACDB6:  CMP             R2, #1
1ACDB8:  BLT             loc_1ACDE4
1ACDBA:  MOVS            R3, #0
1ACDBC:  ADD.W           R2, R6, R3,LSL#2
1ACDC0:  ADD.W           R4, R3, R3,LSL#1
1ACDC4:  STRB            R1, [R2,#3]
1ACDC6:  LDRB            R0, [R5,R4]
1ACDC8:  STRB.W          R0, [R6,R3,LSL#2]
1ACDCC:  ADDS            R0, R5, R4
1ACDCE:  ADDS            R3, #1
1ACDD0:  LDRB            R4, [R0,#1]
1ACDD2:  STRB            R4, [R2,#1]
1ACDD4:  LDRB            R0, [R0,#2]
1ACDD6:  STRB            R0, [R2,#2]
1ACDD8:  LDR.W           R2, [R10,#0xC]
1ACDDC:  CMP             R3, R2
1ACDDE:  BLT             loc_1ACDBC
1ACDE0:  LDR.W           R3, [R10,#0x10]
1ACDE4:  LDR.W           R0, [R10,#0x18]
1ACDE8:  ADD.W           R12, R12, #1
1ACDEC:  LDR.W           R4, [R8,#0x10]
1ACDF0:  CMP             R12, R3
1ACDF2:  ADD             R5, R0
1ACDF4:  ADD             R6, R4
1ACDF6:  BLT             loc_1ACDB6
1ACDF8:  B               loc_1ACEAC
1ACDFA:  LDR.W           R1, [R8,#0xC]
1ACDFE:  CMP             R1, #0x20 ; ' '
1ACE00:  BEQ.W           loc_1ACF0A
1ACE04:  CMP             R1, #8
1ACE06:  BNE             loc_1ACE96
1ACE08:  LDR.W           R0, [R10,#8]
1ACE0C:  LDR.W           R1, [R8,#0x18]
1ACE10:  ADD.W           R2, R0, #0x300
1ACE14:  CMP             R1, R2
1ACE16:  ITT CC
1ACE18:  ADDCC.W         R2, R1, #0x400
1ACE1C:  CMPCC           R0, R2
1ACE1E:  BCC.W           loc_1AD0B8
1ACE22:  VMOV.I8         Q8, #0xFF
1ACE26:  MOVS            R2, #0
1ACE28:  VLD3.8          {D18,D20,D22}, [R0]!
1ACE2C:  ADDS            R3, R1, R2
1ACE2E:  ADDS            R2, #0x40 ; '@'
1ACE30:  CMP.W           R2, #0x400
1ACE34:  VLD3.8          {D19,D21,D23}, [R0]!
1ACE38:  VMOV            Q12, Q8
1ACE3C:  VST4.8          {D18,D20,D22,D24}, [R3]!
1ACE40:  VST4.8          {D19,D21,D23,D25}, [R3]
1ACE44:  BNE             loc_1ACE28
1ACE46:  B               loc_1AD0E0
1ACE48:  LDR.W           R1, [R8,#0xC]
1ACE4C:  CMP             R1, #4
1ACE4E:  BEQ             loc_1ACE5A
1ACE50:  CMP             R1, #0x20 ; ' '
1ACE52:  BEQ.W           loc_1ACFC6
1ACE56:  CMP             R1, #8
1ACE58:  BNE             loc_1ACE96
1ACE5A:  LDR.W           R1, [R10,#8]
1ACE5E:  LDR.W           R12, [R8,#0x18]
1ACE62:  ADD.W           R2, R1, #0x40 ; '@'
1ACE66:  CMP             R12, R2
1ACE68:  ITT CC
1ACE6A:  ADDCC.W         R2, R12, #0x40 ; '@'
1ACE6E:  CMPCC           R1, R2
1ACE70:  BCS.W           loc_1AD11C
1ACE74:  MOVS            R2, #0
1ACE76:  LDRB            R3, [R1,R2]
1ACE78:  ADD.W           R0, R12, R2
1ACE7C:  STRB.W          R3, [R12,R2]
1ACE80:  ADDS            R3, R1, R2
1ACE82:  ADDS            R2, #4
1ACE84:  LDRB            R4, [R3,#1]
1ACE86:  CMP             R2, #0x40 ; '@'
1ACE88:  STRB            R4, [R0,#1]
1ACE8A:  LDRB            R4, [R3,#2]
1ACE8C:  STRB            R4, [R0,#2]
1ACE8E:  LDRB            R3, [R3,#3]
1ACE90:  STRB            R3, [R0,#3]
1ACE92:  BNE             loc_1ACE76
1ACE94:  B               loc_1AD12C
1ACE96:  MOVS            R1, #0
1ACE98:  B               loc_1ACE9E
1ACE9A:  MOVS            R1, #0
1ACE9C:  ADDS            R0, #5; int
1ACE9E:  STR             R1, [SP,#0x28+var_24]
1ACEA0:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1ACEA4:  STR             R0, [SP,#0x28+var_20]
1ACEA6:  ADD             R0, SP, #0x28+var_24
1ACEA8:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1ACEAC:  LDR             R0, [SP,#0x28+var_28]
1ACEAE:  CMP             R0, #0
1ACEB0:  ITT EQ
1ACEB2:  MOVEQ           R0, R10
1ACEB4:  BLXEQ           j__Z14RwRasterUnlockP8RwRaster; RwRasterUnlock(RwRaster *)
1ACEB8:  CMP.W           R9, #0
1ACEBC:  ITT NE
1ACEBE:  MOVNE           R0, R10
1ACEC0:  BLXNE           j__Z21RwRasterUnlockPaletteP8RwRaster; RwRasterUnlockPalette(RwRaster *)
1ACEC4:  MOVS            R5, #1
1ACEC6:  B               loc_1ACC4A
1ACEC8:  LDR.W           R12, [R10,#0x10]
1ACECC:  CMP.W           R12, #1
1ACED0:  BLT             loc_1ACEAC
1ACED2:  LDRD.W          R0, R2, [R10,#8]
1ACED6:  MOVS            R1, #0
1ACED8:  CMP             R2, #1
1ACEDA:  BLT             loc_1ACEF6
1ACEDC:  MOVS            R3, #0
1ACEDE:  LDRB            R2, [R5,R3]
1ACEE0:  LDR.W           R2, [R0,R2,LSL#2]
1ACEE4:  STR.W           R2, [R6,R3,LSL#2]
1ACEE8:  ADDS            R3, #1
1ACEEA:  LDR.W           R2, [R10,#0xC]
1ACEEE:  CMP             R3, R2
1ACEF0:  BLT             loc_1ACEDE
1ACEF2:  LDR.W           R12, [R10,#0x10]
1ACEF6:  LDR.W           R4, [R10,#0x18]
1ACEFA:  ADDS            R1, #1
1ACEFC:  LDR.W           R3, [R8,#0x10]
1ACF00:  CMP             R1, R12
1ACF02:  ADD             R5, R4
1ACF04:  ADD             R6, R3
1ACF06:  BLT             loc_1ACED8
1ACF08:  B               loc_1ACEAC
1ACF0A:  LDR.W           R12, [R10,#0x10]
1ACF0E:  CMP.W           R12, #1
1ACF12:  BLT             loc_1ACEAC
1ACF14:  LDRD.W          R0, R3, [R10,#8]
1ACF18:  MOV.W           LR, #0
1ACF1C:  MOV.W           R11, #0xFF
1ACF20:  CMP             R3, #1
1ACF22:  BLT             loc_1ACF52
1ACF24:  MOVS            R4, #0
1ACF26:  LDRB            R3, [R5,R4]
1ACF28:  ADD.W           R2, R6, R4,LSL#2
1ACF2C:  ADD.W           R3, R3, R3,LSL#1
1ACF30:  LDRB            R1, [R0,R3]
1ACF32:  STRB.W          R1, [R6,R4,LSL#2]
1ACF36:  ADDS            R1, R0, R3
1ACF38:  ADDS            R4, #1
1ACF3A:  LDRB            R3, [R1,#1]
1ACF3C:  STRB            R3, [R2,#1]
1ACF3E:  LDRB            R1, [R1,#2]
1ACF40:  STRB.W          R11, [R2,#3]
1ACF44:  STRB            R1, [R2,#2]
1ACF46:  LDR.W           R3, [R10,#0xC]
1ACF4A:  CMP             R4, R3
1ACF4C:  BLT             loc_1ACF26
1ACF4E:  LDR.W           R12, [R10,#0x10]
1ACF52:  LDR.W           R1, [R10,#0x18]
1ACF56:  ADD.W           LR, LR, #1
1ACF5A:  LDR.W           R2, [R8,#0x10]
1ACF5E:  CMP             LR, R12
1ACF60:  ADD             R5, R1
1ACF62:  ADD             R6, R2
1ACF64:  BLT             loc_1ACF20
1ACF66:  B               loc_1ACEAC
1ACF68:  LDR.W           R12, [R10,#0x10]
1ACF6C:  CMP.W           R12, #1
1ACF70:  BLT             loc_1ACEAC
1ACF72:  LDRD.W          R0, R3, [R10,#8]
1ACF76:  MOV.W           LR, #0
1ACF7A:  MOV.W           R11, #0xFF
1ACF7E:  CMP             R3, #1
1ACF80:  BLT             loc_1ACFB0
1ACF82:  MOVS            R4, #0
1ACF84:  LDRB            R3, [R5,R4]
1ACF86:  ADD.W           R2, R6, R4,LSL#2
1ACF8A:  ADD.W           R3, R3, R3,LSL#1
1ACF8E:  LDRB            R1, [R0,R3]
1ACF90:  STRB.W          R1, [R6,R4,LSL#2]
1ACF94:  ADDS            R1, R0, R3
1ACF96:  ADDS            R4, #1
1ACF98:  LDRB            R3, [R1,#1]
1ACF9A:  STRB            R3, [R2,#1]
1ACF9C:  LDRB            R1, [R1,#2]
1ACF9E:  STRB.W          R11, [R2,#3]
1ACFA2:  STRB            R1, [R2,#2]
1ACFA4:  LDR.W           R3, [R10,#0xC]
1ACFA8:  CMP             R4, R3
1ACFAA:  BLT             loc_1ACF84
1ACFAC:  LDR.W           R12, [R10,#0x10]
1ACFB0:  LDR.W           R1, [R10,#0x18]
1ACFB4:  ADD.W           LR, LR, #1
1ACFB8:  LDR.W           R2, [R8,#0x10]
1ACFBC:  CMP             LR, R12
1ACFBE:  ADD             R5, R1
1ACFC0:  ADD             R6, R2
1ACFC2:  BLT             loc_1ACF7E
1ACFC4:  B               loc_1ACEAC
1ACFC6:  LDR.W           R12, [R10,#0x10]
1ACFCA:  CMP.W           R12, #1
1ACFCE:  BLT.W           loc_1ACEAC
1ACFD2:  LDRD.W          R0, R2, [R10,#8]
1ACFD6:  MOVS            R1, #0
1ACFD8:  CMP             R2, #1
1ACFDA:  BLT             loc_1ACFF6
1ACFDC:  MOVS            R3, #0
1ACFDE:  LDRB            R2, [R5,R3]
1ACFE0:  LDR.W           R2, [R0,R2,LSL#2]
1ACFE4:  STR.W           R2, [R6,R3,LSL#2]
1ACFE8:  ADDS            R3, #1
1ACFEA:  LDR.W           R2, [R10,#0xC]
1ACFEE:  CMP             R3, R2
1ACFF0:  BLT             loc_1ACFDE
1ACFF2:  LDR.W           R12, [R10,#0x10]
1ACFF6:  LDR.W           R4, [R10,#0x18]
1ACFFA:  ADDS            R1, #1
1ACFFC:  LDR.W           R3, [R8,#0x10]
1AD000:  CMP             R1, R12
1AD002:  ADD             R5, R4
1AD004:  ADD             R6, R3
1AD006:  BLT             loc_1ACFD8
1AD008:  B               loc_1ACEAC
1AD00A:  MOVS            R2, #0
1AD00C:  LDRB            R3, [R1,R2]
1AD00E:  ADD.W           R0, R12, R2
1AD012:  STRB.W          R3, [R12,R2]
1AD016:  ADDS            R3, R1, R2
1AD018:  ADDS            R2, #4
1AD01A:  LDRB            R4, [R3,#1]
1AD01C:  CMP.W           R2, #0x400
1AD020:  STRB            R4, [R0,#1]
1AD022:  LDRB            R4, [R3,#2]
1AD024:  STRB            R4, [R0,#2]
1AD026:  LDRB            R3, [R3,#3]
1AD028:  STRB            R3, [R0,#3]
1AD02A:  BNE             loc_1AD00C
1AD02C:  LDR.W           R2, [R10,#0x10]
1AD030:  CMP             R2, #1
1AD032:  BLT.W           loc_1ACEAC
1AD036:  LDR.W           R1, [R10,#0xC]
1AD03A:  MOVS            R0, #0
1AD03C:  CMP             R1, #1
1AD03E:  BLT             loc_1AD054
1AD040:  MOVS            R2, #0
1AD042:  LDRB            R1, [R5,R2]
1AD044:  STRB            R1, [R6,R2]
1AD046:  ADDS            R2, #1
1AD048:  LDR.W           R1, [R10,#0xC]
1AD04C:  CMP             R2, R1
1AD04E:  BLT             loc_1AD042
1AD050:  LDR.W           R2, [R10,#0x10]
1AD054:  LDR.W           R3, [R10,#0x18]
1AD058:  ADDS            R0, #1
1AD05A:  LDR.W           R4, [R8,#0x10]
1AD05E:  CMP             R0, R2
1AD060:  ADD             R5, R3
1AD062:  ADD             R6, R4
1AD064:  BLT             loc_1AD03C
1AD066:  B               loc_1ACEAC
1AD068:  VLD3.8          {D16,D18,D20}, [R0]!
1AD06C:  VLD3.8          {D17,D19,D21}, [R0]
1AD070:  VMOV.I8         Q11, #0xFF
1AD074:  VST4.8          {D16,D18,D20,D22}, [R1]!
1AD078:  VST4.8          {D17,D19,D21,D23}, [R1]
1AD07C:  LDR.W           R2, [R10,#0x10]
1AD080:  CMP             R2, #1
1AD082:  BLT.W           loc_1ACEAC
1AD086:  LDR.W           R1, [R10,#0xC]
1AD08A:  MOVS            R0, #0
1AD08C:  CMP             R1, #1
1AD08E:  BLT             loc_1AD0A4
1AD090:  MOVS            R2, #0
1AD092:  LDRB            R1, [R5,R2]
1AD094:  STRB            R1, [R6,R2]
1AD096:  ADDS            R2, #1
1AD098:  LDR.W           R1, [R10,#0xC]
1AD09C:  CMP             R2, R1
1AD09E:  BLT             loc_1AD092
1AD0A0:  LDR.W           R2, [R10,#0x10]
1AD0A4:  LDR.W           R3, [R10,#0x18]
1AD0A8:  ADDS            R0, #1
1AD0AA:  LDR.W           R4, [R8,#0x10]
1AD0AE:  CMP             R0, R2
1AD0B0:  ADD             R5, R3
1AD0B2:  ADD             R6, R4
1AD0B4:  BLT             loc_1AD08C
1AD0B6:  B               loc_1ACEAC
1AD0B8:  ADDS            R1, #1
1AD0BA:  MOVS            R2, #0
1AD0BC:  MOV.W           R12, #0xFF
1AD0C0:  LDRB            R4, [R0,R2]
1AD0C2:  STRB.W          R4, [R1,#-1]
1AD0C6:  ADDS            R4, R0, R2
1AD0C8:  ADDS            R2, #3
1AD0CA:  CMP.W           R2, #0x300
1AD0CE:  LDRB            R3, [R4,#1]
1AD0D0:  STRB            R3, [R1]
1AD0D2:  LDRB            R3, [R4,#2]
1AD0D4:  STRB.W          R12, [R1,#2]
1AD0D8:  STRB            R3, [R1,#1]
1AD0DA:  ADD.W           R1, R1, #4
1AD0DE:  BNE             loc_1AD0C0
1AD0E0:  LDR.W           R2, [R10,#0x10]
1AD0E4:  CMP             R2, #1
1AD0E6:  BLT.W           loc_1ACEAC
1AD0EA:  LDR.W           R1, [R10,#0xC]
1AD0EE:  MOVS            R0, #0
1AD0F0:  CMP             R1, #1
1AD0F2:  BLT             loc_1AD108
1AD0F4:  MOVS            R2, #0
1AD0F6:  LDRB            R1, [R5,R2]
1AD0F8:  STRB            R1, [R6,R2]
1AD0FA:  ADDS            R2, #1
1AD0FC:  LDR.W           R1, [R10,#0xC]
1AD100:  CMP             R2, R1
1AD102:  BLT             loc_1AD0F6
1AD104:  LDR.W           R2, [R10,#0x10]
1AD108:  LDR.W           R3, [R10,#0x18]
1AD10C:  ADDS            R0, #1
1AD10E:  LDR.W           R4, [R8,#0x10]
1AD112:  CMP             R0, R2
1AD114:  ADD             R5, R3
1AD116:  ADD             R6, R4
1AD118:  BLT             loc_1AD0F0
1AD11A:  B               loc_1ACEAC
1AD11C:  VLD4.8          {D16,D18,D20,D22}, [R1]!
1AD120:  VLD4.8          {D17,D19,D21,D23}, [R1]
1AD124:  VST4.8          {D16,D18,D20,D22}, [R12]!
1AD128:  VST4.8          {D17,D19,D21,D23}, [R12]
1AD12C:  LDR.W           R2, [R10,#0x10]
1AD130:  CMP             R2, #1
1AD132:  BLT.W           loc_1ACEAC
1AD136:  LDR.W           R1, [R10,#0xC]
1AD13A:  MOVS            R0, #0
1AD13C:  CMP             R1, #1
1AD13E:  BLT             loc_1AD154
1AD140:  MOVS            R2, #0
1AD142:  LDRB            R1, [R5,R2]
1AD144:  STRB            R1, [R6,R2]
1AD146:  ADDS            R2, #1
1AD148:  LDR.W           R1, [R10,#0xC]
1AD14C:  CMP             R2, R1
1AD14E:  BLT             loc_1AD142
1AD150:  LDR.W           R2, [R10,#0x10]
1AD154:  LDR.W           R3, [R10,#0x18]
1AD158:  ADDS            R0, #1
1AD15A:  LDR.W           R4, [R8,#0x10]
1AD15E:  CMP             R0, R2
1AD160:  ADD             R5, R3
1AD162:  ADD             R6, R4
1AD164:  BLT             loc_1AD13C
1AD166:  B               loc_1ACEAC
