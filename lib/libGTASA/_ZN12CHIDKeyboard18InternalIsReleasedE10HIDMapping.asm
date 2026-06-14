; =========================================================
; Game Engine Function: _ZN12CHIDKeyboard18InternalIsReleasedE10HIDMapping
; Address            : 0x295360 - 0x2953EA
; =========================================================

295360:  PUSH            {R4-R7,LR}
295362:  ADD             R7, SP, #0xC
295364:  PUSH.W          {R8}
295368:  MOV             R5, R0
29536A:  MOV             R8, R1
29536C:  LDR             R0, [R5,#8]
29536E:  CBZ             R0, loc_2953DA
295370:  MOVS            R6, #0
295372:  MOVS            R4, #0
295374:  LDR             R0, [R5,#0xC]
295376:  ADDS            R1, R0, R6
295378:  LDR             R2, [R1,#4]
29537A:  CMP             R2, R8
29537C:  BNE             loc_2953D0
29537E:  LDR             R0, [R0,R6]
295380:  CMP             R0, #0x63 ; 'c'
295382:  BGT             loc_29538C
295384:  BLX             j__Z17LIB_KeyboardState13OSKeyboardKey; LIB_KeyboardState(OSKeyboardKey)
295388:  CBNZ            R0, loc_2953D0
29538A:  B               loc_2953E2
29538C:  LDR             R1, [R1,#0xC]; int
29538E:  CMP             R1, #3
295390:  BCS             loc_29539C
295392:  MOVS            R0, #0; int
295394:  BLX             j__Z20LIB_PointerGetButtonii; LIB_PointerGetButton(int,int)
295398:  CBNZ            R0, loc_2953D0
29539A:  B               loc_2953E2
29539C:  BNE             loc_2953B8
29539E:  MOVS            R0, #0; int
2953A0:  BLX             j__Z19LIB_PointerGetWheeli; LIB_PointerGetWheel(int)
2953A4:  VMOV            S0, R0
2953A8:  VCMPE.F32       S0, #0.0
2953AC:  VMRS            APSR_nzcv, FPSCR
2953B0:  BGT             loc_2953E2
2953B2:  LDR             R0, [R5,#0xC]
2953B4:  ADD             R0, R6
2953B6:  LDR             R1, [R0,#0xC]
2953B8:  CMP             R1, #4
2953BA:  BNE             loc_2953D0
2953BC:  MOVS            R0, #0; int
2953BE:  BLX             j__Z19LIB_PointerGetWheeli; LIB_PointerGetWheel(int)
2953C2:  VMOV            S0, R0
2953C6:  VCMPE.F32       S0, #0.0
2953CA:  VMRS            APSR_nzcv, FPSCR
2953CE:  BLT             loc_2953E2
2953D0:  LDR             R0, [R5,#8]
2953D2:  ADDS            R4, #1
2953D4:  ADDS            R6, #0x14
2953D6:  CMP             R4, R0
2953D8:  BCC             loc_295374
2953DA:  MOVS            R0, #0
2953DC:  POP.W           {R8}
2953E0:  POP             {R4-R7,PC}
2953E2:  MOVS            R0, #1
2953E4:  POP.W           {R8}
2953E8:  POP             {R4-R7,PC}
