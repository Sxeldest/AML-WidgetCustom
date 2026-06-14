; =========================================================
; Game Engine Function: _ZN16CharSelectScreen6RenderEi
; Address            : 0x29EB00 - 0x29ED54
; =========================================================

29EB00:  PUSH            {R4-R7,LR}
29EB02:  ADD             R7, SP, #0xC
29EB04:  PUSH.W          {R8-R11}
29EB08:  SUB             SP, SP, #4
29EB0A:  VPUSH           {D8-D15}
29EB0E:  SUB             SP, SP, #0x88
29EB10:  MOV             R4, SP
29EB12:  BFC.W           R4, #0, #4
29EB16:  MOV             SP, R4
29EB18:  VMOV.F32        S0, #-0.5
29EB1C:  STR             R1, [SP,#0xE8+var_E0]
29EB1E:  VMOV.F32        S2, #-1.0
29EB22:  STR             R0, [SP,#0xE8+var_DC]
29EB24:  VLDR            S4, [R0,#0x3C]
29EB28:  VMOV.F32        S16, #1.0
29EB2C:  VLDR            S6, =0.0
29EB30:  VMOV.F32        S18, #0.25
29EB34:  VMOV.F32        S20, #4.0
29EB38:  LDR             R0, =(unk_60CBC8 - 0x29EB44)
29EB3A:  VMOV.F32        S30, #23.0
29EB3E:  MOVS            R5, #0
29EB40:  ADD             R0, PC; unk_60CBC8
29EB42:  MOVW            R10, #0
29EB46:  VADD.F32        S0, S4, S0
29EB4A:  ADD.W           R4, R0, #8
29EB4E:  VADD.F32        S2, S4, S2
29EB52:  VLDR            S26, =255.0
29EB56:  VADD.F32        S4, S4, S4
29EB5A:  ADD             R0, SP, #0xE8+var_88; this
29EB5C:  VLDR            S28, =200.0
29EB60:  ADD.W           R11, SP, #0xE8+var_98
29EB64:  MOVT            R5, #0x4170
29EB68:  MOVT            R10, #0x43E7
29EB6C:  MOV.W           R8, #0
29EB70:  VADD.F32        S0, S0, S0
29EB74:  VMIN.F32        D4, D2, D8
29EB78:  VCMPE.F32       S4, #0.0
29EB7C:  VMRS            APSR_nzcv, FPSCR
29EB80:  VADD.F32        S2, S2, S2
29EB84:  VMIN.F32        D2, D0, D8
29EB88:  VCMPE.F32       S0, #0.0
29EB8C:  VMIN.F32        D5, D1, D8
29EB90:  IT LT
29EB92:  VMOVLT.F32      S8, S6
29EB96:  VMRS            APSR_nzcv, FPSCR
29EB9A:  VCMPE.F32       S2, #0.0
29EB9E:  IT LT
29EBA0:  VMOVLT.F32      S4, S6
29EBA4:  VMRS            APSR_nzcv, FPSCR
29EBA8:  IT LT
29EBAA:  VMOVLT.F32      S10, S6
29EBAE:  VSTR            S8, [SP,#0xE8+var_7C]
29EBB2:  VSTR            S8, [SP,#0xE8+var_78]
29EBB6:  VSTR            S8, [SP,#0xE8+var_68]
29EBBA:  VSTR            S4, [SP,#0xE8+var_80]
29EBBE:  VSTR            S10, [SP,#0xE8+var_84]
29EBC2:  VSTR            S4, [SP,#0xE8+var_70]
29EBC6:  VSTR            S10, [SP,#0xE8+var_74]
29EBCA:  VSTR            S10, [SP,#0xE8+var_6C]
29EBCE:  VSTR            S4, [SP,#0xE8+var_64]
29EBD2:  LDR             R1, [SP,#0xE8+var_DC]
29EBD4:  VMOV.F32        S21, S16
29EBD8:  MOV             R6, R5
29EBDA:  LDR             R1, [R1,#0x40]
29EBDC:  ADD.W           R1, R1, R1,LSL#1
29EBE0:  ADD.W           R2, R8, R1,LSL#2
29EBE4:  ADD             R1, SP, #0xE8+var_84
29EBE6:  ADD             R1, R2
29EBE8:  VLDR            S2, [R1]
29EBEC:  VMUL.F32        S0, S2, S20
29EBF0:  VCMPE.F32       S2, S18
29EBF4:  VMRS            APSR_nzcv, FPSCR
29EBF8:  VMIN.F32        D0, D0, D8
29EBFC:  BLE             loc_29EC12
29EBFE:  VLDR            S4, =0.8
29EC02:  VDIV.F32        S2, S2, S4
29EC06:  VMOV.F32        S4, #-0.25
29EC0A:  VADD.F32        S2, S2, S4
29EC0E:  VSUB.F32        S21, S16, S2
29EC12:  VMUL.F32        S0, S0, S26
29EC16:  MOVS            R2, #0xFF; unsigned __int8
29EC18:  MOVS            R3, #0xFF; unsigned __int8
29EC1A:  MOV             R9, R0
29EC1C:  VCVT.U32.F32    S0, S0
29EC20:  VMOV            R1, S0
29EC24:  STR             R1, [SP,#0xE8+var_E8]; unsigned __int8
29EC26:  MOVS            R1, #0xFF; unsigned __int8
29EC28:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29EC2C:  VLDR            S19, [R4,#-8]
29EC30:  MOV             R5, R6
29EC32:  VLDR            S23, [R4,#-4]
29EC36:  MOVS            R6, #0
29EC38:  VMUL.F32        S0, S19, S28
29EC3C:  VLDR            S25, [R4]
29EC40:  VLDR            S29, [R4,#4]
29EC44:  MOV.W           R1, #0x3F800000
29EC48:  LDR             R0, [SP,#0xE8+var_88]
29EC4A:  STR             R6, [SP,#0xE8+var_D4]
29EC4C:  CMP.W           R0, #0x1000000
29EC50:  VSTR            S19, [SP,#0xE8+var_D8]
29EC54:  VDUP.32         Q8, R0
29EC58:  STR             R5, [SP,#0xE8+var_B4]
29EC5A:  VSTR            S23, [SP,#0xE8+var_D0]
29EC5E:  VADD.F32        S27, S0, S30
29EC62:  STR             R6, [SP,#0xE8+var_CC]
29EC64:  VMUL.F32        S0, S23, S28
29EC68:  VSTR            S25, [SP,#0xE8+var_C8]
29EC6C:  STR             R1, [SP,#0xE8+var_C4]
29EC6E:  VSTR            S29, [SP,#0xE8+var_C0]
29EC72:  VST1.64         {D16-D17}, [R11@128]
29EC76:  STR             R1, [SP,#0xE8+var_BC]
29EC78:  VSTR            S27, [SP,#0xE8+var_B8]
29EC7C:  VADD.F32        S31, S0, S30
29EC80:  STR             R5, [SP,#0xE8+var_AC]
29EC82:  VMUL.F32        S0, S25, S28
29EC86:  VSTR            S31, [SP,#0xE8+var_B0]
29EC8A:  VADD.F32        S22, S0, S30
29EC8E:  STR.W           R10, [SP,#0xE8+var_A4]
29EC92:  VMUL.F32        S0, S29, S28
29EC96:  VSTR            S22, [SP,#0xE8+var_A8]
29EC9A:  VADD.F32        S24, S0, S30
29EC9E:  STR.W           R10, [SP,#0xE8+var_9C]
29ECA2:  VSTR            S24, [SP,#0xE8+var_A0]
29ECA6:  BCC             loc_29ECB8
29ECA8:  LDR             R0, [SP,#0xE8+var_DC]
29ECAA:  ADD             R2, SP, #0xE8+var_B8
29ECAC:  ADD             R3, SP, #0xE8+var_D8
29ECAE:  LDR             R1, [R0,#0x34]
29ECB0:  STRD.W          R11, R6, [SP,#0xE8+var_E8]
29ECB4:  BLX             j__ZN10MenuScreen10DrawSpriteEP9RwTextureP9CVector2DS3_P5CRGBAb; MenuScreen::DrawSprite(RwTexture *,CVector2D *,CVector2D *,CRGBA *,bool)
29ECB8:  VMUL.F32        S0, S21, S26
29ECBC:  MOVS            R1, #0xFF; unsigned __int8
29ECBE:  MOVS            R2, #0xFF; unsigned __int8
29ECC0:  MOVS            R3, #0xFF; unsigned __int8
29ECC2:  VCVT.U32.F32    S0, S0
29ECC6:  VMOV            R0, S0
29ECCA:  STR             R0, [SP,#0xE8+var_E8]; unsigned __int8
29ECCC:  MOV             R0, R9; this
29ECCE:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29ECD2:  LDR             R0, [SP,#0xE8+var_88]
29ECD4:  MOV.W           R1, #0x3F800000
29ECD8:  STR             R5, [SP,#0xE8+var_B4]
29ECDA:  CMP.W           R0, #0x1000000
29ECDE:  VSTR            S27, [SP,#0xE8+var_B8]
29ECE2:  VDUP.32         Q8, R0
29ECE6:  STR             R6, [SP,#0xE8+var_D4]
29ECE8:  VSTR            S31, [SP,#0xE8+var_B0]
29ECEC:  STR             R5, [SP,#0xE8+var_AC]
29ECEE:  VSTR            S22, [SP,#0xE8+var_A8]
29ECF2:  STR.W           R10, [SP,#0xE8+var_A4]
29ECF6:  VSTR            S24, [SP,#0xE8+var_A0]
29ECFA:  VSTR            S19, [SP,#0xE8+var_D8]
29ECFE:  VSTR            S23, [SP,#0xE8+var_D0]
29ED02:  STR             R6, [SP,#0xE8+var_CC]
29ED04:  VSTR            S25, [SP,#0xE8+var_C8]
29ED08:  STR             R1, [SP,#0xE8+var_C4]
29ED0A:  VSTR            S29, [SP,#0xE8+var_C0]
29ED0E:  VST1.64         {D16-D17}, [R11@128]
29ED12:  STR.W           R10, [SP,#0xE8+var_9C]
29ED16:  STR             R1, [SP,#0xE8+var_BC]
29ED18:  BCC             loc_29ED2A
29ED1A:  LDR             R0, [SP,#0xE8+var_DC]
29ED1C:  ADD             R2, SP, #0xE8+var_B8
29ED1E:  ADD             R3, SP, #0xE8+var_D8
29ED20:  LDR             R1, [R0,#0x38]
29ED22:  STRD.W          R11, R6, [SP,#0xE8+var_E8]
29ED26:  BLX             j__ZN10MenuScreen10DrawSpriteEP9RwTextureP9CVector2DS3_P5CRGBAb; MenuScreen::DrawSprite(RwTexture *,CVector2D *,CVector2D *,CRGBA *,bool)
29ED2A:  ADD.W           R8, R8, #4
29ED2E:  ADDS            R4, #0x10
29ED30:  ADD             R0, SP, #0xE8+var_88
29ED32:  CMP.W           R8, #0xC
29ED36:  BNE.W           loc_29EBD2
29ED3A:  LDRD.W          R1, R0, [SP,#0xE8+var_E0]; int
29ED3E:  BLX             j__ZN12SelectScreen6RenderEi; SelectScreen::Render(int)
29ED42:  SUB.W           R4, R7, #-var_60
29ED46:  MOV             SP, R4
29ED48:  VPOP            {D8-D15}
29ED4C:  ADD             SP, SP, #4
29ED4E:  POP.W           {R8-R11}
29ED52:  POP             {R4-R7,PC}
