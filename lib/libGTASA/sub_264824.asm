; =========================================================
; Game Engine Function: sub_264824
; Address            : 0x264824 - 0x264872
; =========================================================

264824:  PUSH            {R4,R6,R7,LR}
264826:  ADD             R7, SP, #8
264828:  MOV             R4, R1
26482A:  CMP             R2, #1
26482C:  ITTT EQ
26482E:  LDREQ.W         R0, [R0,#0x90]
264832:  STREQ           R0, [R3]
264834:  POPEQ           {R4,R6,R7,PC}
264836:  LDR             R0, =(TrapALError_ptr - 0x26483C)
264838:  ADD             R0, PC; TrapALError_ptr
26483A:  LDR             R0, [R0]; TrapALError
26483C:  LDRB            R0, [R0]
26483E:  CMP             R0, #0
264840:  ITT NE
264842:  MOVNE           R0, #5; sig
264844:  BLXNE           raise
264848:  LDREX.W         R0, [R4,#0x50]
26484C:  CBNZ            R0, loc_264868
26484E:  ADD.W           R0, R4, #0x50 ; 'P'
264852:  MOVW            R1, #0xA002
264856:  DMB.W           ISH
26485A:  STREX.W         R2, R1, [R0]
26485E:  CBZ             R2, loc_26486C
264860:  LDREX.W         R2, [R0]
264864:  CMP             R2, #0
264866:  BEQ             loc_26485A
264868:  CLREX.W
26486C:  DMB.W           ISH
264870:  POP             {R4,R6,R7,PC}
