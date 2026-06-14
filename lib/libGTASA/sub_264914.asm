; =========================================================
; Game Engine Function: sub_264914
; Address            : 0x264914 - 0x264956
; =========================================================

264914:  PUSH            {R4,R6,R7,LR}
264916:  ADD             R7, SP, #8
264918:  LDR             R0, =(TrapALError_ptr - 0x264920)
26491A:  MOV             R4, R1
26491C:  ADD             R0, PC; TrapALError_ptr
26491E:  LDR             R0, [R0]; TrapALError
264920:  LDRB            R0, [R0]
264922:  CMP             R0, #0
264924:  ITT NE
264926:  MOVNE           R0, #5; sig
264928:  BLXNE           raise
26492C:  LDREX.W         R0, [R4,#0x50]
264930:  CBNZ            R0, loc_26494C
264932:  ADD.W           R0, R4, #0x50 ; 'P'
264936:  MOVW            R1, #0xA002
26493A:  DMB.W           ISH
26493E:  STREX.W         R2, R1, [R0]
264942:  CBZ             R2, loc_264950
264944:  LDREX.W         R2, [R0]
264948:  CMP             R2, #0
26494A:  BEQ             loc_26493E
26494C:  CLREX.W
264950:  DMB.W           ISH
264954:  POP             {R4,R6,R7,PC}
