; =========================================================
; Game Engine Function: sub_2631E0
; Address            : 0x2631E0 - 0x26322E
; =========================================================

2631E0:  PUSH            {R4,R6,R7,LR}
2631E2:  ADD             R7, SP, #8
2631E4:  MOV             R4, R1
2631E6:  CMP             R2, #0x17
2631E8:  ITTT EQ
2631EA:  LDRBEQ.W        R0, [R0,#0x34]
2631EE:  STREQ           R0, [R3]
2631F0:  POPEQ           {R4,R6,R7,PC}
2631F2:  LDR             R0, =(TrapALError_ptr - 0x2631F8)
2631F4:  ADD             R0, PC; TrapALError_ptr
2631F6:  LDR             R0, [R0]; TrapALError
2631F8:  LDRB            R0, [R0]
2631FA:  CMP             R0, #0
2631FC:  ITT NE
2631FE:  MOVNE           R0, #5; sig
263200:  BLXNE           raise
263204:  LDREX.W         R0, [R4,#0x50]
263208:  CBNZ            R0, loc_263224
26320A:  ADD.W           R0, R4, #0x50 ; 'P'
26320E:  MOVW            R1, #0xA002
263212:  DMB.W           ISH
263216:  STREX.W         R2, R1, [R0]
26321A:  CBZ             R2, loc_263228
26321C:  LDREX.W         R2, [R0]
263220:  CMP             R2, #0
263222:  BEQ             loc_263216
263224:  CLREX.W
263228:  DMB.W           ISH
26322C:  POP             {R4,R6,R7,PC}
