; =========================================================
; Game Engine Function: alGetInteger
; Address            : 0x25D1CC - 0x25D25E
; =========================================================

25D1CC:  PUSH            {R4,R5,R7,LR}
25D1CE:  ADD             R7, SP, #8
25D1D0:  MOV             R5, R0
25D1D2:  BLX             j_GetContextRef
25D1D6:  MOV             R4, R0
25D1D8:  CBZ             R4, loc_25D1F0
25D1DA:  SUB.W           R0, R5, #0xC000; switch 4 cases
25D1DE:  CMP             R0, #3
25D1E0:  BHI             def_25D1E2; jumptable 0025D1E2 default case
25D1E2:  TBB.W           [PC,R0]; switch jump
25D1E6:  DCB 2; jump table for switch statement
25D1E7:  DCB 0xD
25D1E8:  DCB 0x10
25D1E9:  DCB 0x12
25D1EA:  VLDR            S0, [R4,#0x60]; jumptable 0025D1E2 case 49152
25D1EE:  B               loc_25D20E
25D1F0:  MOVS            R5, #0
25D1F2:  MOV             R0, R5
25D1F4:  POP             {R4,R5,R7,PC}
25D1F6:  CMP.W           R5, #0xD000; jumptable 0025D1E2 default case
25D1FA:  BNE             loc_25D218
25D1FC:  LDR             R5, [R4,#0x58]
25D1FE:  B               loc_25D254
25D200:  VLDR            S0, [R4,#0x64]; jumptable 0025D1E2 case 49153
25D204:  B               loc_25D20E
25D206:  LDR             R5, [R4,#0x6C]; jumptable 0025D1E2 case 49154
25D208:  B               loc_25D254
25D20A:  VLDR            S0, [R4,#0x68]; jumptable 0025D1E2 case 49155
25D20E:  VCVT.S32.F32    S0, S0
25D212:  VMOV            R5, S0
25D216:  B               loc_25D254
25D218:  LDR             R0, =(TrapALError_ptr - 0x25D21E)
25D21A:  ADD             R0, PC; TrapALError_ptr
25D21C:  LDR             R0, [R0]; TrapALError
25D21E:  LDRB            R0, [R0]
25D220:  CMP             R0, #0
25D222:  ITT NE
25D224:  MOVNE           R0, #5; sig
25D226:  BLXNE           raise
25D22A:  LDREX.W         R0, [R4,#0x50]
25D22E:  CBNZ            R0, loc_25D24A
25D230:  ADD.W           R0, R4, #0x50 ; 'P'
25D234:  MOVW            R1, #0xA002
25D238:  DMB.W           ISH
25D23C:  STREX.W         R2, R1, [R0]
25D240:  CBZ             R2, loc_25D24E
25D242:  LDREX.W         R2, [R0]
25D246:  CMP             R2, #0
25D248:  BEQ             loc_25D23C
25D24A:  CLREX.W
25D24E:  MOVS            R5, #0
25D250:  DMB.W           ISH
25D254:  MOV             R0, R4
25D256:  BLX             j_ALCcontext_DecRef
25D25A:  MOV             R0, R5
25D25C:  POP             {R4,R5,R7,PC}
