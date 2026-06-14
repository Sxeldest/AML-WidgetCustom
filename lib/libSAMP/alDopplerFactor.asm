; =========================================================
; Game Engine Function: alDopplerFactor
; Address            : 0x1E1214 - 0x1E127C
; =========================================================

1E1214:  PUSH            {R4,R5,R11,LR}
1E1218:  ADD             R11, SP, #8
1E121C:  MOV             R5, R0
1E1220:  BL              j_GetContextRef
1E1224:  MOV             R4, R0
1E1228:  CMP             R4, #0
1E122C:  POPEQ           {R4,R5,R11,PC}
1E1230:  VMOV            S0, R5
1E1234:  VCMPE.F32       S0, #0.0
1E1238:  VMRS            APSR_nzcv, FPSCR
1E123C:  BLT             loc_1E1264
1E1240:  VABS.F32        S2, S0
1E1244:  VLDR            S4, =+Inf
1E1248:  VCMP.F32        S2, S4
1E124C:  VMRS            APSR_nzcv, FPSCR
1E1250:  BEQ             loc_1E1264
1E1254:  MOV             R0, #1
1E1258:  VSTR            S0, [R4,#0xD4]
1E125C:  STR             R0, [R4,#0xC8]
1E1260:  B               loc_1E1270
1E1264:  MOV             R0, R4
1E1268:  MOVW            R1, #0xA003
1E126C:  BL              j_alSetError
1E1270:  MOV             R0, R4
1E1274:  POP             {R4,R5,R11,LR}
1E1278:  B               j_ALCcontext_DecRef
