; =========================================================
; Game Engine Function: sub_2639F0
; Address            : 0x2639F0 - 0x263A3E
; =========================================================

2639F0:  PUSH            {R4,R6,R7,LR}
2639F2:  ADD             R7, SP, #8
2639F4:  MOV             R4, R1
2639F6:  CMP             R2, #0xD
2639F8:  ITTT EQ
2639FA:  LDRBEQ.W        R0, [R0,#0x34]
2639FE:  STREQ           R0, [R3]
263A00:  POPEQ           {R4,R6,R7,PC}
263A02:  LDR             R0, =(TrapALError_ptr - 0x263A08)
263A04:  ADD             R0, PC; TrapALError_ptr
263A06:  LDR             R0, [R0]; TrapALError
263A08:  LDRB            R0, [R0]
263A0A:  CMP             R0, #0
263A0C:  ITT NE
263A0E:  MOVNE           R0, #5; sig
263A10:  BLXNE           raise
263A14:  LDREX.W         R0, [R4,#0x50]
263A18:  CBNZ            R0, loc_263A34
263A1A:  ADD.W           R0, R4, #0x50 ; 'P'
263A1E:  MOVW            R1, #0xA002
263A22:  DMB.W           ISH
263A26:  STREX.W         R2, R1, [R0]
263A2A:  CBZ             R2, loc_263A38
263A2C:  LDREX.W         R2, [R0]
263A30:  CMP             R2, #0
263A32:  BEQ             loc_263A26
263A34:  CLREX.W
263A38:  DMB.W           ISH
263A3C:  POP             {R4,R6,R7,PC}
