; =========================================================
; Game Engine Function: sub_264794
; Address            : 0x264794 - 0x2647D6
; =========================================================

264794:  PUSH            {R4,R6,R7,LR}
264796:  ADD             R7, SP, #8
264798:  LDR             R0, =(TrapALError_ptr - 0x2647A0)
26479A:  MOV             R4, R1
26479C:  ADD             R0, PC; TrapALError_ptr
26479E:  LDR             R0, [R0]; TrapALError
2647A0:  LDRB            R0, [R0]
2647A2:  CMP             R0, #0
2647A4:  ITT NE
2647A6:  MOVNE           R0, #5; sig
2647A8:  BLXNE           raise
2647AC:  LDREX.W         R0, [R4,#0x50]
2647B0:  CBNZ            R0, loc_2647CC
2647B2:  ADD.W           R0, R4, #0x50 ; 'P'
2647B6:  MOVW            R1, #0xA002
2647BA:  DMB.W           ISH
2647BE:  STREX.W         R2, R1, [R0]
2647C2:  CBZ             R2, loc_2647D0
2647C4:  LDREX.W         R2, [R0]
2647C8:  CMP             R2, #0
2647CA:  BEQ             loc_2647BE
2647CC:  CLREX.W
2647D0:  DMB.W           ISH
2647D4:  POP             {R4,R6,R7,PC}
