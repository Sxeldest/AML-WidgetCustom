; =========================================================
; Game Engine Function: sub_8BCC0
; Address            : 0x8BCC0 - 0x8C1E0
; =========================================================

8BCC0:  PUSH            {R4-R7,LR}
8BCC2:  ADD             R7, SP, #0xC
8BCC4:  PUSH.W          {R8-R11}
8BCC8:  SUB             SP, SP, #4
8BCCA:  VPUSH           {D8-D11}
8BCCE:  SUB             SP, SP, #0x48
8BCD0:  ADD.W           R9, R0, #8
8BCD4:  MOV             R4, R0
8BCD6:  MOV             R10, R1
8BCD8:  MOV             R0, R9; int
8BCDA:  BL              sub_88140
8BCDE:  MOVW            R6, #0x1518
8BCE2:  ADD.W           R8, R4, R6
8BCE6:  ADD.W           R0, R8, #0xAC; int
8BCEA:  MOV.W           R1, #0x300; n
8BCEE:  BLX             sub_10967C
8BCF2:  ADR.W           R0, dword_8C2D0
8BCF6:  MOVS            R1, #0
8BCF8:  VLD1.64         {D16-D17}, [R0@128]
8BCFC:  ADR.W           R0, dword_8C2E0
8BD00:  MOVT            R1, #0x3FA0
8BD04:  MOV.W           R2, #0x41000000
8BD08:  VLD1.64         {D18-D19}, [R0@128]
8BD0C:  ADR.W           R0, dword_8C2F0
8BD10:  MOVS            R3, #0
8BD12:  MOV.W           R5, #0x40800000
8BD16:  VLD1.64         {D20-D21}, [R0@128]
8BD1A:  ADR.W           R0, dword_8C300
8BD1E:  MOVT            R3, #0x40E0
8BD22:  VLD1.64         {D22-D23}, [R0@128]
8BD26:  ADR.W           R0, dword_8C310
8BD2A:  VLD1.64         {D24-D25}, [R0@128]
8BD2E:  ADR.W           R0, dword_8C320
8BD32:  VLD1.64         {D26-D27}, [R0@128]
8BD36:  ADR.W           R0, dword_8C330
8BD3A:  VLD1.64         {D28-D29}, [R0@128]
8BD3E:  MOV.W           R0, #0x15C0
8BD42:  STR             R1, [R4,R0]
8BD44:  MOVW            R0, #0x15BC
8BD48:  MOVW            R1, #0x101
8BD4C:  STRH            R1, [R4,R0]
8BD4E:  MOVW            R1, #0x151C
8BD52:  MOV.W           R0, #0x3F800000
8BD56:  STR             R2, [R4,R1]
8BD58:  ADD             R1, R4
8BD5A:  STRD.W          R2, R3, [R1,#4]
8BD5E:  ADD.W           R3, R4, #0x1540
8BD62:  STR             R0, [R4,R6]
8BD64:  MOVS            R6, #0
8BD66:  MOVS            R2, #0
8BD68:  VST1.32         {D18-D19}, [R3]!
8BD6C:  MOVT            R6, #0x4040
8BD70:  STRD.W          R5, R6, [R3]
8BD74:  STRD.W          R2, R2, [R3,#8]
8BD78:  MOVW            R3, #0x152C
8BD7C:  ADD             R3, R4
8BD7E:  STR             R0, [R1,#0xC]
8BD80:  ADD.W           R1, R4, #0x1560
8BD84:  VST1.32         {D20-D21}, [R3]!
8BD88:  VST1.32         {D16-D17}, [R1]!
8BD8C:  STRD.W          R2, R2, [R1]
8BD90:  STR             R2, [R3]
8BD92:  MOVW            R2, #0x1598
8BD96:  ADDS            R6, R4, R2
8BD98:  VST1.32         {D22-D23}, [R6]!
8BD9C:  MOV             R2, R6
8BD9E:  VST1.32         {D24-D25}, [R2]!
8BDA2:  STR             R0, [R2]
8BDA4:  ADD.W           R0, R1, #8
8BDA8:  VST1.32         {D26-D27}, [R0]!
8BDAC:  VST1.64         {D28-D29}, [R0]
8BDB0:  MOV             R0, R8
8BDB2:  STR.W           R9, [SP,#0x88+var_54]
8BDB6:  BL              sub_9B5A0
8BDBA:  MOVW            R0, #0x18D0
8BDBE:  ADD.W           R8, R4, R0
8BDC2:  MOV             R0, R8
8BDC4:  BL              sub_9BA20
8BDC8:  MOVW            R0, #0x19EC
8BDCC:  ADD.W           R11, R4, R0
8BDD0:  ADR.W           R0, dword_8C340
8BDD4:  VMOV.I32        Q8, #0
8BDD8:  VLD1.64         {D8-D9}, [R0@128]
8BDDC:  MOVW            R0, #0x1A10
8BDE0:  ADD             R0, R4
8BDE2:  ADD.W           R2, R11, #0x58 ; 'X'
8BDE6:  VST1.64         {D16-D17}, [R0]!
8BDEA:  MOVS            R1, #4
8BDEC:  MOVW            R3, #0x1A64
8BDF0:  ADD.W           R5, R11, #0xF4
8BDF4:  VST1.64         {D16-D17}, [R0]!
8BDF8:  VST1.64         {D16-D17}, [R0]
8BDFC:  MOVS            R0, #0x1C
8BDFE:  VST1.32         {D8-D9}, [R2],R0
8BE02:  MOVW            R0, #0x1998
8BE06:  ADD             R0, R4
8BE08:  VST1.32         {D16-D17}, [R0],R1
8BE0C:  STR             R0, [SP,#0x88+var_5C]
8BE0E:  MOVW            R0, #0x196C
8BE12:  ADD             R0, R4
8BE14:  STR             R0, [SP,#0x88+var_58]
8BE16:  VST1.32         {D16-D17}, [R0]!
8BE1A:  VST1.32         {D16-D17}, [R0]!
8BE1E:  VST1.32         {D16-D17}, [R0],R1
8BE22:  STR             R0, [SP,#0x88+var_60]
8BE24:  MOVS            R0, #0
8BE26:  STR.W           R0, [R11,#0x78]
8BE2A:  STR             R0, [R4,R3]
8BE2C:  STR             R0, [R2]
8BE2E:  MOVW            R2, #0x1A30
8BE32:  ADD             R2, R4
8BE34:  STRD.W          R0, R0, [R11]
8BE38:  VST1.64         {D16-D17}, [R2]!
8BE3C:  VST1.64         {D16-D17}, [R2]!
8BE40:  VST1.64         {D16-D17}, [R2]!
8BE44:  STR             R0, [R2]
8BE46:  MOVW            R2, #0x1A68
8BE4A:  ADDS            R3, R4, R2
8BE4C:  MOVW            R2, #0x1AA4
8BE50:  VST1.64         {D16-D17}, [R3]!
8BE54:  ADD             R2, R4
8BE56:  STR             R3, [SP,#0x88+var_64]
8BE58:  VST1.64         {D16-D17}, [R3]!
8BE5C:  VST1.32         {D16-D17}, [R2],R1
8BE60:  VST1.64         {D16-D17}, [R3]!
8BE64:  VST1.64         {D16-D17}, [R3],R1
8BE68:  MOVS            R1, #0x40 ; '@'
8BE6A:  STR             R2, [SP,#0x88+var_6C]
8BE6C:  MOV             R2, R5
8BE6E:  VST1.32         {D8-D9}, [R2],R1
8BE72:  MOVS            R1, #0x28 ; '('
8BE74:  VST1.32         {D8-D9}, [R2],R1
8BE78:  ADR.W           R1, dword_8C350
8BE7C:  VLD1.64         {D18-D19}, [R1@128]
8BE80:  ADD.W           R1, R11, #0x168
8BE84:  STR             R0, [R2]
8BE86:  ADD.W           R2, R11, #0x190
8BE8A:  STRD.W          R0, R0, [R11,#0x160]
8BE8E:  STRD.W          R0, R0, [R11,#0x184]
8BE92:  STR.W           R0, [R11,#0x18C]
8BE96:  STRB.W          R0, [R11,#0x1F0]
8BE9A:  STRD.W          R0, R0, [R11,#0x1AC]
8BE9E:  STR.W           R0, [R11,#0x1B4]
8BEA2:  ADD.W           R0, R11, #0x1B8
8BEA6:  STR             R3, [SP,#0x88+var_68]
8BEA8:  MOVW            R3, #0xFFFF
8BEAC:  VST1.32         {D18-D19}, [R0]!
8BEB0:  MOVT            R3, #0x7F7F
8BEB4:  VST1.32         {D18-D19}, [R1]!
8BEB8:  STR             R3, [R0]
8BEBA:  ADD.W           R0, R4, #0x1BE0
8BEBE:  STR             R0, [SP,#0x88+var_70]
8BEC0:  VST1.64         {D16-D17}, [R0]!
8BEC4:  VST1.64         {D16-D17}, [R0]!
8BEC8:  STR             R3, [R1]
8BECA:  MOV             R1, #0xFF7FFFFF
8BECE:  STRD.W          R1, R1, [R11,#0x17C]
8BED2:  STRD.W          R1, R1, [R11,#0x1A4]
8BED6:  STRD.W          R1, R1, [R11,#0x1CC]
8BEDA:  MOVS            R1, #0x14
8BEDC:  VST1.64         {D16-D17}, [R0]!
8BEE0:  VST1.32         {D18-D19}, [R2]!
8BEE4:  VST1.64         {D16-D17}, [R0],R1
8BEE8:  STR             R3, [R2]
8BEEA:  MOV             R1, R8
8BEEC:  STR             R0, [SP,#0x88+var_74]
8BEEE:  BL              sub_8AA58
8BEF2:  MOVW            R0, #0x1C9C
8BEF6:  STR             R6, [SP,#0x88+var_44]
8BEF8:  ADD             R0, R4
8BEFA:  MOV             R1, R8
8BEFC:  STR             R0, [SP,#0x88+var_78]
8BEFE:  BL              sub_8AA58
8BF02:  MOVW            R0, #0x1D88
8BF06:  ADDS            R1, R4, R0
8BF08:  MOV.W           R0, #0xFFFFFFFF
8BF0C:  MOV.W           R9, #0
8BF10:  STR.W           R0, [R11,#0x34C]
8BF14:  ADD.W           R0, R11, #0x374
8BF18:  VMOV.I32        Q5, #0
8BF1C:  STRD.W          R9, R9, [R1]
8BF20:  VST1.64         {D8-D9}, [R0]
8BF24:  MOVW            R0, #0x1D28
8BF28:  ADD             R0, R4
8BF2A:  STR             R1, [SP,#0x88+var_48]
8BF2C:  STR.W           R9, [R1,#8]
8BF30:  MOVS            R1, #0x14
8BF32:  VST1.64         {D10-D11}, [R0],R1
8BF36:  VST1.32         {D10-D11}, [R0]
8BF3A:  MOVW            R0, #0x1D4C
8BF3E:  ADD             R0, R4
8BF40:  VST1.32         {D10-D11}, [R0]!
8BF44:  STRB.W          R9, [R0]
8BF48:  MOVW            R0, #0x1DE8
8BF4C:  ADD             R0, R4
8BF4E:  STR             R5, [SP,#0x88+var_4C]
8BF50:  VST1.64         {D10-D11}, [R0]!
8BF54:  VST1.64         {D10-D11}, [R0]!
8BF58:  STR.W           R9, [R0]
8BF5C:  MOVW            R0, #0x1D9C
8BF60:  ADDS            R6, R4, R0
8BF62:  MOVS            R0, #0xC
8BF64:  STR             R6, [SP,#0x88+var_7C]
8BF66:  VST1.32         {D10-D11}, [R6],R0
8BF6A:  MOVW            R0, #0xE84
8BF6E:  VST1.32         {D10-D11}, [R6],R1
8BF72:  MOVW            R1, #0xE74; n
8BF76:  STR             R6, [SP,#0x88+var_80]
8BF78:  VST1.32         {D10-D11}, [R6]!
8BF7C:  VST1.32         {D10-D11}, [R6],R0
8BF80:  MOVW            R0, #0x1DDC
8BF84:  ADD             R0, R4; int
8BF86:  STRH.W          R9, [R11,#0x371]
8BF8A:  STR             R0, [SP,#0x88+var_84]
8BF8C:  BLX             sub_10967C
8BF90:  MOV             R0, R6
8BF92:  BL              sub_A35FC
8BF96:  MOVW            R0, #0x2CD4
8BF9A:  ADDS            R1, R4, R0
8BF9C:  MOVW            R0, #0x2D2C
8BFA0:  ADD.W           R8, R4, R0
8BFA4:  CLZ.W           R0, R10
8BFA8:  MOV             R3, R10
8BFAA:  LDR             R5, [SP,#0x88+var_44]
8BFAC:  MOV.W           R0, R0,LSR#5
8BFB0:  STRD.W          R9, R9, [R1]
8BFB4:  STRB            R0, [R4,#3]
8BFB6:  MOVW            R0, #0x2CB0
8BFBA:  ADD.W           R10, R4, R0
8BFBE:  MOV.W           R0, #0x34 ; '4'
8BFC2:  VST1.64         {D10-D11}, [R10],R0
8BFC6:  MOV.W           R0, #0x18
8BFCA:  VST1.32         {D10-D11}, [R10],R0
8BFCE:  MOV             R0, R10
8BFD0:  STR             R1, [SP,#0x88+var_50]
8BFD2:  VST1.32         {D10-D11}, [R0]!
8BFD6:  VST1.32         {D10-D11}, [R0]!
8BFDA:  STR.W           R9, [R1,#8]
8BFDE:  STRD.W          R9, R9, [R8]
8BFE2:  STR.W           R9, [R8,#8]
8BFE6:  STRB.W          R9, [R4,#2]
8BFEA:  STRH.W          R9, [R4]
8BFEE:  STRD.W          R9, R9, [R5,#0x31C]
8BFF2:  STR.W           R9, [R5,#0x324]
8BFF6:  STR.W           R9, [R0]
8BFFA:  CBNZ            R3, loc_8C032
8BFFC:  STR.W           R8, [SP,#0x88+var_88]
8C000:  LDR             R0, =(dword_1ACF68 - 0x8C006)
8C002:  ADD             R0, PC; dword_1ACF68
8C004:  LDR             R0, [R0]
8C006:  CMP             R0, #0
8C008:  ITTT NE
8C00A:  LDRNE.W         R1, [R0,#0x370]
8C00E:  ADDNE           R1, #1
8C010:  STRNE.W         R1, [R0,#0x370]
8C014:  LDR             R0, =(dword_1ACF70 - 0x8C01C)
8C016:  LDR             R2, =(off_117248 - 0x8C01E)
8C018:  ADD             R0, PC; dword_1ACF70
8C01A:  ADD             R2, PC; off_117248
8C01C:  LDR             R1, [R0]
8C01E:  LDR             R2, [R2]; sub_9A720
8C020:  MOVS            R0, #0x5C ; '\'
8C022:  BLX             R2; sub_9A720
8C024:  MOV             R9, R0
8C026:  LDR.W           R8, [SP,#0x88+var_88]
8C02A:  BL              sub_9E6B2
8C02E:  MOV             R3, R0
8C030:  LDR             R5, [SP,#0x88+var_44]
8C032:  ADR             R2, dword_8C360
8C034:  MOVW            R0, #0x1DD4
8C038:  VLD1.64         {D20-D21}, [R2@128]
8C03C:  ADR             R2, dword_8C370
8C03E:  ADDS            R1, R4, R0
8C040:  MOVW            R0, #0x2CC4
8C044:  VLD1.64         {D16-D17}, [R2@128]
8C048:  ADR             R2, dword_8C380
8C04A:  MOVS            R6, #0
8C04C:  ADD.W           LR, R4, R0
8C050:  VLD1.64         {D22-D23}, [R2@128]
8C054:  MOVW            R2, #0x19FE
8C058:  VMOV.I32        Q9, #0
8C05C:  MOV.W           R12, #9
8C060:  LDR             R0, =(aBackground - 0x8C070); "##Background" ...
8C062:  MOV.W           R9, #0xFFFFFFFF
8C066:  STR             R6, [R4,R2]
8C068:  MOVW            R2, #0x19FA
8C06C:  ADD             R0, PC; "##Background"
8C06E:  STR             R6, [R4,R2]
8C070:  ADDW            R2, R5, #0x43C
8C074:  MOV             R10, R0
8C076:  VST1.32         {D22-D23}, [R2]
8C07A:  MOVW            R2, #0x1AB4
8C07E:  ADD             R2, R4
8C080:  STR.W           R3, [R4,#0x94]
8C084:  MOVS            R3, #0xC
8C086:  VST1.32         {D18-D19}, [R2]!
8C08A:  VST1.32         {D18-D19}, [R2],R3
8C08E:  MOVS            R3, #0x20 ; ' '
8C090:  LDR             R0, [SP,#0x88+var_4C]
8C092:  VST1.32         {D18-D19}, [R2],R3
8C096:  MOVW            R3, #0x19A8
8C09A:  ADD             R3, R4
8C09C:  VST1.64         {D8-D9}, [R0]
8C0A0:  MOVS            R0, #0x13
8C0A2:  VST1.64         {D18-D19}, [R3],R12
8C0A6:  VST1.8          {D18-D19}, [R3],R0
8C0AA:  MOVS            R0, #0xD
8C0AC:  VST1.32         {D18-D19}, [R3],R0
8C0B0:  MOVS            R0, #0x23 ; '#'
8C0B2:  VST1.8          {D18-D19}, [R3],R0
8C0B6:  MOVW            R0, #0x277
8C0BA:  VST1.64         {D18-D19}, [R2],R12
8C0BE:  VST1.8          {D18-D19}, [R2],R0
8C0C2:  MOVS            R0, #1
8C0C4:  STRB.W          R0, [R11,#0x12A]
8C0C8:  MOV             R0, #0x7FFFFFFF
8C0CC:  STRD.W          R6, R6, [R3]
8C0D0:  MOVS            R3, #0x8C
8C0D2:  STR.W           R0, [R11,#0x124]
8C0D6:  ADD.W           R0, R11, #0x148
8C0DA:  VST1.32         {D20-D21}, [R0],R3
8C0DE:  VMVN.I32        Q10, #0x80000000
8C0E2:  STRD.W          R6, R6, [R5,#0x3B0]
8C0E6:  STRD.W          R6, R9, [R5,#0x3B8]
8C0EA:  STR.W           R9, [R5,#0x3C0]
8C0EE:  STRD.W          R6, R6, [R11,#0x18]
8C0F2:  STR.W           R6, [R11,#0x20]
8C0F6:  STR.W           R6, [R11,#0x120]
8C0FA:  STRH.W          R6, [R11,#0x144]
8C0FE:  STR.W           R6, [R11,#0x130]
8C102:  STRH.W          R6, [R11,#0x128]
8C106:  STR.W           R6, [R11,#0x12B]
8C10A:  STR.W           R9, [R11,#0x158]
8C10E:  LDR             R3, =(aForeground - 0x8C11E); "##Foreground" ...
8C110:  STR             R6, [R0]
8C112:  ADD.W           R0, R11, #0x1DC
8C116:  VST1.32         {D20-D21}, [R0]!
8C11A:  ADD             R3, PC; "##Foreground"
8C11C:  STRB            R6, [R0]
8C11E:  LDR             R0, [SP,#0x88+var_48]
8C120:  STR.W           R3, [R11,#0x2DC]
8C124:  MOV             R3, #0x7F7FFFFF
8C12C:  STR.W           R6, [R1,#0xED4]
8C130:  STR             R6, [R0,#0x30]
8C132:  STRD.W          R6, R6, [R0,#0xC]
8C136:  MOV.W           R0, #0xA900000
8C13A:  STR.W           R0, [R1,#0xED8]
8C13E:  MOV             R0, #0x3C23D70A
8C146:  STRD.W          R6, R6, [R1]
8C14A:  STRD.W          R6, R0, [LR]
8C14E:  LDR             R0, [SP,#0x88+var_50]
8C150:  STRB.W          R6, [R1,#0xEEC]
8C154:  MOVS            R1, #0x14
8C156:  VST1.64         {D18-D19}, [R2]!
8C15A:  STR             R3, [R0,#0x1C]
8C15C:  STRD.W          R6, R6, [R0,#0x50]
8C160:  STR             R6, [R0,#0x24]
8C162:  STRB.W          R6, [R0,#0x4C]
8C166:  ADDS            R0, #0xC
8C168:  VST1.32         {D16-D17}, [R0],R1
8C16C:  MOVS            R1, #2
8C16E:  STRB            R6, [R0]
8C170:  MOVW            R0, #0x2D4C
8C174:  ADD             R0, R4; int
8C176:  STRD.W          R6, R1, [R8,#0x14]
8C17A:  STR.W           R1, [R8,#0x1C]
8C17E:  MOV.W           R1, #0x1E0; n
8C182:  STR.W           R6, [R11,#0x1D8]
8C186:  STR.W           R10, [R11,#0x264]
8C18A:  STR.W           R6, [R11,#0x328]
8C18E:  STRB.W          R6, [R11,#0x32D]
8C192:  STR.W           R6, [R11,#0x234]
8C196:  STRD.W          R6, R9, [R11,#0x330]
8C19A:  STR.W           R9, [R11,#0x338]
8C19E:  STRB.W          R6, [R11,#0x32C]
8C1A2:  STR.W           R9, [R11,#0x398]
8C1A6:  STRD.W          R6, R6, [LR,#8]
8C1AA:  STR             R6, [R2]
8C1AC:  STR.W           R3, [R8,#0xC]
8C1B0:  STRB.W          R6, [R8,#0x10]
8C1B4:  BLX             sub_10967C
8C1B8:  ADD.W           R0, R4, #0x2F40; int
8C1BC:  MOVW            R1, #0xC01; n
8C1C0:  STRD.W          R6, R6, [R8,#0x200]
8C1C4:  STRD.W          R9, R9, [R8,#0x208]
8C1C8:  STR.W           R9, [R8,#0x210]
8C1CC:  BLX             sub_10967C
8C1D0:  MOV             R0, R4
8C1D2:  ADD             SP, SP, #0x48 ; 'H'
8C1D4:  VPOP            {D8-D11}
8C1D8:  ADD             SP, SP, #4
8C1DA:  POP.W           {R8-R11}
8C1DE:  POP             {R4-R7,PC}
