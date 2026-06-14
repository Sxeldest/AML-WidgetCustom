; =========================================================
; Game Engine Function: _ZN24CWidgetRegionArcadeStick4DrawEv
; Address            : 0x2BFBDC - 0x2BFD6C
; =========================================================

2BFBDC:  PUSH            {R4,R5,R7,LR}
2BFBDE:  ADD             R7, SP, #8
2BFBE0:  SUB             SP, SP, #0x30; float
2BFBE2:  MOV             R4, R0
2BFBE4:  LDRB.W          R0, [R4,#0x4C]
2BFBE8:  CMP             R0, #0
2BFBEA:  BEQ.W           loc_2BFD68
2BFBEE:  LDR             R0, [R4,#0x78]; this
2BFBF0:  MOVS            R1, #1; int
2BFBF2:  ADD.W           R5, R4, #0x49 ; 'I'
2BFBF6:  STRD.W          R1, R1, [R4,#0x90]
2BFBFA:  BLX             j__ZN15CTouchInterface11IsTouchDownEi; CTouchInterface::IsTouchDown(int)
2BFBFE:  CMP             R0, #1
2BFC00:  BNE             loc_2BFCB4
2BFC02:  LDR             R0, =(_ZN7CWidget21m_pInitialTouchWidgetE_ptr - 0x2BFC0A)
2BFC04:  LDR             R1, [R4,#0x78]; int
2BFC06:  ADD             R0, PC; _ZN7CWidget21m_pInitialTouchWidgetE_ptr
2BFC08:  LDR             R0, [R0]; CWidget::m_pInitialTouchWidget ...
2BFC0A:  LDR.W           R0, [R0,R1,LSL#2]
2BFC0E:  CMP             R4, R0
2BFC10:  BNE             loc_2BFCB4
2BFC12:  ADD             R0, SP, #0x38+var_18; this
2BFC14:  BLX             j__ZN15CTouchInterface16GetTouchPositionEi; CTouchInterface::GetTouchPosition(int)
2BFC18:  VLDR            S0, [R4,#0x20]
2BFC1C:  VLDR            S6, [R4,#0x28]
2BFC20:  LDR             R0, =(_ZN7CWidget16m_vecTouchAnchorE_ptr - 0x2BFC2C)
2BFC22:  VSUB.F32        S0, S6, S0
2BFC26:  LDR             R1, [R4,#0x78]
2BFC28:  ADD             R0, PC; _ZN7CWidget16m_vecTouchAnchorE_ptr
2BFC2A:  VLDR            S8, [SP,#0x38+var_18]
2BFC2E:  VLDR            S2, [SP,#0x38+var_14]
2BFC32:  LDR             R0, [R0]; CWidget::m_vecTouchAnchor ...
2BFC34:  ADD.W           R0, R0, R1,LSL#3
2BFC38:  VABS.F32        S6, S0
2BFC3C:  VLDR            S10, [R0]
2BFC40:  VLDR            S0, =-0.1
2BFC44:  VSUB.F32        S8, S8, S10
2BFC48:  VLDR            S4, [R0,#4]
2BFC4C:  VSUB.F32        S2, S2, S4
2BFC50:  VLDR            S4, =0.1
2BFC54:  VMUL.F32        S10, S6, S0
2BFC58:  VMUL.F32        S6, S6, S4
2BFC5C:  VCMPE.F32       S8, S10
2BFC60:  VMRS            APSR_nzcv, FPSCR
2BFC64:  VCMPE.F32       S8, S6
2BFC68:  ITT LT
2BFC6A:  MOVLT           R0, #0
2BFC6C:  STRLT.W         R0, [R4,#0x90]
2BFC70:  VMRS            APSR_nzcv, FPSCR
2BFC74:  ITT GT
2BFC76:  MOVGT           R0, #2
2BFC78:  STRGT.W         R0, [R4,#0x90]
2BFC7C:  VLDR            S6, [R4,#0x24]
2BFC80:  VLDR            S8, [R4,#0x2C]
2BFC84:  VSUB.F32        S6, S6, S8
2BFC88:  VABS.F32        S6, S6
2BFC8C:  VMUL.F32        S0, S6, S0
2BFC90:  VCMPE.F32       S2, S0
2BFC94:  VMRS            APSR_nzcv, FPSCR
2BFC98:  VMUL.F32        S0, S6, S4
2BFC9C:  VCMPE.F32       S2, S0
2BFCA0:  ITT LT
2BFCA2:  MOVLT           R0, #0
2BFCA4:  STRLT.W         R0, [R4,#0x94]
2BFCA8:  VMRS            APSR_nzcv, FPSCR
2BFCAC:  ITT GT
2BFCAE:  MOVGT           R0, #2
2BFCB0:  STRGT.W         R0, [R4,#0x94]
2BFCB4:  VLDR            S2, [R4,#0x24]
2BFCB8:  VMOV.F32        S8, #0.75
2BFCBC:  VLDR            S6, [R4,#0x2C]
2BFCC0:  VMOV.F32        S10, #0.5
2BFCC4:  VLDR            S0, [R4,#0x20]
2BFCC8:  MOV             R2, R5; int
2BFCCA:  VSUB.F32        S6, S2, S6
2BFCCE:  VLDR            S4, [R4,#0x28]
2BFCD2:  VSTR            S2, [SP,#0x38+var_14]
2BFCD6:  VADD.F32        S0, S0, S4
2BFCDA:  VABS.F32        S6, S6
2BFCDE:  VMUL.F32        S0, S0, S10
2BFCE2:  VMUL.F32        S4, S6, S8
2BFCE6:  VMUL.F32        S6, S4, S10
2BFCEA:  VSUB.F32        S4, S2, S4
2BFCEE:  VLDR            S2, =0.333
2BFCF2:  VSUB.F32        S8, S0, S6
2BFCF6:  VADD.F32        S0, S6, S0
2BFCFA:  VSTR            S4, [SP,#0x38+var_C]
2BFCFE:  VSTR            S8, [SP,#0x38+var_18]
2BFD02:  VSTR            S0, [SP,#0x38+var_10]
2BFD06:  LDRD.W          R0, R1, [R4,#0x90]
2BFD0A:  VMOV            S4, R1
2BFD0E:  ADDS            R1, #1
2BFD10:  VMOV            S0, R0
2BFD14:  ADDS            R0, #1
2BFD16:  VMOV            S6, R1
2BFD1A:  ADD             R1, SP, #0x38+var_18; int
2BFD1C:  VCVT.F32.S32    S0, S0
2BFD20:  VMOV            S8, R0
2BFD24:  ADD.W           R0, R4, #8; int
2BFD28:  VCVT.F32.S32    S4, S4
2BFD2C:  VCVT.F32.S32    S6, S6
2BFD30:  VCVT.F32.S32    S8, S8
2BFD34:  VMUL.F32        S0, S0, S2
2BFD38:  VMUL.F32        S4, S4, S2
2BFD3C:  VMUL.F32        S6, S6, S2
2BFD40:  VMUL.F32        S2, S8, S2
2BFD44:  VMOV            R3, S0; int
2BFD48:  VSTR            S4, [SP,#0x38+var_38]
2BFD4C:  VSTR            S2, [SP,#0x38+var_34]
2BFD50:  VSTR            S4, [SP,#0x38+var_30]
2BFD54:  VSTR            S0, [SP,#0x38+var_2C]
2BFD58:  VSTR            S6, [SP,#0x38+var_28]
2BFD5C:  VSTR            S2, [SP,#0x38+var_24]
2BFD60:  VSTR            S6, [SP,#0x38+var_20]
2BFD64:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBAffffffff; CSprite2d::Draw(CRect const&,CRGBA const&,float,float,float,float,float,float,float,float)
2BFD68:  ADD             SP, SP, #0x30 ; '0'
2BFD6A:  POP             {R4,R5,R7,PC}
