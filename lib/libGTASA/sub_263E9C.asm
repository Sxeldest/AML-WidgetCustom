; =========================================================
; Game Engine Function: sub_263E9C
; Address            : 0x263E9C - 0x263EDE
; =========================================================

263E9C:  PUSH            {R4,R6,R7,LR}
263E9E:  ADD             R7, SP, #8
263EA0:  LDR             R0, =(TrapALError_ptr - 0x263EA8)
263EA2:  MOV             R4, R1
263EA4:  ADD             R0, PC; TrapALError_ptr
263EA6:  LDR             R0, [R0]; TrapALError
263EA8:  LDRB            R0, [R0]
263EAA:  CMP             R0, #0
263EAC:  ITT NE
263EAE:  MOVNE           R0, #5; sig
263EB0:  BLXNE           raise
263EB4:  LDREX.W         R0, [R4,#0x50]
263EB8:  CBNZ            R0, loc_263ED4
263EBA:  ADD.W           R0, R4, #0x50 ; 'P'
263EBE:  MOVW            R1, #0xA002
263EC2:  DMB.W           ISH
263EC6:  STREX.W         R2, R1, [R0]
263ECA:  CBZ             R2, loc_263ED8
263ECC:  LDREX.W         R2, [R0]
263ED0:  CMP             R2, #0
263ED2:  BEQ             loc_263EC6
263ED4:  CLREX.W
263ED8:  DMB.W           ISH
263EDC:  POP             {R4,R6,R7,PC}
