; =========================================================
; Game Engine Function: sub_26509C
; Address            : 0x26509C - 0x2650DE
; =========================================================

26509C:  PUSH            {R4,R6,R7,LR}
26509E:  ADD             R7, SP, #8
2650A0:  LDR             R0, =(TrapALError_ptr - 0x2650A8)
2650A2:  MOV             R4, R1
2650A4:  ADD             R0, PC; TrapALError_ptr
2650A6:  LDR             R0, [R0]; TrapALError
2650A8:  LDRB            R0, [R0]
2650AA:  CMP             R0, #0
2650AC:  ITT NE
2650AE:  MOVNE           R0, #5; sig
2650B0:  BLXNE           raise
2650B4:  LDREX.W         R0, [R4,#0x50]
2650B8:  CBNZ            R0, loc_2650D4
2650BA:  ADD.W           R0, R4, #0x50 ; 'P'
2650BE:  MOVW            R1, #0xA002
2650C2:  DMB.W           ISH
2650C6:  STREX.W         R2, R1, [R0]
2650CA:  CBZ             R2, loc_2650D8
2650CC:  LDREX.W         R2, [R0]
2650D0:  CMP             R2, #0
2650D2:  BEQ             loc_2650C6
2650D4:  CLREX.W
2650D8:  DMB.W           ISH
2650DC:  POP             {R4,R6,R7,PC}
