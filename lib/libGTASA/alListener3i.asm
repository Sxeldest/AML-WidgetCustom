; =========================================================
; Game Engine Function: alListener3i
; Address            : 0x2556C0 - 0x25574A
; =========================================================

2556C0:  PUSH            {R4,R6,R7,LR}
2556C2:  ADD             R7, SP, #8
2556C4:  ORR.W           R12, R0, #2
2556C8:  MOVW            R4, #0x1006
2556CC:  CMP             R12, R4
2556CE:  BNE             loc_2556FA
2556D0:  VMOV            S0, R1
2556D4:  VMOV            S2, R2
2556D8:  VMOV            S4, R3
2556DC:  VCVT.F32.S32    S0, S0
2556E0:  VCVT.F32.S32    S2, S2
2556E4:  VCVT.F32.S32    S4, S4
2556E8:  VMOV            R1, S0
2556EC:  VMOV            R2, S2
2556F0:  VMOV            R3, S4
2556F4:  POP.W           {R4,R6,R7,LR}
2556F8:  B               alListener3f
2556FA:  BLX             j_GetContextRef
2556FE:  MOV             R4, R0
255700:  CMP             R4, #0
255702:  IT EQ
255704:  POPEQ           {R4,R6,R7,PC}
255706:  LDR             R0, =(TrapALError_ptr - 0x25570C)
255708:  ADD             R0, PC; TrapALError_ptr
25570A:  LDR             R0, [R0]; TrapALError
25570C:  LDRB            R0, [R0]
25570E:  CMP             R0, #0
255710:  ITT NE
255712:  MOVNE           R0, #5; sig
255714:  BLXNE           raise
255718:  LDREX.W         R0, [R4,#0x50]
25571C:  CBNZ            R0, loc_255738
25571E:  ADD.W           R0, R4, #0x50 ; 'P'
255722:  MOVW            R1, #0xA002
255726:  DMB.W           ISH
25572A:  STREX.W         R2, R1, [R0]
25572E:  CBZ             R2, loc_25573C
255730:  LDREX.W         R2, [R0]
255734:  CMP             R2, #0
255736:  BEQ             loc_25572A
255738:  CLREX.W
25573C:  DMB.W           ISH
255740:  MOV             R0, R4
255742:  POP.W           {R4,R6,R7,LR}
255746:  B.W             ALCcontext_DecRef
