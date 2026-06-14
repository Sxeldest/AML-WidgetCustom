; =========================================================
; Game Engine Function: _ZN13CWidgetSliderC2EPKcRK14WidgetPositionjjjN15CTouchInterface9WidgetIDsES6_
; Address            : 0x2C6BF0 - 0x2C6D14
; =========================================================

2C6BF0:  PUSH            {R4-R7,LR}
2C6BF2:  ADD             R7, SP, #0xC
2C6BF4:  PUSH.W          {R8-R10}
2C6BF8:  SUB             SP, SP, #0x10
2C6BFA:  MOV             R6, R3
2C6BFC:  LDR             R3, [R7,#arg_0]
2C6BFE:  MOV.W           R10, #0
2C6C02:  MOV             R4, R0
2C6C04:  STR.W           R10, [SP,#0x28+var_28]
2C6C08:  BLX             j__ZN7CWidgetC2EPKcRK14WidgetPositionj10HIDMapping; CWidget::CWidget(char const*,WidgetPosition const&,uint,HIDMapping)
2C6C0C:  LDR             R0, =(_ZTV13CWidgetSlider_ptr - 0x2C6C16)
2C6C0E:  ADD.W           R9, R4, #0x230
2C6C12:  ADD             R0, PC; _ZTV13CWidgetSlider_ptr
2C6C14:  LDR             R0, [R0]; `vtable for'CWidgetSlider ...
2C6C16:  ADDS            R0, #8
2C6C18:  STR             R0, [R4]
2C6C1A:  MOV             R0, R9; this
2C6C1C:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
2C6C20:  ADD.W           R8, R4, #0x234
2C6C24:  MOV             R0, R8; this
2C6C26:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
2C6C2A:  ADR             R0, dword_2C6D20
2C6C2C:  ADD.W           R5, R4, #0x94
2C6C30:  VLD1.64         {D16-D17}, [R0@128]
2C6C34:  ADD.W           R0, R4, #0x238
2C6C38:  MOV.W           R1, #0x190
2C6C3C:  VST1.32         {D16-D17}, [R0]
2C6C40:  MOV             R0, R5
2C6C42:  BLX             j___aeabi_memclr8_0
2C6C46:  ADD             R0, SP, #0x28+var_1C; this
2C6C48:  STR.W           R6, [R4,#0x22C]
2C6C4C:  MOVS            R6, #0xFF
2C6C4E:  MOVS            R1, #0; unsigned __int8
2C6C50:  MOVS            R2, #0; unsigned __int8
2C6C52:  MOVS            R3, #0xFF; unsigned __int8
2C6C54:  STR             R6, [SP,#0x28+var_28]; unsigned __int8
2C6C56:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2C6C5A:  LDRB.W          R0, [SP,#0x28+var_1C]
2C6C5E:  MOVS            R1, #0xFF; unsigned __int8
2C6C60:  STRB.W          R0, [R4,#0x250]
2C6C64:  MOVS            R2, #0; unsigned __int8
2C6C66:  LDRB.W          R0, [SP,#0x28+var_1B]
2C6C6A:  MOVS            R3, #0; unsigned __int8
2C6C6C:  STRB.W          R0, [R4,#0x251]
2C6C70:  LDRB.W          R0, [SP,#0x28+var_1A]
2C6C74:  STRB.W          R0, [R4,#0x252]
2C6C78:  LDRB.W          R0, [SP,#0x28+var_19]
2C6C7C:  STRB.W          R0, [R4,#0x253]
2C6C80:  ADD             R0, SP, #0x28+var_20; this
2C6C82:  STR             R6, [SP,#0x28+var_28]; unsigned __int8
2C6C84:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2C6C88:  LDR             R0, [R7,#arg_4]
2C6C8A:  SUBS            R1, R0, #1
2C6C8C:  VMOV            S0, R1
2C6C90:  VCVT.F32.S32    S0, S0
2C6C94:  LDRB.W          R1, [SP,#0x28+var_20]
2C6C98:  STRB.W          R1, [R4,#0x254]
2C6C9C:  LDRB.W          R1, [SP,#0x28+var_1F]
2C6CA0:  STRB.W          R1, [R4,#0x255]
2C6CA4:  LDRB.W          R1, [SP,#0x28+var_1E]
2C6CA8:  STRB.W          R1, [R4,#0x256]
2C6CAC:  LDRB.W          R1, [SP,#0x28+var_1D]
2C6CB0:  LDRD.W          R2, R3, [R7,#arg_8]
2C6CB4:  STRB.W          R1, [R4,#0x257]
2C6CB8:  STRD.W          R10, R10, [R4,#0x224]
2C6CBC:  STRD.W          R2, R3, [R4,#0x248]
2C6CC0:  STR.W           R0, [R4,#0x90]
2C6CC4:  BLT             loc_2C6CF2
2C6CC6:  VLDR            S2, =99.0
2C6CCA:  MOVS            R0, #0
2C6CCC:  VDIV.F32        S0, S2, S0
2C6CD0:  VMOV.F32        S2, #1.0
2C6CD4:  VMOV            S4, R0
2C6CD8:  ADDS            R0, #1
2C6CDA:  VCVT.F32.S32    S4, S4
2C6CDE:  VMUL.F32        S4, S0, S4
2C6CE2:  VADD.F32        S4, S4, S2
2C6CE6:  VSTM            R5!, {S4}
2C6CEA:  LDR.W           R1, [R4,#0x90]
2C6CEE:  CMP             R0, R1
2C6CF0:  BLT             loc_2C6CD4
2C6CF2:  ADR             R2, aSliderthumb; "SliderThumb"
2C6CF4:  MOV             R0, R4; this
2C6CF6:  MOV             R1, R9; CSprite2d *
2C6CF8:  MOVS            R3, #1; bool
2C6CFA:  BLX             j__ZN7CWidget10SetTextureER9CSprite2dPcb; CWidget::SetTexture(CSprite2d &,char *,bool)
2C6CFE:  ADR             R2, aWhite_3; "White"
2C6D00:  MOV             R0, R4; this
2C6D02:  MOV             R1, R8; CSprite2d *
2C6D04:  MOVS            R3, #1; bool
2C6D06:  BLX             j__ZN7CWidget10SetTextureER9CSprite2dPcb; CWidget::SetTexture(CSprite2d &,char *,bool)
2C6D0A:  MOV             R0, R4
2C6D0C:  ADD             SP, SP, #0x10
2C6D0E:  POP.W           {R8-R10}
2C6D12:  POP             {R4-R7,PC}
