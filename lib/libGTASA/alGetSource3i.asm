; =========================================================
; Game Engine Function: alGetSource3i
; Address            : 0x259D4C - 0x259E7A
; =========================================================

259D4C:  PUSH            {R4-R7,LR}
259D4E:  ADD             R7, SP, #0xC
259D50:  PUSH.W          {R8-R10}
259D54:  SUB             SP, SP, #0x10
259D56:  MOV             R8, R3
259D58:  MOV             R9, R2
259D5A:  MOV             R5, R1
259D5C:  MOV             R6, R0
259D5E:  LDR.W           R10, [R7,#arg_0]
259D62:  BLX             j_GetContextRef
259D66:  MOV             R4, R0
259D68:  CBZ             R4, loc_259DBE
259D6A:  ADD.W           R0, R4, #8
259D6E:  MOV             R1, R6
259D70:  BLX             j_LookupUIntMapKey
259D74:  CBZ             R0, loc_259DC6
259D76:  CMP.W           R9, #0
259D7A:  IT NE
259D7C:  CMPNE.W         R8, #0
259D80:  BEQ             loc_259DFC
259D82:  CMP.W           R10, #0
259D86:  BEQ             loc_259DFC
259D88:  MOVW            R1, #0x1004
259D8C:  SUBS            R1, R5, R1
259D8E:  CMP             R1, #3
259D90:  BCC             loc_259D9C
259D92:  MOVS            R1, #0x20006
259D98:  CMP             R5, R1
259D9A:  BNE             loc_259E30
259D9C:  ADD             R3, SP, #0x28+var_24
259D9E:  MOV             R1, R4
259DA0:  MOV             R2, R5
259DA2:  BL              sub_259AC0
259DA6:  CMP             R0, #0
259DA8:  BNE             loc_259E6A
259DAA:  LDR             R0, [SP,#0x28+var_24]
259DAC:  STR.W           R0, [R9]
259DB0:  LDR             R0, [SP,#0x28+var_20]
259DB2:  STR.W           R0, [R8]
259DB6:  LDR             R0, [SP,#0x28+var_1C]
259DB8:  STR.W           R0, [R10]
259DBC:  B               loc_259E6A
259DBE:  ADD             SP, SP, #0x10
259DC0:  POP.W           {R8-R10}
259DC4:  POP             {R4-R7,PC}
259DC6:  LDR             R0, =(TrapALError_ptr - 0x259DCC)
259DC8:  ADD             R0, PC; TrapALError_ptr
259DCA:  LDR             R0, [R0]; TrapALError
259DCC:  LDRB            R0, [R0]
259DCE:  CMP             R0, #0
259DD0:  ITT NE
259DD2:  MOVNE           R0, #5; sig
259DD4:  BLXNE           raise
259DD8:  LDREX.W         R0, [R4,#0x50]
259DDC:  CMP             R0, #0
259DDE:  BNE             loc_259E62
259DE0:  ADD.W           R0, R4, #0x50 ; 'P'
259DE4:  MOVW            R1, #0xA001
259DE8:  DMB.W           ISH
259DEC:  STREX.W         R2, R1, [R0]
259DF0:  CBZ             R2, loc_259E66
259DF2:  LDREX.W         R2, [R0]
259DF6:  CMP             R2, #0
259DF8:  BEQ             loc_259DEC
259DFA:  B               loc_259E62
259DFC:  LDR             R0, =(TrapALError_ptr - 0x259E02)
259DFE:  ADD             R0, PC; TrapALError_ptr
259E00:  LDR             R0, [R0]; TrapALError
259E02:  LDRB            R0, [R0]
259E04:  CMP             R0, #0
259E06:  ITT NE
259E08:  MOVNE           R0, #5; sig
259E0A:  BLXNE           raise
259E0E:  LDREX.W         R0, [R4,#0x50]
259E12:  CBNZ            R0, loc_259E62
259E14:  ADD.W           R0, R4, #0x50 ; 'P'
259E18:  MOVW            R1, #0xA003
259E1C:  DMB.W           ISH
259E20:  STREX.W         R2, R1, [R0]
259E24:  CBZ             R2, loc_259E66
259E26:  LDREX.W         R2, [R0]
259E2A:  CMP             R2, #0
259E2C:  BEQ             loc_259E20
259E2E:  B               loc_259E62
259E30:  LDR             R0, =(TrapALError_ptr - 0x259E36)
259E32:  ADD             R0, PC; TrapALError_ptr
259E34:  LDR             R0, [R0]; TrapALError
259E36:  LDRB            R0, [R0]
259E38:  CMP             R0, #0
259E3A:  ITT NE
259E3C:  MOVNE           R0, #5; sig
259E3E:  BLXNE           raise
259E42:  LDREX.W         R0, [R4,#0x50]
259E46:  CBNZ            R0, loc_259E62
259E48:  ADD.W           R0, R4, #0x50 ; 'P'
259E4C:  MOVW            R1, #0xA002
259E50:  DMB.W           ISH
259E54:  STREX.W         R2, R1, [R0]
259E58:  CBZ             R2, loc_259E66
259E5A:  LDREX.W         R2, [R0]
259E5E:  CMP             R2, #0
259E60:  BEQ             loc_259E54
259E62:  CLREX.W
259E66:  DMB.W           ISH
259E6A:  MOV             R0, R4
259E6C:  ADD             SP, SP, #0x10
259E6E:  POP.W           {R8-R10}
259E72:  POP.W           {R4-R7,LR}
259E76:  B.W             ALCcontext_DecRef
