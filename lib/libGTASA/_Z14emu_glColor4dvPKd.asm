; =========================================================
; Game Engine Function: _Z14emu_glColor4dvPKd
; Address            : 0x1B64A8 - 0x1B65CE
; =========================================================

1B64A8:  PUSH            {R4-R7,LR}
1B64AA:  ADD             R7, SP, #0xC
1B64AC:  PUSH.W          {R8}
1B64B0:  VPUSH           {D8-D11}
1B64B4:  VLDM            R0, {D16-D19}
1B64B8:  LDR             R0, =(curEmulatorStateFlags_ptr - 0x1B64C2)
1B64BA:  VCVT.F32.F64    S20, D17
1B64BE:  ADD             R0, PC; curEmulatorStateFlags_ptr
1B64C0:  LDR             R0, [R0]; curEmulatorStateFlags
1B64C2:  VCVT.F32.F64    S16, D19
1B64C6:  LDRB            R0, [R0,#(curEmulatorStateFlags+3 - 0x6B7098)]
1B64C8:  LSLS            R0, R0, #0x19
1B64CA:  VCVT.F32.F64    S18, D18
1B64CE:  VCVT.F32.F64    S22, D16
1B64D2:  BMI             loc_1B6534
1B64D4:  LDR             R0, =(GlobalColor_ptr - 0x1B64DA)
1B64D6:  ADD             R0, PC; GlobalColor_ptr
1B64D8:  LDR             R0, [R0]; GlobalColor
1B64DA:  VLDR            S0, [R0]
1B64DE:  VCMP.F32        S0, S22
1B64E2:  VMRS            APSR_nzcv, FPSCR
1B64E6:  BNE             loc_1B6512
1B64E8:  VLDR            S0, [R0,#4]
1B64EC:  VCMP.F32        S0, S20
1B64F0:  VMRS            APSR_nzcv, FPSCR
1B64F4:  ITTT EQ
1B64F6:  VLDREQ          S0, [R0,#8]
1B64FA:  VCMPEQ.F32      S0, S18
1B64FE:  VMRSEQ          APSR_nzcv, FPSCR
1B6502:  BNE             loc_1B6512
1B6504:  VLDR            S0, [R0,#0xC]
1B6508:  VCMP.F32        S0, S16
1B650C:  VMRS            APSR_nzcv, FPSCR
1B6510:  BEQ             loc_1B65C4
1B6512:  LDR             R0, =(GlobalColor_ptr - 0x1B651A)
1B6514:  LDR             R1, =(GlobalColorDirty_ptr - 0x1B651C)
1B6516:  ADD             R0, PC; GlobalColor_ptr
1B6518:  ADD             R1, PC; GlobalColorDirty_ptr
1B651A:  LDR             R0, [R0]; GlobalColor
1B651C:  LDR             R1, [R1]; GlobalColorDirty
1B651E:  VSTR            S22, [R0]
1B6522:  VSTR            S20, [R0,#4]
1B6526:  VSTR            S18, [R0,#8]
1B652A:  VSTR            S16, [R0,#0xC]
1B652E:  MOVS            R0, #1
1B6530:  STRB            R0, [R1]
1B6532:  B               loc_1B65C4
1B6534:  LDR             R0, =(Imm_ptr - 0x1B653A)
1B6536:  ADD             R0, PC; Imm_ptr
1B6538:  LDR             R0, [R0]; Imm
1B653A:  LDR             R0, [R0,#(dword_6B32FC - 0x6B32A4)]
1B653C:  CBNZ            R0, loc_1B6550
1B653E:  LDR             R0, =(Imm_ptr - 0x1B6548)
1B6540:  MOVS            R2, #0
1B6542:  MOVS            R3, #4
1B6544:  ADD             R0, PC; Imm_ptr
1B6546:  LDR             R1, [R0]; Imm
1B6548:  MOVS            R0, #0x10
1B654A:  STRD.W          R3, R0, [R1,#(dword_6B32F8 - 0x6B32A4)]
1B654E:  STR             R2, [R1,#(dword_6B3300 - 0x6B32A4)]
1B6550:  LDR             R1, =(Imm_ptr - 0x1B6556)
1B6552:  ADD             R1, PC; Imm_ptr
1B6554:  LDR             R1, [R1]; Imm
1B6556:  LDRD.W          R2, R4, [R1,#(dword_6B32F0 - 0x6B32A4)]
1B655A:  ADD.W           R8, R4, R0
1B655E:  CMP             R2, R8
1B6560:  BGE             loc_1B65A0
1B6562:  LDR             R0, =(Imm_ptr - 0x1B656C)
1B6564:  ADD.W           R1, R8, R8,LSL#1
1B6568:  ADD             R0, PC; Imm_ptr
1B656A:  LDR             R6, [R0]; Imm
1B656C:  ADD.W           R0, R1, R1,LSR#31
1B6570:  ASRS            R0, R0, #1; byte_count
1B6572:  STR             R0, [R6,#(dword_6B32F0 - 0x6B32A4)]
1B6574:  BLX             malloc
1B6578:  LDR             R6, [R6,#(dword_6B32EC - 0x6B32A4)]
1B657A:  MOV             R5, R0
1B657C:  CBZ             R6, loc_1B6596
1B657E:  MOV             R0, R5; void *
1B6580:  MOV             R1, R6; void *
1B6582:  MOV             R2, R4; size_t
1B6584:  BLX             memcpy_1
1B6588:  MOV             R0, R6; p
1B658A:  BLX             free
1B658E:  LDR             R0, =(Imm_ptr - 0x1B6594)
1B6590:  ADD             R0, PC; Imm_ptr
1B6592:  LDR             R0, [R0]; Imm
1B6594:  LDR             R4, [R0,#(dword_6B32F4 - 0x6B32A4)]
1B6596:  LDR             R0, =(Imm_ptr - 0x1B659C)
1B6598:  ADD             R0, PC; Imm_ptr
1B659A:  LDR             R0, [R0]; Imm
1B659C:  STR             R5, [R0,#(dword_6B32EC - 0x6B32A4)]
1B659E:  B               loc_1B65A8
1B65A0:  LDR             R0, =(Imm_ptr - 0x1B65A6)
1B65A2:  ADD             R0, PC; Imm_ptr
1B65A4:  LDR             R0, [R0]; Imm
1B65A6:  LDR             R5, [R0,#(dword_6B32EC - 0x6B32A4)]
1B65A8:  LDR             R0, =(Imm_ptr - 0x1B65AE)
1B65AA:  ADD             R0, PC; Imm_ptr
1B65AC:  LDR             R0, [R0]; Imm
1B65AE:  STR.W           R8, [R0,#(dword_6B32F4 - 0x6B32A4)]
1B65B2:  ADDS            R0, R5, R4
1B65B4:  VSTR            S22, [R0]
1B65B8:  VSTR            S20, [R0,#4]
1B65BC:  VSTR            S18, [R0,#8]
1B65C0:  VSTR            S16, [R0,#0xC]
1B65C4:  VPOP            {D8-D11}
1B65C8:  POP.W           {R8}
1B65CC:  POP             {R4-R7,PC}
