; =========================================================
; Game Engine Function: alGenEffects
; Address            : 0x252BAC - 0x252EA6
; =========================================================

252BAC:  PUSH            {R4-R7,LR}
252BAE:  ADD             R7, SP, #0xC
252BB0:  PUSH.W          {R8-R11}
252BB4:  SUB             SP, SP, #0x1C
252BB6:  STR             R1, [SP,#0x38+var_28]
252BB8:  MOV             R5, R0
252BBA:  BLX             j_GetContextRef
252BBE:  CMP             R0, #0
252BC0:  BEQ.W           loc_252E12
252BC4:  STR             R0, [SP,#0x38+var_30]
252BC6:  ADD.W           R4, R0, #0x50 ; 'P'
252BCA:  LDR             R0, =(TrapALError_ptr - 0x252BDC)
252BCC:  MOV.W           R9, #1
252BD0:  LDR.W           R10, =(dword_6D681C - 0x252BE2)
252BD4:  LDR.W           R8, =(dword_6D681C - 0x252BE4)
252BD8:  ADD             R0, PC; TrapALError_ptr
252BDA:  LDR.W           R11, =(dword_6D681C - 0x252BE8)
252BDE:  ADD             R10, PC; dword_6D681C
252BE0:  ADD             R8, PC; dword_6D681C
252BE2:  LDR             R0, [R0]; TrapALError
252BE4:  ADD             R11, PC; dword_6D681C
252BE6:  STRD.W          R0, R4, [SP,#0x38+var_38]
252BEA:  STR             R5, [SP,#0x38+var_2C]
252BEC:  CMP             R5, #0
252BEE:  BLT.W           loc_252E6E
252BF2:  CMP             R5, #1
252BF4:  BLT.W           loc_252E5E
252BF8:  LDR             R0, [SP,#0x38+var_30]
252BFA:  MOVS            R4, #0
252BFC:  LDR.W           R0, [R0,#0x88]
252C00:  ADDS            R0, #0x64 ; 'd'
252C02:  STR             R0, [SP,#0x38+var_24]
252C04:  MOVS            R0, #1; item_count
252C06:  MOVS            R1, #0xB8; item_size
252C08:  BLX             calloc
252C0C:  MOV             R6, R0
252C0E:  CMP             R6, #0
252C10:  STR             R4, [SP,#0x38+var_20]
252C12:  BEQ.W           loc_252E1A
252C16:  LDR             R0, =(sub_2648CC+1 - 0x252C1C)
252C18:  ADD             R0, PC; sub_2648CC
252C1A:  STR.W           R0, [R6,#0x94]
252C1E:  LDR             R0, =(sub_264914+1 - 0x252C24)
252C20:  ADD             R0, PC; sub_264914
252C22:  STR.W           R0, [R6,#0x98]
252C26:  LDR             R0, =(sub_26495C+1 - 0x252C2C)
252C28:  ADD             R0, PC; sub_26495C
252C2A:  STR.W           R0, [R6,#0x9C]
252C2E:  LDR             R0, =(sub_2649A4+1 - 0x252C34)
252C30:  ADD             R0, PC; sub_2649A4
252C32:  STR.W           R0, [R6,#0xA0]
252C36:  LDR             R0, =(sub_2649EC+1 - 0x252C3C)
252C38:  ADD             R0, PC; sub_2649EC
252C3A:  STR.W           R0, [R6,#0xA4]
252C3E:  LDR             R0, =(sub_264A34+1 - 0x252C44)
252C40:  ADD             R0, PC; sub_264A34
252C42:  STR.W           R0, [R6,#0xA8]
252C46:  LDR             R0, =(sub_264A7C+1 - 0x252C4C)
252C48:  ADD             R0, PC; sub_264A7C
252C4A:  STR.W           R0, [R6,#0xAC]
252C4E:  LDR             R0, =(sub_264AC4+1 - 0x252C54)
252C50:  ADD             R0, PC; sub_264AC4
252C52:  STR.W           R0, [R6,#0xB0]
252C56:  ADD.W           R0, R6, #0xB4
252C5A:  BLX             j_NewThunkEntry
252C5E:  LDR.W           R4, [R6,#0xB4]
252C62:  MOV             R5, R0
252C64:  CBNZ            R5, loc_252C8C
252C66:  LDR             R0, [SP,#0x38+var_24]
252C68:  MOV             R1, R4
252C6A:  MOV             R2, R6
252C6C:  BLX             j_InsertUIntMapEntry
252C70:  LDR.W           R4, [R6,#0xB4]
252C74:  MOV             R5, R0
252C76:  CBNZ            R5, loc_252C8C
252C78:  LDR             R0, [SP,#0x38+var_28]
252C7A:  LDR             R1, [SP,#0x38+var_20]
252C7C:  STR.W           R4, [R0,R1,LSL#2]
252C80:  MOV             R4, R1
252C82:  ADDS            R4, #1
252C84:  LDR             R5, [SP,#0x38+var_2C]
252C86:  CMP             R4, R5
252C88:  BLT             loc_252C04
252C8A:  B               loc_252E5E
252C8C:  LDR             R2, =(dword_6D681C - 0x252C96)
252C8E:  DMB.W           ISH
252C92:  ADD             R2, PC; dword_6D681C
252C94:  LDREX.W         R0, [R2,#0xC]
252C98:  STREX.W         R1, R9, [R2,#0xC]
252C9C:  CMP             R1, #0
252C9E:  BNE             loc_252C94
252CA0:  B               loc_252CB6
252CA2:  BLX             sched_yield
252CA6:  DMB.W           ISH
252CAA:  LDREX.W         R0, [R10,#0xC]
252CAE:  STREX.W         R1, R9, [R10,#0xC]
252CB2:  CMP             R1, #0
252CB4:  BNE             loc_252CAA
252CB6:  CMP             R0, #1
252CB8:  DMB.W           ISH
252CBC:  BEQ             loc_252CA2
252CBE:  LDR             R2, =(dword_6D681C - 0x252CC8)
252CC0:  DMB.W           ISH
252CC4:  ADD             R2, PC; dword_6D681C
252CC6:  LDREX.W         R0, [R2,#8]
252CCA:  STREX.W         R1, R9, [R2,#8]
252CCE:  CMP             R1, #0
252CD0:  BNE             loc_252CC6
252CD2:  B               loc_252CE8
252CD4:  BLX             sched_yield
252CD8:  DMB.W           ISH
252CDC:  LDREX.W         R0, [R8,#8]
252CE0:  STREX.W         R1, R9, [R8,#8]
252CE4:  CMP             R1, #0
252CE6:  BNE             loc_252CDC
252CE8:  CMP             R0, #1
252CEA:  DMB.W           ISH
252CEE:  BEQ             loc_252CD4
252CF0:  LDR             R3, =(dword_6D681C - 0x252CFA)
252CF2:  DMB.W           ISH
252CF6:  ADD             R3, PC; dword_6D681C
252CF8:  LDREX.W         R0, [R3]
252CFC:  ADDS            R1, R0, #1
252CFE:  STREX.W         R2, R1, [R3]
252D02:  CMP             R2, #0
252D04:  BNE             loc_252CF8
252D06:  CMP             R0, #0
252D08:  DMB.W           ISH
252D0C:  BNE             loc_252D40
252D0E:  LDR             R2, =(dword_6D681C - 0x252D18)
252D10:  DMB.W           ISH
252D14:  ADD             R2, PC; dword_6D681C
252D16:  LDREX.W         R0, [R2,#0x10]
252D1A:  STREX.W         R1, R9, [R2,#0x10]
252D1E:  CMP             R1, #0
252D20:  BNE             loc_252D16
252D22:  B               loc_252D38
252D24:  BLX             sched_yield
252D28:  DMB.W           ISH
252D2C:  LDREX.W         R0, [R11,#0x10]
252D30:  STREX.W         R1, R9, [R11,#0x10]
252D34:  CMP             R1, #0
252D36:  BNE             loc_252D2C
252D38:  CMP             R0, #1
252D3A:  DMB.W           ISH
252D3E:  BEQ             loc_252D24
252D40:  LDR             R1, =(dword_6D681C - 0x252D4C)
252D42:  MOVS            R3, #0
252D44:  DMB.W           ISH
252D48:  ADD             R1, PC; dword_6D681C
252D4A:  LDREX.W         R0, [R1,#8]
252D4E:  STREX.W         R0, R3, [R1,#8]
252D52:  CMP             R0, #0
252D54:  BNE             loc_252D4A
252D56:  LDR             R1, =(dword_6D681C - 0x252D64)
252D58:  DMB.W           ISH
252D5C:  DMB.W           ISH
252D60:  ADD             R1, PC; dword_6D681C
252D62:  LDREX.W         R0, [R1,#0xC]
252D66:  STREX.W         R0, R3, [R1,#0xC]
252D6A:  CMP             R0, #0
252D6C:  BNE             loc_252D62
252D6E:  LDR             R0, =(dword_6D6830 - 0x252D78)
252D70:  DMB.W           ISH
252D74:  ADD             R0, PC; dword_6D6830
252D76:  LDR             R1, [R0]
252D78:  SUBS            R0, R4, #1
252D7A:  LDR             R4, =(dword_6D681C - 0x252D82)
252D7C:  CMP             R0, R1
252D7E:  ADD             R4, PC; dword_6D681C
252D80:  BCS             loc_252DA0
252D82:  LDR             R1, =(dword_6D6834 - 0x252D88)
252D84:  ADD             R1, PC; dword_6D6834
252D86:  LDR             R1, [R1]
252D88:  DMB.W           ISH
252D8C:  ADD.W           R0, R1, R0,LSL#2
252D90:  LDREX.W         R1, [R0]
252D94:  STREX.W         R1, R3, [R0]
252D98:  CMP             R1, #0
252D9A:  BNE             loc_252D90
252D9C:  DMB.W           ISH
252DA0:  DMB.W           ISH
252DA4:  LDREX.W         R0, [R4]
252DA8:  SUBS            R1, R0, #1
252DAA:  STREX.W         R2, R1, [R4]
252DAE:  CMP             R2, #0
252DB0:  BNE             loc_252DA4
252DB2:  CMP             R0, #1
252DB4:  DMB.W           ISH
252DB8:  BNE             loc_252DD2
252DBA:  LDR             R1, =(dword_6D681C - 0x252DC4)
252DBC:  DMB.W           ISH
252DC0:  ADD             R1, PC; dword_6D681C
252DC2:  LDREX.W         R0, [R1,#0x10]
252DC6:  STREX.W         R0, R3, [R1,#0x10]
252DCA:  CMP             R0, #0
252DCC:  BNE             loc_252DC2
252DCE:  DMB.W           ISH
252DD2:  MOV             R0, R6; p
252DD4:  BLX             free
252DD8:  LDR             R0, [SP,#0x38+var_38]
252DDA:  LDRB            R0, [R0]
252DDC:  CMP             R0, #0
252DDE:  ITT NE
252DE0:  MOVNE           R0, #5; sig
252DE2:  BLXNE           raise
252DE6:  LDR             R4, [SP,#0x38+var_34]
252DE8:  LDREX.W         R0, [R4]
252DEC:  CBNZ            R0, loc_252E00
252DEE:  DMB.W           ISH
252DF2:  STREX.W         R0, R5, [R4]
252DF6:  CBZ             R0, loc_252E04
252DF8:  LDREX.W         R0, [R4]
252DFC:  CMP             R0, #0
252DFE:  BEQ             loc_252DF2
252E00:  CLREX.W
252E04:  DMB.W           ISH
252E08:  CMP             R5, #0
252E0A:  LDR             R5, [SP,#0x38+var_2C]
252E0C:  BEQ.W           loc_252BEC
252E10:  B               loc_252E52
252E12:  ADD             SP, SP, #0x1C
252E14:  POP.W           {R8-R11}
252E18:  POP             {R4-R7,PC}
252E1A:  LDR             R0, =(TrapALError_ptr - 0x252E20)
252E1C:  ADD             R0, PC; TrapALError_ptr
252E1E:  LDR             R0, [R0]; TrapALError
252E20:  LDRB            R0, [R0]
252E22:  CMP             R0, #0
252E24:  ITT NE
252E26:  MOVNE           R0, #5; sig
252E28:  BLXNE           raise
252E2C:  LDR             R2, [SP,#0x38+var_34]
252E2E:  LDREX.W         R0, [R2]
252E32:  CBNZ            R0, loc_252E4A
252E34:  MOVW            R0, #0xA005
252E38:  DMB.W           ISH
252E3C:  STREX.W         R1, R0, [R2]
252E40:  CBZ             R1, loc_252E4E
252E42:  LDREX.W         R1, [R2]
252E46:  CMP             R1, #0
252E48:  BEQ             loc_252E3C
252E4A:  CLREX.W
252E4E:  DMB.W           ISH
252E52:  LDR             R0, [SP,#0x38+var_20]
252E54:  CMP             R0, #1
252E56:  ITT GE
252E58:  LDRGE           R1, [SP,#0x38+var_28]
252E5A:  BLXGE           j_alDeleteEffects
252E5E:  LDR             R0, [SP,#0x38+var_30]
252E60:  ADD             SP, SP, #0x1C
252E62:  POP.W           {R8-R11}
252E66:  POP.W           {R4-R7,LR}
252E6A:  B.W             ALCcontext_DecRef
252E6E:  LDR             R0, =(TrapALError_ptr - 0x252E74)
252E70:  ADD             R0, PC; TrapALError_ptr
252E72:  LDR             R0, [R0]; TrapALError
252E74:  LDRB            R0, [R0]
252E76:  CMP             R0, #0
252E78:  ITT NE
252E7A:  MOVNE           R0, #5; sig
252E7C:  BLXNE           raise
252E80:  LDREX.W         R0, [R4]
252E84:  CBNZ            R0, loc_252E9C
252E86:  MOVW            R0, #0xA003
252E8A:  DMB.W           ISH
252E8E:  STREX.W         R1, R0, [R4]
252E92:  CBZ             R1, loc_252EA0
252E94:  LDREX.W         R1, [R4]
252E98:  CMP             R1, #0
252E9A:  BEQ             loc_252E8E
252E9C:  CLREX.W
252EA0:  DMB.W           ISH
252EA4:  B               loc_252E5E
