; =========================================================
; Game Engine Function: alGetFloat
; Address            : 0x25D11C - 0x25D1C4
; =========================================================

25D11C:  PUSH            {R4,R5,R7,LR}
25D11E:  ADD             R7, SP, #8
25D120:  VPUSH           {D8}
25D124:  MOV             R5, R0
25D126:  BLX             j_GetContextRef
25D12A:  MOV             R4, R0
25D12C:  CBZ             R4, loc_25D144
25D12E:  SUB.W           R0, R5, #0xC000; switch 4 cases
25D132:  CMP             R0, #3
25D134:  BHI             def_25D136; jumptable 0025D136 default case
25D136:  TBB.W           [PC,R0]; switch jump
25D13A:  DCB 2; jump table for switch statement
25D13B:  DCB 0x2E
25D13C:  DCB 0x31
25D13D:  DCB 0x36
25D13E:  VLDR            S16, [R4,#0x60]; jumptable 0025D136 case 49152
25D142:  B               loc_25D1B4
25D144:  VLDR            S16, =0.0
25D148:  B               loc_25D1BA
25D14A:  CMP.W           R5, #0xD000; jumptable 0025D136 default case
25D14E:  BNE             loc_25D15A
25D150:  VLDR            S0, [R4,#0x58]
25D154:  VCVT.F32.U32    S16, S0
25D158:  B               loc_25D1B4
25D15A:  LDR             R0, =(TrapALError_ptr - 0x25D160)
25D15C:  ADD             R0, PC; TrapALError_ptr
25D15E:  LDR             R0, [R0]; TrapALError
25D160:  LDRB            R0, [R0]
25D162:  CMP             R0, #0
25D164:  ITT NE
25D166:  MOVNE           R0, #5; sig
25D168:  BLXNE           raise
25D16C:  LDREX.W         R0, [R4,#0x50]
25D170:  CBNZ            R0, loc_25D18C
25D172:  ADD.W           R0, R4, #0x50 ; 'P'
25D176:  MOVW            R1, #0xA002
25D17A:  DMB.W           ISH
25D17E:  STREX.W         R2, R1, [R0]
25D182:  CBZ             R2, loc_25D1AC
25D184:  LDREX.W         R2, [R0]
25D188:  CMP             R2, #0
25D18A:  BEQ             loc_25D17E
25D18C:  VLDR            S16, =0.0
25D190:  CLREX.W
25D194:  B               loc_25D1B0
25D196:  VLDR            S16, [R4,#0x64]; jumptable 0025D136 case 49153
25D19A:  B               loc_25D1B4
25D19C:  VLDR            S0, [R4,#0x6C]; jumptable 0025D136 case 49154
25D1A0:  VCVT.F32.S32    S16, S0
25D1A4:  B               loc_25D1B4
25D1A6:  VLDR            S16, [R4,#0x68]; jumptable 0025D136 case 49155
25D1AA:  B               loc_25D1B4
25D1AC:  VLDR            S16, =0.0
25D1B0:  DMB.W           ISH
25D1B4:  MOV             R0, R4
25D1B6:  BLX             j_ALCcontext_DecRef
25D1BA:  VMOV            R0, S16
25D1BE:  VPOP            {D8}
25D1C2:  POP             {R4,R5,R7,PC}
