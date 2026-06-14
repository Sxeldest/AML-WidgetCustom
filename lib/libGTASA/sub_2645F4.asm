; =========================================================
; Game Engine Function: sub_2645F4
; Address            : 0x2645F4 - 0x264636
; =========================================================

2645F4:  PUSH            {R4,R6,R7,LR}
2645F6:  ADD             R7, SP, #8
2645F8:  LDR             R0, =(TrapALError_ptr - 0x264600)
2645FA:  MOV             R4, R1
2645FC:  ADD             R0, PC; TrapALError_ptr
2645FE:  LDR             R0, [R0]; TrapALError
264600:  LDRB            R0, [R0]
264602:  CMP             R0, #0
264604:  ITT NE
264606:  MOVNE           R0, #5; sig
264608:  BLXNE           raise
26460C:  LDREX.W         R0, [R4,#0x50]
264610:  CBNZ            R0, loc_26462C
264612:  ADD.W           R0, R4, #0x50 ; 'P'
264616:  MOVW            R1, #0xA002
26461A:  DMB.W           ISH
26461E:  STREX.W         R2, R1, [R0]
264622:  CBZ             R2, loc_264630
264624:  LDREX.W         R2, [R0]
264628:  CMP             R2, #0
26462A:  BEQ             loc_26461E
26462C:  CLREX.W
264630:  DMB.W           ISH
264634:  POP             {R4,R6,R7,PC}
