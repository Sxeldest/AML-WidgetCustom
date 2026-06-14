; =========================================================
; Game Engine Function: alGetSourcef
; Address            : 0x258D1C - 0x258E88
; =========================================================

258D1C:  PUSH            {R4-R7,LR}
258D1E:  ADD             R7, SP, #0xC
258D20:  PUSH.W          {R8}
258D24:  SUB             SP, SP, #8
258D26:  MOV             R8, R2
258D28:  MOV             R6, R1
258D2A:  MOV             R5, R0
258D2C:  BLX             j_GetContextRef
258D30:  MOV             R4, R0
258D32:  CMP             R4, #0
258D34:  BEQ.W           loc_258E80
258D38:  ADD.W           R0, R4, #8
258D3C:  MOV             R1, R5
258D3E:  BLX             j_LookupUIntMapKey
258D42:  CMP             R0, #0
258D44:  BEQ             loc_258D9A
258D46:  CMP.W           R8, #0
258D4A:  BEQ.W           loc_258DD2
258D4E:  CMP.W           R6, #0xC000
258D52:  BGE.W           loc_258E08
258D56:  MOVW            R1, #0x1001
258D5A:  SUBS            R1, R6, R1
258D5C:  CMP             R1, #0x32 ; '2'; switch 51 cases
258D5E:  BHI.W           def_258D62; jumptable 00258D62 default case
258D62:  TBB.W           [PC,R1]; switch jump
258D66:  DCB 0x5C; jump table for switch statement
258D67:  DCB 0x5C
258D68:  DCB 0x5C
258D69:  DCB 0x6D
258D6A:  DCB 0x6D
258D6B:  DCB 0x6D
258D6C:  DCB 0x5C
258D6D:  DCB 0x6D
258D6E:  DCB 0x5C
258D6F:  DCB 0x5C
258D70:  DCB 0x6D
258D71:  DCB 0x6D
258D72:  DCB 0x5C
258D73:  DCB 0x5C
258D74:  DCB 0x6D
258D75:  DCB 0x5C
258D76:  DCB 0x6D
258D77:  DCB 0x6D
258D78:  DCB 0x6D
258D79:  DCB 0x6D
258D7A:  DCB 0x5C
258D7B:  DCB 0x5C
258D7C:  DCB 0x6D
258D7D:  DCB 0x6D
258D7E:  DCB 0x6D
258D7F:  DCB 0x6D
258D80:  DCB 0x6D
258D81:  DCB 0x6D
258D82:  DCB 0x6D
258D83:  DCB 0x6D
258D84:  DCB 0x6D
258D85:  DCB 0x5C
258D86:  DCB 0x5C
258D87:  DCB 0x5C
258D88:  DCB 0x5C
258D89:  DCB 0x5C
258D8A:  DCB 0x5C
258D8B:  DCB 0x5C
258D8C:  DCB 0x5C
258D8D:  DCB 0x6D
258D8E:  DCB 0x6D
258D8F:  DCB 0x6D
258D90:  DCB 0x6D
258D91:  DCB 0x6D
258D92:  DCB 0x6D
258D93:  DCB 0x6D
258D94:  DCB 0x6D
258D95:  DCB 0x6D
258D96:  DCB 0x6D
258D97:  DCB 0x6D
258D98:  DCB 0x5C
258D99:  ALIGN 2
258D9A:  LDR             R0, =(TrapALError_ptr - 0x258DA0)
258D9C:  ADD             R0, PC; TrapALError_ptr
258D9E:  LDR             R0, [R0]; TrapALError
258DA0:  LDRB            R0, [R0]
258DA2:  CMP             R0, #0
258DA4:  ITT NE
258DA6:  MOVNE           R0, #5; sig
258DA8:  BLXNE           raise
258DAC:  LDREX.W         R0, [R4,#0x50]
258DB0:  CMP             R0, #0
258DB2:  BNE             loc_258E72
258DB4:  ADD.W           R0, R4, #0x50 ; 'P'
258DB8:  MOVW            R1, #0xA001
258DBC:  DMB.W           ISH
258DC0:  STREX.W         R2, R1, [R0]
258DC4:  CMP             R2, #0
258DC6:  BEQ             loc_258E76
258DC8:  LDREX.W         R2, [R0]
258DCC:  CMP             R2, #0
258DCE:  BEQ             loc_258DC0
258DD0:  B               loc_258E72
258DD2:  LDR             R0, =(TrapALError_ptr - 0x258DD8)
258DD4:  ADD             R0, PC; TrapALError_ptr
258DD6:  LDR             R0, [R0]; TrapALError
258DD8:  LDRB            R0, [R0]
258DDA:  CMP             R0, #0
258DDC:  ITT NE
258DDE:  MOVNE           R0, #5; sig
258DE0:  BLXNE           raise
258DE4:  LDREX.W         R0, [R4,#0x50]
258DE8:  CMP             R0, #0
258DEA:  BNE             loc_258E72
258DEC:  ADD.W           R0, R4, #0x50 ; 'P'
258DF0:  MOVW            R1, #0xA003
258DF4:  DMB.W           ISH
258DF8:  STREX.W         R2, R1, [R0]
258DFC:  CBZ             R2, loc_258E76
258DFE:  LDREX.W         R2, [R0]
258E02:  CMP             R2, #0
258E04:  BEQ             loc_258DF8
258E06:  B               loc_258E72
258E08:  SUB.W           R1, R6, #0x20000
258E0C:  SUBS            R1, #7
258E0E:  CMP             R1, #6
258E10:  BCC             loc_258E1E; jumptable 00258D62 cases 0-2,6,8,9,12,13,15,20,21,31-38,50
258E12:  CMP.W           R6, #0xC000
258E16:  IT NE
258E18:  CMPNE.W         R6, #0xD000
258E1C:  BNE             loc_258E40; jumptable 00258D62 cases 3-5,7,10,11,14,16-19,22-30,39-49
258E1E:  MOV             R3, SP; jumptable 00258D62 cases 0-2,6,8,9,12,13,15,20,21,31-38,50
258E20:  MOV             R1, R4
258E22:  MOV             R2, R6
258E24:  BL              sub_258E98
258E28:  CBNZ            R0, loc_258E7A
258E2A:  VLDR            D16, [SP,#0x18+var_18]
258E2E:  VCVT.F32.F64    S0, D16
258E32:  VSTR            S0, [R8]
258E36:  B               loc_258E7A
258E38:  MOVW            R1, #0x202; jumptable 00258D62 default case
258E3C:  CMP             R6, R1
258E3E:  BEQ             loc_258E1E; jumptable 00258D62 cases 0-2,6,8,9,12,13,15,20,21,31-38,50
258E40:  LDR             R0, =(TrapALError_ptr - 0x258E46); jumptable 00258D62 cases 3-5,7,10,11,14,16-19,22-30,39-49
258E42:  ADD             R0, PC; TrapALError_ptr
258E44:  LDR             R0, [R0]; TrapALError
258E46:  LDRB            R0, [R0]
258E48:  CMP             R0, #0
258E4A:  ITT NE
258E4C:  MOVNE           R0, #5; sig
258E4E:  BLXNE           raise
258E52:  LDREX.W         R0, [R4,#0x50]
258E56:  CBNZ            R0, loc_258E72
258E58:  ADD.W           R0, R4, #0x50 ; 'P'
258E5C:  MOVW            R1, #0xA002
258E60:  DMB.W           ISH
258E64:  STREX.W         R2, R1, [R0]
258E68:  CBZ             R2, loc_258E76
258E6A:  LDREX.W         R2, [R0]
258E6E:  CMP             R2, #0
258E70:  BEQ             loc_258E64
258E72:  CLREX.W
258E76:  DMB.W           ISH
258E7A:  MOV             R0, R4
258E7C:  BLX             j_ALCcontext_DecRef
258E80:  ADD             SP, SP, #8
258E82:  POP.W           {R8}
258E86:  POP             {R4-R7,PC}
