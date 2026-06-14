; =========================================================
; Game Engine Function: _ZN12CHIDKeyboard22InternalIsDoubleTappedE10HIDMapping
; Address            : 0x2951D8 - 0x295280
; =========================================================

2951D8:  PUSH            {R4-R7,LR}
2951DA:  ADD             R7, SP, #0xC
2951DC:  PUSH.W          {R8}
2951E0:  VPUSH           {D8}
2951E4:  MOV             R5, R0
2951E6:  MOV             R8, R1
2951E8:  LDR             R0, [R5,#8]
2951EA:  CMP             R0, #0
2951EC:  BEQ             loc_295270
2951EE:  VLDR            D8, =0.330000013
2951F2:  MOVS            R6, #0
2951F4:  MOVS            R4, #0
2951F6:  LDR             R0, [R5,#0xC]
2951F8:  ADDS            R1, R0, R6
2951FA:  LDR             R2, [R1,#4]
2951FC:  CMP             R2, R8
2951FE:  BNE             loc_295266
295200:  LDR             R0, [R0,R6]
295202:  CMP             R0, #0x63 ; 'c'
295204:  BGT             loc_29520E
295206:  BLX             j__Z17LIB_KeyboardState13OSKeyboardKey; LIB_KeyboardState(OSKeyboardKey)
29520A:  CBNZ            R0, loc_295266
29520C:  B               loc_29521C
29520E:  LDR             R1, [R1,#0xC]; int
295210:  CMP             R1, #3
295212:  BCS             loc_295240
295214:  MOVS            R0, #0; int
295216:  BLX             j__Z20LIB_PointerGetButtonii; LIB_PointerGetButton(int,int)
29521A:  CBNZ            R0, loc_295266
29521C:  BLX             j__Z15OS_TimeAccuratev; OS_TimeAccurate(void)
295220:  LDR             R2, [R5,#0xC]
295222:  VMOV            D17, R0, R1
295226:  ADD             R2, R6
295228:  VLDR            S0, [R2,#0x10]
29522C:  VCVT.F64.F32    D16, S0
295230:  VSUB.F64        D16, D17, D16
295234:  VCMPE.F64       D16, D8
295238:  VMRS            APSR_nzcv, FPSCR
29523C:  BGE             loc_295266
29523E:  B               loc_29527C
295240:  BNE             loc_29525C
295242:  MOVS            R0, #0; int
295244:  BLX             j__Z19LIB_PointerGetWheeli; LIB_PointerGetWheel(int)
295248:  VMOV            S0, R0
29524C:  VCMPE.F32       S0, #0.0
295250:  VMRS            APSR_nzcv, FPSCR
295254:  BGT             loc_295266
295256:  LDR             R0, [R5,#0xC]
295258:  ADD             R0, R6
29525A:  LDR             R1, [R0,#0xC]
29525C:  CMP             R1, #4
29525E:  ITT EQ
295260:  MOVEQ           R0, #0; int
295262:  BLXEQ           j__Z19LIB_PointerGetWheeli; LIB_PointerGetWheel(int)
295266:  LDR             R0, [R5,#8]
295268:  ADDS            R4, #1
29526A:  ADDS            R6, #0x14
29526C:  CMP             R4, R0
29526E:  BCC             loc_2951F6
295270:  MOVS            R0, #0
295272:  VPOP            {D8}
295276:  POP.W           {R8}
29527A:  POP             {R4-R7,PC}
29527C:  MOVS            R0, #1
29527E:  B               loc_295272
