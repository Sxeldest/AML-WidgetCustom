; =========================================================
; Game Engine Function: sub_89110
; Address            : 0x89110 - 0x892CC
; =========================================================

89110:  PUSH            {R4-R7,LR}
89112:  ADD             R7, SP, #0xC
89114:  PUSH.W          {R8-R10}
89118:  SUB             SP, SP, #0x20
8911A:  LDR             R6, =(dword_1ACF68 - 0x89126)
8911C:  MOV             R10, R2
8911E:  LDR             R2, =(__stack_chk_guard_ptr - 0x89128)
89120:  MOV             R5, R3
89122:  ADD             R6, PC; dword_1ACF68
89124:  ADD             R2, PC; __stack_chk_guard_ptr
89126:  LDR             R2, [R2]; __stack_chk_guard
89128:  LDR             R2, [R2]
8912A:  STR             R2, [SP,#0x38+var_1C]
8912C:  LDR             R4, [R6]
8912E:  STR             R0, [SP,#0x38+var_24]
89130:  MOVW            R0, #0x19AC
89134:  STR             R1, [SP,#0x38+var_20]
89136:  LDR.W           R9, [R4,R0]
8913A:  LDR             R2, [R7,#arg_0]
8913C:  CBZ             R2, loc_89170
8913E:  CMP             R5, #0
89140:  IT EQ
89142:  MOVEQ.W         R5, #0xFFFFFFFF
89146:  CMP             R5, R10
89148:  BLS.W           loc_892B2
8914C:  SUB.W           R0, R5, R10
89150:  MOV             R1, R10
89152:  B               loc_89162
89154:  LDRB            R2, [R1,#1]
89156:  CMP             R2, #0x23 ; '#'
89158:  BEQ             loc_8916C
8915A:  SUBS            R0, #1
8915C:  ADD.W           R1, R1, #1
89160:  BEQ             loc_8917C
89162:  LDRB            R2, [R1]
89164:  CMP             R2, #0x23 ; '#'
89166:  BEQ             loc_89154
89168:  CMP             R2, #0
8916A:  BNE             loc_8915A
8916C:  MOV             R5, R1
8916E:  B               loc_8917C
89170:  CBNZ            R5, loc_8917C
89172:  MOV             R0, R10; s
89174:  BLX             strlen
89178:  ADD.W           R5, R10, R0
8917C:  CMP             R5, R10
8917E:  BEQ.W           loc_892B2
89182:  MOVW            R1, #0x2D20
89186:  ADD.W           R8, R4, R1
8918A:  LDR             R1, [R6]
8918C:  MOVW            R2, #0x1518
89190:  VMOV.F32        S0, #1.0
89194:  MOVW            R0, #0x18C4
89198:  ADD             R1, R2
8919A:  ADD             R0, R4
8919C:  MOVS            R3, #0
8919E:  VLDR            S2, [R1]
891A2:  VLDR            S10, [R1,#0xB8]
891A6:  VLDR            S6, [R1,#0xB0]
891AA:  VMUL.F32        S2, S10, S2
891AE:  VLDR            S4, [R1,#0xAC]
891B2:  VLDR            S8, [R1,#0xB4]
891B6:  VCMP.F32        S6, S0
891BA:  VMRS            APSR_nzcv, FPSCR
891BE:  VMOV.F32        S10, S6
891C2:  VCMP.F32        S4, S0
891C6:  IT GT
891C8:  VMOVGT.F32      S10, S0
891CC:  VMRS            APSR_nzcv, FPSCR
891D0:  VMOV.F32        S12, S4
891D4:  VCMP.F32        S8, S0
891D8:  IT GT
891DA:  VMOVGT.F32      S12, S0
891DE:  VMRS            APSR_nzcv, FPSCR
891E2:  VMOV.F32        S14, S8
891E6:  VCMP.F32        S2, S0
891EA:  IT GT
891EC:  VMOVGT.F32      S14, S0
891F0:  VMRS            APSR_nzcv, FPSCR
891F4:  VCMP.F32        S6, #0.0
891F8:  VMOV.F32        S6, #0.5
891FC:  VMOV.F32        S1, S2
89200:  IT GT
89202:  VMOVGT.F32      S1, S0
89206:  VMRS            APSR_nzcv, FPSCR
8920A:  VCMP.F32        S4, #0.0
8920E:  VLDR            S0, =0.0
89212:  IT MI
89214:  VMOVMI.F32      S10, S0
89218:  VMRS            APSR_nzcv, FPSCR
8921C:  VCMP.F32        S8, #0.0
89220:  IT MI
89222:  VMOVMI.F32      S12, S0
89226:  VMRS            APSR_nzcv, FPSCR
8922A:  VCMP.F32        S2, #0.0
8922E:  VMOV.F32        S2, S6
89232:  IT MI
89234:  VMOVMI.F32      S14, S0
89238:  VMOV.F32        S4, S6
8923C:  VMRS            APSR_nzcv, FPSCR
89240:  IT MI
89242:  VMOVMI.F32      S1, S0
89246:  VLDR            S0, =255.0
8924A:  VMOV.F32        S8, S6
8924E:  LDRD.W          R1, R2, [R0]; int
89252:  VMLA.F32        S6, S1, S0
89256:  LDR.W           R0, [R9,#0x27C]; int
8925A:  STRD.W          R5, R3, [SP,#0x38+var_30]; int
8925E:  VMLA.F32        S2, S10, S0
89262:  STR             R3, [SP,#0x38+var_28]; int
89264:  VMLA.F32        S4, S12, S0
89268:  ADD             R3, SP, #0x38+var_24; int
8926A:  VMLA.F32        S8, S14, S0
8926E:  VCVT.S32.F32    S0, S2
89272:  VCVT.S32.F32    S2, S4
89276:  VCVT.S32.F32    S4, S8
8927A:  VMOV            R6, S0
8927E:  VMOV            R4, S2
89282:  VCVT.S32.F32    S0, S6
89286:  ORR.W           R6, R4, R6,LSL#8
8928A:  VMOV            R4, S4
8928E:  ORR.W           R6, R6, R4,LSL#16
89292:  VMOV            R4, S0
89296:  ORR.W           R6, R6, R4,LSL#24
8929A:  STRD.W          R6, R10, [SP,#0x38+var_38]; int
8929E:  BL              sub_9D89C
892A2:  LDRB.W          R0, [R8]
892A6:  CBZ             R0, loc_892B2
892A8:  ADD             R0, SP, #0x38+var_24; int
892AA:  MOV             R1, R10; s
892AC:  MOV             R2, R5
892AE:  BL              sub_892E0
892B2:  LDR             R0, [SP,#0x38+var_1C]
892B4:  LDR             R1, =(__stack_chk_guard_ptr - 0x892BA)
892B6:  ADD             R1, PC; __stack_chk_guard_ptr
892B8:  LDR             R1, [R1]; __stack_chk_guard
892BA:  LDR             R1, [R1]
892BC:  CMP             R1, R0
892BE:  ITTT EQ
892C0:  ADDEQ           SP, SP, #0x20 ; ' '
892C2:  POPEQ.W         {R8-R10}
892C6:  POPEQ           {R4-R7,PC}
892C8:  BLX             __stack_chk_fail
