; =========================================================
; Game Engine Function: sub_2626D0
; Address            : 0x2626D0 - 0x262754
; =========================================================

2626D0:  PUSH            {R4,R6,R7,LR}
2626D2:  ADD             R7, SP, #8
2626D4:  MOV             R4, R1
2626D6:  CMP             R2, #0x17
2626D8:  BNE             loc_262718
2626DA:  CMP             R3, #1
2626DC:  ITT LS
2626DE:  STRBLS.W        R3, [R0,#0x34]
2626E2:  POPLS           {R4,R6,R7,PC}
2626E4:  LDR             R0, =(TrapALError_ptr - 0x2626EA)
2626E6:  ADD             R0, PC; TrapALError_ptr
2626E8:  LDR             R0, [R0]; TrapALError
2626EA:  LDRB            R0, [R0]
2626EC:  CMP             R0, #0
2626EE:  ITT NE
2626F0:  MOVNE           R0, #5; sig
2626F2:  BLXNE           raise
2626F6:  LDREX.W         R0, [R4,#0x50]
2626FA:  CBNZ            R0, loc_26274A
2626FC:  ADD.W           R0, R4, #0x50 ; 'P'
262700:  MOVW            R1, #0xA003
262704:  DMB.W           ISH
262708:  STREX.W         R2, R1, [R0]
26270C:  CBZ             R2, loc_26274E
26270E:  LDREX.W         R2, [R0]
262712:  CMP             R2, #0
262714:  BEQ             loc_262708
262716:  B               loc_26274A
262718:  LDR             R0, =(TrapALError_ptr - 0x26271E)
26271A:  ADD             R0, PC; TrapALError_ptr
26271C:  LDR             R0, [R0]; TrapALError
26271E:  LDRB            R0, [R0]
262720:  CMP             R0, #0
262722:  ITT NE
262724:  MOVNE           R0, #5; sig
262726:  BLXNE           raise
26272A:  LDREX.W         R0, [R4,#0x50]
26272E:  CBNZ            R0, loc_26274A
262730:  ADD.W           R0, R4, #0x50 ; 'P'
262734:  MOVW            R1, #0xA002
262738:  DMB.W           ISH
26273C:  STREX.W         R2, R1, [R0]
262740:  CBZ             R2, loc_26274E
262742:  LDREX.W         R2, [R0]
262746:  CMP             R2, #0
262748:  BEQ             loc_26273C
26274A:  CLREX.W
26274E:  DMB.W           ISH
262752:  POP             {R4,R6,R7,PC}
