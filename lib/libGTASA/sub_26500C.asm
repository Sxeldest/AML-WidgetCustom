; =========================================================
; Game Engine Function: sub_26500C
; Address            : 0x26500C - 0x26504E
; =========================================================

26500C:  PUSH            {R4,R6,R7,LR}
26500E:  ADD             R7, SP, #8
265010:  LDR             R0, =(TrapALError_ptr - 0x265018)
265012:  MOV             R4, R1
265014:  ADD             R0, PC; TrapALError_ptr
265016:  LDR             R0, [R0]; TrapALError
265018:  LDRB            R0, [R0]
26501A:  CMP             R0, #0
26501C:  ITT NE
26501E:  MOVNE           R0, #5; sig
265020:  BLXNE           raise
265024:  LDREX.W         R0, [R4,#0x50]
265028:  CBNZ            R0, loc_265044
26502A:  ADD.W           R0, R4, #0x50 ; 'P'
26502E:  MOVW            R1, #0xA002
265032:  DMB.W           ISH
265036:  STREX.W         R2, R1, [R0]
26503A:  CBZ             R2, loc_265048
26503C:  LDREX.W         R2, [R0]
265040:  CMP             R2, #0
265042:  BEQ             loc_265036
265044:  CLREX.W
265048:  DMB.W           ISH
26504C:  POP             {R4,R6,R7,PC}
