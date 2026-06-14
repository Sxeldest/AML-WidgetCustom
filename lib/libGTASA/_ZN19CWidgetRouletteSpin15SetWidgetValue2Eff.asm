; =========================================================
; Game Engine Function: _ZN19CWidgetRouletteSpin15SetWidgetValue2Eff
; Address            : 0x2C67F8 - 0x2C6870
; =========================================================

2C67F8:  PUSH            {R4,R5,R7,LR}
2C67FA:  ADD             R7, SP, #8
2C67FC:  VPUSH           {D8-D9}
2C6800:  VMOV.F32        S0, #1.0
2C6804:  MOV             R5, R2
2C6806:  VMOV            S16, R1
2C680A:  MOV             R4, R0
2C680C:  VCMP.F32        S16, S0
2C6810:  VMRS            APSR_nzcv, FPSCR
2C6814:  BNE             loc_2C6824
2C6816:  ADD.W           R1, R4, #0x90; CSprite2d *
2C681A:  ADR             R2, aRoulbla; "roulbla"
2C681C:  MOV             R0, R4; this
2C681E:  MOVS            R3, #1; bool
2C6820:  BLX             j__ZN7CWidget10SetTextureER9CSprite2dPcb; CWidget::SetTexture(CSprite2d &,char *,bool)
2C6824:  VMOV.F32        S0, #2.0
2C6828:  VCMP.F32        S16, S0
2C682C:  VMRS            APSR_nzcv, FPSCR
2C6830:  BNE             loc_2C6842
2C6832:  LDR             R2, =(aRoulred - 0x2C6840); "roulred"
2C6834:  ADD.W           R1, R4, #0x90; CSprite2d *
2C6838:  MOV             R0, R4; this
2C683A:  MOVS            R3, #1; bool
2C683C:  ADD             R2, PC; "roulred"
2C683E:  BLX             j__ZN7CWidget10SetTextureER9CSprite2dPcb; CWidget::SetTexture(CSprite2d &,char *,bool)
2C6842:  VMOV.F32        S0, #3.0
2C6846:  VMOV            S18, R5
2C684A:  VCMP.F32        S16, S0
2C684E:  VMRS            APSR_nzcv, FPSCR
2C6852:  BNE             loc_2C6862
2C6854:  ADD.W           R1, R4, #0x90; CSprite2d *
2C6858:  ADR             R2, aRoulgre; "roulgre"
2C685A:  MOV             R0, R4; this
2C685C:  MOVS            R3, #1; bool
2C685E:  BLX             j__ZN7CWidget10SetTextureER9CSprite2dPcb; CWidget::SetTexture(CSprite2d &,char *,bool)
2C6862:  VCVT.S32.F32    S0, S18
2C6866:  VSTR            S0, [R4,#0x94]
2C686A:  VPOP            {D8-D9}
2C686E:  POP             {R4,R5,R7,PC}
