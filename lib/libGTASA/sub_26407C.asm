; =========================================================
; Game Engine Function: sub_26407C
; Address            : 0x26407C - 0x2641E0
; =========================================================

26407C:  PUSH            {R4,R6,R7,LR}
26407E:  ADD             R7, SP, #8
264080:  MOV             R4, R1
264082:  LDR             R1, [R3]
264084:  SUBS            R3, R2, #1
264086:  CMP             R3, #2
264088:  BCS             loc_2640E4
26408A:  VMOV            S0, R1
26408E:  CMP             R2, #2
264090:  VCVT.F32.S32    S0, S0
264094:  BEQ             loc_264162
264096:  CMP             R2, #1
264098:  BNE.W           loc_2641A4
26409C:  CMP.W           R1, #0x1F40
2640A0:  ITT LS
2640A2:  VSTRLS          S0, [R0,#0x84]
2640A6:  POPLS           {R4,R6,R7,PC}
2640A8:  LDR             R0, =(TrapALError_ptr - 0x2640AE)
2640AA:  ADD             R0, PC; TrapALError_ptr
2640AC:  LDR             R0, [R0]; TrapALError
2640AE:  LDRB            R0, [R0]
2640B0:  CMP             R0, #0
2640B2:  ITT NE
2640B4:  MOVNE           R0, #5; sig
2640B6:  BLXNE           raise
2640BA:  LDREX.W         R0, [R4,#0x50]
2640BE:  CMP             R0, #0
2640C0:  BNE.W           loc_2641D6
2640C4:  ADD.W           R0, R4, #0x50 ; 'P'
2640C8:  MOVW            R1, #0xA003
2640CC:  DMB.W           ISH
2640D0:  STREX.W         R2, R1, [R0]
2640D4:  CMP             R2, #0
2640D6:  BEQ.W           loc_2641DA
2640DA:  LDREX.W         R2, [R0]
2640DE:  CMP             R2, #0
2640E0:  BEQ             loc_2640D0
2640E2:  B               loc_2641D6
2640E4:  CMP             R2, #3
2640E6:  BNE             loc_26412A
2640E8:  CMP             R1, #2
2640EA:  ITT LS
2640EC:  STRLS.W         R1, [R0,#0x8C]
2640F0:  POPLS           {R4,R6,R7,PC}
2640F2:  LDR             R0, =(TrapALError_ptr - 0x2640F8)
2640F4:  ADD             R0, PC; TrapALError_ptr
2640F6:  LDR             R0, [R0]; TrapALError
2640F8:  LDRB            R0, [R0]
2640FA:  CMP             R0, #0
2640FC:  ITT NE
2640FE:  MOVNE           R0, #5; sig
264100:  BLXNE           raise
264104:  LDREX.W         R0, [R4,#0x50]
264108:  CMP             R0, #0
26410A:  BNE             loc_2641D6
26410C:  ADD.W           R0, R4, #0x50 ; 'P'
264110:  MOVW            R1, #0xA003
264114:  DMB.W           ISH
264118:  STREX.W         R2, R1, [R0]
26411C:  CMP             R2, #0
26411E:  BEQ             loc_2641DA
264120:  LDREX.W         R2, [R0]
264124:  CMP             R2, #0
264126:  BEQ             loc_264118
264128:  B               loc_2641D6
26412A:  LDR             R0, =(TrapALError_ptr - 0x264130)
26412C:  ADD             R0, PC; TrapALError_ptr
26412E:  LDR             R0, [R0]; TrapALError
264130:  LDRB            R0, [R0]
264132:  CMP             R0, #0
264134:  ITT NE
264136:  MOVNE           R0, #5; sig
264138:  BLXNE           raise
26413C:  LDREX.W         R0, [R4,#0x50]
264140:  CMP             R0, #0
264142:  BNE             loc_2641D6
264144:  ADD.W           R0, R4, #0x50 ; 'P'
264148:  MOVW            R1, #0xA002
26414C:  DMB.W           ISH
264150:  STREX.W         R2, R1, [R0]
264154:  CMP             R2, #0
264156:  BEQ             loc_2641DA
264158:  LDREX.W         R2, [R0]
26415C:  CMP             R2, #0
26415E:  BEQ             loc_264150
264160:  B               loc_2641D6
264162:  MOVW            R2, #0x5DC0
264166:  CMP             R1, R2
264168:  ITT LS
26416A:  VSTRLS          S0, [R0,#0x88]
26416E:  POPLS           {R4,R6,R7,PC}
264170:  LDR             R0, =(TrapALError_ptr - 0x264176)
264172:  ADD             R0, PC; TrapALError_ptr
264174:  LDR             R0, [R0]; TrapALError
264176:  LDRB            R0, [R0]
264178:  CMP             R0, #0
26417A:  ITT NE
26417C:  MOVNE           R0, #5; sig
26417E:  BLXNE           raise
264182:  LDREX.W         R0, [R4,#0x50]
264186:  CBNZ            R0, loc_2641D6
264188:  ADD.W           R0, R4, #0x50 ; 'P'
26418C:  MOVW            R1, #0xA003
264190:  DMB.W           ISH
264194:  STREX.W         R2, R1, [R0]
264198:  CBZ             R2, loc_2641DA
26419A:  LDREX.W         R2, [R0]
26419E:  CMP             R2, #0
2641A0:  BEQ             loc_264194
2641A2:  B               loc_2641D6
2641A4:  LDR             R0, =(TrapALError_ptr - 0x2641AA)
2641A6:  ADD             R0, PC; TrapALError_ptr
2641A8:  LDR             R0, [R0]; TrapALError
2641AA:  LDRB            R0, [R0]
2641AC:  CMP             R0, #0
2641AE:  ITT NE
2641B0:  MOVNE           R0, #5; sig
2641B2:  BLXNE           raise
2641B6:  LDREX.W         R0, [R4,#0x50]
2641BA:  CBNZ            R0, loc_2641D6
2641BC:  ADD.W           R0, R4, #0x50 ; 'P'
2641C0:  MOVW            R1, #0xA002
2641C4:  DMB.W           ISH
2641C8:  STREX.W         R2, R1, [R0]
2641CC:  CBZ             R2, loc_2641DA
2641CE:  LDREX.W         R2, [R0]
2641D2:  CMP             R2, #0
2641D4:  BEQ             loc_2641C8
2641D6:  CLREX.W
2641DA:  DMB.W           ISH
2641DE:  POP             {R4,R6,R7,PC}
