; =========================================================
; Game Engine Function: sub_26399C
; Address            : 0x26399C - 0x2639EA
; =========================================================

26399C:  PUSH            {R4,R6,R7,LR}
26399E:  ADD             R7, SP, #8
2639A0:  MOV             R4, R1
2639A2:  CMP             R2, #0xD
2639A4:  ITTT EQ
2639A6:  LDRBEQ.W        R0, [R0,#0x34]
2639AA:  STREQ           R0, [R3]
2639AC:  POPEQ           {R4,R6,R7,PC}
2639AE:  LDR             R0, =(TrapALError_ptr - 0x2639B4)
2639B0:  ADD             R0, PC; TrapALError_ptr
2639B2:  LDR             R0, [R0]; TrapALError
2639B4:  LDRB            R0, [R0]
2639B6:  CMP             R0, #0
2639B8:  ITT NE
2639BA:  MOVNE           R0, #5; sig
2639BC:  BLXNE           raise
2639C0:  LDREX.W         R0, [R4,#0x50]
2639C4:  CBNZ            R0, loc_2639E0
2639C6:  ADD.W           R0, R4, #0x50 ; 'P'
2639CA:  MOVW            R1, #0xA002
2639CE:  DMB.W           ISH
2639D2:  STREX.W         R2, R1, [R0]
2639D6:  CBZ             R2, loc_2639E4
2639D8:  LDREX.W         R2, [R0]
2639DC:  CMP             R2, #0
2639DE:  BEQ             loc_2639D2
2639E0:  CLREX.W
2639E4:  DMB.W           ISH
2639E8:  POP             {R4,R6,R7,PC}
