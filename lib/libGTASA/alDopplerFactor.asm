; =========================================================
; Game Engine Function: alDopplerFactor
; Address            : 0x25D870 - 0x25D8F0
; =========================================================

25D870:  PUSH            {R4,R5,R7,LR}
25D872:  ADD             R7, SP, #8
25D874:  MOV             R5, R0
25D876:  BLX             j_GetContextRef
25D87A:  MOV             R4, R0
25D87C:  CMP             R4, #0
25D87E:  IT EQ
25D880:  POPEQ           {R4,R5,R7,PC}
25D882:  VMOV            S0, R5
25D886:  VCMPE.F32       S0, #0.0
25D88A:  VMRS            APSR_nzcv, FPSCR
25D88E:  BLT             loc_25D8AC
25D890:  VABS.F32        S2, S0
25D894:  VLDR            S4, =+Inf
25D898:  VCMP.F32        S2, S4
25D89C:  VMRS            APSR_nzcv, FPSCR
25D8A0:  BEQ             loc_25D8AC
25D8A2:  MOVS            R0, #1
25D8A4:  VSTR            S0, [R4,#0x60]
25D8A8:  STR             R0, [R4,#0x54]
25D8AA:  B               loc_25D8E6
25D8AC:  LDR             R0, =(TrapALError_ptr - 0x25D8B2)
25D8AE:  ADD             R0, PC; TrapALError_ptr
25D8B0:  LDR             R0, [R0]; TrapALError
25D8B2:  LDRB            R0, [R0]
25D8B4:  CMP             R0, #0
25D8B6:  ITT NE
25D8B8:  MOVNE           R0, #5; sig
25D8BA:  BLXNE           raise
25D8BE:  LDREX.W         R0, [R4,#0x50]
25D8C2:  CBNZ            R0, loc_25D8DE
25D8C4:  ADD.W           R0, R4, #0x50 ; 'P'
25D8C8:  MOVW            R1, #0xA003
25D8CC:  DMB.W           ISH
25D8D0:  STREX.W         R2, R1, [R0]
25D8D4:  CBZ             R2, loc_25D8E2
25D8D6:  LDREX.W         R2, [R0]
25D8DA:  CMP             R2, #0
25D8DC:  BEQ             loc_25D8D0
25D8DE:  CLREX.W
25D8E2:  DMB.W           ISH
25D8E6:  MOV             R0, R4
25D8E8:  POP.W           {R4,R5,R7,LR}
25D8EC:  B.W             ALCcontext_DecRef
