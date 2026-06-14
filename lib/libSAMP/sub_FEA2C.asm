; =========================================================
; Game Engine Function: sub_FEA2C
; Address            : 0xFEA2C - 0xFED6C
; =========================================================

FEA2C:  PUSH            {R4-R7,LR}
FEA2E:  ADD             R7, SP, #0xC
FEA30:  PUSH.W          {R8,R9,R11}
FEA34:  MOV             R4, R0
FEA36:  LDR             R0, =(byte_25AEBC - 0xFEA40)
FEA38:  MOV             R8, R2
FEA3A:  MOV             R9, R1
FEA3C:  ADD             R0, PC; byte_25AEBC
FEA3E:  LDRB            R0, [R0]
FEA40:  DMB.W           ISH
FEA44:  LSLS            R0, R0, #0x1F
FEA46:  BEQ.W           loc_FECC6
FEA4A:  LDR             R0, =(byte_25AEC4 - 0xFEA50)
FEA4C:  ADD             R0, PC; byte_25AEC4
FEA4E:  LDRB            R0, [R0]
FEA50:  DMB.W           ISH
FEA54:  LSLS            R0, R0, #0x1F
FEA56:  BEQ.W           loc_FECF6
FEA5A:  LDR             R0, =(byte_25AECC - 0xFEA60)
FEA5C:  ADD             R0, PC; byte_25AECC
FEA5E:  LDRB            R0, [R0]
FEA60:  DMB.W           ISH
FEA64:  LSLS            R0, R0, #0x1F
FEA66:  BEQ.W           loc_FED3C
FEA6A:  LDR             R0, =(off_234A74 - 0xFEA70)
FEA6C:  ADD             R0, PC; off_234A74
FEA6E:  LDR             R0, [R0]; dword_2402E4
FEA70:  LDR             R0, [R0]
FEA72:  CBZ             R0, loc_FEABC
FEA74:  LDR             R0, [R0]
FEA76:  CBZ             R0, loc_FEABC
FEA78:  CMP             R4, #0x60 ; '`'
FEA7A:  BGT.W           loc_FEB60
FEA7E:  SUBS            R1, R4, #2; switch 16 cases
FEA80:  CMP             R1, #0xF
FEA82:  BHI.W           def_FEA86; jumptable 000FEA86 default case
FEA86:  TBH.W           [PC,R1,LSL#1]; switch jump
FEA8A:  DCW 0x94; jump table for switch statement
FEA8C:  DCW 0x10
FEA8E:  DCW 0xAD
FEA90:  DCW 0x119
FEA92:  DCW 0x119
FEA94:  DCW 0xC1
FEA96:  DCW 0x119
FEA98:  DCW 0x119
FEA9A:  DCW 0x119
FEA9C:  DCW 0xFC
FEA9E:  DCW 0x119
FEAA0:  DCW 0x119
FEAA2:  DCW 0x119
FEAA4:  DCW 0x119
FEAA6:  DCW 0xCA
FEAA8:  DCW 0xD3
FEAAA:  LDR             R1, =(off_234AD4 - 0xFEAB4); jumptable 000FEA86 case 3
FEAAC:  RSB.W           R0, R0, R0,LSL#3
FEAB0:  ADD             R1, PC; off_234AD4
FEAB2:  LDR             R1, [R1]; unk_25B22C
FEAB4:  ADD.W           R0, R1, R0,LSL#2
FEAB8:  LDRB            R0, [R0,#9]
FEABA:  B               loc_FECB6
FEABC:  LDR             R5, =(off_25AEC0 - 0xFEAC6)
FEABE:  MOVS            R0, #0
FEAC0:  MOVS            R1, #0
FEAC2:  ADD             R5, PC; off_25AEC0
FEAC4:  LDR             R2, [R5]
FEAC6:  BLX             R2
FEAC8:  CBZ             R0, loc_FEAF4
FEACA:  LDR             R2, [R5]
FEACC:  MOVS            R0, #0
FEACE:  MOVS            R1, #0
FEAD0:  BLX             R2
FEAD2:  LDR             R1, =(off_25AEB8 - 0xFEADE)
FEAD4:  LDR.W           R6, [R0,#0x464]
FEAD8:  MOVS            R0, #0
FEADA:  ADD             R1, PC; off_25AEB8
FEADC:  LDR             R1, [R1]
FEADE:  BLX             R1
FEAE0:  CMP             R6, R0
FEAE2:  BNE             loc_FEAF4
FEAE4:  LDR             R2, [R5]
FEAE6:  MOVS            R0, #0
FEAE8:  MOVS            R1, #0
FEAEA:  BLX             R2
FEAEC:  LDRB.W          R0, [R0,#0x42C]
FEAF0:  LSLS            R0, R0, #0x1B
FEAF2:  BMI             loc_FEB28
FEAF4:  SUBS            R0, R4, #2
FEAF6:  CMP             R0, #5
FEAF8:  BLS             loc_FEB46
FEAFA:  CMP             R4, #0x1E
FEAFC:  BHI             loc_FEB1C
FEAFE:  MOVS            R0, #1
FEB00:  MOVW            R1, #0x3000
FEB04:  LSLS            R0, R4
FEB06:  MOVT            R1, #0x400
FEB0A:  TST             R0, R1
FEB0C:  ITTT EQ
FEB0E:  MOVEQ           R1, #0
FEB10:  MOVTEQ          R1, #0x4003
FEB14:  TSTEQ           R0, R1
FEB16:  BNE             loc_FEB46
FEB18:  CMP             R4, #0x1B
FEB1A:  BEQ             loc_FEB46
FEB1C:  CMP             R4, #0xAC
FEB1E:  ITT NE
FEB20:  SUBNE.W         R0, R4, #0x61 ; 'a'
FEB24:  CMPNE           R0, #1
FEB26:  BLS             loc_FEB46
FEB28:  LDR             R2, [R5]
FEB2A:  MOVS            R0, #0
FEB2C:  MOVS            R1, #0
FEB2E:  BLX             R2
FEB30:  CMP             R0, #0
FEB32:  BEQ.W           loc_FEBF6
FEB36:  SUB.W           R0, R4, #0x1F
FEB3A:  CMP             R0, #3
FEB3C:  BLS             loc_FEB46
FEB3E:  CMP             R4, #0xA8
FEB40:  IT NE
FEB42:  CMPNE           R4, #1
FEB44:  BNE             loc_FEBF6
FEB46:  LDR             R0, =(dword_25AEC8 - 0xFEB4C)
FEB48:  ADD             R0, PC; dword_25AEC8
FEB4A:  LDR             R0, [R0]
FEB4C:  LDR.W           R0, [R0,R4,LSL#2]
FEB50:  CMP             R0, #0
FEB52:  BEQ.W           def_FEB6E; jumptable 000FEA86 cases 5,6,8-10,12-15
FEB56:  MOVS            R1, #0
FEB58:  MOVS            R4, #0
FEB5A:  BL              sub_163C08
FEB5E:  B               loc_FECBE
FEB60:  CMP             R4, #0x9D
FEB62:  BGT             loc_FEB88
FEB64:  SUB.W           R1, R4, #0x61 ; 'a'; switch 4 cases
FEB68:  CMP             R1, #3
FEB6A:  BHI.W           def_FEB6E; jumptable 000FEA86 cases 5,6,8-10,12-15
FEB6E:  TBB.W           [PC,R1]; switch jump
FEB72:  DCB 2; jump table for switch statement
FEB73:  DCB 0x7D
FEB74:  DCB 0x91
FEB75:  DCB 0x9A
FEB76:  LDR             R1, =(off_234AD4 - 0xFEB80); jumptable 000FEB6E case 97
FEB78:  RSB.W           R0, R0, R0,LSL#3
FEB7C:  ADD             R1, PC; off_234AD4
FEB7E:  LDR             R1, [R1]; unk_25B22C
FEB80:  ADD.W           R0, R1, R0,LSL#2
FEB84:  LDRB            R0, [R0,#0xF]
FEB86:  B               loc_FECB6
FEB88:  CMP             R4, #0x9E
FEB8A:  BEQ             loc_FEBB2; jumptable 000FEA86 case 2
FEB8C:  CMP             R4, #0xAF
FEB8E:  BEQ             loc_FEC44
FEB90:  CMP             R4, #0xAC
FEB92:  BNE.W           def_FEB6E; jumptable 000FEA86 cases 5,6,8-10,12-15
FEB96:  LDR             R1, =(off_234AD4 - 0xFEBA0)
FEB98:  RSB.W           R0, R0, R0,LSL#3
FEB9C:  ADD             R1, PC; off_234AD4
FEB9E:  LDR             R1, [R1]; unk_25B22C
FEBA0:  LDRH.W          R2, [R1,R0,LSL#2]
FEBA4:  CMP             R2, #0
FEBA6:  BNE.W           loc_FECB8
FEBAA:  ADD.W           R0, R1, R0,LSL#2
FEBAE:  LDRH            R0, [R0,#2]
FEBB0:  B               loc_FECB6
FEBB2:  LDR             R1, =(off_234AD4 - 0xFEBBC); jumptable 000FEA86 case 2
FEBB4:  RSB.W           R2, R0, R0,LSL#3
FEBB8:  ADD             R1, PC; off_234AD4
FEBBA:  LDR             R1, [R1]; unk_25B22C
FEBBC:  ADD.W           R1, R1, R2,LSL#2
FEBC0:  LDRB            R1, [R1,#7]
FEBC2:  CMP             R1, #0
FEBC4:  BNE.W           loc_FECB8
FEBC8:  SUBS            R1, R4, #3; switch 15 cases
FEBCA:  CMP             R1, #0xE
FEBCC:  BHI             def_FEBCE; jumptable 000FEBCE default case
FEBCE:  TBB.W           [PC,R1]; switch jump
FEBD2:  DCB 8; jump table for switch statement
FEBD3:  DCB 9
FEBD4:  DCB 0x75
FEBD5:  DCB 0x75
FEBD6:  DCB 0x1D
FEBD7:  DCB 0x75
FEBD8:  DCB 0x75
FEBD9:  DCB 0x75
FEBDA:  DCB 0x58
FEBDB:  DCB 0x75
FEBDC:  DCB 0x75
FEBDD:  DCB 0x75
FEBDE:  DCB 0x75
FEBDF:  DCB 0x26
FEBE0:  DCB 0x2F
FEBE1:  ALIGN 2
FEBE2:  B               loc_FEAAA; jumptable 000FEBCE case 3
FEBE4:  LDR             R1, =(off_234AD4 - 0xFEBEE); jumptable 000FEA86 case 4
FEBE6:  RSB.W           R0, R0, R0,LSL#3
FEBEA:  ADD             R1, PC; off_234AD4
FEBEC:  LDR             R1, [R1]; unk_25B22C
FEBEE:  ADD.W           R0, R1, R0,LSL#2
FEBF2:  LDRB            R0, [R0,#0xB]
FEBF4:  B               loc_FECB6
FEBF6:  LDR             R0, =(off_25AEB4 - 0xFEC00)
FEBF8:  MOV             R1, R9
FEBFA:  MOV             R2, R8
FEBFC:  ADD             R0, PC; off_25AEB4
FEBFE:  LDR             R3, [R0]
FEC00:  MOV             R0, R4
FEC02:  POP.W           {R8,R9,R11}
FEC06:  POP.W           {R4-R7,LR}
FEC0A:  BX              R3
FEC0C:  LDR             R1, =(off_234AD4 - 0xFEC16); jumptable 000FEA86 case 7
FEC0E:  RSB.W           R0, R0, R0,LSL#3
FEC12:  ADD             R1, PC; off_234AD4
FEC14:  LDR             R1, [R1]; unk_25B22C
FEC16:  ADD.W           R0, R1, R0,LSL#2
FEC1A:  LDRB            R0, [R0,#5]
FEC1C:  B               loc_FECB6
FEC1E:  LDR             R1, =(off_234AD4 - 0xFEC28); jumptable 000FEA86 case 16
FEC20:  RSB.W           R0, R0, R0,LSL#3
FEC24:  ADD             R1, PC; off_234AD4
FEC26:  LDR             R1, [R1]; unk_25B22C
FEC28:  ADD.W           R0, R1, R0,LSL#2
FEC2C:  LDRB            R1, [R0,#0xC]
FEC2E:  B               loc_FEC40
FEC30:  LDR             R1, =(off_234AD4 - 0xFEC3A); jumptable 000FEA86 case 17
FEC32:  RSB.W           R0, R0, R0,LSL#3
FEC36:  ADD             R1, PC; off_234AD4
FEC38:  LDR             R1, [R1]; unk_25B22C
FEC3A:  ADD.W           R0, R1, R0,LSL#2
FEC3E:  LDRB            R1, [R0,#0xA]
FEC40:  CBNZ            R1, loc_FEC90
FEC42:  B               def_FEB6E; jumptable 000FEA86 cases 5,6,8-10,12-15
FEC44:  LDR             R1, =(off_234AD4 - 0xFEC4E)
FEC46:  RSB.W           R0, R0, R0,LSL#3
FEC4A:  ADD             R1, PC; off_234AD4
FEC4C:  LDR             R1, [R1]; unk_25B22C
FEC4E:  ADD.W           R0, R1, R0,LSL#2
FEC52:  LDRB            R1, [R0,#0xC]
FEC54:  CBZ             R1, def_FEB6E; jumptable 000FEA86 cases 5,6,8-10,12-15
FEC56:  LDRB            R0, [R0,#0xA]
FEC58:  B               loc_FECB6
FEC5A:  SUB.W           R1, R4, #0x61 ; 'a'; jumptable 000FEBCE default case
FEC5E:  CMP             R1, #3
FEC60:  BHI             def_FEA86; jumptable 000FEA86 default case
FEC62:  TBB.W           [PC,R1]; switch jump
FEC66:  DCB 2; jump table for switch statement
FEC67:  DCB 3
FEC68:  DCB 0x17
FEC69:  DCB 0x20
FEC6A:  B               loc_FEB76; jumptable 000FEC62 case 97
FEC6C:  LDR             R1, =(off_234AD4 - 0xFEC76); jumptable 000FEB6E case 98
FEC6E:  RSB.W           R0, R0, R0,LSL#3
FEC72:  ADD             R1, PC; off_234AD4
FEC74:  LDR             R1, [R1]; unk_25B22C
FEC76:  ADD.W           R0, R1, R0,LSL#2
FEC7A:  LDRB            R0, [R0,#0x10]
FEC7C:  B               loc_FECB6
FEC7E:  CMP             R4, #0x17; jumptable 000FEA86 default case
FEC80:  BNE             def_FEB6E; jumptable 000FEA86 cases 5,6,8-10,12-15
FEC82:  LDR             R1, =(off_234AD4 - 0xFEC8C); jumptable 000FEA86 case 11
FEC84:  RSB.W           R0, R0, R0,LSL#3
FEC88:  ADD             R1, PC; off_234AD4
FEC8A:  LDR             R1, [R1]; unk_25B22C
FEC8C:  ADD.W           R0, R1, R0,LSL#2
FEC90:  LDRB            R0, [R0,#6]
FEC92:  B               loc_FECB6
FEC94:  LDR             R1, =(off_234AD4 - 0xFEC9E); jumptable 000FEB6E case 99
FEC96:  RSB.W           R0, R0, R0,LSL#3
FEC9A:  ADD             R1, PC; off_234AD4
FEC9C:  LDR             R1, [R1]; unk_25B22C
FEC9E:  ADD.W           R0, R1, R0,LSL#2
FECA2:  LDRB            R0, [R0,#0x11]
FECA4:  B               loc_FECB6
FECA6:  LDR             R1, =(off_234AD4 - 0xFECB0); jumptable 000FEB6E case 100
FECA8:  RSB.W           R0, R0, R0,LSL#3
FECAC:  ADD             R1, PC; off_234AD4
FECAE:  LDR             R1, [R1]; unk_25B22C
FECB0:  ADD.W           R0, R1, R0,LSL#2
FECB4:  LDRB            R0, [R0,#0x12]
FECB6:  CBZ             R0, def_FEB6E; jumptable 000FEA86 cases 5,6,8-10,12-15
FECB8:  MOVS            R4, #1
FECBA:  B               loc_FECBE
FECBC:  MOVS            R4, #0; jumptable 000FEA86 cases 5,6,8-10,12-15
FECBE:  MOV             R0, R4
FECC0:  POP.W           {R8,R9,R11}
FECC4:  POP             {R4-R7,PC}
FECC6:  LDR             R0, =(byte_25AEBC - 0xFECCC)
FECC8:  ADD             R0, PC; byte_25AEBC ; __guard *
FECCA:  BLX             j___cxa_guard_acquire
FECCE:  CMP             R0, #0
FECD0:  BEQ.W           loc_FEA4A
FECD4:  LDR             R0, =(off_23494C - 0xFECE4)
FECD6:  MOVW            R3, #0xB289
FECDA:  LDR             R2, =(off_25AEB8 - 0xFECE6)
FECDC:  MOVT            R3, #0x40 ; '@'
FECE0:  ADD             R0, PC; off_23494C
FECE2:  ADD             R2, PC; off_25AEB8
FECE4:  LDR             R1, [R0]; dword_23DF24
FECE6:  LDR             R0, =(byte_25AEBC - 0xFECEE)
FECE8:  LDR             R1, [R1]
FECEA:  ADD             R0, PC; byte_25AEBC ; __guard *
FECEC:  ADD             R1, R3
FECEE:  STR             R1, [R2]
FECF0:  BLX             j___cxa_guard_release
FECF4:  B               loc_FEA4A
FECF6:  LDR             R0, =(byte_25AEC4 - 0xFECFC)
FECF8:  ADD             R0, PC; byte_25AEC4 ; __guard *
FECFA:  BLX             j___cxa_guard_acquire
FECFE:  CMP             R0, #0
FED00:  BEQ.W           loc_FEA5A
FED04:  LDR             R0, =(off_23494C - 0xFED14)
FED06:  MOVW            R3, #0xB289
FED0A:  LDR             R1, =(off_25AEC0 - 0xFED16)
FED0C:  MOVT            R3, #0x40 ; '@'
FED10:  ADD             R0, PC; off_23494C
FED12:  ADD             R1, PC; off_25AEC0
FED14:  LDR             R0, [R0]; dword_23DF24
FED16:  LDR             R2, [R0]
FED18:  LDR             R0, =(byte_25AEC4 - 0xFED20)
FED1A:  ADD             R2, R3
FED1C:  ADD             R0, PC; byte_25AEC4 ; __guard *
FED1E:  ADD.W           R2, R2, #0x2A8
FED22:  STR             R2, [R1]
FED24:  BLX             j___cxa_guard_release
FED28:  B               loc_FEA5A
FED2A:  ALIGN 4
FED2C:  DCD byte_25AEBC - 0xFEA40
FED30:  DCD byte_25AEC4 - 0xFEA50
FED34:  DCD byte_25AECC - 0xFEA60
FED38:  DCD off_234A74 - 0xFEA70
FED3C:  LDR             R0, =(byte_25AECC - 0xFED42)
FED3E:  ADD             R0, PC; byte_25AECC ; __guard *
FED40:  BLX             j___cxa_guard_acquire
FED44:  CMP             R0, #0
FED46:  BEQ.W           loc_FEA6A
FED4A:  LDR             R0, =(off_23494C - 0xFED5A)
FED4C:  MOVW            R3, #0x3794
FED50:  LDR             R2, =(dword_25AEC8 - 0xFED5C)
FED52:  MOVT            R3, #0x6F ; 'o'
FED56:  ADD             R0, PC; off_23494C
FED58:  ADD             R2, PC; dword_25AEC8
FED5A:  LDR             R1, [R0]; dword_23DF24
FED5C:  LDR             R0, =(byte_25AECC - 0xFED64)
FED5E:  LDR             R1, [R1]
FED60:  ADD             R0, PC; byte_25AECC ; __guard *
FED62:  ADD             R1, R3
FED64:  STR             R1, [R2]
FED66:  BLX             j___cxa_guard_release
FED6A:  B               loc_FEA6A
