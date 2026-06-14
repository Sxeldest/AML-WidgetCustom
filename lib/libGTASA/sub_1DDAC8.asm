; =========================================================
; Game Engine Function: sub_1DDAC8
; Address            : 0x1DDAC8 - 0x1DDF14
; =========================================================

1DDAC8:  PUSH            {R4-R7,LR}
1DDACA:  ADD             R7, SP, #0xC
1DDACC:  PUSH.W          {R8-R10}
1DDAD0:  SUB             SP, SP, #8
1DDAD2:  LDR.W           R0, =(dword_6BCFA0 - 0x1DDADA)
1DDAD6:  ADD             R0, PC; dword_6BCFA0
1DDAD8:  LDR             R4, [R0]
1DDADA:  MOV.W           R0, #0x1700; unsigned int
1DDADE:  LDR.W           R10, [R4,#4]
1DDAE2:  BLX             j__Z16emu_glMatrixModej; emu_glMatrixMode(uint)
1DDAE6:  LDR             R0, [R4,#0x10]; float *
1DDAE8:  CBZ             R0, loc_1DDAFE
1DDAEA:  LDR             R1, [R0,#0xC]
1DDAEC:  MOVS            R2, #1
1DDAEE:  ANDS.W          R1, R1, #0x20000
1DDAF2:  EOR.W           R8, R2, R1,LSR#17
1DDAF6:  IT EQ
1DDAF8:  BLXEQ           j__Z23emu_glPushAndLoadMatrixPf; emu_glPushAndLoadMatrix(float *)
1DDAFC:  B               loc_1DDB02
1DDAFE:  MOV.W           R8, #0
1DDB02:  LDR.W           R0, =(unk_6BCFA8 - 0x1DDB0E)
1DDB06:  LDRD.W          R1, R6, [R4,#0x30]
1DDB0A:  ADD             R0, PC; unk_6BCFA8
1DDB0C:  LDR.W           R0, [R0,R1,LSL#2]; unsigned int
1DDB10:  BLX             j__Z11emu_glBeginj; emu_glBegin(uint)
1DDB14:  LDR             R0, [R4,#0x30]
1DDB16:  CMP             R6, #0
1DDB18:  SUB.W           R0, R0, #1; switch 5 cases
1DDB1C:  BEQ             loc_1DDB62
1DDB1E:  CMP             R0, #4
1DDB20:  BHI             def_1DDB22; jumptable 001DDB22 default case
1DDB22:  TBB.W           [PC,R0]; switch jump
1DDB26:  DCB 0x64; jump table for switch statement
1DDB27:  DCB 3
1DDB28:  DCB 0x8D
1DDB29:  DCB 3
1DDB2A:  DCB 3
1DDB2B:  ALIGN 2
1DDB2C:  LDRB            R0, [R4,#0xC]; jumptable 001DDB22 cases 2,4,5
1DDB2E:  LDR             R4, [R4,#0x38]
1DDB30:  LSLS            R0, R0, #0x1F
1DDB32:  BNE             loc_1DDBB8
1DDB34:  LSLS            R0, R4, #0x10
1DDB36:  BEQ.W           loc_1DDEFC
1DDB3A:  MOVW            R9, #0xFFFF
1DDB3E:  LDRH.W          R0, [R6],#2
1DDB42:  ADD.W           R0, R0, R0,LSL#3
1DDB46:  ADD.W           R5, R10, R0,LSL#2
1DDB4A:  ADD.W           R0, R5, #0x18; unsigned __int8 *
1DDB4E:  BLX             j__Z15emu_glColor4ubvPKh; emu_glColor4ubv(uchar const*)
1DDB52:  MOV             R0, R5; float *
1DDB54:  BLX             j__Z15emu_glVertex3fvPKf; emu_glVertex3fv(float const*)
1DDB58:  SUBS            R4, #1
1DDB5A:  TST.W           R4, R9
1DDB5E:  BNE             loc_1DDB3E
1DDB60:  B               loc_1DDEFC
1DDB62:  CMP             R0, #4
1DDB64:  BHI             def_1DDB22; jumptable 001DDB22 default case
1DDB66:  TBB.W           [PC,R0]; switch jump
1DDB6A:  DCB 0xBF; jump table for switch statement
1DDB6B:  DCB 3
1DDB6C:  DCB 0xE2
1DDB6D:  DCB 3
1DDB6E:  DCB 3
1DDB6F:  ALIGN 2
1DDB70:  LDR             R0, =(dword_6BCFA0 - 0x1DDB78); jumptable 001DDB66 cases 2,4,5
1DDB72:  LDRB            R1, [R4,#0xC]
1DDB74:  ADD             R0, PC; dword_6BCFA0
1DDB76:  LDR             R0, [R0]
1DDB78:  LDRH            R4, [R0]
1DDB7A:  LSLS            R0, R1, #0x1F
1DDB7C:  BNE.W           loc_1DDCBC
1DDB80:  CMP             R4, #0
1DDB82:  BEQ.W           loc_1DDEFC
1DDB86:  MOVW            R5, #0xFFFF
1DDB8A:  ADD.W           R0, R10, #0x18; unsigned __int8 *
1DDB8E:  BLX             j__Z15emu_glColor4ubvPKh; emu_glColor4ubv(uchar const*)
1DDB92:  MOV             R0, R10; float *
1DDB94:  BLX             j__Z15emu_glVertex3fvPKf; emu_glVertex3fv(float const*)
1DDB98:  SUBS            R4, #1
1DDB9A:  ADD.W           R10, R10, #0x24 ; '$'
1DDB9E:  TST             R4, R5
1DDBA0:  BNE             loc_1DDB8A
1DDBA2:  B               loc_1DDEFC
1DDBA4:  MOVS            R0, #0; jumptable 001DDB22 default case
1DDBA6:  STR             R0, [SP,#0x20+var_20]
1DDBA8:  MOVS            R0, #0x25 ; '%'; int
1DDBAA:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1DDBAE:  STR             R0, [SP,#0x20+var_1C]
1DDBB0:  MOV             R0, SP
1DDBB2:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1DDBB6:  B               loc_1DDEFC
1DDBB8:  LSLS            R0, R4, #0x10
1DDBBA:  BEQ.W           loc_1DDEFC
1DDBBE:  MOVW            R9, #0xFFFF
1DDBC2:  LDRH.W          R0, [R6],#2
1DDBC6:  ADD.W           R0, R0, R0,LSL#3
1DDBCA:  ADD.W           R5, R10, R0,LSL#2
1DDBCE:  ADD.W           R0, R5, #0x18; unsigned __int8 *
1DDBD2:  BLX             j__Z15emu_glColor4ubvPKh; emu_glColor4ubv(uchar const*)
1DDBD6:  ADD.W           R0, R5, #0x1C; float *
1DDBDA:  BLX             j__Z17emu_glTexCoord2fvPKf; emu_glTexCoord2fv(float const*)
1DDBDE:  MOV             R0, R5; float *
1DDBE0:  BLX             j__Z15emu_glVertex3fvPKf; emu_glVertex3fv(float const*)
1DDBE4:  SUBS            R4, #1
1DDBE6:  TST.W           R4, R9
1DDBEA:  BNE             loc_1DDBC2
1DDBEC:  B               loc_1DDEFC
1DDBEE:  LDR             R0, [R4,#0x38]; jumptable 001DDB22 case 1
1DDBF0:  LDRB            R1, [R4,#0xC]
1DDBF2:  LSRS            R4, R0, #1
1DDBF4:  LSLS            R0, R1, #0x1F
1DDBF6:  BNE.W           loc_1DDD92
1DDBFA:  LSLS            R0, R4, #0x10
1DDBFC:  BEQ.W           loc_1DDEFC
1DDC00:  MOVW            R9, #0xFFFF
1DDC04:  LDRH            R0, [R6]
1DDC06:  ADD.W           R0, R0, R0,LSL#3
1DDC0A:  ADD.W           R5, R10, R0,LSL#2
1DDC0E:  ADD.W           R0, R5, #0x18; unsigned __int8 *
1DDC12:  BLX             j__Z15emu_glColor4ubvPKh; emu_glColor4ubv(uchar const*)
1DDC16:  MOV             R0, R5; float *
1DDC18:  BLX             j__Z15emu_glVertex3fvPKf; emu_glVertex3fv(float const*)
1DDC1C:  LDRH            R0, [R6,#2]
1DDC1E:  ADD.W           R0, R0, R0,LSL#3
1DDC22:  ADD.W           R5, R10, R0,LSL#2
1DDC26:  ADD.W           R0, R5, #0x18; unsigned __int8 *
1DDC2A:  BLX             j__Z15emu_glColor4ubvPKh; emu_glColor4ubv(uchar const*)
1DDC2E:  MOV             R0, R5; float *
1DDC30:  BLX             j__Z15emu_glVertex3fvPKf; emu_glVertex3fv(float const*)
1DDC34:  SUBS            R4, #1
1DDC36:  ADDS            R6, #4
1DDC38:  TST.W           R4, R9
1DDC3C:  BNE             loc_1DDC04
1DDC3E:  B               loc_1DDEFC
1DDC40:  LDR             R0, [R4,#0x38]; jumptable 001DDB22 case 3
1DDC42:  MOV             R1, #0xAAAAAAAB
1DDC4A:  UMULL.W         R0, R1, R0, R1
1DDC4E:  LDRB            R0, [R4,#0xC]
1DDC50:  LSLS            R0, R0, #0x1F
1DDC52:  MOV.W           R9, R1,LSR#1
1DDC56:  BNE.W           loc_1DDDE8
1DDC5A:  MOVS.W          R0, R9,LSL#16
1DDC5E:  BEQ.W           loc_1DDEFC
1DDC62:  MOVW            R4, #0xFFFF
1DDC66:  LDRH            R0, [R6]
1DDC68:  ADD.W           R0, R0, R0,LSL#3
1DDC6C:  ADD.W           R5, R10, R0,LSL#2
1DDC70:  ADD.W           R0, R5, #0x18; unsigned __int8 *
1DDC74:  BLX             j__Z15emu_glColor4ubvPKh; emu_glColor4ubv(uchar const*)
1DDC78:  MOV             R0, R5; float *
1DDC7A:  BLX             j__Z15emu_glVertex3fvPKf; emu_glVertex3fv(float const*)
1DDC7E:  LDRH            R0, [R6,#2]
1DDC80:  ADD.W           R0, R0, R0,LSL#3
1DDC84:  ADD.W           R5, R10, R0,LSL#2
1DDC88:  ADD.W           R0, R5, #0x18; unsigned __int8 *
1DDC8C:  BLX             j__Z15emu_glColor4ubvPKh; emu_glColor4ubv(uchar const*)
1DDC90:  MOV             R0, R5; float *
1DDC92:  BLX             j__Z15emu_glVertex3fvPKf; emu_glVertex3fv(float const*)
1DDC96:  LDRH            R0, [R6,#4]
1DDC98:  ADD.W           R0, R0, R0,LSL#3
1DDC9C:  ADD.W           R5, R10, R0,LSL#2
1DDCA0:  ADD.W           R0, R5, #0x18; unsigned __int8 *
1DDCA4:  BLX             j__Z15emu_glColor4ubvPKh; emu_glColor4ubv(uchar const*)
1DDCA8:  MOV             R0, R5; float *
1DDCAA:  BLX             j__Z15emu_glVertex3fvPKf; emu_glVertex3fv(float const*)
1DDCAE:  SUB.W           R9, R9, #1
1DDCB2:  ADDS            R6, #6
1DDCB4:  TST.W           R9, R4
1DDCB8:  BNE             loc_1DDC66
1DDCBA:  B               loc_1DDEFC
1DDCBC:  CMP             R4, #0
1DDCBE:  BEQ.W           loc_1DDEFC
1DDCC2:  MOVW            R5, #0xFFFF
1DDCC6:  ADD.W           R0, R10, #0x18; unsigned __int8 *
1DDCCA:  BLX             j__Z15emu_glColor4ubvPKh; emu_glColor4ubv(uchar const*)
1DDCCE:  ADD.W           R0, R10, #0x1C; float *
1DDCD2:  BLX             j__Z17emu_glTexCoord2fvPKf; emu_glTexCoord2fv(float const*)
1DDCD6:  MOV             R0, R10; float *
1DDCD8:  BLX             j__Z15emu_glVertex3fvPKf; emu_glVertex3fv(float const*)
1DDCDC:  SUBS            R4, #1
1DDCDE:  ADD.W           R10, R10, #0x24 ; '$'
1DDCE2:  TST             R4, R5
1DDCE4:  BNE             loc_1DDCC6
1DDCE6:  B               loc_1DDEFC
1DDCE8:  LDR             R0, =(dword_6BCFA0 - 0x1DDCF0); jumptable 001DDB66 case 1
1DDCEA:  LDRB            R1, [R4,#0xC]
1DDCEC:  ADD             R0, PC; dword_6BCFA0
1DDCEE:  LDR             R0, [R0]
1DDCF0:  LDRH            R0, [R0]
1DDCF2:  LSRS            R4, R0, #1
1DDCF4:  LSLS            R0, R1, #0x1F
1DDCF6:  BNE.W           loc_1DDE62
1DDCFA:  CMP             R4, #0
1DDCFC:  BEQ.W           loc_1DDEFC
1DDD00:  MOVW            R5, #0xFFFF
1DDD04:  ADD.W           R0, R10, #0x18; unsigned __int8 *
1DDD08:  BLX             j__Z15emu_glColor4ubvPKh; emu_glColor4ubv(uchar const*)
1DDD0C:  MOV             R0, R10; float *
1DDD0E:  BLX             j__Z15emu_glVertex3fvPKf; emu_glVertex3fv(float const*)
1DDD12:  ADD.W           R0, R10, #0x3C ; '<'; unsigned __int8 *
1DDD16:  BLX             j__Z15emu_glColor4ubvPKh; emu_glColor4ubv(uchar const*)
1DDD1A:  ADD.W           R0, R10, #0x24 ; '$'; float *
1DDD1E:  BLX             j__Z15emu_glVertex3fvPKf; emu_glVertex3fv(float const*)
1DDD22:  SUBS            R4, #1
1DDD24:  ADD.W           R10, R10, #0x48 ; 'H'
1DDD28:  TST             R4, R5
1DDD2A:  BNE             loc_1DDD04
1DDD2C:  B               loc_1DDEFC
1DDD2E:  LDR             R0, =(dword_6BCFA0 - 0x1DDD3C); jumptable 001DDB66 case 3
1DDD30:  MOV             R1, #0xAAAAAAAB
1DDD38:  ADD             R0, PC; dword_6BCFA0
1DDD3A:  LDR             R0, [R0]
1DDD3C:  LDRH            R0, [R0]
1DDD3E:  UMULL.W         R1, R2, R0, R1
1DDD42:  LDRB            R1, [R4,#0xC]
1DDD44:  LSLS            R1, R1, #0x1F
1DDD46:  MOV.W           R5, R2,LSR#1
1DDD4A:  BNE.W           loc_1DDEA4
1DDD4E:  CMP             R0, #3
1DDD50:  BCC.W           loc_1DDEFC
1DDD54:  MOVW            R4, #0xFFFF
1DDD58:  ADD.W           R0, R10, #0x18; unsigned __int8 *
1DDD5C:  BLX             j__Z15emu_glColor4ubvPKh; emu_glColor4ubv(uchar const*)
1DDD60:  MOV             R0, R10; float *
1DDD62:  BLX             j__Z15emu_glVertex3fvPKf; emu_glVertex3fv(float const*)
1DDD66:  ADD.W           R0, R10, #0x3C ; '<'; unsigned __int8 *
1DDD6A:  BLX             j__Z15emu_glColor4ubvPKh; emu_glColor4ubv(uchar const*)
1DDD6E:  ADD.W           R0, R10, #0x24 ; '$'; float *
1DDD72:  BLX             j__Z15emu_glVertex3fvPKf; emu_glVertex3fv(float const*)
1DDD76:  ADD.W           R0, R10, #0x60 ; '`'; unsigned __int8 *
1DDD7A:  BLX             j__Z15emu_glColor4ubvPKh; emu_glColor4ubv(uchar const*)
1DDD7E:  ADD.W           R0, R10, #0x48 ; 'H'; float *
1DDD82:  BLX             j__Z15emu_glVertex3fvPKf; emu_glVertex3fv(float const*)
1DDD86:  SUBS            R5, #1
1DDD88:  ADD.W           R10, R10, #0x6C ; 'l'
1DDD8C:  TST             R5, R4
1DDD8E:  BNE             loc_1DDD58
1DDD90:  B               loc_1DDEFC
1DDD92:  LSLS            R0, R4, #0x10
1DDD94:  BEQ.W           loc_1DDEFC
1DDD98:  MOVW            R9, #0xFFFF
1DDD9C:  LDRH            R0, [R6]
1DDD9E:  ADD.W           R0, R0, R0,LSL#3
1DDDA2:  ADD.W           R5, R10, R0,LSL#2
1DDDA6:  ADD.W           R0, R5, #0x18; unsigned __int8 *
1DDDAA:  BLX             j__Z15emu_glColor4ubvPKh; emu_glColor4ubv(uchar const*)
1DDDAE:  ADD.W           R0, R5, #0x1C; float *
1DDDB2:  BLX             j__Z17emu_glTexCoord2fvPKf; emu_glTexCoord2fv(float const*)
1DDDB6:  MOV             R0, R5; float *
1DDDB8:  BLX             j__Z15emu_glVertex3fvPKf; emu_glVertex3fv(float const*)
1DDDBC:  LDRH            R0, [R6,#2]
1DDDBE:  ADD.W           R0, R0, R0,LSL#3
1DDDC2:  ADD.W           R5, R10, R0,LSL#2
1DDDC6:  ADD.W           R0, R5, #0x18; unsigned __int8 *
1DDDCA:  BLX             j__Z15emu_glColor4ubvPKh; emu_glColor4ubv(uchar const*)
1DDDCE:  ADD.W           R0, R5, #0x1C; float *
1DDDD2:  BLX             j__Z17emu_glTexCoord2fvPKf; emu_glTexCoord2fv(float const*)
1DDDD6:  MOV             R0, R5; float *
1DDDD8:  BLX             j__Z15emu_glVertex3fvPKf; emu_glVertex3fv(float const*)
1DDDDC:  SUBS            R4, #1
1DDDDE:  ADDS            R6, #4
1DDDE0:  TST.W           R4, R9
1DDDE4:  BNE             loc_1DDD9C
1DDDE6:  B               loc_1DDEFC
1DDDE8:  MOVS.W          R0, R9,LSL#16
1DDDEC:  BEQ.W           loc_1DDEFC
1DDDF0:  MOVW            R4, #0xFFFF
1DDDF4:  LDRH            R0, [R6]
1DDDF6:  ADD.W           R0, R0, R0,LSL#3
1DDDFA:  ADD.W           R5, R10, R0,LSL#2
1DDDFE:  ADD.W           R0, R5, #0x18; unsigned __int8 *
1DDE02:  BLX             j__Z15emu_glColor4ubvPKh; emu_glColor4ubv(uchar const*)
1DDE06:  ADD.W           R0, R5, #0x1C; float *
1DDE0A:  BLX             j__Z17emu_glTexCoord2fvPKf; emu_glTexCoord2fv(float const*)
1DDE0E:  MOV             R0, R5; float *
1DDE10:  BLX             j__Z15emu_glVertex3fvPKf; emu_glVertex3fv(float const*)
1DDE14:  LDRH            R0, [R6,#2]
1DDE16:  ADD.W           R0, R0, R0,LSL#3
1DDE1A:  ADD.W           R5, R10, R0,LSL#2
1DDE1E:  ADD.W           R0, R5, #0x18; unsigned __int8 *
1DDE22:  BLX             j__Z15emu_glColor4ubvPKh; emu_glColor4ubv(uchar const*)
1DDE26:  ADD.W           R0, R5, #0x1C; float *
1DDE2A:  BLX             j__Z17emu_glTexCoord2fvPKf; emu_glTexCoord2fv(float const*)
1DDE2E:  MOV             R0, R5; float *
1DDE30:  BLX             j__Z15emu_glVertex3fvPKf; emu_glVertex3fv(float const*)
1DDE34:  LDRH            R0, [R6,#4]
1DDE36:  ADD.W           R0, R0, R0,LSL#3
1DDE3A:  ADD.W           R5, R10, R0,LSL#2
1DDE3E:  ADD.W           R0, R5, #0x18; unsigned __int8 *
1DDE42:  BLX             j__Z15emu_glColor4ubvPKh; emu_glColor4ubv(uchar const*)
1DDE46:  ADD.W           R0, R5, #0x1C; float *
1DDE4A:  BLX             j__Z17emu_glTexCoord2fvPKf; emu_glTexCoord2fv(float const*)
1DDE4E:  MOV             R0, R5; float *
1DDE50:  BLX             j__Z15emu_glVertex3fvPKf; emu_glVertex3fv(float const*)
1DDE54:  SUB.W           R9, R9, #1
1DDE58:  ADDS            R6, #6
1DDE5A:  TST.W           R9, R4
1DDE5E:  BNE             loc_1DDDF4
1DDE60:  B               loc_1DDEFC
1DDE62:  CMP             R4, #0
1DDE64:  BEQ             loc_1DDEFC
1DDE66:  MOVW            R5, #0xFFFF
1DDE6A:  ADD.W           R0, R10, #0x18; unsigned __int8 *
1DDE6E:  BLX             j__Z15emu_glColor4ubvPKh; emu_glColor4ubv(uchar const*)
1DDE72:  ADD.W           R0, R10, #0x1C; float *
1DDE76:  BLX             j__Z17emu_glTexCoord2fvPKf; emu_glTexCoord2fv(float const*)
1DDE7A:  MOV             R0, R10; float *
1DDE7C:  BLX             j__Z15emu_glVertex3fvPKf; emu_glVertex3fv(float const*)
1DDE80:  ADD.W           R0, R10, #0x3C ; '<'; unsigned __int8 *
1DDE84:  BLX             j__Z15emu_glColor4ubvPKh; emu_glColor4ubv(uchar const*)
1DDE88:  ADD.W           R0, R10, #0x40 ; '@'; float *
1DDE8C:  BLX             j__Z17emu_glTexCoord2fvPKf; emu_glTexCoord2fv(float const*)
1DDE90:  ADD.W           R0, R10, #0x24 ; '$'; float *
1DDE94:  BLX             j__Z15emu_glVertex3fvPKf; emu_glVertex3fv(float const*)
1DDE98:  SUBS            R4, #1
1DDE9A:  ADD.W           R10, R10, #0x48 ; 'H'
1DDE9E:  TST             R4, R5
1DDEA0:  BNE             loc_1DDE6A
1DDEA2:  B               loc_1DDEFC
1DDEA4:  CMP             R0, #3
1DDEA6:  BCC             loc_1DDEFC
1DDEA8:  MOVW            R4, #0xFFFF
1DDEAC:  ADD.W           R0, R10, #0x18; unsigned __int8 *
1DDEB0:  BLX             j__Z15emu_glColor4ubvPKh; emu_glColor4ubv(uchar const*)
1DDEB4:  ADD.W           R0, R10, #0x1C; float *
1DDEB8:  BLX             j__Z17emu_glTexCoord2fvPKf; emu_glTexCoord2fv(float const*)
1DDEBC:  MOV             R0, R10; float *
1DDEBE:  BLX             j__Z15emu_glVertex3fvPKf; emu_glVertex3fv(float const*)
1DDEC2:  ADD.W           R0, R10, #0x3C ; '<'; unsigned __int8 *
1DDEC6:  BLX             j__Z15emu_glColor4ubvPKh; emu_glColor4ubv(uchar const*)
1DDECA:  ADD.W           R0, R10, #0x40 ; '@'; float *
1DDECE:  BLX             j__Z17emu_glTexCoord2fvPKf; emu_glTexCoord2fv(float const*)
1DDED2:  ADD.W           R0, R10, #0x24 ; '$'; float *
1DDED6:  BLX             j__Z15emu_glVertex3fvPKf; emu_glVertex3fv(float const*)
1DDEDA:  ADD.W           R0, R10, #0x60 ; '`'; unsigned __int8 *
1DDEDE:  BLX             j__Z15emu_glColor4ubvPKh; emu_glColor4ubv(uchar const*)
1DDEE2:  ADD.W           R0, R10, #0x64 ; 'd'; float *
1DDEE6:  BLX             j__Z17emu_glTexCoord2fvPKf; emu_glTexCoord2fv(float const*)
1DDEEA:  ADD.W           R0, R10, #0x48 ; 'H'; float *
1DDEEE:  BLX             j__Z15emu_glVertex3fvPKf; emu_glVertex3fv(float const*)
1DDEF2:  SUBS            R5, #1
1DDEF4:  ADD.W           R10, R10, #0x6C ; 'l'
1DDEF8:  TST             R5, R4
1DDEFA:  BNE             loc_1DDEAC
1DDEFC:  BLX             j__Z9emu_glEndv; emu_glEnd(void)
1DDF00:  CMP.W           R8, #0
1DDF04:  IT NE
1DDF06:  BLXNE           j__Z15emu_glPopMatrixv; emu_glPopMatrix(void)
1DDF0A:  MOVS            R0, #1
1DDF0C:  ADD             SP, SP, #8
1DDF0E:  POP.W           {R8-R10}
1DDF12:  POP             {R4-R7,PC}
