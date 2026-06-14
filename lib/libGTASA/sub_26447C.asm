; =========================================================
; Game Engine Function: sub_26447C
; Address            : 0x26447C - 0x2644E6
; =========================================================

26447C:  PUSH            {R4,R6,R7,LR}
26447E:  ADD             R7, SP, #8
264480:  MOV             R4, R1
264482:  CMP             R2, #3
264484:  BEQ             loc_264494
264486:  CMP             R2, #2
264488:  BEQ             loc_26449C
26448A:  CMP             R2, #1
26448C:  BNE             loc_2644AA
26448E:  VLDR            S0, [R0,#0x84]
264492:  B               loc_2644A0
264494:  LDR.W           R0, [R0,#0x8C]
264498:  STR             R0, [R3]
26449A:  POP             {R4,R6,R7,PC}
26449C:  VLDR            S0, [R0,#0x88]
2644A0:  VCVT.S32.F32    S0, S0
2644A4:  VSTR            S0, [R3]
2644A8:  POP             {R4,R6,R7,PC}
2644AA:  LDR             R0, =(TrapALError_ptr - 0x2644B0)
2644AC:  ADD             R0, PC; TrapALError_ptr
2644AE:  LDR             R0, [R0]; TrapALError
2644B0:  LDRB            R0, [R0]
2644B2:  CMP             R0, #0
2644B4:  ITT NE
2644B6:  MOVNE           R0, #5; sig
2644B8:  BLXNE           raise
2644BC:  LDREX.W         R0, [R4,#0x50]
2644C0:  CBNZ            R0, loc_2644DC
2644C2:  ADD.W           R0, R4, #0x50 ; 'P'
2644C6:  MOVW            R1, #0xA002
2644CA:  DMB.W           ISH
2644CE:  STREX.W         R2, R1, [R0]
2644D2:  CBZ             R2, loc_2644E0
2644D4:  LDREX.W         R2, [R0]
2644D8:  CMP             R2, #0
2644DA:  BEQ             loc_2644CE
2644DC:  CLREX.W
2644E0:  DMB.W           ISH
2644E4:  POP             {R4,R6,R7,PC}
