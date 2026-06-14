; =========================================================
; Game Engine Function: sub_75B88
; Address            : 0x75B88 - 0x75EC0
; =========================================================

75B88:  PUSH            {R4-R7,LR}
75B8A:  ADD             R7, SP, #0xC
75B8C:  PUSH.W          {R8-R11}
75B90:  SUB             SP, SP, #0x14C
75B92:  STRD.W          R1, R2, [SP,#0x168+var_160]
75B96:  MOV             R11, R0
75B98:  LDR             R0, =(__stack_chk_guard_ptr - 0x75BAA)
75B9A:  VMOV.I32        Q8, #0
75B9E:  MOV.W           R8, #0
75BA2:  ADD.W           R10, SP, #0x168+s
75BA6:  ADD             R0, PC; __stack_chk_guard_ptr
75BA8:  MOVS            R1, #0xC8; n
75BAA:  MOV             R2, R11; stream
75BAC:  LDR             R0, [R0]; __stack_chk_guard
75BAE:  LDR             R0, [R0]
75BB0:  STR             R0, [SP,#0x168+var_20]
75BB2:  ADD             R0, SP, #0x168+var_120
75BB4:  VST1.64         {D16-D17}, [R0]!
75BB8:  VST1.64         {D16-D17}, [R0]!
75BBC:  VST1.64         {D16-D17}, [R0]!
75BC0:  STRH.W          R8, [R0]
75BC4:  ADD             R0, SP, #0x168+dest
75BC6:  VST1.64         {D16-D17}, [R0]!
75BCA:  VST1.64         {D16-D17}, [R0]!
75BCE:  VST1.64         {D16-D17}, [R0]!
75BD2:  STRH.W          R8, [R0]
75BD6:  MOV             R0, R10; s
75BD8:  BLX             fgets
75BDC:  MOVS            R5, #0
75BDE:  CMP             R0, #0
75BE0:  BEQ.W           loc_75EA4
75BE4:  MOV.W           R9, #0
75BE8:  STR.W           R11, [SP,#0x168+stream]
75BEC:  B               loc_75C22
75BEE:  ADD             R0, SP, #0x168+dest; dest
75BF0:  MOV             R1, R4; src
75BF2:  MOVS            R2, #0x32 ; '2'; n
75BF4:  BLX             strncpy
75BF8:  MOV             R3, R6
75BFA:  LDR             R0, [SP,#0x168+var_15C]
75BFC:  LDR             R6, [SP,#0x168+var_160]
75BFE:  ADD             R1, SP, #0x168+var_120
75C00:  MOV             R2, R4
75C02:  STRB.W          R8, [SP,#0x168+var_127]
75C06:  BLX             R6
75C08:  ORRS            R0, R5
75C0A:  IT EQ
75C0C:  MOVEQ           R5, R9
75C0E:  LDR.W           R11, [SP,#0x168+stream]
75C12:  MOV             R0, R10; s
75C14:  MOVS            R1, #0xC8; n
75C16:  MOV             R2, R11; stream
75C18:  BLX             fgets
75C1C:  CMP             R0, #0
75C1E:  BEQ.W           loc_75EA4
75C22:  LDRB.W          R0, [SP,#0x168+s]
75C26:  MOVS            R6, #0
75C28:  LDRB.W          R1, [SP,#0x168+var_E7]
75C2C:  MOV             R4, R10
75C2E:  EOR.W           R0, R0, #0xEF
75C32:  LDRB.W          R2, [SP,#0x168+var_E6]
75C36:  ORR.W           R0, R0, R9
75C3A:  EOR.W           R1, R1, #0xBB
75C3E:  ORRS            R0, R1
75C40:  EOR.W           R1, R2, #0xBF
75C44:  ORRS            R0, R1
75C46:  ITT EQ
75C48:  MOVEQ           R6, #3
75C4A:  ADDEQ           R4, #3
75C4C:  MOV             R0, R4; s
75C4E:  BLX             strlen
75C52:  CMP             R0, #1
75C54:  BLT             loc_75C76
75C56:  ADD             R0, R4
75C58:  MOV             R1, R0
75C5A:  B               loc_75C66
75C5C:  STRB.W          R8, [R0,#-1]
75C60:  CMP             R1, R4
75C62:  MOV             R0, R1
75C64:  BLS             loc_75C76
75C66:  LDRB.W          R2, [R1,#-1]!
75C6A:  CMP             R2, #0x20 ; ' '
75C6C:  BEQ             loc_75C5C
75C6E:  SUBS            R2, #0xE
75C70:  CMN.W           R2, #5
75C74:  BCS             loc_75C5C
75C76:  LDRB.W          R0, [R10,R6]
75C7A:  ADD.W           R9, R9, #1
75C7E:  CBNZ            R0, loc_75CA4
75C80:  MOVS            R0, #0
75C82:  LDRB.W          R1, [SP,#0x168+dest]
75C86:  CMP             R1, #0
75C88:  IT NE
75C8A:  CMPNE           R4, R10
75C8C:  BHI             loc_75D62
75C8E:  CMP             R0, #0x3C ; '<'
75C90:  BGT             loc_75CBC
75C92:  CMP             R0, #0
75C94:  BEQ             loc_75C12
75C96:  CMP             R0, #0x3B ; ';'
75C98:  BEQ             loc_75C0E
75C9A:  B               loc_75D94
75C9C:  LDRB.W          R0, [R4,#1]!
75CA0:  CMP             R0, #0
75CA2:  BEQ             loc_75C80
75CA4:  CMP             R0, #0x20 ; ' '
75CA6:  BEQ             loc_75C9C
75CA8:  SUB.W           R1, R0, #0xE
75CAC:  CMN.W           R1, #5
75CB0:  BCS             loc_75C9C
75CB2:  CMP             R0, #0x23 ; '#'
75CB4:  IT NE
75CB6:  CMPNE           R0, #0x3B ; ';'
75CB8:  BEQ             loc_75C12
75CBA:  B               loc_75C82
75CBC:  CMP             R0, #0x5B ; '['
75CBE:  BEQ             loc_75D7C
75CC0:  CMP             R0, #0x3D ; '='
75CC2:  MOV             R11, R4
75CC4:  BNE             loc_75D94
75CC6:  LDRB.W          R1, [R11]
75CCA:  CMP             R1, #0x3D ; '='
75CCC:  IT NE
75CCE:  CMPNE           R1, #0x3A ; ':'
75CD0:  BNE.W           loc_75E16
75CD4:  MOV             R0, R4; s
75CD6:  STRB.W          R8, [R11]
75CDA:  BLX             strlen
75CDE:  CMP             R0, #1
75CE0:  BLT             loc_75D02
75CE2:  ADD             R0, R4
75CE4:  MOV             R1, R0
75CE6:  B               loc_75CF2
75CE8:  STRB.W          R8, [R0,#-1]
75CEC:  CMP             R1, R4
75CEE:  MOV             R0, R1
75CF0:  BLS             loc_75D02
75CF2:  LDRB.W          R2, [R1,#-1]!
75CF6:  CMP             R2, #0x20 ; ' '
75CF8:  BEQ             loc_75CE8
75CFA:  SUBS            R2, #0xE
75CFC:  CMN.W           R2, #5
75D00:  BCS             loc_75CE8
75D02:  MOV             R6, R11
75D04:  LDRB.W          R0, [R6,#1]!
75D08:  CMP             R0, #0
75D0A:  BEQ.W           loc_75E1C
75D0E:  ADD.W           R1, R11, #2
75D12:  B               loc_75D1C
75D14:  LDRB.W          R0, [R1],#1
75D18:  CMP             R0, #0
75D1A:  BEQ             loc_75E1A
75D1C:  CMP             R0, #0x20 ; ' '
75D1E:  BEQ             loc_75D14
75D20:  SUB.W           R2, R0, #0xE
75D24:  CMN.W           R2, #6
75D28:  BHI             loc_75D14
75D2A:  SUBS            R6, R1, #1
75D2C:  MOVS            R2, #0
75D2E:  MOV             R1, R6
75D30:  B               loc_75D54
75D32:  SUB.W           R2, R0, #9
75D36:  SUBS            R0, #0x20 ; ' '
75D38:  CLZ.W           R0, R0
75D3C:  CMP             R2, #5
75D3E:  LDRB.W          R3, [R1,#1]!
75D42:  MOV.W           R2, #0
75D46:  IT CC
75D48:  MOVCC           R2, #1
75D4A:  LSRS            R0, R0, #5
75D4C:  ORRS            R2, R0
75D4E:  CMP             R3, #0
75D50:  MOV             R0, R3
75D52:  BEQ             loc_75E1C
75D54:  CMP             R2, #0
75D56:  BEQ             loc_75D32
75D58:  CMP             R0, #0x3B ; ';'
75D5A:  BNE             loc_75D32
75D5C:  STRB.W          R8, [R1]
75D60:  B               loc_75E1C
75D62:  CMP             R0, #0
75D64:  BEQ.W           loc_75C8E
75D68:  LDR             R0, [SP,#0x168+var_15C]
75D6A:  ADD             R1, SP, #0x168+var_120
75D6C:  LDR             R6, [SP,#0x168+var_160]
75D6E:  ADD             R2, SP, #0x168+dest
75D70:  MOV             R3, R4
75D72:  BLX             R6
75D74:  ORRS            R0, R5
75D76:  IT EQ
75D78:  MOVEQ           R5, R9
75D7A:  B               loc_75C12
75D7C:  MOV             R1, R4
75D7E:  LDRB.W          R0, [R1,#1]!; src
75D82:  CMP             R0, #0
75D84:  IT NE
75D86:  CMPNE           R0, #0x5D ; ']'
75D88:  BNE             loc_75E4C
75D8A:  MOV             R3, R0
75D8C:  MOV             R0, R1
75D8E:  CMP             R3, #0x5D ; ']'
75D90:  BEQ             loc_75E86
75D92:  B               loc_75E9C
75D94:  MOVS            R2, #0
75D96:  MOV             R1, R0
75D98:  MOV             R11, R4
75D9A:  CBZ             R2, loc_75DA0
75D9C:  CMP             R1, #0x3B ; ';'
75D9E:  BEQ             loc_75DCC
75DA0:  SUB.W           R2, R1, #9
75DA4:  LDRB.W          R3, [R11,#1]!
75DA8:  CMP             R2, #5
75DAA:  MOV.W           R2, #0
75DAE:  IT CC
75DB0:  MOVCC           R2, #1
75DB2:  CMP             R3, #0x3D ; '='
75DB4:  BEQ.W           loc_75CC6
75DB8:  SUBS            R1, #0x20 ; ' '
75DBA:  CMP             R3, #0
75DBC:  CLZ.W           R1, R1
75DC0:  MOV.W           R1, R1,LSR#5
75DC4:  ORR.W           R2, R2, R1
75DC8:  MOV             R1, R3
75DCA:  BNE             loc_75D9A
75DCC:  CMP             R0, #0
75DCE:  MOV             R11, R4
75DD0:  BEQ.W           loc_75CC6
75DD4:  CMP             R0, #0x3A ; ':'
75DD6:  MOV             R11, R4
75DD8:  BEQ.W           loc_75CC6
75DDC:  MOVS            R2, #0
75DDE:  MOV             R11, R4
75DE0:  CBZ             R2, loc_75DE8
75DE2:  CMP             R0, #0x3B ; ';'
75DE4:  BEQ.W           loc_75CC6
75DE8:  SUB.W           R2, R0, #9
75DEC:  LDRB.W          R1, [R11,#1]!
75DF0:  CMP             R2, #5
75DF2:  MOV.W           R2, #0
75DF6:  IT CC
75DF8:  MOVCC           R2, #1
75DFA:  CMP             R1, #0
75DFC:  BEQ.W           loc_75CCA
75E00:  SUBS            R0, #0x20 ; ' '
75E02:  CMP             R1, #0x3A ; ':'
75E04:  CLZ.W           R0, R0
75E08:  MOV.W           R0, R0,LSR#5
75E0C:  ORR.W           R2, R2, R0
75E10:  MOV             R0, R1
75E12:  BNE             loc_75DE0
75E14:  B               loc_75CCA
75E16:  CMP             R5, #0
75E18:  B               loc_75C0A
75E1A:  SUBS            R6, R1, #1
75E1C:  MOV             R0, R6; s
75E1E:  BLX             strlen
75E22:  CMP             R0, #1
75E24:  BLT.W           loc_75BEE
75E28:  ADD             R0, R6
75E2A:  MOV             R1, R0
75E2C:  B               loc_75E3A
75E2E:  STRB.W          R8, [R0,#-1]
75E32:  CMP             R1, R6
75E34:  MOV             R0, R1
75E36:  BLS.W           loc_75BEE
75E3A:  LDRB.W          R2, [R1,#-1]!
75E3E:  CMP             R2, #0x20 ; ' '
75E40:  BEQ             loc_75E2E
75E42:  SUBS            R2, #0xE
75E44:  CMN.W           R2, #5
75E48:  BCS             loc_75E2E
75E4A:  B               loc_75BEE
75E4C:  ADDS            R2, R4, #2
75E4E:  MOVS            R6, #0
75E50:  CBZ             R6, loc_75E56
75E52:  CMP             R0, #0x3B ; ';'
75E54:  BEQ             loc_75E9C
75E56:  SUB.W           R6, R0, #9
75E5A:  LDRB.W          R3, [R2],#1
75E5E:  CMP             R6, #5
75E60:  MOV.W           R6, #0
75E64:  IT CC
75E66:  MOVCC           R6, #1
75E68:  CMP             R3, #0x5D ; ']'
75E6A:  BEQ             loc_75E80
75E6C:  SUBS            R0, #0x20 ; ' '
75E6E:  CMP             R3, #0
75E70:  CLZ.W           R0, R0
75E74:  MOV.W           R0, R0,LSR#5
75E78:  ORR.W           R6, R6, R0
75E7C:  MOV             R0, R3
75E7E:  BNE             loc_75E50
75E80:  SUBS            R0, R2, #1
75E82:  CMP             R3, #0x5D ; ']'
75E84:  BNE             loc_75E9C
75E86:  STRB.W          R8, [R0]
75E8A:  ADD             R0, SP, #0x168+var_120; dest
75E8C:  MOVS            R2, #0x32 ; '2'; n
75E8E:  BLX             strncpy
75E92:  STRB.W          R8, [SP,#0x168+dest]
75E96:  STRB.W          R8, [SP,#0x168+var_EF]
75E9A:  B               loc_75C12
75E9C:  CMP             R5, #0
75E9E:  IT EQ
75EA0:  MOVEQ           R5, R9
75EA2:  B               loc_75C12
75EA4:  LDR             R0, [SP,#0x168+var_20]
75EA6:  LDR             R1, =(__stack_chk_guard_ptr - 0x75EAC)
75EA8:  ADD             R1, PC; __stack_chk_guard_ptr
75EAA:  LDR             R1, [R1]; __stack_chk_guard
75EAC:  LDR             R1, [R1]
75EAE:  CMP             R1, R0
75EB0:  ITTTT EQ
75EB2:  MOVEQ           R0, R5
75EB4:  ADDEQ           SP, SP, #0x14C
75EB6:  POPEQ.W         {R8-R11}
75EBA:  POPEQ           {R4-R7,PC}
75EBC:  BLX             __stack_chk_fail
