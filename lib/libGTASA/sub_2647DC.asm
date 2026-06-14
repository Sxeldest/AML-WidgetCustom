; =========================================================
; Game Engine Function: sub_2647DC
; Address            : 0x2647DC - 0x26481E
; =========================================================

2647DC:  PUSH            {R4,R6,R7,LR}
2647DE:  ADD             R7, SP, #8
2647E0:  LDR             R0, =(TrapALError_ptr - 0x2647E8)
2647E2:  MOV             R4, R1
2647E4:  ADD             R0, PC; TrapALError_ptr
2647E6:  LDR             R0, [R0]; TrapALError
2647E8:  LDRB            R0, [R0]
2647EA:  CMP             R0, #0
2647EC:  ITT NE
2647EE:  MOVNE           R0, #5; sig
2647F0:  BLXNE           raise
2647F4:  LDREX.W         R0, [R4,#0x50]
2647F8:  CBNZ            R0, loc_264814
2647FA:  ADD.W           R0, R4, #0x50 ; 'P'
2647FE:  MOVW            R1, #0xA002
264802:  DMB.W           ISH
264806:  STREX.W         R2, R1, [R0]
26480A:  CBZ             R2, loc_264818
26480C:  LDREX.W         R2, [R0]
264810:  CMP             R2, #0
264812:  BEQ             loc_264806
264814:  CLREX.W
264818:  DMB.W           ISH
26481C:  POP             {R4,R6,R7,PC}
