; =========================================================
; Game Engine Function: sub_26495C
; Address            : 0x26495C - 0x26499E
; =========================================================

26495C:  PUSH            {R4,R6,R7,LR}
26495E:  ADD             R7, SP, #8
264960:  LDR             R0, =(TrapALError_ptr - 0x264968)
264962:  MOV             R4, R1
264964:  ADD             R0, PC; TrapALError_ptr
264966:  LDR             R0, [R0]; TrapALError
264968:  LDRB            R0, [R0]
26496A:  CMP             R0, #0
26496C:  ITT NE
26496E:  MOVNE           R0, #5; sig
264970:  BLXNE           raise
264974:  LDREX.W         R0, [R4,#0x50]
264978:  CBNZ            R0, loc_264994
26497A:  ADD.W           R0, R4, #0x50 ; 'P'
26497E:  MOVW            R1, #0xA002
264982:  DMB.W           ISH
264986:  STREX.W         R2, R1, [R0]
26498A:  CBZ             R2, loc_264998
26498C:  LDREX.W         R2, [R0]
264990:  CMP             R2, #0
264992:  BEQ             loc_264986
264994:  CLREX.W
264998:  DMB.W           ISH
26499C:  POP             {R4,R6,R7,PC}
