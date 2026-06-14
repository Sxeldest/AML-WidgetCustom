; =========================================================
; Game Engine Function: _ZN11CWidgetList14OnInitialTouchEv
; Address            : 0x2BA6D0 - 0x2BA7EC
; =========================================================

2BA6D0:  PUSH            {R4-R7,LR}
2BA6D2:  ADD             R7, SP, #0xC
2BA6D4:  PUSH.W          {R11}
2BA6D8:  SUB             SP, SP, #8
2BA6DA:  MOV             R6, R0
2BA6DC:  BLX             j__ZN7CWidget14OnInitialTouchEv; CWidget::OnInitialTouch(void)
2BA6E0:  MOV             R0, #0x11CB0
2BA6E8:  LDR             R0, [R6,R0]
2BA6EA:  CMP             R0, #0
2BA6EC:  BLE             loc_2BA7B8
2BA6EE:  LDR             R2, =(_ZN7CWidget16m_vecTouchAnchorE_ptr - 0x2BA704)
2BA6F0:  ADD.W           R1, R6, #0x11C00
2BA6F4:  ADD.W           R3, R1, #0x9C
2BA6F8:  ADD.W           R1, R6, #0x11000
2BA6FC:  VMOV.F32        S4, #2.0
2BA700:  ADD             R2, PC; _ZN7CWidget16m_vecTouchAnchorE_ptr
2BA702:  ADD.W           R5, R1, #0xC90
2BA706:  ADD.W           R1, R6, #0x11C00
2BA70A:  ADD.W           R4, R1, #0xB4
2BA70E:  LDR             R1, [R6,#0x78]; int
2BA710:  LDR             R2, [R2]; CWidget::m_vecTouchAnchor ...
2BA712:  VMOV.F32        S2, #-2.0
2BA716:  VLDR            S0, [R4]
2BA71A:  ADD.W           R4, R6, #0x11800
2BA71E:  VLDR            S8, [R6,#0x2C]
2BA722:  ADD.W           R4, R4, #0x498
2BA726:  VLDR            S12, [R5]
2BA72A:  ADD.W           R5, R2, R1,LSL#3
2BA72E:  VLDR            S10, [R4]
2BA732:  VADD.F32        S4, S8, S4
2BA736:  VLDR            S8, [R5]
2BA73A:  MOVS            R4, #0
2BA73C:  VLDR            S6, [R6,#0x24]
2BA740:  MOVS            R2, #0
2BA742:  VCMPE.F32       S8, S10
2BA746:  VMRS            APSR_nzcv, FPSCR
2BA74A:  VADD.F32        S2, S6, S2
2BA74E:  VLDR            S6, [R3]
2BA752:  MOV.W           R3, #0
2BA756:  VCMPE.F32       S8, S12
2BA75A:  IT GT
2BA75C:  MOVGT           R3, #1
2BA75E:  VMRS            APSR_nzcv, FPSCR
2BA762:  IT LT
2BA764:  MOVLT           R4, #1
2BA766:  ORRS            R3, R4
2BA768:  ADDS            R4, R5, #4
2BA76A:  MOV             R5, R2
2BA76C:  ADDS            R2, R5, #1
2BA76E:  VMOV            S8, R5
2BA772:  CMP             R3, #0
2BA774:  VCVT.F32.S32    S10, S8
2BA778:  VMOV            S8, R2
2BA77C:  VCVT.F32.S32    S8, S8
2BA780:  BNE             loc_2BA7B2
2BA782:  VMUL.F32        S10, S0, S10
2BA786:  VADD.F32        S10, S6, S10
2BA78A:  VMAX.F32        D6, D5, D2
2BA78E:  VLDR            S10, [R4]
2BA792:  VCMPE.F32       S10, S12
2BA796:  VMRS            APSR_nzcv, FPSCR
2BA79A:  BLT             loc_2BA7B2
2BA79C:  VMUL.F32        S8, S0, S8
2BA7A0:  VADD.F32        S8, S6, S8
2BA7A4:  VMIN.F32        D4, D4, D1
2BA7A8:  VCMPE.F32       S10, S8
2BA7AC:  VMRS            APSR_nzcv, FPSCR
2BA7B0:  BLE             loc_2BA7BC
2BA7B2:  CMP             R2, R0
2BA7B4:  BLT             loc_2BA76A
2BA7B6:  B               loc_2BA7C6
2BA7B8:  LDR             R1, [R6,#0x78]
2BA7BA:  B               loc_2BA7C6
2BA7BC:  MOV             R0, #0x11CC0
2BA7C4:  STR             R5, [R6,R0]
2BA7C6:  MOV             R0, SP; this
2BA7C8:  BLX             j__ZN15CTouchInterface16GetTouchPositionEi; CTouchInterface::GetTouchPosition(int)
2BA7CC:  MOVW            R0, #:lower16:(elf_hash_chain+0x1B68)
2BA7D0:  LDR             R1, [SP,#0x18+var_14]
2BA7D2:  MOVT            R0, #:upper16:(elf_hash_chain+0x1B68)
2BA7D6:  STR             R1, [R6,R0]
2BA7D8:  MOV             R0, #0x11CD4
2BA7E0:  MOVS            R1, #0
2BA7E2:  STRB            R1, [R6,R0]
2BA7E4:  ADD             SP, SP, #8
2BA7E6:  POP.W           {R11}
2BA7EA:  POP             {R4-R7,PC}
