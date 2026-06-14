; =========================================================
; Game Engine Function: sub_264B0C
; Address            : 0x264B0C - 0x264B4E
; =========================================================

264B0C:  PUSH            {R4,R6,R7,LR}
264B0E:  ADD             R7, SP, #8
264B10:  LDR             R0, =(TrapALError_ptr - 0x264B18)
264B12:  MOV             R4, R1
264B14:  ADD             R0, PC; TrapALError_ptr
264B16:  LDR             R0, [R0]; TrapALError
264B18:  LDRB            R0, [R0]
264B1A:  CMP             R0, #0
264B1C:  ITT NE
264B1E:  MOVNE           R0, #5; sig
264B20:  BLXNE           raise
264B24:  LDREX.W         R0, [R4,#0x50]
264B28:  CBNZ            R0, loc_264B44
264B2A:  ADD.W           R0, R4, #0x50 ; 'P'
264B2E:  MOVW            R1, #0xA002
264B32:  DMB.W           ISH
264B36:  STREX.W         R2, R1, [R0]
264B3A:  CBZ             R2, loc_264B48
264B3C:  LDREX.W         R2, [R0]
264B40:  CMP             R2, #0
264B42:  BEQ             loc_264B36
264B44:  CLREX.W
264B48:  DMB.W           ISH
264B4C:  POP             {R4,R6,R7,PC}
