; =========================================================
; Game Engine Function: alGetBoolean
; Address            : 0x25CFBC - 0x25D05E
; =========================================================

25CFBC:  PUSH            {R4,R5,R7,LR}
25CFBE:  ADD             R7, SP, #8
25CFC0:  MOV             R5, R0
25CFC2:  BLX             j_GetContextRef
25CFC6:  MOV             R4, R0
25CFC8:  CBZ             R4, loc_25CFE0
25CFCA:  SUB.W           R0, R5, #0xC000; switch 4 cases
25CFCE:  CMP             R0, #3
25CFD0:  BHI             def_25CFD2; jumptable 0025CFD2 default case
25CFD2:  TBB.W           [PC,R0]; switch jump
25CFD6:  DCB 2; jump table for switch statement
25CFD7:  DCB 0x13
25CFD8:  DCB 0x16
25CFD9:  DCB 0x18
25CFDA:  VLDR            S0, [R4,#0x60]; jumptable 0025CFD2 case 49152
25CFDE:  B               loc_25D00A
25CFE0:  MOVS            R5, #0
25CFE2:  UXTB            R0, R5
25CFE4:  POP             {R4,R5,R7,PC}
25CFE6:  CMP.W           R5, #0xD000; jumptable 0025CFD2 default case
25CFEA:  BNE             loc_25D018
25CFEC:  LDR             R0, [R4,#0x58]
25CFEE:  MOVW            R1, #0xD002
25CFF2:  MOVS            R5, #0
25CFF4:  CMP             R0, R1
25CFF6:  IT EQ
25CFF8:  MOVEQ           R5, #1
25CFFA:  B               loc_25D054
25CFFC:  VLDR            S0, [R4,#0x64]; jumptable 0025CFD2 case 49153
25D000:  B               loc_25D00A
25D002:  LDR             R5, [R4,#0x6C]; jumptable 0025CFD2 case 49154
25D004:  B               loc_25D054
25D006:  VLDR            S0, [R4,#0x68]; jumptable 0025CFD2 case 49155
25D00A:  VCMP.F32        S0, #0.0
25D00E:  VMRS            APSR_nzcv, FPSCR
25D012:  BEQ             loc_25D052
25D014:  MOVS            R5, #1
25D016:  B               loc_25D054
25D018:  LDR             R0, =(TrapALError_ptr - 0x25D01E)
25D01A:  ADD             R0, PC; TrapALError_ptr
25D01C:  LDR             R0, [R0]; TrapALError
25D01E:  LDRB            R0, [R0]
25D020:  CMP             R0, #0
25D022:  ITT NE
25D024:  MOVNE           R0, #5; sig
25D026:  BLXNE           raise
25D02A:  LDREX.W         R0, [R4,#0x50]
25D02E:  CBNZ            R0, loc_25D04A
25D030:  ADD.W           R0, R4, #0x50 ; 'P'
25D034:  MOVW            R1, #0xA002
25D038:  DMB.W           ISH
25D03C:  STREX.W         R2, R1, [R0]
25D040:  CBZ             R2, loc_25D04E
25D042:  LDREX.W         R2, [R0]
25D046:  CMP             R2, #0
25D048:  BEQ             loc_25D03C
25D04A:  CLREX.W
25D04E:  DMB.W           ISH
25D052:  MOVS            R5, #0
25D054:  MOV             R0, R4
25D056:  BLX             j_ALCcontext_DecRef
25D05A:  UXTB            R0, R5
25D05C:  POP             {R4,R5,R7,PC}
