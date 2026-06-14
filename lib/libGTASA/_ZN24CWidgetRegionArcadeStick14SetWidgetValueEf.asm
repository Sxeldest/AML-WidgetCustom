; =========================================================
; Game Engine Function: _ZN24CWidgetRegionArcadeStick14SetWidgetValueEf
; Address            : 0x2BFD9C - 0x2BFE24
; =========================================================

2BFD9C:  PUSH            {R4,R6,R7,LR}
2BFD9E:  ADD             R7, SP, #8
2BFDA0:  VPUSH           {D8}
2BFDA4:  VMOV            S16, R1
2BFDA8:  MOV             R4, R0
2BFDAA:  VCMP.F32        S16, #0.0
2BFDAE:  VMRS            APSR_nzcv, FPSCR
2BFDB2:  BNE             loc_2BFDC2
2BFDB4:  ADD.W           R1, R4, #8; CSprite2d *
2BFDB8:  ADR             R2, aArcadejoystick; "ArcadeJoystick_Knob"
2BFDBA:  MOV             R0, R4; this
2BFDBC:  MOVS            R3, #1; bool
2BFDBE:  BLX             j__ZN7CWidget10SetTextureER9CSprite2dPcb; CWidget::SetTexture(CSprite2d &,char *,bool)
2BFDC2:  VMOV.F32        S0, #1.0
2BFDC6:  VCMP.F32        S16, S0
2BFDCA:  VMRS            APSR_nzcv, FPSCR
2BFDCE:  BNE             loc_2BFDDE
2BFDD0:  ADD.W           R1, R4, #8; CSprite2d *
2BFDD4:  ADR             R2, aArcadejoystick_0; "ArcadeJoystick_Knob_orange"
2BFDD6:  MOV             R0, R4; this
2BFDD8:  MOVS            R3, #1; bool
2BFDDA:  BLX             j__ZN7CWidget10SetTextureER9CSprite2dPcb; CWidget::SetTexture(CSprite2d &,char *,bool)
2BFDDE:  VMOV.F32        S0, #2.0
2BFDE2:  VCMP.F32        S16, S0
2BFDE6:  VMRS            APSR_nzcv, FPSCR
2BFDEA:  BNE             loc_2BFDFA
2BFDEC:  ADD.W           R1, R4, #8; CSprite2d *
2BFDF0:  ADR             R2, aArcadejoystick_1; "ArcadeJoystick_Knob_Teal"
2BFDF2:  MOV             R0, R4; this
2BFDF4:  MOVS            R3, #1; bool
2BFDF6:  BLX             j__ZN7CWidget10SetTextureER9CSprite2dPcb; CWidget::SetTexture(CSprite2d &,char *,bool)
2BFDFA:  VMOV.F32        S0, #3.0
2BFDFE:  VCMP.F32        S16, S0
2BFE02:  VMRS            APSR_nzcv, FPSCR
2BFE06:  ITT NE
2BFE08:  VPOPNE          {D8}
2BFE0C:  POPNE           {R4,R6,R7,PC}
2BFE0E:  ADD.W           R1, R4, #8; int
2BFE12:  ADR             R2, aArcadejoystick_2; "ArcadeJoystick_Knob_white"
2BFE14:  MOV             R0, R4; int
2BFE16:  MOVS            R3, #1
2BFE18:  VPOP            {D8}
2BFE1C:  POP.W           {R4,R6,R7,LR}
2BFE20:  B.W             j_j__ZN7CWidget10SetTextureER9CSprite2dPcb; j_CWidget::SetTexture(CSprite2d &,char *,bool)
