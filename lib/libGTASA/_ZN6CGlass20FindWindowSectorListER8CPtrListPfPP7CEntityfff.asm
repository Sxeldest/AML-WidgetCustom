; =========================================================
; Game Engine Function: _ZN6CGlass20FindWindowSectorListER8CPtrListPfPP7CEntityfff
; Address            : 0x5AD3B4 - 0x5AD480
; =========================================================

5AD3B4:  PUSH            {R4-R7,LR}
5AD3B6:  ADD             R7, SP, #0xC
5AD3B8:  PUSH.W          {R8-R10}
5AD3BC:  VPUSH           {D8-D10}
5AD3C0:  LDR             R6, [R0]
5AD3C2:  MOV             R8, R2
5AD3C4:  MOV             R9, R1
5AD3C6:  CMP             R6, #0
5AD3C8:  BEQ             loc_5AD476
5AD3CA:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5AD3D8)
5AD3CC:  VMOV            S20, R3
5AD3D0:  VLDR            S16, [R7,#arg_4]
5AD3D4:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5AD3D6:  VLDR            S18, [R7,#arg_0]
5AD3DA:  LDR             R4, [R0]; CModelInfo::ms_modelInfoPtrs ...
5AD3DC:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x5AD3E2)
5AD3DE:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
5AD3E0:  LDR.W           R10, [R0]; CWorld::ms_nCurrentScanCode ...
5AD3E4:  LDRD.W          R5, R6, [R6]
5AD3E8:  LDRB.W          R0, [R5,#0x3A]
5AD3EC:  AND.W           R0, R0, #7
5AD3F0:  CMP             R0, #4
5AD3F2:  BNE             loc_5AD472
5AD3F4:  LDRSH.W         R0, [R5,#0x26]
5AD3F8:  LDR.W           R0, [R4,R0,LSL#2]
5AD3FC:  LDR             R1, [R0]
5AD3FE:  LDR             R1, [R1,#8]
5AD400:  BLX             R1
5AD402:  CBZ             R0, loc_5AD472
5AD404:  LDRH            R0, [R0,#0x28]
5AD406:  AND.W           R0, R0, #0x7000
5AD40A:  ORR.W           R0, R0, #0x800
5AD40E:  CMP.W           R0, #0x2800
5AD412:  BNE             loc_5AD472
5AD414:  LDRH            R1, [R5,#0x30]
5AD416:  LDRH.W          R0, [R10]; CWorld::ms_nCurrentScanCode
5AD41A:  CMP             R1, R0
5AD41C:  BEQ             loc_5AD472
5AD41E:  LDR             R1, [R5,#0x14]
5AD420:  STRH            R0, [R5,#0x30]
5AD422:  ADD.W           R0, R1, #0x30 ; '0'
5AD426:  CMP             R1, #0
5AD428:  IT EQ
5AD42A:  ADDEQ           R0, R5, #4
5AD42C:  VLDR            S0, [R0]
5AD430:  VLDR            S2, [R0,#4]
5AD434:  VSUB.F32        S0, S20, S0
5AD438:  VLDR            S4, [R0,#8]
5AD43C:  VSUB.F32        S2, S18, S2
5AD440:  VSUB.F32        S4, S16, S4
5AD444:  VMUL.F32        S0, S0, S0
5AD448:  VMUL.F32        S2, S2, S2
5AD44C:  VMUL.F32        S4, S4, S4
5AD450:  VADD.F32        S0, S0, S2
5AD454:  VLDR            S2, [R9]
5AD458:  VADD.F32        S0, S0, S4
5AD45C:  VSQRT.F32       S0, S0
5AD460:  VCMPE.F32       S0, S2
5AD464:  VMRS            APSR_nzcv, FPSCR
5AD468:  ITT LT
5AD46A:  VSTRLT          S0, [R9]
5AD46E:  STRLT.W         R5, [R8]
5AD472:  CMP             R6, #0
5AD474:  BNE             loc_5AD3E4
5AD476:  VPOP            {D8-D10}
5AD47A:  POP.W           {R8-R10}
5AD47E:  POP             {R4-R7,PC}
