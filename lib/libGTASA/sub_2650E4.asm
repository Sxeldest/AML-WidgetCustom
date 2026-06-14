; =========================================================
; Game Engine Function: sub_2650E4
; Address            : 0x2650E4 - 0x265126
; =========================================================

2650E4:  PUSH            {R4,R6,R7,LR}
2650E6:  ADD             R7, SP, #8
2650E8:  LDR             R0, =(TrapALError_ptr - 0x2650F0)
2650EA:  MOV             R4, R1
2650EC:  ADD             R0, PC; TrapALError_ptr
2650EE:  LDR             R0, [R0]; TrapALError
2650F0:  LDRB            R0, [R0]
2650F2:  CMP             R0, #0
2650F4:  ITT NE
2650F6:  MOVNE           R0, #5; sig
2650F8:  BLXNE           raise
2650FC:  LDREX.W         R0, [R4,#0x50]
265100:  CBNZ            R0, loc_26511C
265102:  ADD.W           R0, R4, #0x50 ; 'P'
265106:  MOVW            R1, #0xA002
26510A:  DMB.W           ISH
26510E:  STREX.W         R2, R1, [R0]
265112:  CBZ             R2, loc_265120
265114:  LDREX.W         R2, [R0]
265118:  CMP             R2, #0
26511A:  BEQ             loc_26510E
26511C:  CLREX.W
265120:  DMB.W           ISH
265124:  POP             {R4,R6,R7,PC}
