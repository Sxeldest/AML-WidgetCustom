; =========================================================
; Game Engine Function: sub_264878
; Address            : 0x264878 - 0x2648C6
; =========================================================

264878:  PUSH            {R4,R6,R7,LR}
26487A:  ADD             R7, SP, #8
26487C:  MOV             R4, R1
26487E:  CMP             R2, #1
264880:  ITTT EQ
264882:  LDREQ.W         R0, [R0,#0x90]
264886:  STREQ           R0, [R3]
264888:  POPEQ           {R4,R6,R7,PC}
26488A:  LDR             R0, =(TrapALError_ptr - 0x264890)
26488C:  ADD             R0, PC; TrapALError_ptr
26488E:  LDR             R0, [R0]; TrapALError
264890:  LDRB            R0, [R0]
264892:  CMP             R0, #0
264894:  ITT NE
264896:  MOVNE           R0, #5; sig
264898:  BLXNE           raise
26489C:  LDREX.W         R0, [R4,#0x50]
2648A0:  CBNZ            R0, loc_2648BC
2648A2:  ADD.W           R0, R4, #0x50 ; 'P'
2648A6:  MOVW            R1, #0xA002
2648AA:  DMB.W           ISH
2648AE:  STREX.W         R2, R1, [R0]
2648B2:  CBZ             R2, loc_2648C0
2648B4:  LDREX.W         R2, [R0]
2648B8:  CMP             R2, #0
2648BA:  BEQ             loc_2648AE
2648BC:  CLREX.W
2648C0:  DMB.W           ISH
2648C4:  POP             {R4,R6,R7,PC}
