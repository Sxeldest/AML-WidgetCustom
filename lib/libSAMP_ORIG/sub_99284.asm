; =========================================================
; Game Engine Function: sub_99284
; Address            : 0x99284 - 0x993FE
; =========================================================

99284:  PUSH            {R4-R7,LR}
99286:  ADD             R7, SP, #0xC
99288:  PUSH.W          {R8}
9928C:  VPUSH           {D8-D13}
99290:  MOV             R4, R0
99292:  MOVS            R0, #0
99294:  STRD.W          R0, R0, [R4]
99298:  MOV             R8, R3
9929A:  MOV             R5, R2
9929C:  MOV             R6, R1
9929E:  LSLS            R0, R1, #0x1F
992A0:  BNE             loc_992B0
992A2:  VLDR            S16, =0.0
992A6:  VMOV.F32        S18, S16
992AA:  LSLS            R0, R6, #0x1E
992AC:  BMI             loc_99300
992AE:  B               loc_99348
992B0:  MOVS            R0, #0x13
992B2:  MOV             R1, R5
992B4:  BL              sub_99114
992B8:  VMOV            S16, R0
992BC:  MOVS            R0, #0x12
992BE:  MOV             R1, R5
992C0:  BL              sub_99114
992C4:  VMOV            S18, R0
992C8:  MOVS            R0, #0x15
992CA:  MOV             R1, R5
992CC:  BL              sub_99114
992D0:  VMOV            S20, R0
992D4:  MOVS            R0, #0x14
992D6:  MOV             R1, R5
992D8:  BL              sub_99114
992DC:  VMOV            S0, R0
992E0:  VLDR            S4, =0.0
992E4:  VSUB.F32        S2, S16, S18
992E8:  VSUB.F32        S0, S20, S0
992EC:  VADD.F32        S18, S2, S4
992F0:  VADD.F32        S16, S0, S4
992F4:  VSTR            S18, [R4]
992F8:  VSTR            S16, [R4,#4]
992FC:  LSLS            R0, R6, #0x1E
992FE:  BPL             loc_99348
99300:  MOVS            R0, #5
99302:  MOV             R1, R5
99304:  BL              sub_99114
99308:  VMOV            S20, R0
9930C:  MOVS            R0, #4
9930E:  MOV             R1, R5
99310:  BL              sub_99114
99314:  VMOV            S22, R0
99318:  MOVS            R0, #7
9931A:  MOV             R1, R5
9931C:  BL              sub_99114
99320:  VMOV            S24, R0
99324:  MOVS            R0, #6
99326:  MOV             R1, R5
99328:  BL              sub_99114
9932C:  VMOV            S0, R0
99330:  VSUB.F32        S2, S20, S22
99334:  VSUB.F32        S0, S24, S0
99338:  VADD.F32        S18, S2, S18
9933C:  VADD.F32        S16, S0, S16
99340:  VSTR            S18, [R4]
99344:  VSTR            S16, [R4,#4]
99348:  VMOV            S20, R8
9934C:  LSLS            R0, R6, #0x1D
9934E:  BPL             loc_99398
99350:  MOVS            R0, #9
99352:  MOV             R1, R5
99354:  BL              sub_99114
99358:  VMOV            S22, R0
9935C:  MOVS            R0, #8
9935E:  MOV             R1, R5
99360:  BL              sub_99114
99364:  VMOV            S24, R0
99368:  MOVS            R0, #0xB
9936A:  MOV             R1, R5
9936C:  BL              sub_99114
99370:  VMOV            S26, R0
99374:  MOVS            R0, #0xA
99376:  MOV             R1, R5
99378:  BL              sub_99114
9937C:  VMOV            S0, R0
99380:  VSUB.F32        S2, S22, S24
99384:  VSUB.F32        S0, S26, S0
99388:  VADD.F32        S18, S2, S18
9938C:  VADD.F32        S16, S0, S16
99390:  VSTR            S18, [R4]
99394:  VSTR            S16, [R4,#4]
99398:  LDR             R0, =(dword_1ACF68 - 0x993A6)
9939A:  VCMP.F32        S20, #0.0
9939E:  VLDR            S0, [R7,#arg_0]
993A2:  ADD             R0, PC; dword_1ACF68
993A4:  VMRS            APSR_nzcv, FPSCR
993A8:  BEQ             loc_993CA
993AA:  LDR             R1, [R0]
993AC:  VLDR            S2, [R1,#0x334]
993B0:  VCMP.F32        S2, #0.0
993B4:  VMRS            APSR_nzcv, FPSCR
993B8:  ITTTT GT
993BA:  VMULGT.F32      S16, S16, S20
993BE:  VMULGT.F32      S18, S18, S20
993C2:  VSTRGT          S18, [R4]
993C6:  VSTRGT          S16, [R4,#4]
993CA:  VCMP.F32        S0, #0.0
993CE:  VMRS            APSR_nzcv, FPSCR
993D2:  BEQ             loc_993F4
993D4:  LDR             R0, [R0]
993D6:  VLDR            S2, [R0,#0x338]
993DA:  VCMP.F32        S2, #0.0
993DE:  VMRS            APSR_nzcv, FPSCR
993E2:  ITTTT GT
993E4:  VMULGT.F32      S2, S16, S0
993E8:  VMULGT.F32      S0, S18, S0
993EC:  VSTRGT          S0, [R4]
993F0:  VSTRGT          S2, [R4,#4]
993F4:  VPOP            {D8-D13}
993F8:  POP.W           {R8}
993FC:  POP             {R4-R7,PC}
