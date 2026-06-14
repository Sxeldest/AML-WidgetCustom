; =========================================================
; Game Engine Function: sub_263018
; Address            : 0x263018 - 0x26317E
; =========================================================

263018:  PUSH            {R4-R7,LR}
26301A:  ADD             R7, SP, #0xC
26301C:  PUSH.W          {R8}
263020:  MOV             R6, R3
263022:  MOV             R4, R1
263024:  MOV             R5, R0
263026:  CMP             R2, #0xE
263028:  BEQ             loc_26308A
26302A:  CMP             R2, #0xB
26302C:  BNE             loc_2630F8
26302E:  VLDR            S0, [R6]
263032:  VABS.F32        S2, S0
263036:  VLDR            S0, =+Inf
26303A:  VCMP.F32        S2, S0
26303E:  VMRS            APSR_nzcv, FPSCR
263042:  BEQ             loc_26310A
263044:  VLDR            S2, [R6,#4]
263048:  VABS.F32        S2, S2
26304C:  VCMP.F32        S2, S0
263050:  VMRS            APSR_nzcv, FPSCR
263054:  BEQ             loc_26310A
263056:  VLDR            S2, [R6,#8]
26305A:  VABS.F32        S2, S2
26305E:  VCMP.F32        S2, S0
263062:  VMRS            APSR_nzcv, FPSCR
263066:  BEQ             loc_26310A
263068:  LDR.W           R0, [R4,#0x88]
26306C:  MOV             R8, #0x161AC
263074:  LDR.W           R1, [R0,R8]
263078:  LDR             R1, [R1,#0x2C]
26307A:  BLX             R1
26307C:  LDR             R0, [R6]
26307E:  STR             R0, [R5,#0x40]
263080:  LDR             R0, [R6,#4]
263082:  STR             R0, [R5,#0x44]
263084:  LDR             R0, [R6,#8]
263086:  STR             R0, [R5,#0x48]
263088:  B               loc_2630E4
26308A:  VLDR            S0, [R6]
26308E:  VABS.F32        S2, S0
263092:  VLDR            S0, =+Inf
263096:  VCMP.F32        S2, S0
26309A:  VMRS            APSR_nzcv, FPSCR
26309E:  BEQ             loc_26313E
2630A0:  VLDR            S2, [R6,#4]
2630A4:  VABS.F32        S2, S2
2630A8:  VCMP.F32        S2, S0
2630AC:  VMRS            APSR_nzcv, FPSCR
2630B0:  BEQ             loc_26313E
2630B2:  VLDR            S2, [R6,#8]
2630B6:  VABS.F32        S2, S2
2630BA:  VCMP.F32        S2, S0
2630BE:  VMRS            APSR_nzcv, FPSCR
2630C2:  BEQ             loc_26313E
2630C4:  LDR.W           R0, [R4,#0x88]
2630C8:  MOV             R8, #0x161AC
2630D0:  LDR.W           R1, [R0,R8]
2630D4:  LDR             R1, [R1,#0x2C]
2630D6:  BLX             R1
2630D8:  LDR             R0, [R6]
2630DA:  STR             R0, [R5,#0x4C]
2630DC:  LDR             R0, [R6,#4]
2630DE:  STR             R0, [R5,#0x50]
2630E0:  LDR             R0, [R6,#8]
2630E2:  STR             R0, [R5,#0x54]
2630E4:  LDR.W           R0, [R4,#0x88]
2630E8:  LDR.W           R1, [R0,R8]
2630EC:  LDR             R1, [R1,#0x30]
2630EE:  POP.W           {R8}
2630F2:  POP.W           {R4-R7,LR}
2630F6:  BX              R1
2630F8:  LDR             R3, [R6]
2630FA:  MOV             R0, R5
2630FC:  MOV             R1, R4
2630FE:  POP.W           {R8}
263102:  POP.W           {R4-R7,LR}
263106:  B.W             sub_2627EC
26310A:  LDR             R0, =(TrapALError_ptr - 0x263110)
26310C:  ADD             R0, PC; TrapALError_ptr
26310E:  LDR             R0, [R0]; TrapALError
263110:  LDRB            R0, [R0]
263112:  CMP             R0, #0
263114:  ITT NE
263116:  MOVNE           R0, #5; sig
263118:  BLXNE           raise
26311C:  LDREX.W         R0, [R4,#0x50]
263120:  CBNZ            R0, loc_263170
263122:  ADD.W           R0, R4, #0x50 ; 'P'
263126:  MOVW            R1, #0xA003
26312A:  DMB.W           ISH
26312E:  STREX.W         R2, R1, [R0]
263132:  CBZ             R2, loc_263174
263134:  LDREX.W         R2, [R0]
263138:  CMP             R2, #0
26313A:  BEQ             loc_26312E
26313C:  B               loc_263170
26313E:  LDR             R0, =(TrapALError_ptr - 0x263144)
263140:  ADD             R0, PC; TrapALError_ptr
263142:  LDR             R0, [R0]; TrapALError
263144:  LDRB            R0, [R0]
263146:  CMP             R0, #0
263148:  ITT NE
26314A:  MOVNE           R0, #5; sig
26314C:  BLXNE           raise
263150:  LDREX.W         R0, [R4,#0x50]
263154:  CBNZ            R0, loc_263170
263156:  ADD.W           R0, R4, #0x50 ; 'P'
26315A:  MOVW            R1, #0xA003
26315E:  DMB.W           ISH
263162:  STREX.W         R2, R1, [R0]
263166:  CBZ             R2, loc_263174
263168:  LDREX.W         R2, [R0]
26316C:  CMP             R2, #0
26316E:  BEQ             loc_263162
263170:  CLREX.W
263174:  DMB.W           ISH
263178:  POP.W           {R8}
26317C:  POP             {R4-R7,PC}
