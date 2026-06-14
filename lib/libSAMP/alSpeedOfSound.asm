; =========================================================
; Game Engine Function: alSpeedOfSound
; Address            : 0x1E12EC - 0x1E1354
; =========================================================

1E12EC:  PUSH            {R4,R5,R11,LR}
1E12F0:  ADD             R11, SP, #8
1E12F4:  MOV             R5, R0
1E12F8:  BL              j_GetContextRef
1E12FC:  MOV             R4, R0
1E1300:  CMP             R4, #0
1E1304:  POPEQ           {R4,R5,R11,PC}
1E1308:  VMOV            S0, R5
1E130C:  VCMPE.F32       S0, #0.0
1E1310:  VMRS            APSR_nzcv, FPSCR
1E1314:  BLE             loc_1E133C
1E1318:  VABS.F32        S2, S0
1E131C:  VLDR            S4, =+Inf
1E1320:  VCMP.F32        S2, S4
1E1324:  VMRS            APSR_nzcv, FPSCR
1E1328:  BEQ             loc_1E133C
1E132C:  MOV             R0, #1
1E1330:  VSTR            S0, [R4,#0xDC]
1E1334:  STR             R0, [R4,#0xC8]
1E1338:  B               loc_1E1348
1E133C:  MOV             R0, R4
1E1340:  MOVW            R1, #0xA003
1E1344:  BL              j_alSetError
1E1348:  MOV             R0, R4
1E134C:  POP             {R4,R5,R11,LR}
1E1350:  B               j_ALCcontext_DecRef
