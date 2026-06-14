; =========================================================
; Game Engine Function: sub_26318C
; Address            : 0x26318C - 0x2631DA
; =========================================================

26318C:  PUSH            {R4,R6,R7,LR}
26318E:  ADD             R7, SP, #8
263190:  MOV             R4, R1
263192:  CMP             R2, #0x17
263194:  ITTT EQ
263196:  LDRBEQ.W        R0, [R0,#0x34]
26319A:  STREQ           R0, [R3]
26319C:  POPEQ           {R4,R6,R7,PC}
26319E:  LDR             R0, =(TrapALError_ptr - 0x2631A4)
2631A0:  ADD             R0, PC; TrapALError_ptr
2631A2:  LDR             R0, [R0]; TrapALError
2631A4:  LDRB            R0, [R0]
2631A6:  CMP             R0, #0
2631A8:  ITT NE
2631AA:  MOVNE           R0, #5; sig
2631AC:  BLXNE           raise
2631B0:  LDREX.W         R0, [R4,#0x50]
2631B4:  CBNZ            R0, loc_2631D0
2631B6:  ADD.W           R0, R4, #0x50 ; 'P'
2631BA:  MOVW            R1, #0xA002
2631BE:  DMB.W           ISH
2631C2:  STREX.W         R2, R1, [R0]
2631C6:  CBZ             R2, loc_2631D4
2631C8:  LDREX.W         R2, [R0]
2631CC:  CMP             R2, #0
2631CE:  BEQ             loc_2631C2
2631D0:  CLREX.W
2631D4:  DMB.W           ISH
2631D8:  POP             {R4,R6,R7,PC}
