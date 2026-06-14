; =========================================================
; Game Engine Function: sub_2644EC
; Address            : 0x2644EC - 0x264546
; =========================================================

2644EC:  PUSH            {R4,R6,R7,LR}
2644EE:  ADD             R7, SP, #8
2644F0:  MOV             R4, R1
2644F2:  CMP             R2, #2
2644F4:  BEQ             loc_26453E
2644F6:  CMP             R2, #1
2644F8:  ITTT EQ
2644FA:  LDREQ.W         R0, [R0,#0x84]
2644FE:  STREQ           R0, [R3]
264500:  POPEQ           {R4,R6,R7,PC}
264502:  LDR             R0, =(TrapALError_ptr - 0x264508)
264504:  ADD             R0, PC; TrapALError_ptr
264506:  LDR             R0, [R0]; TrapALError
264508:  LDRB            R0, [R0]
26450A:  CMP             R0, #0
26450C:  ITT NE
26450E:  MOVNE           R0, #5; sig
264510:  BLXNE           raise
264514:  LDREX.W         R0, [R4,#0x50]
264518:  CBNZ            R0, loc_264534
26451A:  ADD.W           R0, R4, #0x50 ; 'P'
26451E:  MOVW            R1, #0xA002
264522:  DMB.W           ISH
264526:  STREX.W         R2, R1, [R0]
26452A:  CBZ             R2, loc_264538
26452C:  LDREX.W         R2, [R0]
264530:  CMP             R2, #0
264532:  BEQ             loc_264526
264534:  CLREX.W
264538:  DMB.W           ISH
26453C:  POP             {R4,R6,R7,PC}
26453E:  LDR.W           R0, [R0,#0x88]
264542:  STR             R0, [R3]
264544:  POP             {R4,R6,R7,PC}
