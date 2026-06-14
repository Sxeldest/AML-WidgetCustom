; =========================================================
; Game Engine Function: alGetSourceiv
; Address            : 0x259E88 - 0x259FF6
; =========================================================

259E88:  PUSH            {R4-R7,LR}
259E8A:  ADD             R7, SP, #0xC
259E8C:  PUSH.W          {R8}
259E90:  MOV             R8, R2
259E92:  MOV             R6, R1
259E94:  MOV             R5, R0
259E96:  BLX             j_GetContextRef
259E9A:  MOV             R4, R0
259E9C:  CMP             R4, #0
259E9E:  BEQ.W           loc_259F04
259EA2:  ADD.W           R0, R4, #8
259EA6:  MOV             R1, R5
259EA8:  BLX             j_LookupUIntMapKey
259EAC:  CMP             R0, #0
259EAE:  BEQ             loc_259F0A
259EB0:  CMP.W           R8, #0
259EB4:  BEQ.W           loc_259F42
259EB8:  CMP.W           R6, #0xC000
259EBC:  BGE.W           loc_259F78
259EC0:  MOVW            R1, #0x1001
259EC4:  SUBS            R1, R6, R1
259EC6:  CMP             R1, #0x32 ; '2'; switch 51 cases
259EC8:  BHI.W           def_259ECC; jumptable 00259ECC default case
259ECC:  TBB.W           [PC,R1]; switch jump
259ED0:  DCB 0x65; jump table for switch statement
259ED1:  DCB 0x65
259ED2:  DCB 0x6F
259ED3:  DCB 0x65
259ED4:  DCB 0x65
259ED5:  DCB 0x65
259ED6:  DCB 0x65
259ED7:  DCB 0x6F
259ED8:  DCB 0x65
259ED9:  DCB 0x6F
259EDA:  DCB 0x6F
259EDB:  DCB 0x6F
259EDC:  DCB 0x6F
259EDD:  DCB 0x6F
259EDE:  DCB 0x6F
259EDF:  DCB 0x65
259EE0:  DCB 0x6F
259EE1:  DCB 0x6F
259EE2:  DCB 0x6F
259EE3:  DCB 0x6F
259EE4:  DCB 0x65
259EE5:  DCB 0x65
259EE6:  DCB 0x6F
259EE7:  DCB 0x6F
259EE8:  DCB 0x6F
259EE9:  DCB 0x6F
259EEA:  DCB 0x6F
259EEB:  DCB 0x6F
259EEC:  DCB 0x6F
259EED:  DCB 0x6F
259EEE:  DCB 0x6F
259EEF:  DCB 0x65
259EF0:  DCB 0x65
259EF1:  DCB 0x6F
259EF2:  DCB 0x65
259EF3:  DCB 0x65
259EF4:  DCB 0x65
259EF5:  DCB 0x65
259EF6:  DCB 0x65
259EF7:  DCB 0x6F
259EF8:  DCB 0x6F
259EF9:  DCB 0x6F
259EFA:  DCB 0x6F
259EFB:  DCB 0x6F
259EFC:  DCB 0x6F
259EFD:  DCB 0x6F
259EFE:  DCB 0x6F
259EFF:  DCB 0x6F
259F00:  DCB 0x65
259F01:  DCB 0x65
259F02:  DCB 0x65
259F03:  ALIGN 2
259F04:  POP.W           {R8}
259F08:  POP             {R4-R7,PC}
259F0A:  LDR             R0, =(TrapALError_ptr - 0x259F10)
259F0C:  ADD             R0, PC; TrapALError_ptr
259F0E:  LDR             R0, [R0]; TrapALError
259F10:  LDRB            R0, [R0]
259F12:  CMP             R0, #0
259F14:  ITT NE
259F16:  MOVNE           R0, #5; sig
259F18:  BLXNE           raise
259F1C:  LDREX.W         R0, [R4,#0x50]
259F20:  CMP             R0, #0
259F22:  BNE             loc_259FE0
259F24:  ADD.W           R0, R4, #0x50 ; 'P'
259F28:  MOVW            R1, #0xA001
259F2C:  DMB.W           ISH
259F30:  STREX.W         R2, R1, [R0]
259F34:  CMP             R2, #0
259F36:  BEQ             loc_259FE4
259F38:  LDREX.W         R2, [R0]
259F3C:  CMP             R2, #0
259F3E:  BEQ             loc_259F30
259F40:  B               loc_259FE0
259F42:  LDR             R0, =(TrapALError_ptr - 0x259F48)
259F44:  ADD             R0, PC; TrapALError_ptr
259F46:  LDR             R0, [R0]; TrapALError
259F48:  LDRB            R0, [R0]
259F4A:  CMP             R0, #0
259F4C:  ITT NE
259F4E:  MOVNE           R0, #5; sig
259F50:  BLXNE           raise
259F54:  LDREX.W         R0, [R4,#0x50]
259F58:  CMP             R0, #0
259F5A:  BNE             loc_259FE0
259F5C:  ADD.W           R0, R4, #0x50 ; 'P'
259F60:  MOVW            R1, #0xA003
259F64:  DMB.W           ISH
259F68:  STREX.W         R2, R1, [R0]
259F6C:  CBZ             R2, loc_259FE4
259F6E:  LDREX.W         R2, [R0]
259F72:  CMP             R2, #0
259F74:  BEQ             loc_259F68
259F76:  B               loc_259FE0
259F78:  SUB.W           R1, R6, #0x20000
259F7C:  SUBS            R1, #5
259F7E:  CMP             R1, #7
259F80:  BHI             loc_259F8E
259F82:  MOVS            R2, #1
259F84:  LSL.W           R1, R2, R1
259F88:  TST.W           R1, #0xE3
259F8C:  BNE             loc_259F9A; jumptable 00259ECC cases 0,1,3-6,8,15,20,21,31,32,34-38,48-50
259F8E:  CMP.W           R6, #0xC000
259F92:  IT NE
259F94:  CMPNE.W         R6, #0xD000
259F98:  BNE             loc_259FAE; jumptable 00259ECC cases 2,7,9-14,16-19,22-30,33,39-47
259F9A:  MOV             R1, R4; jumptable 00259ECC cases 0,1,3-6,8,15,20,21,31,32,34-38,48-50
259F9C:  MOV             R2, R6
259F9E:  MOV             R3, R8
259FA0:  BL              sub_259AC0
259FA4:  B               loc_259FE8
259FA6:  MOVW            R1, #0x202; jumptable 00259ECC default case
259FAA:  CMP             R6, R1
259FAC:  BEQ             loc_259F9A; jumptable 00259ECC cases 0,1,3-6,8,15,20,21,31,32,34-38,48-50
259FAE:  LDR             R0, =(TrapALError_ptr - 0x259FB4); jumptable 00259ECC cases 2,7,9-14,16-19,22-30,33,39-47
259FB0:  ADD             R0, PC; TrapALError_ptr
259FB2:  LDR             R0, [R0]; TrapALError
259FB4:  LDRB            R0, [R0]
259FB6:  CMP             R0, #0
259FB8:  ITT NE
259FBA:  MOVNE           R0, #5; sig
259FBC:  BLXNE           raise
259FC0:  LDREX.W         R0, [R4,#0x50]
259FC4:  CBNZ            R0, loc_259FE0
259FC6:  ADD.W           R0, R4, #0x50 ; 'P'
259FCA:  MOVW            R1, #0xA002
259FCE:  DMB.W           ISH
259FD2:  STREX.W         R2, R1, [R0]
259FD6:  CBZ             R2, loc_259FE4
259FD8:  LDREX.W         R2, [R0]
259FDC:  CMP             R2, #0
259FDE:  BEQ             loc_259FD2
259FE0:  CLREX.W
259FE4:  DMB.W           ISH
259FE8:  MOV             R0, R4
259FEA:  POP.W           {R8}
259FEE:  POP.W           {R4-R7,LR}
259FF2:  B.W             ALCcontext_DecRef
