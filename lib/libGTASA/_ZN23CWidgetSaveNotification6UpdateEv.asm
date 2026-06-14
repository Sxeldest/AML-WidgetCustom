; =========================================================
; Game Engine Function: _ZN23CWidgetSaveNotification6UpdateEv
; Address            : 0x2C6910 - 0x2C6964
; =========================================================

2C6910:  PUSH            {R4,R6,R7,LR}
2C6912:  ADD             R7, SP, #8
2C6914:  MOV             R4, R0
2C6916:  BLX             j__ZN7CWidget6UpdateEv; CWidget::Update(void)
2C691A:  LDR             R0, =(_ZN7CWidget14m_fElapsedTimeE_ptr - 0x2C6924)
2C691C:  VLDR            S0, [R4,#0x90]
2C6920:  ADD             R0, PC; _ZN7CWidget14m_fElapsedTimeE_ptr
2C6922:  VLDR            S2, =0.0
2C6926:  VCVT.F64.F32    D16, S0
2C692A:  LDR             R0, [R0]; CWidget::m_fElapsedTime ...
2C692C:  VLDR            D17, [R0]
2C6930:  VSUB.F64        D16, D16, D17
2C6934:  VCMPE.F64       D16, #0.0
2C6938:  VMRS            APSR_nzcv, FPSCR
2C693C:  VCVT.F32.F64    S0, D16
2C6940:  IT LE
2C6942:  VMOVLE.F32      S0, S2
2C6946:  VCMPE.F32       S0, #0.0
2C694A:  VSTR            S0, [R4,#0x90]
2C694E:  VMRS            APSR_nzcv, FPSCR
2C6952:  ITT GT
2C6954:  MOVGT           R0, #1
2C6956:  STRBGT.W        R0, [R4,#0x4D]
2C695A:  MOV             R0, R4; this
2C695C:  POP.W           {R4,R6,R7,LR}
2C6960:  B.W             j_j__ZN7CWidget11ManageAlphaEv; j_CWidget::ManageAlpha(void)
