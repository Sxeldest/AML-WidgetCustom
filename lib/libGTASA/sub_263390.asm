; =========================================================
; Game Engine Function: sub_263390
; Address            : 0x263390 - 0x263414
; =========================================================

263390:  PUSH            {R4,R6,R7,LR}
263392:  ADD             R7, SP, #8
263394:  MOV             R4, R1
263396:  CMP             R2, #0xD
263398:  BNE             loc_2633D8
26339A:  CMP             R3, #1
26339C:  ITT LS
26339E:  STRBLS.W        R3, [R0,#0x34]
2633A2:  POPLS           {R4,R6,R7,PC}
2633A4:  LDR             R0, =(TrapALError_ptr - 0x2633AA)
2633A6:  ADD             R0, PC; TrapALError_ptr
2633A8:  LDR             R0, [R0]; TrapALError
2633AA:  LDRB            R0, [R0]
2633AC:  CMP             R0, #0
2633AE:  ITT NE
2633B0:  MOVNE           R0, #5; sig
2633B2:  BLXNE           raise
2633B6:  LDREX.W         R0, [R4,#0x50]
2633BA:  CBNZ            R0, loc_26340A
2633BC:  ADD.W           R0, R4, #0x50 ; 'P'
2633C0:  MOVW            R1, #0xA003
2633C4:  DMB.W           ISH
2633C8:  STREX.W         R2, R1, [R0]
2633CC:  CBZ             R2, loc_26340E
2633CE:  LDREX.W         R2, [R0]
2633D2:  CMP             R2, #0
2633D4:  BEQ             loc_2633C8
2633D6:  B               loc_26340A
2633D8:  LDR             R0, =(TrapALError_ptr - 0x2633DE)
2633DA:  ADD             R0, PC; TrapALError_ptr
2633DC:  LDR             R0, [R0]; TrapALError
2633DE:  LDRB            R0, [R0]
2633E0:  CMP             R0, #0
2633E2:  ITT NE
2633E4:  MOVNE           R0, #5; sig
2633E6:  BLXNE           raise
2633EA:  LDREX.W         R0, [R4,#0x50]
2633EE:  CBNZ            R0, loc_26340A
2633F0:  ADD.W           R0, R4, #0x50 ; 'P'
2633F4:  MOVW            R1, #0xA002
2633F8:  DMB.W           ISH
2633FC:  STREX.W         R2, R1, [R0]
263400:  CBZ             R2, loc_26340E
263402:  LDREX.W         R2, [R0]
263406:  CMP             R2, #0
263408:  BEQ             loc_2633FC
26340A:  CLREX.W
26340E:  DMB.W           ISH
263412:  POP             {R4,R6,R7,PC}
