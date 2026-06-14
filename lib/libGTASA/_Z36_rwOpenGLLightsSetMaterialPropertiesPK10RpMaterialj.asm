; =========================================================
; Game Engine Function: _Z36_rwOpenGLLightsSetMaterialPropertiesPK10RpMaterialj
; Address            : 0x222584 - 0x222710
; =========================================================

222584:  PUSH            {R4,R5,R7,LR}
222586:  ADD             R7, SP, #8
222588:  SUB             SP, SP, #0x20
22258A:  MOV             R5, R1
22258C:  LDR             R1, =(_rwOpenGLOpaqueBlack_ptr - 0x222596)
22258E:  ADD.W           R12, SP, #0x28+var_1C
222592:  ADD             R1, PC; _rwOpenGLOpaqueBlack_ptr
222594:  LDR             R1, [R1]; _rwOpenGLOpaqueBlack
222596:  LDM.W           R1, {R2-R4}
22259A:  LDR             R1, [R1,#(dword_6BD6EC - 0x6BD6E0)]
22259C:  STMEA.W         SP, {R2-R4}
2225A0:  STM.W           R12, {R1-R4}
2225A4:  STR             R1, [SP,#0x28+var_C]
2225A6:  LSLS            R1, R5, #0x19
2225A8:  BPL             loc_222638
2225AA:  LDR             R1, [R0,#4]
2225AC:  ADDS            R2, R1, #1
2225AE:  BEQ             loc_222638
2225B0:  UXTB            R1, R1
2225B2:  VLDR            S2, =0.0039216
2225B6:  VLDR            S0, [R0,#0x14]
2225BA:  VMOV            S4, R1
2225BE:  VCVT.F32.U32    S4, S4
2225C2:  VMUL.F32        S0, S0, S2
2225C6:  VMUL.F32        S6, S0, S4
2225CA:  VSTR            S6, [SP,#0x28+var_18]
2225CE:  LDRB            R1, [R0,#5]
2225D0:  VMOV            S6, R1
2225D4:  VCVT.F32.U32    S6, S6
2225D8:  VMUL.F32        S8, S0, S6
2225DC:  VSTR            S8, [SP,#0x28+var_14]
2225E0:  LDRB            R1, [R0,#6]
2225E2:  VMOV            S8, R1
2225E6:  VCVT.F32.U32    S8, S8
2225EA:  VMUL.F32        S0, S0, S8
2225EE:  VSTR            S0, [SP,#0x28+var_10]
2225F2:  LDRB            R1, [R0,#7]
2225F4:  VMOV            S0, R1
2225F8:  VCVT.F32.U32    S0, S0
2225FC:  VMUL.F32        S0, S0, S2
222600:  VSTR            S0, [SP,#0x28+var_C]
222604:  VLDR            S10, [R0,#0xC]
222608:  LDR             R0, =(openglAmbientLight_ptr - 0x222612)
22260A:  VMUL.F32        S2, S10, S2
22260E:  ADD             R0, PC; openglAmbientLight_ptr
222610:  LDR             R0, [R0]; openglAmbientLight
222612:  VLDR            S10, [R0,#4]
222616:  VMUL.F32        S6, S2, S6
22261A:  VLDR            S12, [R0,#8]
22261E:  VMUL.F32        S4, S2, S4
222622:  VMUL.F32        S2, S2, S8
222626:  VLDR            S8, [R0]
22262A:  VMUL.F32        S6, S10, S6
22262E:  VMUL.F32        S4, S8, S4
222632:  VMUL.F32        S2, S12, S2
222636:  B               loc_222676
222638:  LDR             R1, [R0,#0x14]
22263A:  VMOV.F32        S0, #1.0
22263E:  STR             R1, [SP,#0x28+var_10]
222640:  STRD.W          R1, R1, [SP,#0x28+var_18]
222644:  MOV.W           R1, #0x3F800000
222648:  STR             R1, [SP,#0x28+var_C]
22264A:  VLDR            S2, [R0,#0xC]
22264E:  VCMP.F32        S2, S0
222652:  VMRS            APSR_nzcv, FPSCR
222656:  BEQ             loc_222680
222658:  LDR             R0, =(openglAmbientLight_ptr - 0x22265E)
22265A:  ADD             R0, PC; openglAmbientLight_ptr
22265C:  LDR             R0, [R0]; openglAmbientLight
22265E:  VLDR            S4, [R0]
222662:  VLDR            S6, [R0,#4]
222666:  VLDR            S8, [R0,#8]
22266A:  VMUL.F32        S4, S2, S4
22266E:  VMUL.F32        S6, S2, S6
222672:  VMUL.F32        S2, S2, S8
222676:  VSTR            S4, [SP,#0x28+var_28]
22267A:  VSTR            S6, [SP,#0x28+var_24]
22267E:  B               loc_222692
222680:  LDR             R0, =(openglAmbientLight_ptr - 0x222686)
222682:  ADD             R0, PC; openglAmbientLight_ptr
222684:  LDR             R0, [R0]; openglAmbientLight
222686:  LDRD.W          R1, R2, [R0]
22268A:  VLDR            S2, [R0,#8]
22268E:  STRD.W          R1, R2, [SP,#0x28+var_28]
222692:  ADD             R2, SP, #0x28+var_18; float *
222694:  MOVW            R0, #0x404; unsigned int
222698:  MOVW            R1, #0x1201; unsigned int
22269C:  VSTR            S0, [SP,#0x28+var_1C]
2226A0:  VSTR            S2, [SP,#0x28+var_20]
2226A4:  BLX             j__Z16emu_glMaterialfvjjPKf; emu_glMaterialfv(uint,uint,float const*)
2226A8:  MOV             R2, SP; float *
2226AA:  MOVW            R0, #0x404; unsigned int
2226AE:  MOV.W           R1, #0x1200; unsigned int
2226B2:  BLX             j__Z16emu_glMaterialfvjjPKf; emu_glMaterialfv(uint,uint,float const*)
2226B6:  LDR             R0, =(_rwOpenGLColorMaterialEnabled_ptr - 0x2226BE)
2226B8:  LSLS            R1, R5, #0x1C
2226BA:  ADD             R0, PC; _rwOpenGLColorMaterialEnabled_ptr
2226BC:  LDR             R0, [R0]; _rwOpenGLColorMaterialEnabled
2226BE:  LDR             R0, [R0]
2226C0:  BMI             loc_2226EC
2226C2:  CBZ             R0, loc_2226D6
2226C4:  MOVW            R0, #0xB57; unsigned int
2226C8:  BLX             j__Z13emu_glDisablej; emu_glDisable(uint)
2226CC:  LDR             R0, =(_rwOpenGLColorMaterialEnabled_ptr - 0x2226D4)
2226CE:  MOVS            R1, #0
2226D0:  ADD             R0, PC; _rwOpenGLColorMaterialEnabled_ptr
2226D2:  LDR             R0, [R0]; _rwOpenGLColorMaterialEnabled
2226D4:  STR             R1, [R0]
2226D6:  LDR             R0, =(_rwOpenGLOpaqueBlack_ptr - 0x2226E0)
2226D8:  MOV.W           R1, #0x1600; unsigned int
2226DC:  ADD             R0, PC; _rwOpenGLOpaqueBlack_ptr
2226DE:  LDR             R2, [R0]; _rwOpenGLOpaqueBlack ; float *
2226E0:  MOVW            R0, #0x404; unsigned int
2226E4:  BLX             j__Z16emu_glMaterialfvjjPKf; emu_glMaterialfv(uint,uint,float const*)
2226E8:  ADD             SP, SP, #0x20 ; ' '
2226EA:  POP             {R4,R5,R7,PC}
2226EC:  CBNZ            R0, loc_222700
2226EE:  MOVW            R0, #0xB57; unsigned int
2226F2:  BLX             j__Z12emu_glEnablej; emu_glEnable(uint)
2226F6:  LDR             R0, =(_rwOpenGLColorMaterialEnabled_ptr - 0x2226FE)
2226F8:  MOVS            R1, #1
2226FA:  ADD             R0, PC; _rwOpenGLColorMaterialEnabled_ptr
2226FC:  LDR             R0, [R0]; _rwOpenGLColorMaterialEnabled
2226FE:  STR             R1, [R0]
222700:  MOVW            R0, #0x404; unsigned int
222704:  MOV.W           R1, #0x1600; unsigned int
222708:  BLX             j__Z19emu_glColorMaterialjj; emu_glColorMaterial(uint,uint)
22270C:  ADD             SP, SP, #0x20 ; ' '
22270E:  POP             {R4,R5,R7,PC}
