; =========================================================
; Game Engine Function: _ZN33CWidgetRegionTouchLayoutSelection18DrawAdaptedButtonsEv
; Address            : 0x2C5D70 - 0x2C5F3A
; =========================================================

2C5D70:  PUSH            {R4-R7,LR}
2C5D72:  ADD             R7, SP, #0xC
2C5D74:  PUSH.W          {R8,R9,R11}
2C5D78:  VPUSH           {D8-D11}
2C5D7C:  SUB             SP, SP, #0x38
2C5D7E:  MOV             R4, R0
2C5D80:  VLDR            S6, =255.0
2C5D84:  LDRB.W          R0, [R4,#0x4C]
2C5D88:  VMOV.F32        S12, #-4.0
2C5D8C:  VLDR            S0, [R4,#0xCC]
2C5D90:  ADD.W           R9, SP, #0x70+var_58
2C5D94:  VLDR            S2, [R4,#0xD4]
2C5D98:  MOVS            R1, #0xFF; unsigned __int8
2C5D9A:  VMOV            S4, R0
2C5D9E:  VLDR            S8, =0.04
2C5DA2:  VSUB.F32        S0, S0, S2
2C5DA6:  VLDR            S10, =0.2125
2C5DAA:  VCVT.F32.U32    S4, S4
2C5DAE:  MOV             R0, R9; this
2C5DB0:  MOVS            R2, #0xFF; unsigned __int8
2C5DB2:  MOVS            R3, #0xFF; unsigned __int8
2C5DB4:  VABS.F32        S0, S0
2C5DB8:  VDIV.F32        S16, S4, S6
2C5DBC:  VMUL.F32        S18, S0, S8
2C5DC0:  VLDR            S8, =0.275
2C5DC4:  VMOV.F32        S4, #-2.0
2C5DC8:  VMUL.F32        S8, S0, S8
2C5DCC:  VMUL.F32        S20, S0, S10
2C5DD0:  VMUL.F32        S6, S16, S6
2C5DD4:  VMUL.F32        S0, S18, S4
2C5DD8:  VLDR            S4, [R4,#0xD0]
2C5DDC:  VADD.F32        S2, S2, S8
2C5DE0:  VMUL.F32        S8, S20, S12
2C5DE4:  VADD.F32        S0, S4, S0
2C5DE8:  VADD.F32        S4, S20, S20
2C5DEC:  VSUB.F32        S10, S2, S20
2C5DF0:  VADD.F32        S2, S20, S2
2C5DF4:  VADD.F32        S8, S0, S8
2C5DF8:  VSUB.F32        S0, S0, S4
2C5DFC:  VCVT.U32.F32    S4, S6
2C5E00:  VSTR            S10, [SP,#0x70+var_3C]
2C5E04:  VSTR            S2, [SP,#0x70+var_44]
2C5E08:  VSTR            S8, [SP,#0x70+var_48]
2C5E0C:  VSTR            S0, [SP,#0x70+var_40]
2C5E10:  VMOV            R5, S4
2C5E14:  STR             R5, [SP,#0x70+var_70]; unsigned __int8
2C5E16:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2C5E1A:  ADD.W           R6, R4, #0xE0
2C5E1E:  ADD.W           R8, SP, #0x70+var_48
2C5E22:  MOV             R2, R9
2C5E24:  MOV             R0, R6
2C5E26:  MOV             R1, R8
2C5E28:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; CSprite2d::Draw(CRect const&,CRGBA const&)
2C5E2C:  ADD.W           R9, SP, #0x70+var_58
2C5E30:  MOVS            R1, #0xFF; unsigned __int8
2C5E32:  MOVS            R2, #0xFF; unsigned __int8
2C5E34:  MOVS            R3, #0xFF; unsigned __int8
2C5E36:  MOV             R0, R9; this
2C5E38:  STR             R5, [SP,#0x70+var_70]; unsigned __int8
2C5E3A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2C5E3E:  MOV             R0, R6
2C5E40:  MOV             R1, R8
2C5E42:  MOV             R2, R9
2C5E44:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; CSprite2d::Draw(CRect const&,CRGBA const&)
2C5E48:  VLDR            S0, [R4,#0xCC]
2C5E4C:  VMOV.F32        S6, #1.5
2C5E50:  VLDR            S4, [R4,#0xD4]
2C5E54:  VMOV.F32        S22, #0.75
2C5E58:  VLDR            S2, [R4,#0xD0]
2C5E5C:  ADD.W           R9, SP, #0x70+var_68
2C5E60:  VSUB.F32        S0, S0, S4
2C5E64:  MOVS            R1, #0xFF; unsigned __int8
2C5E66:  VSUB.F32        S2, S2, S18
2C5E6A:  MOV             R0, R9; this
2C5E6C:  MOVS            R2, #0xFF; unsigned __int8
2C5E6E:  MOVS            R3, #0xFF; unsigned __int8
2C5E70:  STR             R5, [SP,#0x70+var_70]; unsigned __int8
2C5E72:  VMUL.F32        S6, S20, S6
2C5E76:  VABS.F32        S0, S0
2C5E7A:  VSTR            S2, [SP,#0x70+var_50]
2C5E7E:  VADD.F32        S8, S6, S6
2C5E82:  VMUL.F32        S0, S0, S22
2C5E86:  VADD.F32        S0, S4, S0
2C5E8A:  VSUB.F32        S4, S2, S8
2C5E8E:  VSUB.F32        S8, S0, S6
2C5E92:  VADD.F32        S0, S6, S0
2C5E96:  VSTR            S4, [SP,#0x70+var_58]
2C5E9A:  VSTR            S8, [SP,#0x70+var_4C]
2C5E9E:  VSTR            S0, [SP,#0x70+var_54]
2C5EA2:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2C5EA6:  ADD.W           R6, R4, #0xD8
2C5EAA:  ADD.W           R8, SP, #0x70+var_58
2C5EAE:  MOV             R2, R9
2C5EB0:  MOV             R0, R6
2C5EB2:  MOV             R1, R8
2C5EB4:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; CSprite2d::Draw(CRect const&,CRGBA const&)
2C5EB8:  STR             R5, [SP,#0x70+var_70]; unsigned __int8
2C5EBA:  ADD             R5, SP, #0x70+var_68
2C5EBC:  MOVS            R1, #0xFF; unsigned __int8
2C5EBE:  MOVS            R2, #0xFF; unsigned __int8
2C5EC0:  MOV             R0, R5; this
2C5EC2:  MOVS            R3, #0xFF; unsigned __int8
2C5EC4:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2C5EC8:  MOV             R0, R6
2C5ECA:  MOV             R1, R8
2C5ECC:  MOV             R2, R5
2C5ECE:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; CSprite2d::Draw(CRect const&,CRGBA const&)
2C5ED2:  VLDR            S6, =100.0
2C5ED6:  ADD             R5, SP, #0x70+var_6C
2C5ED8:  VLDR            S0, [R4,#0xCC]
2C5EDC:  MOVS            R1, #0xFF; unsigned __int8
2C5EDE:  VMUL.F32        S6, S16, S6
2C5EE2:  VLDR            S4, [R4,#0xD4]
2C5EE6:  VLDR            S2, [R4,#0xD0]
2C5EEA:  MOVS            R2, #0xFF; unsigned __int8
2C5EEC:  VSUB.F32        S4, S0, S4
2C5EF0:  MOVS            R3, #0xFF; unsigned __int8
2C5EF2:  VCVT.U32.F32    S6, S6
2C5EF6:  VSTR            S2, [SP,#0x70+var_60]
2C5EFA:  VSTR            S0, [SP,#0x70+var_64]
2C5EFE:  VABS.F32        S4, S4
2C5F02:  VMOV            R0, S6
2C5F06:  VMUL.F32        S4, S4, S22
2C5F0A:  VSUB.F32        S8, S0, S4
2C5F0E:  VSUB.F32        S4, S2, S4
2C5F12:  VSTR            S8, [SP,#0x70+var_5C]
2C5F16:  VSTR            S4, [SP,#0x70+var_68]
2C5F1A:  STR             R0, [SP,#0x70+var_70]; unsigned __int8
2C5F1C:  MOV             R0, R5; this
2C5F1E:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2C5F22:  ADD.W           R0, R4, #0xDC
2C5F26:  ADD             R1, SP, #0x70+var_68
2C5F28:  MOV             R2, R5
2C5F2A:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; CSprite2d::Draw(CRect const&,CRGBA const&)
2C5F2E:  ADD             SP, SP, #0x38 ; '8'
2C5F30:  VPOP            {D8-D11}
2C5F34:  POP.W           {R8,R9,R11}
2C5F38:  POP             {R4-R7,PC}
