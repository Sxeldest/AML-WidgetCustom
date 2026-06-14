; =========================================================
; Game Engine Function: _ZN18CWidgetRegionFlick6UpdateEv
; Address            : 0x2C05C0 - 0x2C066A
; =========================================================

2C05C0:  PUSH            {R4,R5,R7,LR}
2C05C2:  ADD             R7, SP, #8
2C05C4:  SUB             SP, SP, #8
2C05C6:  MOV             R4, R0
2C05C8:  BLX             j__ZN13CWidgetRegion6UpdateEv; CWidgetRegion::Update(void)
2C05CC:  MOV             R0, R4
2C05CE:  MOVS            R1, #0
2C05D0:  MOVS            R5, #0
2C05D2:  BLX             j__ZN7CWidget9IsTouchedEP9CVector2D; CWidget::IsTouched(CVector2D *)
2C05D6:  CMP             R0, #1
2C05D8:  BNE             loc_2C062C
2C05DA:  LDR.W           R0, [R4,#0x90]
2C05DE:  CBNZ            R0, loc_2C063C
2C05E0:  LDR             R1, [R4,#0x78]; int
2C05E2:  MOV             R0, SP; this
2C05E4:  BLX             j__ZN15CTouchInterface16GetTouchPositionEi; CTouchInterface::GetTouchPosition(int)
2C05E8:  LDR             R0, =(RsGlobal_ptr - 0x2C05F2)
2C05EA:  VLDR            S2, =0.004883
2C05EE:  ADD             R0, PC; RsGlobal_ptr
2C05F0:  LDR             R0, [R0]; RsGlobal
2C05F2:  VLDR            S0, [R0,#4]
2C05F6:  LDR             R0, =(_ZN7CWidget16m_vecTouchAnchorE_ptr - 0x2C0602)
2C05F8:  VCVT.F32.S32    S0, S0
2C05FC:  LDR             R1, [R4,#0x78]
2C05FE:  ADD             R0, PC; _ZN7CWidget16m_vecTouchAnchorE_ptr
2C0600:  VLDR            S4, [SP,#0x10+var_10]
2C0604:  LDR             R0, [R0]; CWidget::m_vecTouchAnchor ...
2C0606:  ADD.W           R0, R0, R1,LSL#3
2C060A:  VMUL.F32        S0, S0, S2
2C060E:  VLDR            S2, [R0]
2C0612:  VADD.F32        S6, S2, S0
2C0616:  VCMPE.F32       S4, S6
2C061A:  VMRS            APSR_nzcv, FPSCR
2C061E:  BLE             loc_2C0640
2C0620:  LDR             R0, =(byte_70B619 - 0x2C062A)
2C0622:  MOVS            R1, #0x80
2C0624:  LDR             R2, =(byte_70B618 - 0x2C062C)
2C0626:  ADD             R0, PC; byte_70B619
2C0628:  ADD             R2, PC; byte_70B618
2C062A:  B               loc_2C065A
2C062C:  LDR             R0, =(byte_70B619 - 0x2C0634)
2C062E:  LDR             R1, =(byte_70B618 - 0x2C0636)
2C0630:  ADD             R0, PC; byte_70B619
2C0632:  ADD             R1, PC; byte_70B618
2C0634:  STRB            R5, [R0]
2C0636:  STRB            R5, [R1]
2C0638:  STR.W           R5, [R4,#0x90]
2C063C:  ADD             SP, SP, #8
2C063E:  POP             {R4,R5,R7,PC}
2C0640:  VSUB.F32        S0, S2, S0
2C0644:  VCMPE.F32       S4, S0
2C0648:  VMRS            APSR_nzcv, FPSCR
2C064C:  BGE             loc_2C063C
2C064E:  LDR             R0, =(byte_70B618 - 0x2C065A)
2C0650:  MOV             R1, #0xFFFFFF80
2C0654:  LDR             R2, =(byte_70B619 - 0x2C065C)
2C0656:  ADD             R0, PC; byte_70B618
2C0658:  ADD             R2, PC; byte_70B619
2C065A:  MOVS            R3, #1
2C065C:  STRB            R3, [R2]
2C065E:  MOVS            R2, #0
2C0660:  STRB            R2, [R0]
2C0662:  STR.W           R1, [R4,#0x90]
2C0666:  ADD             SP, SP, #8
2C0668:  POP             {R4,R5,R7,PC}
