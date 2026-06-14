; =========================================================
; Game Engine Function: sub_263FD4
; Address            : 0x263FD4 - 0x264072
; =========================================================

263FD4:  PUSH            {R4,R6,R7,LR}
263FD6:  ADD             R7, SP, #8
263FD8:  MOV             R4, R1
263FDA:  SUBS            R1, R2, #1
263FDC:  CMP             R1, #2
263FDE:  BCS             loc_263FF4
263FE0:  VMOV            S0, R3
263FE4:  MOV             R1, R4
263FE6:  VCVT.F32.S32    S0, S0
263FEA:  VMOV            R3, S0
263FEE:  POP.W           {R4,R6,R7,LR}
263FF2:  B               sub_2641F4
263FF4:  CMP             R2, #3
263FF6:  BNE             loc_264036
263FF8:  CMP             R3, #2
263FFA:  ITT LS
263FFC:  STRLS.W         R3, [R0,#0x8C]
264000:  POPLS           {R4,R6,R7,PC}
264002:  LDR             R0, =(TrapALError_ptr - 0x264008)
264004:  ADD             R0, PC; TrapALError_ptr
264006:  LDR             R0, [R0]; TrapALError
264008:  LDRB            R0, [R0]
26400A:  CMP             R0, #0
26400C:  ITT NE
26400E:  MOVNE           R0, #5; sig
264010:  BLXNE           raise
264014:  LDREX.W         R0, [R4,#0x50]
264018:  CBNZ            R0, loc_264068
26401A:  ADD.W           R0, R4, #0x50 ; 'P'
26401E:  MOVW            R1, #0xA003
264022:  DMB.W           ISH
264026:  STREX.W         R2, R1, [R0]
26402A:  CBZ             R2, loc_26406C
26402C:  LDREX.W         R2, [R0]
264030:  CMP             R2, #0
264032:  BEQ             loc_264026
264034:  B               loc_264068
264036:  LDR             R0, =(TrapALError_ptr - 0x26403C)
264038:  ADD             R0, PC; TrapALError_ptr
26403A:  LDR             R0, [R0]; TrapALError
26403C:  LDRB            R0, [R0]
26403E:  CMP             R0, #0
264040:  ITT NE
264042:  MOVNE           R0, #5; sig
264044:  BLXNE           raise
264048:  LDREX.W         R0, [R4,#0x50]
26404C:  CBNZ            R0, loc_264068
26404E:  ADD.W           R0, R4, #0x50 ; 'P'
264052:  MOVW            R1, #0xA002
264056:  DMB.W           ISH
26405A:  STREX.W         R2, R1, [R0]
26405E:  CBZ             R2, loc_26406C
264060:  LDREX.W         R2, [R0]
264064:  CMP             R2, #0
264066:  BEQ             loc_26405A
264068:  CLREX.W
26406C:  DMB.W           ISH
264070:  POP             {R4,R6,R7,PC}
