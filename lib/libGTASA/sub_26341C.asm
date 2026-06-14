; =========================================================
; Game Engine Function: sub_26341C
; Address            : 0x26341C - 0x2634A2
; =========================================================

26341C:  PUSH            {R4,R6,R7,LR}
26341E:  ADD             R7, SP, #8
263420:  MOV             R4, R1
263422:  CMP             R2, #0xD
263424:  BNE             loc_263466
263426:  LDR             R1, [R3]
263428:  CMP             R1, #1
26342A:  ITT LS
26342C:  STRBLS.W        R1, [R0,#0x34]
263430:  POPLS           {R4,R6,R7,PC}
263432:  LDR             R0, =(TrapALError_ptr - 0x263438)
263434:  ADD             R0, PC; TrapALError_ptr
263436:  LDR             R0, [R0]; TrapALError
263438:  LDRB            R0, [R0]
26343A:  CMP             R0, #0
26343C:  ITT NE
26343E:  MOVNE           R0, #5; sig
263440:  BLXNE           raise
263444:  LDREX.W         R0, [R4,#0x50]
263448:  CBNZ            R0, loc_263498
26344A:  ADD.W           R0, R4, #0x50 ; 'P'
26344E:  MOVW            R1, #0xA003
263452:  DMB.W           ISH
263456:  STREX.W         R2, R1, [R0]
26345A:  CBZ             R2, loc_26349C
26345C:  LDREX.W         R2, [R0]
263460:  CMP             R2, #0
263462:  BEQ             loc_263456
263464:  B               loc_263498
263466:  LDR             R0, =(TrapALError_ptr - 0x26346C)
263468:  ADD             R0, PC; TrapALError_ptr
26346A:  LDR             R0, [R0]; TrapALError
26346C:  LDRB            R0, [R0]
26346E:  CMP             R0, #0
263470:  ITT NE
263472:  MOVNE           R0, #5; sig
263474:  BLXNE           raise
263478:  LDREX.W         R0, [R4,#0x50]
26347C:  CBNZ            R0, loc_263498
26347E:  ADD.W           R0, R4, #0x50 ; 'P'
263482:  MOVW            R1, #0xA002
263486:  DMB.W           ISH
26348A:  STREX.W         R2, R1, [R0]
26348E:  CBZ             R2, loc_26349C
263490:  LDREX.W         R2, [R0]
263494:  CMP             R2, #0
263496:  BEQ             loc_26348A
263498:  CLREX.W
26349C:  DMB.W           ISH
2634A0:  POP             {R4,R6,R7,PC}
