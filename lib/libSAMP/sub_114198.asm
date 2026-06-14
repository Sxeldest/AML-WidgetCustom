; =========================================================
; Game Engine Function: sub_114198
; Address            : 0x114198 - 0x114302
; =========================================================

114198:  PUSH            {R4-R7,LR}
11419A:  ADD             R7, SP, #0xC
11419C:  PUSH.W          {R8-R11}
1141A0:  SUB             SP, SP, #4
1141A2:  VPUSH           {D8-D14}
1141A6:  SUB             SP, SP, #0x20
1141A8:  MOV             R4, R0
1141AA:  LDR             R0, [R7,#arg_8]
1141AC:  MOV             R5, R4
1141AE:  STR             R0, [SP,#0x78+var_5C]
1141B0:  LDR.W           R0, [R5,#-0x20]!
1141B4:  MOV             R6, R2
1141B6:  ADD.W           R10, SP, #0x78+var_64
1141BA:  MOV             R8, R1
1141BC:  MOV             R1, R5
1141BE:  MOV             R9, R3
1141C0:  LDR             R2, [R0,#0x14]
1141C2:  MOV             R0, R10
1141C4:  LDRB.W          R11, [R4,#0x28]
1141C8:  VLDR            S26, [R4,#0x1C]
1141CC:  BLX             R2
1141CE:  LDR             R0, [R5]
1141D0:  MOV             R1, R5
1141D2:  VLDR            S28, [SP,#0x78+var_60]
1141D6:  LDR             R2, [R0,#0x4C]
1141D8:  ADD             R0, SP, #0x78+var_6C
1141DA:  BLX             R2
1141DC:  VLDR            S16, [R7,#arg_4]
1141E0:  VMOV            S18, R9
1141E4:  VMOV            S22, R6
1141E8:  VLDR            S20, [R7,#arg_0]
1141EC:  VLDR            S2, [SP,#0x78+var_68]
1141F0:  VADD.F32        S0, S18, S16
1141F4:  VADD.F32        S4, S22, S20
1141F8:  VLDR            S6, [R5,#0x38]
1141FC:  VSUB.F32        S2, S28, S2
114200:  VLDR            S8, [R4,#0x1C]
114204:  VCMP.F32        S6, S22
114208:  MOVS            R1, #0
11420A:  VMRS            APSR_nzcv, FPSCR
11420E:  VCMP.F32        S8, S18
114212:  MOV.W           R2, #0
114216:  IT PL
114218:  MOVPL           R1, #1
11421A:  VMRS            APSR_nzcv, FPSCR
11421E:  IT PL
114220:  MOVPL           R2, #1
114222:  VCMP.F32        S8, S0
114226:  MOVS            R3, #0
114228:  VMRS            APSR_nzcv, FPSCR
11422C:  IT LE
11422E:  MOVLE           R3, #1
114230:  ANDS            R2, R3
114232:  VCMP.F32        S6, S4
114236:  ANDS            R1, R2
114238:  VMRS            APSR_nzcv, FPSCR
11423C:  MOV.W           R2, #0
114240:  MOV.W           R0, #0
114244:  VCMP.F32        S26, S2
114248:  IT LE
11424A:  MOVLE           R2, #1
11424C:  VMRS            APSR_nzcv, FPSCR
114250:  IT LE
114252:  MOVLE           R0, #1
114254:  ANDS            R1, R2
114256:  CMP.W           R11, #0
11425A:  AND.W           R0, R0, R1
11425E:  IT NE
114260:  MOVNE.W         R11, #1
114264:  AND.W           R5, R0, R11
114268:  VLDR            S24, [R7,#arg_C]
11426C:  CMP             R5, #1
11426E:  BNE             loc_11429E
114270:  VMOV            R3, S20
114274:  MOVS            R0, #0xFF
114276:  STRB.W          R0, [SP,#0x78+var_62]
11427A:  MOVW            R0, #0xFFFF
11427E:  STRH.W          R0, [SP,#0x78+var_64]
114282:  MOV             R1, R6
114284:  LDR             R0, [R7,#arg_8]
114286:  MOV             R2, R9
114288:  STR.W           R10, [SP,#0x78+var_74]
11428C:  VSTR            S16, [SP,#0x78+var_78]
114290:  LSRS            R0, R0, #0x18
114292:  STRB.W          R0, [SP,#0x78+var_61]
114296:  ADD.W           R0, R4, #8
11429A:  BL              sub_163176
11429E:  VCMP.F32        S24, #0.0
1142A2:  VMRS            APSR_nzcv, FPSCR
1142A6:  BEQ             loc_1142DC
1142A8:  VMOV.F32        S0, #0.5
1142AC:  ADD             R0, SP, #0x78+var_5C
1142AE:  VMUL.F32        S2, S20, S24
1142B2:  STR             R0, [SP,#0x78+var_74]
1142B4:  VMUL.F32        S4, S16, S24
1142B8:  MOV             R0, R8
1142BA:  VMLA.F32        S22, S2, S0
1142BE:  VMLA.F32        S18, S4, S0
1142C2:  VSUB.F32        S0, S20, S2
1142C6:  VMOV            R1, S22
1142CA:  VMOV            R2, S18
1142CE:  VMOV            R3, S0
1142D2:  VSUB.F32        S0, S16, S4
1142D6:  VSTR            S0, [SP,#0x78+var_78]
1142DA:  B               loc_1142EE
1142DC:  VMOV            R3, S20
1142E0:  ADD             R0, SP, #0x78+var_5C
1142E2:  STR             R0, [SP,#0x78+var_74]
1142E4:  MOV             R0, R8
1142E6:  MOV             R1, R6
1142E8:  MOV             R2, R9
1142EA:  VSTR            S16, [SP,#0x78+var_78]
1142EE:  BL              sub_163176
1142F2:  MOV             R0, R5
1142F4:  ADD             SP, SP, #0x20 ; ' '
1142F6:  VPOP            {D8-D14}
1142FA:  ADD             SP, SP, #4
1142FC:  POP.W           {R8-R11}
114300:  POP             {R4-R7,PC}
