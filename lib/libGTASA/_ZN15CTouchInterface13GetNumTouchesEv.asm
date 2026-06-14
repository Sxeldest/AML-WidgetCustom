; =========================================================
; Game Engine Function: _ZN15CTouchInterface13GetNumTouchesEv
; Address            : 0x2B0A70 - 0x2B0AF2
; =========================================================

2B0A70:  PUSH            {R7,LR}
2B0A72:  MOV             R7, SP
2B0A74:  SUB             SP, SP, #4
2B0A76:  LDR             R0, =(_ZN15CTouchInterface13m_nMaxTouchesE_ptr - 0x2B0A7C)
2B0A78:  ADD             R0, PC; _ZN15CTouchInterface13m_nMaxTouchesE_ptr
2B0A7A:  LDR             R0, [R0]; CTouchInterface::m_nMaxTouches ...
2B0A7C:  LDR.W           LR, [R0]; CTouchInterface::m_nMaxTouches
2B0A80:  CMP.W           LR, #1
2B0A84:  BLT             loc_2B0AEC
2B0A86:  CMP.W           LR, #3
2B0A8A:  BLS             loc_2B0AD4
2B0A8C:  BIC.W           R2, LR, #3
2B0A90:  CBZ             R2, loc_2B0AD4
2B0A92:  LDR             R0, =(_ZN15CTouchInterface12m_bTouchDownE_ptr - 0x2B0AA0)
2B0A94:  VMOV.I32        Q8, #0
2B0A98:  MOV             R12, SP
2B0A9A:  MOV             R3, R2
2B0A9C:  ADD             R0, PC; _ZN15CTouchInterface12m_bTouchDownE_ptr
2B0A9E:  LDR             R0, [R0]; CTouchInterface::m_bTouchDown ...
2B0AA0:  LDR.W           R1, [R0],#4; CTouchInterface::m_bTouchDown
2B0AA4:  SUBS            R3, #4
2B0AA6:  STR             R1, [SP,#0xC+var_C]
2B0AA8:  VLD1.32         {D18[0]}, [R12@32]
2B0AAC:  VMOVL.U8        Q9, D18
2B0AB0:  VMOVL.U16       Q9, D18
2B0AB4:  VADD.I32        Q8, Q8, Q9
2B0AB8:  BNE             loc_2B0AA0
2B0ABA:  VEXT.8          Q9, Q8, Q8, #8
2B0ABE:  CMP             LR, R2
2B0AC0:  VADD.I32        Q8, Q8, Q9
2B0AC4:  VDUP.32         Q9, D16[1]
2B0AC8:  VADD.I32        Q8, Q8, Q9
2B0ACC:  VMOV.32         R0, D16[0]
2B0AD0:  BNE             loc_2B0AD8
2B0AD2:  B               loc_2B0AE8
2B0AD4:  MOVS            R2, #0
2B0AD6:  MOVS            R0, #0
2B0AD8:  LDR             R3, =(_ZN15CTouchInterface12m_bTouchDownE_ptr - 0x2B0ADE)
2B0ADA:  ADD             R3, PC; _ZN15CTouchInterface12m_bTouchDownE_ptr
2B0ADC:  LDR             R3, [R3]; CTouchInterface::m_bTouchDown ...
2B0ADE:  LDRB            R1, [R3,R2]
2B0AE0:  ADDS            R2, #1
2B0AE2:  CMP             R2, LR
2B0AE4:  ADD             R0, R1
2B0AE6:  BLT             loc_2B0ADE
2B0AE8:  ADD             SP, SP, #4
2B0AEA:  POP             {R7,PC}
2B0AEC:  MOVS            R0, #0
2B0AEE:  ADD             SP, SP, #4
2B0AF0:  POP             {R7,PC}
