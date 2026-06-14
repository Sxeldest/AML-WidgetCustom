; =========================================================
; Game Engine Function: sub_137B98
; Address            : 0x137B98 - 0x137DDA
; =========================================================

137B98:  PUSH            {R4-R7,LR}
137B9A:  ADD             R7, SP, #0xC
137B9C:  PUSH.W          {R8-R11}
137BA0:  SUB             SP, SP, #0x4C
137BA2:  STR             R0, [SP,#0x68+var_48]
137BA4:  MOV             R8, R1
137BA6:  LDR             R0, =(dword_3141E8 - 0x137BB2)
137BA8:  LDRD.W          R4, R5, [R1,#4]
137BAC:  LDRB            R1, [R1]
137BAE:  ADD             R0, PC; dword_3141E8
137BB0:  STR             R2, [SP,#0x68+var_44]
137BB2:  STRB.W          R2, [R7,#var_25]
137BB6:  ANDS.W          R2, R1, #1
137BBA:  IT EQ
137BBC:  ADDEQ.W         R5, R8, #1
137BC0:  LDRD.W          R10, R11, [R0]
137BC4:  IT EQ
137BC6:  LSREQ           R4, R1, #1
137BC8:  CMP             R10, R11
137BCA:  BEQ.W           loc_137DCA
137BCE:  MOV             R0, R10
137BD0:  LDRB.W          R1, [R0,#4]!
137BD4:  LDR             R3, [R0,#4]
137BD6:  ANDS.W          R2, R1, #1
137BDA:  IT EQ
137BDC:  LSREQ           R3, R1, #1
137BDE:  CMP             R3, R4
137BE0:  BNE             loc_137C1A
137BE2:  LDR.W           R6, [R10,#0xC]
137BE6:  ADD.W           R9, R0, #1
137BEA:  CMP             R2, #0
137BEC:  MOV             R0, R6
137BEE:  IT EQ
137BF0:  MOVEQ           R0, R9; s1
137BF2:  BNE             loc_137C0E
137BF4:  CBZ             R4, loc_137C20
137BF6:  LSRS            R0, R1, #1
137BF8:  MOVS            R1, #0
137BFA:  ADD.W           R3, R10, R1
137BFE:  LDRB            R2, [R5,R1]
137C00:  LDRB            R3, [R3,#5]
137C02:  CMP             R3, R2
137C04:  BNE             loc_137C1A
137C06:  ADDS            R1, #1
137C08:  CMP             R0, R1
137C0A:  BNE             loc_137BFA
137C0C:  B               loc_137C20
137C0E:  CBZ             R4, loc_137C22
137C10:  MOV             R1, R5; s2
137C12:  MOV             R2, R4; n
137C14:  BLX             memcmp
137C18:  CBZ             R0, loc_137C22
137C1A:  ADD.W           R10, R10, #0x3C ; '<'
137C1E:  B               loc_137BC8
137C20:  MOV             R6, R9
137C22:  LDR             R1, =(unk_8D75A - 0x137C2A)
137C24:  MOV             R0, R6; s1
137C26:  ADD             R1, PC; unk_8D75A ; s2
137C28:  BLX             strcmp
137C2C:  CBZ             R0, loc_137C8C
137C2E:  LDR             R1, =(unk_8F456 - 0x137C36)
137C30:  MOV             R0, R6; s1
137C32:  ADD             R1, PC; unk_8F456 ; s2
137C34:  BLX             strcmp
137C38:  CBZ             R0, loc_137C8C
137C3A:  LDR             R0, =(off_2349A8 - 0x137C44)
137C3C:  ADD             R2, SP, #0x68+var_24
137C3E:  LDR             R1, =(off_234A54 - 0x137C46)
137C40:  ADD             R0, PC; off_2349A8
137C42:  ADD             R1, PC; off_234A54
137C44:  LDR             R0, [R0]; dword_381BF4
137C46:  LDR             R1, [R1]; dword_381A0C
137C48:  LDR             R4, [R0]
137C4A:  LDR             R0, [R1]
137C4C:  ADD             R1, SP, #0x68+var_30
137C4E:  LDR             R3, =(unk_B9357 - 0x137C5C)
137C50:  STRD.W          R2, R1, [SP,#0x68+var_68]
137C54:  ADD.W           R1, R0, #0x88
137C58:  ADD             R3, PC; unk_B9357
137C5A:  ADD             R0, SP, #0x68+var_40
137C5C:  MOV             R2, R8
137C5E:  STR.W           R8, [SP,#0x68+var_24]
137C62:  BL              sub_138B9C
137C66:  LDR             R0, [SP,#0x68+var_40]
137C68:  MOVS            R1, #0
137C6A:  VLDR            S0, =100.0
137C6E:  MOVS            R2, #0x64 ; 'd'
137C70:  VLDR            S2, [R0,#0x20]
137C74:  MOV             R0, R4
137C76:  STR.W           R8, [SP,#0x68+var_68]
137C7A:  VMUL.F32        S0, S2, S0
137C7E:  VCVT.S32.F32    S0, S0
137C82:  VMOV            R3, S0
137C86:  BL              sub_17C76C
137C8A:  B               loc_137C90
137C8C:  MOV.W           R0, #0xFFFFFFFF
137C90:  STR             R0, [SP,#0x68+var_4C]
137C92:  MOVS            R0, #0xB0; unsigned int
137C94:  BLX             j__Znwj; operator new(uint)
137C98:  MOV             R4, R0
137C9A:  LDR             R0, =(dword_3141C4 - 0x137CA2)
137C9C:  MOV             R5, R10
137C9E:  ADD             R0, PC; dword_3141C4
137CA0:  LDR.W           R1, [R5],#0x2C
137CA4:  STR             R1, [SP,#0x68+var_50]
137CA6:  LDR.W           R11, [R0]
137CAA:  MOVS            R0, #0x78 ; 'x'; unsigned int
137CAC:  BLX             j__Znwj; operator new(uint)
137CB0:  MOV             R6, R0
137CB2:  LDR             R0, =(off_234980 - 0x137CBE)
137CB4:  VMOV.F32        S0, #2.5
137CB8:  ADD             R2, SP, #0x68+var_40; int
137CBA:  ADD             R0, PC; off_234980
137CBC:  VMOV.F32        Q8, #1.0
137CC0:  LDR             R0, [R0]; dword_238EC0
137CC2:  VST1.64         {D16-D17}, [R2]
137CC6:  VLDR            S2, [R0]
137CCA:  VDIV.F32        S0, S2, S0
137CCE:  ADD.W           R1, R10, #0x10; int
137CD2:  MOV             R0, R6; int
137CD4:  MOVS            R3, #1; int
137CD6:  VSTR            S0, [SP,#0x68+var_68]
137CDA:  BL              sub_13D3DC
137CDE:  ADD.W           R0, R10, #0x1C
137CE2:  STRD.W          R5, R6, [SP,#0x68+var_60]
137CE6:  MOV             R3, R11
137CE8:  LDR             R5, [SP,#0x68+var_44]
137CEA:  LDR             R2, [SP,#0x68+var_50]
137CEC:  STRD.W          R8, R0, [SP,#0x68+var_68]; float
137CF0:  LDR             R0, [SP,#0x68+var_4C]
137CF2:  MOV             R1, R5
137CF4:  STR             R0, [SP,#0x68+var_58]
137CF6:  MOV             R0, R4
137CF8:  BL              sub_1387D4
137CFC:  LDR             R1, =(unk_3141C8 - 0x137D04)
137CFE:  STR             R4, [SP,#0x68+var_2C]
137D00:  ADD             R1, PC; unk_3141C8
137D02:  STRB.W          R5, [SP,#0x68+var_30]
137D06:  ADD             R2, SP, #0x68+var_30
137D08:  ADD             R0, SP, #0x68+var_24
137D0A:  MOV             R3, R2
137D0C:  BL              sub_138F8C
137D10:  LDR             R5, [SP,#0x68+var_48]
137D12:  LDR             R0, =(unk_3141C8 - 0x137D1C)
137D14:  SUB.W           R1, R7, #-var_25
137D18:  ADD             R0, PC; unk_3141C8
137D1A:  BL              sub_13934C
137D1E:  CMP             R0, #0
137D20:  BEQ             loc_137DD2
137D22:  LDR             R1, [R0,#0xC]
137D24:  MOV             R0, R5
137D26:  BL              sub_12BDF6
137D2A:  LDR             R0, =(unk_3141C8 - 0x137D34)
137D2C:  SUB.W           R1, R7, #-var_25
137D30:  ADD             R0, PC; unk_3141C8
137D32:  BL              sub_13934C
137D36:  CMP             R0, #0
137D38:  BEQ             loc_137DD2
137D3A:  LDR             R0, [R0,#0xC]
137D3C:  LDR.W           R1, [R0,#0xA8]
137D40:  MOV             R0, R5
137D42:  BL              sub_12BDF6
137D46:  LDRB.W          R0, [R10,#4]
137D4A:  LDR.W           R4, [R10,#0xC]
137D4E:  LDR             R1, =(unk_8D75A - 0x137D5A)
137D50:  LSLS            R0, R0, #0x1F
137D52:  IT EQ
137D54:  MOVEQ           R4, R9
137D56:  ADD             R1, PC; unk_8D75A ; s2
137D58:  MOV             R0, R4; s1
137D5A:  BLX             strcmp
137D5E:  CBNZ            R0, loc_137D6A
137D60:  LDR             R0, =(dword_239028 - 0x137D6A)
137D62:  LDR.W           R1, [R10]
137D66:  ADD             R0, PC; dword_239028
137D68:  STR             R1, [R0]
137D6A:  LDR             R1, =(unk_8F456 - 0x137D72)
137D6C:  MOV             R0, R4; s1
137D6E:  ADD             R1, PC; unk_8F456 ; s2
137D70:  BLX             strcmp
137D74:  CBNZ            R0, loc_137D9A
137D76:  LDR             R1, =(unk_8D75A - 0x137D7E)
137D78:  ADD             R4, SP, #0x68+var_40
137D7A:  ADD             R1, PC; unk_8D75A ; s
137D7C:  MOV             R0, R4; int
137D7E:  BL              sub_DC6DC
137D82:  MOV             R0, R5
137D84:  MOV             R1, R4
137D86:  MOVS            R2, #0xFF
137D88:  BL              sub_137B98
137D8C:  LDRB.W          R0, [SP,#0x68+var_40]
137D90:  LSLS            R0, R0, #0x1F
137D92:  ITT NE
137D94:  LDRNE           R0, [SP,#0x68+var_38]; void *
137D96:  BLXNE           j__ZdlPv; operator delete(void *)
137D9A:  LDR             R0, =(unk_3141C8 - 0x137DA4)
137D9C:  SUB.W           R1, R7, #-var_25
137DA0:  ADD             R0, PC; unk_3141C8
137DA2:  BL              sub_13934C
137DA6:  CBZ             R0, loc_137DD2
137DA8:  LDR             R0, [R0,#0xC]
137DAA:  LDR.W           R4, [R0,#0xA8]
137DAE:  LDRB.W          R0, [R4,#0x50]
137DB2:  CBZ             R0, loc_137DBE
137DB4:  LDR             R0, [R4]
137DB6:  MOVS            R1, #0
137DB8:  LDR             R2, [R0,#0x24]
137DBA:  MOV             R0, R4
137DBC:  BLX             R2
137DBE:  MOVS            R0, #0
137DC0:  STRB.W          R0, [R4,#0x50]
137DC4:  MOV             R0, R5
137DC6:  BL              sub_137E48
137DCA:  ADD             SP, SP, #0x4C ; 'L'
137DCC:  POP.W           {R8-R11}
137DD0:  POP             {R4-R7,PC}
137DD2:  LDR             R0, =(aUnorderedMapAt - 0x137DD8); "unordered_map::at: key not found" ...
137DD4:  ADD             R0, PC; "unordered_map::at: key not found"
137DD6:  BL              sub_EE13C
