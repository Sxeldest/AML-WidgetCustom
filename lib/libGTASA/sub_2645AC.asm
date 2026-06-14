; =========================================================
; Game Engine Function: sub_2645AC
; Address            : 0x2645AC - 0x2645EE
; =========================================================

2645AC:  PUSH            {R4,R6,R7,LR}
2645AE:  ADD             R7, SP, #8
2645B0:  LDR             R0, =(TrapALError_ptr - 0x2645B8)
2645B2:  MOV             R4, R1
2645B4:  ADD             R0, PC; TrapALError_ptr
2645B6:  LDR             R0, [R0]; TrapALError
2645B8:  LDRB            R0, [R0]
2645BA:  CMP             R0, #0
2645BC:  ITT NE
2645BE:  MOVNE           R0, #5; sig
2645C0:  BLXNE           raise
2645C4:  LDREX.W         R0, [R4,#0x50]
2645C8:  CBNZ            R0, loc_2645E4
2645CA:  ADD.W           R0, R4, #0x50 ; 'P'
2645CE:  MOVW            R1, #0xA002
2645D2:  DMB.W           ISH
2645D6:  STREX.W         R2, R1, [R0]
2645DA:  CBZ             R2, loc_2645E8
2645DC:  LDREX.W         R2, [R0]
2645E0:  CMP             R2, #0
2645E2:  BEQ             loc_2645D6
2645E4:  CLREX.W
2645E8:  DMB.W           ISH
2645EC:  POP             {R4,R6,R7,PC}
