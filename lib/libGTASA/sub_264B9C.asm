; =========================================================
; Game Engine Function: sub_264B9C
; Address            : 0x264B9C - 0x264C92
; =========================================================

264B9C:  PUSH            {R4,R6,R7,LR}
264B9E:  ADD             R7, SP, #8
264BA0:  VMOV            S0, R3
264BA4:  MOV             R4, R1
264BA6:  CMP             R2, #2
264BA8:  BEQ             loc_264C04
264BAA:  CMP             R2, #1
264BAC:  BNE             loc_264C56
264BAE:  VCMPE.F32       S0, #0.0
264BB2:  VMRS            APSR_nzcv, FPSCR
264BB6:  BLT             loc_264BCC
264BB8:  VMOV.F32        S2, #1.0
264BBC:  VCMPE.F32       S0, S2
264BC0:  VMRS            APSR_nzcv, FPSCR
264BC4:  ITT LE
264BC6:  VSTRLE          S0, [R0,#4]
264BCA:  POPLE           {R4,R6,R7,PC}
264BCC:  LDR             R0, =(TrapALError_ptr - 0x264BD2)
264BCE:  ADD             R0, PC; TrapALError_ptr
264BD0:  LDR             R0, [R0]; TrapALError
264BD2:  LDRB            R0, [R0]
264BD4:  CMP             R0, #0
264BD6:  ITT NE
264BD8:  MOVNE           R0, #5; sig
264BDA:  BLXNE           raise
264BDE:  LDREX.W         R0, [R4,#0x50]
264BE2:  CMP             R0, #0
264BE4:  BNE             loc_264C88
264BE6:  ADD.W           R0, R4, #0x50 ; 'P'
264BEA:  MOVW            R1, #0xA003
264BEE:  DMB.W           ISH
264BF2:  STREX.W         R2, R1, [R0]
264BF6:  CMP             R2, #0
264BF8:  BEQ             loc_264C8C
264BFA:  LDREX.W         R2, [R0]
264BFE:  CMP             R2, #0
264C00:  BEQ             loc_264BF2
264C02:  B               loc_264C88
264C04:  VCMPE.F32       S0, #0.0
264C08:  VMRS            APSR_nzcv, FPSCR
264C0C:  BLT             loc_264C22
264C0E:  VMOV.F32        S2, #1.0
264C12:  VCMPE.F32       S0, S2
264C16:  VMRS            APSR_nzcv, FPSCR
264C1A:  ITT LE
264C1C:  VSTRLE          S0, [R0,#8]
264C20:  POPLE           {R4,R6,R7,PC}
264C22:  LDR             R0, =(TrapALError_ptr - 0x264C28)
264C24:  ADD             R0, PC; TrapALError_ptr
264C26:  LDR             R0, [R0]; TrapALError
264C28:  LDRB            R0, [R0]
264C2A:  CMP             R0, #0
264C2C:  ITT NE
264C2E:  MOVNE           R0, #5; sig
264C30:  BLXNE           raise
264C34:  LDREX.W         R0, [R4,#0x50]
264C38:  CBNZ            R0, loc_264C88
264C3A:  ADD.W           R0, R4, #0x50 ; 'P'
264C3E:  MOVW            R1, #0xA003
264C42:  DMB.W           ISH
264C46:  STREX.W         R2, R1, [R0]
264C4A:  CBZ             R2, loc_264C8C
264C4C:  LDREX.W         R2, [R0]
264C50:  CMP             R2, #0
264C52:  BEQ             loc_264C46
264C54:  B               loc_264C88
264C56:  LDR             R0, =(TrapALError_ptr - 0x264C5C)
264C58:  ADD             R0, PC; TrapALError_ptr
264C5A:  LDR             R0, [R0]; TrapALError
264C5C:  LDRB            R0, [R0]
264C5E:  CMP             R0, #0
264C60:  ITT NE
264C62:  MOVNE           R0, #5; sig
264C64:  BLXNE           raise
264C68:  LDREX.W         R0, [R4,#0x50]
264C6C:  CBNZ            R0, loc_264C88
264C6E:  ADD.W           R0, R4, #0x50 ; 'P'
264C72:  MOVW            R1, #0xA002
264C76:  DMB.W           ISH
264C7A:  STREX.W         R2, R1, [R0]
264C7E:  CBZ             R2, loc_264C8C
264C80:  LDREX.W         R2, [R0]
264C84:  CMP             R2, #0
264C86:  BEQ             loc_264C7A
264C88:  CLREX.W
264C8C:  DMB.W           ISH
264C90:  POP             {R4,R6,R7,PC}
