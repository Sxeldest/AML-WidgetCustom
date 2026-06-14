; =========================================================
; Game Engine Function: _ZN8CVehicle23IsSphereTouchingVehicleEffff
; Address            : 0x5851EC - 0x585310
; =========================================================

5851EC:  PUSH            {R4,R5,R7,LR}
5851EE:  ADD             R7, SP, #8
5851F0:  VPUSH           {D8-D10}
5851F4:  MOV             R5, R0
5851F6:  VMOV            S0, R2
5851FA:  LDR             R0, [R5,#0x14]
5851FC:  VMOV            S6, R1
585200:  MOV             R4, R3
585202:  ADD.W           R2, R0, #0x30 ; '0'
585206:  CMP             R0, #0
585208:  IT EQ
58520A:  ADDEQ           R2, R5, #4
58520C:  MOV             R0, R5; this
58520E:  VLDR            S2, [R2]
585212:  VLDR            S4, [R2,#4]
585216:  VLDR            S20, [R2,#8]
58521A:  VSUB.F32        S18, S6, S2
58521E:  VSUB.F32        S16, S0, S4
585222:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
585226:  LDR             R1, [R5,#0x14]
585228:  VMOV            S0, R4
58522C:  VSUB.F32        S2, S0, S20
585230:  VLDR            S4, [R1]
585234:  VLDR            S6, [R1,#4]
585238:  VMUL.F32        S4, S18, S4
58523C:  VLDR            S8, [R1,#8]
585240:  VMUL.F32        S0, S16, S6
585244:  VMUL.F32        S6, S2, S8
585248:  VLDR            S8, [R0]
58524C:  VADD.F32        S4, S4, S0
585250:  VLDR            S0, [R7,#arg_0]
585254:  VSUB.F32        S8, S8, S0
585258:  VADD.F32        S4, S4, S6
58525C:  VCMPE.F32       S4, S8
585260:  VMRS            APSR_nzcv, FPSCR
585264:  BLT             loc_5852BC
585266:  VLDR            S6, [R0,#0xC]
58526A:  VADD.F32        S6, S6, S0
58526E:  VCMPE.F32       S4, S6
585272:  VMRS            APSR_nzcv, FPSCR
585276:  BGT             loc_5852BC
585278:  VLDR            S4, [R1,#0x10]
58527C:  VLDR            S6, [R1,#0x14]
585280:  VMUL.F32        S4, S18, S4
585284:  VLDR            S8, [R1,#0x18]
585288:  VMUL.F32        S6, S16, S6
58528C:  VMUL.F32        S8, S2, S8
585290:  VADD.F32        S4, S4, S6
585294:  VLDR            S6, [R0,#4]
585298:  VSUB.F32        S6, S6, S0
58529C:  VADD.F32        S4, S4, S8
5852A0:  VCMPE.F32       S4, S6
5852A4:  VMRS            APSR_nzcv, FPSCR
5852A8:  BLT             loc_5852BC
5852AA:  VLDR            S6, [R0,#0x10]
5852AE:  VADD.F32        S6, S6, S0
5852B2:  VCMPE.F32       S4, S6
5852B6:  VMRS            APSR_nzcv, FPSCR
5852BA:  BLE             loc_5852C6
5852BC:  MOVS            R1, #0
5852BE:  MOV             R0, R1
5852C0:  VPOP            {D8-D10}
5852C4:  POP             {R4,R5,R7,PC}
5852C6:  VLDR            S4, [R1,#0x20]
5852CA:  VLDR            S6, [R1,#0x24]
5852CE:  VMUL.F32        S4, S18, S4
5852D2:  VLDR            S8, [R1,#0x28]
5852D6:  VMUL.F32        S6, S16, S6
5852DA:  MOVS            R1, #0
5852DC:  VMUL.F32        S2, S2, S8
5852E0:  VADD.F32        S4, S4, S6
5852E4:  VLDR            S6, [R0,#8]
5852E8:  VSUB.F32        S6, S6, S0
5852EC:  VADD.F32        S2, S4, S2
5852F0:  VCMPE.F32       S2, S6
5852F4:  VMRS            APSR_nzcv, FPSCR
5852F8:  BLT             loc_5852BE
5852FA:  VLDR            S4, [R0,#0x14]
5852FE:  VADD.F32        S0, S4, S0
585302:  VCMPE.F32       S2, S0
585306:  VMRS            APSR_nzcv, FPSCR
58530A:  IT LE
58530C:  MOVLE           R1, #1
58530E:  B               loc_5852BE
