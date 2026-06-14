; =========================================================
; Game Engine Function: _ZN15CTouchInterface17LoadTouchControlsEv
; Address            : 0x2ADAB0 - 0x2AE408
; =========================================================

2ADAB0:  PUSH            {R4-R7,LR}
2ADAB2:  ADD             R7, SP, #0xC
2ADAB4:  PUSH.W          {R8-R10}
2ADAB8:  LDR.W           R0, =(RsGlobal_ptr - 0x2ADAC0)
2ADABC:  ADD             R0, PC; RsGlobal_ptr
2ADABE:  LDR             R4, [R0]; RsGlobal
2ADAC0:  BLX             j__Z19OS_PointerGetNumberv; OS_PointerGetNumber(void)
2ADAC4:  VLDR            S0, [R4,#4]
2ADAC8:  VMOV            S4, R0
2ADACC:  VLDR            S2, [R4,#8]
2ADAD0:  MOVS            R6, #2
2ADAD2:  LDR.W           R0, =(_ZN15CTouchInterface13m_nMaxTouchesE_ptr - 0x2ADAE8)
2ADAD6:  MOVS            R5, #0
2ADAD8:  VCVT.F32.S32    S2, S2
2ADADC:  LDR.W           R8, =(off_662E5C - 0x2ADAEE); "TouchDefaultTablet4x3.cfg" ...
2ADAE0:  VCVT.F32.S32    S0, S0
2ADAE4:  ADD             R0, PC; _ZN15CTouchInterface13m_nMaxTouchesE_ptr
2ADAE6:  VCVT.F32.S32    S4, S4
2ADAEA:  ADD             R8, PC; off_662E5C
2ADAEC:  LDR             R0, [R0]; CTouchInterface::m_nMaxTouches ...
2ADAEE:  MOVS            R4, #0
2ADAF0:  VDIV.F32        S0, S0, S2
2ADAF4:  VMOV.F32        S2, #4.0
2ADAF8:  VMIN.F32        D1, D2, D1
2ADAFC:  VMOV.F32        S4, #1.5
2ADB00:  VCVT.S32.F32    S2, S2
2ADB04:  VCMPE.F32       S0, S4
2ADB08:  VMRS            APSR_nzcv, FPSCR
2ADB0C:  VSTR            S2, [R0]
2ADB10:  IT GE
2ADB12:  MOVGE           R6, #3
2ADB14:  IT GE
2ADB16:  MOVGE           R5, #1
2ADB18:  BLX             j__Z13OS_SystemFormv; OS_SystemForm(void)
2ADB1C:  CMP             R0, #1
2ADB1E:  MOV.W           R1, #(stderr+1); char *
2ADB22:  IT EQ
2ADB24:  MOVEQ           R5, R6
2ADB26:  LDR.W           R0, [R8,R5,LSL#2]; this
2ADB2A:  BLX             j__ZN15CTouchInterface12LoadFromFileEPKcb; CTouchInterface::LoadFromFile(char const*,bool)
2ADB2E:  ADR.W           R0, aAdjustableCfg; "Adjustable.cfg"
2ADB32:  MOVS            R1, #0; char *
2ADB34:  BLX             j__ZN15CTouchInterface12LoadFromFileEPKcb; CTouchInterface::LoadFromFile(char const*,bool)
2ADB38:  LDR.W           R0, =(_ZN15CTouchInterface19m_pszWidgetTexturesE_ptr - 0x2ADB4C)
2ADB3C:  MOVW            R3, #:lower16:unk_726163
2ADB40:  LDR.W           R1, =(aAccelerate - 0x2ADB52); "accelerate"
2ADB44:  MOVT            R3, #:upper16:unk_726163
2ADB48:  ADD             R0, PC; _ZN15CTouchInterface19m_pszWidgetTexturesE_ptr
2ADB4A:  LDR.W           R6, =(aHandbrake - 0x2ADB5A); "handbrake"
2ADB4E:  ADD             R1, PC; "accelerate"
2ADB50:  MOVW            R12, #0x7568
2ADB54:  LDR             R0, [R0]; CTouchInterface::m_pszWidgetTextures ...
2ADB56:  ADD             R6, PC; "handbrake"
2ADB58:  VLDR            D16, [R1]
2ADB5C:  MOVT            R12, #0x5F64
2ADB60:  ADD.W           R1, R0, #0x100
2ADB64:  VLDR            D17, [R6]
2ADB68:  STR             R3, [R0,#(dword_6F4378 - 0x6F4374)]
2ADB6A:  ADD.W           R3, R0, #0x280
2ADB6E:  VST1.8          {D16}, [R1]
2ADB72:  ADD.W           R1, R0, #0x200
2ADB76:  MOVW            R8, #0x656D
2ADB7A:  MOV.W           R10, #0x78 ; 'x'
2ADB7E:  VST1.8          {D17}, [R1]
2ADB82:  MOVS            R1, #0x68 ; 'h'
2ADB84:  MOVT            R8, #0x756E
2ADB88:  MOVW            R9, #0x656C
2ADB8C:  STR.W           R12, [R0]; CTouchInterface::m_pszWidgetTextures
2ADB90:  STRH.W          R1, [R0,#(word_6F43F8 - 0x6F4374)]
2ADB94:  MOVW            R1, #0x7570
2ADB98:  LDR.W           R5, =(aHudLeft_1 - 0x2ADBB0); "hud_left"
2ADB9C:  MOVT            R1, #0x636E
2ADBA0:  STR.W           R1, [R0,#(dword_6F43F4 - 0x6F4374)]
2ADBA4:  MOVW            R1, #0x6574
2ADBA8:  LDR.W           LR, =(aHudRight_1 - 0x2ADBC0); "hud_right"
2ADBAC:  ADD             R5, PC; "hud_left"
2ADBAE:  STRB.W          R4, [R0,#(byte_6F447E - 0x6F4374)]
2ADBB2:  STRH.W          R1, [R0,#(word_6F447C - 0x6F4374)]
2ADBB6:  MOVS            R1, #0x65 ; 'e'
2ADBB8:  STRH.W          R1, [R0,#(word_6F44F8 - 0x6F4374)]
2ADBBC:  ADD             LR, PC; "hud_right"
2ADBBE:  STRH.W          R1, [R0,#(word_6F457C - 0x6F4374)]
2ADBC2:  MOV             R1, #0x6B617262
2ADBCA:  VLDR            D18, [R5]
2ADBCE:  STR.W           R1, [R0,#(dword_6F44F4 - 0x6F4374)]
2ADBD2:  MOVS            R1, #0x74 ; 't'
2ADBD4:  STRB.W          R4, [R0,#(byte_6F45FC - 0x6F4374)]
2ADBD8:  MOVW            R5, #0x6873
2ADBDC:  STRH.W          R1, [R0,#(word_6F467C - 0x6F4374)]
2ADBE0:  MOVT            R5, #0x6F6F
2ADBE4:  VLDR            D17, [LR]
2ADBE8:  MOVW            LR, #:lower16:unk_70755F
2ADBEC:  VST1.8          {D18}, [R3]
2ADBF0:  ADD.W           R3, R0, #0x300
2ADBF4:  MOVT            LR, #:upper16:unk_70755F
2ADBF8:  LDR.W           R2, =(aHudCellphone - 0x2ADC08); "hud_Cellphone"
2ADBFC:  VST1.8          {D17}, [R3]
2ADC00:  MOVW            R3, #0x6F68
2ADC04:  ADD             R2, PC; "hud_Cellphone"
2ADC06:  MOVT            R3, #0x6E72
2ADC0A:  STRB.W          R4, [R0,#(byte_6F46F8 - 0x6F4374)]
2ADC0E:  STR.W           R3, [R0,#(dword_6F46F4 - 0x6F4374)]
2ADC12:  ADDS            R3, R2, #6
2ADC14:  VLDR            D19, [R2]
2ADC18:  ADDW            R2, R0, #0x406
2ADC1C:  VLD1.16         {D16}, [R3]
2ADC20:  VST1.8          {D16}, [R2]
2ADC24:  ADD.W           R2, R0, #0x400
2ADC28:  LDR.W           R3, =(aFadeinbox_0 - 0x2ADC3C); "fadeinbox"
2ADC2C:  VST1.8          {D19}, [R2]
2ADC30:  MOV             R2, #0x74666947
2ADC38:  ADD             R3, PC; "fadeinbox"
2ADC3A:  STRB.W          R4, [R0,#(byte_6F47F8 - 0x6F4374)]
2ADC3E:  STR.W           R2, [R0,#(dword_6F47F4 - 0x6F4374)]
2ADC42:  MOV             R2, #0x7373696B
2ADC4A:  STRB.W          R4, [R0,#(byte_6F4878 - 0x6F4374)]
2ADC4E:  STR.W           R2, [R0,#(dword_6F4874 - 0x6F4374)]
2ADC52:  ADD.W           R2, R0, #0x600
2ADC56:  VLDR            D16, [R3]
2ADC5A:  MOVS            R3, #0x6E ; 'n'
2ADC5C:  STRH.W          R1, [R0,#(word_6F48F8 - 0x6F4374)]
2ADC60:  STR.W           R5, [R0,#(dword_6F48F4 - 0x6F4374)]
2ADC64:  VST1.8          {D16}, [R2]
2ADC68:  LDR.W           R2, =(aCraneRelease - 0x2ADC74); "crane_release"
2ADC6C:  STRH.W          R10, [R0,#(word_6F497C - 0x6F4374)]
2ADC70:  ADD             R2, PC; "crane_release"
2ADC72:  STR.W           LR, [R0,#(dword_6F49F8 - 0x6F4374)]
2ADC76:  ADDS            R6, R2, #6
2ADC78:  STR.W           R8, [R0,#(dword_6F49F4 - 0x6F4374)]
2ADC7C:  VLD1.16         {D16}, [R6]
2ADC80:  ADDW            R6, R0, #0x706
2ADC84:  VST1.8          {D16}, [R6]
2ADC88:  VLDR            D16, [R2]
2ADC8C:  ADD.W           R2, R0, #0x700
2ADC90:  LDR.W           R6, =(aHudLockon - 0x2ADC9E); "hud_lockon"
2ADC94:  VST1.8          {D16}, [R2]
2ADC98:  MOVS            R2, #0x6D ; 'm'
2ADC9A:  ADD             R6, PC; "hud_lockon"
2ADC9C:  STRH.W          R2, [R0,#(word_6F4AFC - 0x6F4374)]
2ADCA0:  LDR.W           R2, =(aDropItem - 0x2ADCA8); "drop_item"
2ADCA4:  ADD             R2, PC; "drop_item"
2ADCA6:  VLDR            D16, [R2]
2ADCAA:  ADD.W           R2, R0, #0x780
2ADCAE:  VST1.8          {D16}, [R2]
2ADCB2:  LDR.W           R2, =(aLeftshoot_0 - 0x2ADCBA); "leftshoot"
2ADCB6:  ADD             R2, PC; "leftshoot"
2ADCB8:  VLDR            D16, [R2]
2ADCBC:  ADD.W           R2, R0, #0x800
2ADCC0:  VST1.8          {D16}, [R2]
2ADCC4:  LDR.W           R2, =(aCamToggle - 0x2ADCD0); "cam-toggle"
2ADCC8:  STRH.W          R1, [R0,#(word_6F4B7C - 0x6F4374)]
2ADCCC:  ADD             R2, PC; "cam-toggle"
2ADCCE:  STRH.W          R1, [R0,#(word_6F4BF8 - 0x6F4374)]
2ADCD2:  STR.W           R5, [R0,#(dword_6F4BF4 - 0x6F4374)]
2ADCD6:  VLDR            D16, [R2]
2ADCDA:  ADD.W           R2, R0, #0x900
2ADCDE:  VST1.8          {D16}, [R2]
2ADCE2:  VLDR            D16, [R6]
2ADCE6:  ADD.W           R6, R0, #0x980
2ADCEA:  STRB.W          R4, [R0,#(byte_6F4C7E - 0x6F4374)]
2ADCEE:  STRH.W          R9, [R0,#(word_6F4C7C - 0x6F4374)]
2ADCF2:  VST1.8          {D16}, [R6]
2ADCF6:  MOVW            R6, #0x6E6F
2ADCFA:  STRB.W          R4, [R0,#(byte_6F4CFE - 0x6F4374)]
2ADCFE:  STRH.W          R6, [R0,#(word_6F4CFC - 0x6F4374)]
2ADD02:  STRH.W          R6, [R0,#(word_6F4D7C - 0x6F4374)]
2ADD06:  ADD.W           R6, R0, #0xA00
2ADD0A:  VST1.8          {D16}, [R6]
2ADD0E:  STRB.W          R4, [R0,#(byte_6F4D7E - 0x6F4374)]
2ADD12:  STRH.W          R1, [R0,#(word_6F4DF8 - 0x6F4374)]
2ADD16:  STR.W           R5, [R0,#(dword_6F4DF4 - 0x6F4374)]
2ADD1A:  STRH.W          R1, [R0,#(word_6F4E78 - 0x6F4374)]
2ADD1E:  STR.W           R5, [R0,#(dword_6F4E74 - 0x6F4374)]
2ADD22:  STR.W           R5, [R0,#(dword_6F4EF4 - 0x6F4374)]
2ADD26:  MOV             R5, #0x737465
2ADD2E:  STRH.W          R1, [R0,#(word_6F4EF8 - 0x6F4374)]
2ADD32:  STR.W           R5, [R0,#(dword_6F4F7C - 0x6F4374)]
2ADD36:  LDR.W           R5, =(aHudRockets - 0x2ADD3E); "hud_rockets"
2ADD3A:  ADD             R5, PC; "hud_rockets"
2ADD3C:  VLDR            D16, [R5]
2ADD40:  ADD.W           R5, R0, #0xC00
2ADD44:  VST1.8          {D16}, [R5]
2ADD48:  LDR.W           R5, =(aHudDetonator - 0x2ADD50); "hud_detonator"
2ADD4C:  ADD             R5, PC; "hud_detonator"
2ADD4E:  ADDS            R6, R5, #6
2ADD50:  VLD1.16         {D16}, [R6]
2ADD54:  ADDW            R6, R0, #0xC86
2ADD58:  VST1.8          {D16}, [R6]
2ADD5C:  VLDR            D16, [R5]
2ADD60:  ADD.W           R5, R0, #0xC80
2ADD64:  VST1.8          {D16}, [R5]
2ADD68:  LDR.W           R5, =(aHudTankLeft_0 - 0x2ADD70); "hud_tank_left"
2ADD6C:  ADD             R5, PC; "hud_tank_left"
2ADD6E:  ADDS            R6, R5, #6
2ADD70:  VLD1.16         {D16}, [R6]
2ADD74:  ADDW            R6, R0, #0xD06
2ADD78:  VST1.8          {D16}, [R6]
2ADD7C:  VLDR            D16, [R5]
2ADD80:  ADD.W           R5, R0, #0xD00
2ADD84:  VST1.8          {D16}, [R5]
2ADD88:  LDR.W           R5, =(aHudTankRight_0 - 0x2ADD90); "hud_tank_right"
2ADD8C:  ADD             R5, PC; "hud_tank_right"
2ADD8E:  ADDS            R6, R5, #7
2ADD90:  VLD1.8          {D16}, [R6]
2ADD94:  ADDW            R6, R0, #0xD87
2ADD98:  VST1.8          {D16}, [R6]
2ADD9C:  MOV             R6, #0x736559
2ADDA4:  VLDR            D16, [R5]
2ADDA8:  ADD.W           R5, R0, #0xD80
2ADDAC:  VST1.8          {D16}, [R5]
2ADDB0:  MOV             R5, #0x797562
2ADDB8:  STR.W           R5, [R0,#(dword_6F5178 - 0x6F4374)]
2ADDBC:  LDR.W           R5, =(aHudSwapgun - 0x2ADDC8); "hud_swapgun"
2ADDC0:  STR.W           R12, [R0,#(dword_6F5174 - 0x6F4374)]
2ADDC4:  ADD             R5, PC; "hud_swapgun"
2ADDC6:  VLDR            D16, [R5]
2ADDCA:  ADD.W           R5, R0, #0xE80
2ADDCE:  VST1.8          {D16}, [R5]
2ADDD2:  MOV             R5, #0x6E7567
2ADDDA:  STR.W           R5, [R0,#(dword_6F51FC - 0x6F4374)]
2ADDDE:  MOVS            R5, #0x6F ; 'o'
2ADDE0:  STRH.W          R5, [R0,#(word_6F527C - 0x6F4374)]
2ADDE4:  LDR.W           R5, =(aHudNitro - 0x2ADDEC); "hud_nitro"
2ADDE8:  ADD             R5, PC; "hud_nitro"
2ADDEA:  VLDR            D16, [R5]
2ADDEE:  ADD.W           R5, R0, #0xF00
2ADDF2:  VST1.8          {D16}, [R5]
2ADDF6:  MOV.W           R5, #(dword_6F7A74 - 0x6F4374)
2ADDFA:  STR             R6, [R0,R5]
2ADDFC:  MOVW            R5, #(byte_6F7AF6 - 0x6F4374)
2ADE00:  MOVW            R6, #0x6F4E
2ADE04:  STRB            R4, [R0,R5]
2ADE06:  MOV.W           R5, #(word_6F7AF4 - 0x6F4374)
2ADE0A:  STRH            R6, [R0,R5]
2ADE0C:  MOVW            R6, #0x6863
2ADE10:  LDR.W           R5, =(aHudCircle_2 - 0x2ADE18); "hud_circle"
2ADE14:  ADD             R5, PC; "hud_circle"
2ADE16:  VLDR            D16, [R5]
2ADE1A:  ADD.W           R5, R0, #0xF80
2ADE1E:  VST1.8          {D16}, [R5]
2ADE22:  MOVW            R5, #(byte_6F537E - 0x6F4374)
2ADE26:  STRB.W          R4, [R0,#(byte_6F52FE - 0x6F4374)]
2ADE2A:  STRH.W          R9, [R0,#(word_6F52FC - 0x6F4374)]
2ADE2E:  STRB            R4, [R0,R5]
2ADE30:  MOVW            R5, #(word_6F537C - 0x6F4374)
2ADE34:  STRH            R6, [R0,R5]
2ADE36:  MOV             R6, #unk_646573
2ADE3E:  LDR.W           R5, =(aHudCrouch_0 - 0x2ADE46); "hud_crouch"
2ADE42:  ADD             R5, PC; "hud_crouch"
2ADE44:  VLDR            D19, [R5]
2ADE48:  ADD.W           R5, R0, #0x1000
2ADE4C:  VST1.8          {D19}, [R5]
2ADE50:  MOVW            R5, #(byte_6F53FC - 0x6F4374)
2ADE54:  STRB            R4, [R0,R5]
2ADE56:  LDR.W           R5, =(aHudDive - 0x2ADE5E); "hud_dive"
2ADE5A:  ADD             R5, PC; "hud_dive"
2ADE5C:  VLDR            D19, [R5]
2ADE60:  ADD.W           R5, R0, #0x1080
2ADE64:  VST1.8          {D19}, [R5]
2ADE68:  MOVW            R5, #(byte_6F547E - 0x6F4374)
2ADE6C:  STRB            R4, [R0,R5]
2ADE6E:  MOVW            R5, #(word_6F547C - 0x6F4374)
2ADE72:  STRH.W          R9, [R0,R5]
2ADE76:  ADD.W           R5, R0, #0x1100
2ADE7A:  VST1.8          {D16}, [R5]
2ADE7E:  MOVW            R5, #(dword_6F5604 - 0x6F4374)
2ADE82:  STR             R6, [R0,R5]
2ADE84:  MOV             R6, #unk_705574
2ADE8C:  LDR.W           R5, =(aArcadegreenrel_0 - 0x2ADE94); "ArcadeGreenReleased"
2ADE90:  ADD             R5, PC; "ArcadeGreenReleased"
2ADE92:  VLD1.64         {D20-D21}, [R5]
2ADE96:  ADD.W           R5, R0, #0x1280
2ADE9A:  VST1.8          {D20-D21}, [R5]
2ADE9E:  MOVW            R5, #(dword_6F5684 - 0x6F4374)
2ADEA2:  STR             R6, [R0,R5]
2ADEA4:  LDR.W           R5, =(aArcadebuttonEx - 0x2ADEB0); "ArcadeButton_ExitUp"
2ADEA8:  LDR.W           R6, =(aArcadebuttonRe - 0x2ADEBA); "ArcadeButton_ResetUp"
2ADEAC:  ADD             R5, PC; "ArcadeButton_ExitUp"
2ADEAE:  VLD1.64         {D20-D21}, [R5]
2ADEB2:  ADD.W           R5, R0, #0x1300
2ADEB6:  ADD             R6, PC; "ArcadeButton_ResetUp"
2ADEB8:  ADD.W           R2, R6, #0xD
2ADEBC:  VST1.8          {D20-D21}, [R5]
2ADEC0:  MOVW            R5, #0x138D
2ADEC4:  VLD1.8          {D19}, [R2]
2ADEC8:  ADD             R5, R0
2ADECA:  ADD.W           R2, R0, #0x1380
2ADECE:  VLD1.64         {D20-D21}, [R6]
2ADED2:  MOVS            R6, #0x6B ; 'k'
2ADED4:  VST1.8          {D19}, [R5]
2ADED8:  MOV             R5, #unk_626F6E
2ADEE0:  VST1.8          {D20-D21}, [R2]
2ADEE4:  MOVW            R2, #(dword_6F5784 - 0x6F4374)
2ADEE8:  STR             R5, [R0,R2]
2ADEEA:  MOVW            R5, #0x6E77
2ADEEE:  LDR.W           R2, =(aArcadejoystick_3 - 0x2ADEF6); "ArcadeJoystick_Knob"
2ADEF2:  ADD             R2, PC; "ArcadeJoystick_Knob"
2ADEF4:  VLD1.64         {D20-D21}, [R2]
2ADEF8:  ADD.W           R2, R0, #0x1400
2ADEFC:  VST1.8          {D20-D21}, [R2]
2ADF00:  MOVW            R2, #(word_6F57FC - 0x6F4374)
2ADF04:  STRH            R1, [R0,R2]
2ADF06:  ADD.W           R2, R0, #0x1480
2ADF0A:  VST1.8          {D17}, [R2]
2ADF0E:  MOVW            R2, #(word_6F587C - 0x6F4374)
2ADF12:  STRH            R1, [R0,R2]
2ADF14:  ADD.W           R2, R0, #0x1500
2ADF18:  VST1.8          {D17}, [R2]
2ADF1C:  MOVW            R2, #(byte_6F58FC - 0x6F4374)
2ADF20:  STRB            R4, [R0,R2]
2ADF22:  LDR.W           R2, =(aCraneUp - 0x2ADF2A); "crane_up"
2ADF26:  ADD             R2, PC; "crane_up"
2ADF28:  VLDR            D19, [R2]
2ADF2C:  ADD.W           R2, R0, #0x1580
2ADF30:  VST1.8          {D19}, [R2]
2ADF34:  MOVW            R2, #(byte_6F597C - 0x6F4374)
2ADF38:  STRB            R4, [R0,R2]
2ADF3A:  ADD.W           R2, R0, #0x1600
2ADF3E:  VST1.8          {D19}, [R2]
2ADF42:  MOVW            R2, #(byte_6F59FE - 0x6F4374)
2ADF46:  STRB            R4, [R0,R2]
2ADF48:  MOVW            R2, #(word_6F59FC - 0x6F4374)
2ADF4C:  STRH            R5, [R0,R2]
2ADF4E:  LDR.W           R2, =(aCraneDown - 0x2ADF56); "crane_down"
2ADF52:  ADD             R2, PC; "crane_down"
2ADF54:  VLDR            D20, [R2]
2ADF58:  ADD.W           R2, R0, #0x1680
2ADF5C:  VST1.8          {D20}, [R2]
2ADF60:  MOVW            R2, #(byte_6F5A7C - 0x6F4374)
2ADF64:  STRB            R4, [R0,R2]
2ADF66:  ADD.W           R2, R0, #0x1700
2ADF6A:  VST1.8          {D19}, [R2]
2ADF6E:  MOVW            R2, #(byte_6F5AFE - 0x6F4374)
2ADF72:  STRB            R4, [R0,R2]
2ADF74:  MOVW            R2, #(word_6F5AFC - 0x6F4374)
2ADF78:  STRH            R5, [R0,R2]
2ADF7A:  ADD.W           R2, R0, #0x1780
2ADF7E:  MOVS            R5, #0x73 ; 's'
2ADF80:  VST1.8          {D20}, [R2]
2ADF84:  MOVW            R2, #(byte_6F5B7C - 0x6F4374)
2ADF88:  STRB            R4, [R0,R2]
2ADF8A:  ADD.W           R2, R0, #0x1800
2ADF8E:  VST1.8          {D18}, [R2]
2ADF92:  MOVW            R2, #(word_6F5BFC - 0x6F4374)
2ADF96:  STRH            R1, [R0,R2]
2ADF98:  ADD.W           R2, R0, #0x1880
2ADF9C:  VST1.8          {D17}, [R2]
2ADFA0:  MOVW            R2, #(byte_6F5C7C - 0x6F4374)
2ADFA4:  STRB            R4, [R0,R2]
2ADFA6:  LDR.W           R2, =(aHudPlus_0 - 0x2ADFAE); "hud_plus"
2ADFAA:  ADD             R2, PC; "hud_plus"
2ADFAC:  VLDR            D22, [R2]
2ADFB0:  ADD.W           R2, R0, #0x1900
2ADFB4:  VST1.8          {D22}, [R2]
2ADFB8:  MOVW            R2, #(word_6F5CFC - 0x6F4374)
2ADFBC:  STRH            R5, [R0,R2]
2ADFBE:  LDR.W           R2, =(aHudMinus_0 - 0x2ADFC6); "hud_minus"
2ADFC2:  ADD             R2, PC; "hud_minus"
2ADFC4:  VLDR            D23, [R2]
2ADFC8:  ADD.W           R2, R0, #0x1980
2ADFCC:  VST1.8          {D23}, [R2]
2ADFD0:  MOVW            R2, #(byte_6F5D7C - 0x6F4374)
2ADFD4:  STRB            R4, [R0,R2]
2ADFD6:  ADD.W           R2, R0, #0x1A00
2ADFDA:  VST1.8          {D18}, [R2]
2ADFDE:  MOVW            R2, #(word_6F5DFC - 0x6F4374)
2ADFE2:  STRH            R1, [R0,R2]
2ADFE4:  ADD.W           R2, R0, #0x1A80
2ADFE8:  VST1.8          {D17}, [R2]
2ADFEC:  MOVW            R2, #(word_6F5E7C - 0x6F4374)
2ADFF0:  STRH            R6, [R0,R2]
2ADFF2:  LDR.W           R2, =(aHudCheck - 0x2ADFFA); "hud_check"
2ADFF6:  ADD             R2, PC; "hud_check"
2ADFF8:  VLDR            D19, [R2]
2ADFFC:  ADD.W           R2, R0, #0x1B00
2AE000:  VST1.8          {D19}, [R2]
2AE004:  MOVW            R2, #(byte_6F5F04 - 0x6F4374)
2AE008:  STRB            R4, [R0,R2]
2AE00A:  LDR.W           R2, =(aHudDropJetpack_1 - 0x2AE012); "hud_drop_jetpack"
2AE00E:  ADD             R2, PC; "hud_drop_jetpack"
2AE010:  VLD1.64         {D20-D21}, [R2]
2AE014:  ADD.W           R2, R0, #0x1B80
2AE018:  VST1.8          {D20-D21}, [R2]
2AE01C:  MOVW            R2, #(word_6F5F7C - 0x6F4374)
2AE020:  STRH            R6, [R0,R2]
2AE022:  LDR.W           R2, =(aMenuBack - 0x2AE02A); "menu_back"
2AE026:  ADD             R2, PC; "menu_back"
2AE028:  VLDR            D24, [R2]
2AE02C:  ADD.W           R2, R0, #0x1C00
2AE030:  VST1.8          {D24}, [R2]
2AE034:  MOVW            R2, #(byte_6F5FFC - 0x6F4374)
2AE038:  STRB            R4, [R0,R2]
2AE03A:  LDR.W           R2, =(aStorebuy - 0x2AE042); "StoreBuy"
2AE03E:  ADD             R2, PC; "StoreBuy"
2AE040:  VLDR            D24, [R2]
2AE044:  ADD.W           R2, R0, #0x1C80
2AE048:  VST1.8          {D24}, [R2]
2AE04C:  MOVW            R2, #(dword_6F6078 - 0x6F4374)
2AE050:  STR.W           LR, [R0,R2]
2AE054:  MOV.W           R2, #(dword_6F6074 - 0x6F4374)
2AE058:  STR.W           R8, [R0,R2]
2AE05C:  MOVW            R2, #(word_6F60FC - 0x6F4374)
2AE060:  STRH            R3, [R0,R2]
2AE062:  MOVW            R3, #0x7465
2AE066:  LDR.W           R2, =(aMenuDown_0 - 0x2AE06E); "menu_down"
2AE06A:  ADD             R2, PC; "menu_down"
2AE06C:  VLDR            D24, [R2]
2AE070:  ADD.W           R2, R0, #0x1D80
2AE074:  VST1.8          {D24}, [R2]
2AE078:  MOVW            R2, #(byte_6F617C - 0x6F4374)
2AE07C:  STRB            R4, [R0,R2]
2AE07E:  ADD.W           R2, R0, #0x1E00
2AE082:  VST1.8          {D18}, [R2]
2AE086:  MOVW            R2, #(word_6F61FC - 0x6F4374)
2AE08A:  STRH            R1, [R0,R2]
2AE08C:  ADD.W           R2, R0, #0x1E80
2AE090:  VST1.8          {D17}, [R2]
2AE094:  MOVW            R2, #(byte_6F627C - 0x6F4374)
2AE098:  STRB            R4, [R0,R2]
2AE09A:  ADD.W           R2, R0, #0x1F00
2AE09E:  VST1.8          {D22}, [R2]
2AE0A2:  MOVW            R2, #(word_6F62FC - 0x6F4374)
2AE0A6:  STRH            R5, [R0,R2]
2AE0A8:  ADD.W           R2, R0, #0x1F80
2AE0AC:  VST1.8          {D23}, [R2]
2AE0B0:  MOVW            R2, #(word_6F637C - 0x6F4374)
2AE0B4:  STRH.W          R10, [R0,R2]
2AE0B8:  LDR.W           R2, =(aDialogbox - 0x2AE0C0); "DialogBox"
2AE0BC:  ADD             R2, PC; "DialogBox"
2AE0BE:  VLDR            D18, [R2]
2AE0C2:  ADD.W           R2, R0, #0x2000
2AE0C6:  VST1.8          {D18}, [R2]
2AE0CA:  MOVW            R2, #(word_6F63FC - 0x6F4374)
2AE0CE:  STRH.W          R10, [R0,R2]
2AE0D2:  ADD.W           R2, R0, #0x2080
2AE0D6:  VST1.8          {D18}, [R2]
2AE0DA:  MOVW            R2, #(byte_6F647C - 0x6F4374)
2AE0DE:  STRB            R4, [R0,R2]
2AE0E0:  LDR             R2, =(aStophand - 0x2AE0E6); "StopHand"
2AE0E2:  ADD             R2, PC; "StopHand"
2AE0E4:  VLDR            D18, [R2]
2AE0E8:  ADD.W           R2, R0, #0x2100
2AE0EC:  VST1.8          {D18}, [R2]
2AE0F0:  MOVW            R2, #(byte_6F64FE - 0x6F4374)
2AE0F4:  STRB            R4, [R0,R2]
2AE0F6:  MOVW            R2, #(word_6F64FC - 0x6F4374)
2AE0FA:  STRH            R3, [R0,R2]
2AE0FC:  MOV             R3, #0x726567
2AE104:  LDR             R2, =(aHudMagnet - 0x2AE10A); "hud_magnet"
2AE106:  ADD             R2, PC; "hud_magnet"
2AE108:  VLDR            D22, [R2]
2AE10C:  ADD.W           R2, R0, #0x2180
2AE110:  VST1.8          {D22}, [R2]
2AE114:  MOVW            R2, #(dword_6F657C - 0x6F4374)
2AE118:  STR             R3, [R0,R2]
2AE11A:  LDR             R2, =(aHudStinger - 0x2AE122); "hud_stinger"
2AE11C:  LDR             R3, =(aMissionStart - 0x2AE124); "mission_start"
2AE11E:  ADD             R2, PC; "hud_stinger"
2AE120:  ADD             R3, PC; "mission_start"
2AE122:  VLDR            D22, [R2]
2AE126:  ADD.W           R2, R0, #0x2200
2AE12A:  ADDS            R5, R3, #6
2AE12C:  VLDR            D23, [R3]
2AE130:  VST1.8          {D22}, [R2]
2AE134:  MOVW            R2, #0x2286
2AE138:  ADD             R2, R0
2AE13A:  VLD1.16         {D22}, [R5]
2AE13E:  VST1.8          {D22}, [R2]
2AE142:  ADD.W           R2, R0, #0x2280
2AE146:  VST1.8          {D23}, [R2]
2AE14A:  MOVW            R2, #0x2306
2AE14E:  ADD             R2, R0
2AE150:  LDR             R3, =(aTvarrowLeft - 0x2AE15E); "TVArrow_Left"
2AE152:  VST1.8          {D22}, [R2]
2AE156:  ADD.W           R2, R0, #0x2300
2AE15A:  ADD             R3, PC; "TVArrow_Left"
2AE15C:  VST1.8          {D23}, [R2]
2AE160:  MOVW            R2, #(word_6F66F8 - 0x6F4374)
2AE164:  ADDS            R5, R3, #5
2AE166:  STRH.W          R10, [R0,R2]
2AE16A:  MOV.W           R2, #(dword_6F66F4 - 0x6F4374)
2AE16E:  STR.W           R12, [R0,R2]
2AE172:  MOVW            R2, #(word_6F6778 - 0x6F4374)
2AE176:  STRH.W          R10, [R0,R2]
2AE17A:  MOV.W           R2, #(dword_6F6774 - 0x6F4374)
2AE17E:  STR.W           R12, [R0,R2]
2AE182:  MOVW            R2, #0x2486
2AE186:  ADD             R2, R0
2AE188:  VST1.8          {D22}, [R2]
2AE18C:  ADD.W           R2, R0, #0x2480
2AE190:  VST1.8          {D23}, [R2]
2AE194:  MOVW            R2, #(byte_6F6884 - 0x6F4374)
2AE198:  STRB            R4, [R0,R2]
2AE19A:  ADD.W           R2, R0, #0x2500
2AE19E:  VST1.8          {D20-D21}, [R2]
2AE1A2:  MOVW            R2, #(word_6F6AFC - 0x6F4374)
2AE1A6:  STRH            R1, [R0,R2]
2AE1A8:  ADD.W           R2, R0, #0x2780
2AE1AC:  VST1.8          {D17}, [R2]
2AE1B0:  MOVW            R2, #0x2605
2AE1B4:  ADD             R2, R0
2AE1B6:  VLD1.8          {D17}, [R5]
2AE1BA:  VST1.8          {D17}, [R2]
2AE1BE:  ADD.W           R2, R0, #0x2600
2AE1C2:  VLDR            D17, [R3]
2AE1C6:  LDR             R3, =(aTvarrowRight - 0x2AE1D4); "TVArrow_Right"
2AE1C8:  VST1.8          {D17}, [R2]
2AE1CC:  MOVW            R2, #0x2686
2AE1D0:  ADD             R3, PC; "TVArrow_Right"
2AE1D2:  ADD             R2, R0
2AE1D4:  ADDS            R5, R3, #6
2AE1D6:  VLD1.16         {D17}, [R5]
2AE1DA:  VST1.8          {D17}, [R2]
2AE1DE:  ADD.W           R2, R0, #0x2680
2AE1E2:  VLDR            D17, [R3]
2AE1E6:  MOV             R3, #unk_74696C
2AE1EE:  VST1.8          {D17}, [R2]
2AE1F2:  MOVW            R2, #(byte_6F6F04 - 0x6F4374)
2AE1F6:  STRB            R4, [R0,R2]
2AE1F8:  LDR             R2, =(aBasketballShoo - 0x2AE1FE); "basketball_shoot"
2AE1FA:  ADD             R2, PC; "basketball_shoot"
2AE1FC:  VLD1.64         {D22-D23}, [R2]
2AE200:  ADD.W           R2, R0, #0x2B80
2AE204:  VST1.8          {D22-D23}, [R2]
2AE208:  MOVW            R2, #(byte_6F6F84 - 0x6F4374)
2AE20C:  STRB            R4, [R0,R2]
2AE20E:  LDR             R2, =(aBasketballTric - 0x2AE214); "basketball_trick"
2AE210:  ADD             R2, PC; "basketball_trick"
2AE212:  VLD1.64         {D22-D23}, [R2]
2AE216:  ADD.W           R2, R0, #0x2C00
2AE21A:  VST1.8          {D22-D23}, [R2]
2AE21E:  MOVW            R2, #(word_6F6FF8 - 0x6F4374)
2AE222:  STRH.W          R10, [R0,R2]
2AE226:  MOV.W           R2, #(dword_6F6FF4 - 0x6F4374)
2AE22A:  STR.W           R12, [R0,R2]
2AE22E:  MOVW            R2, #(word_6F707C - 0x6F4374)
2AE232:  STRH            R6, [R0,R2]
2AE234:  ADD.W           R2, R0, #0x2D00
2AE238:  MOVW            R6, #0x646E
2AE23C:  VST1.8          {D19}, [R2]
2AE240:  MOVW            R2, #(dword_6F70F8 - 0x6F4374)
2AE244:  STR             R3, [R0,R2]
2AE246:  MOVW            R3, #0x4A42
2AE24A:  MOV.W           R2, #(dword_6F70F4 - 0x6F4374)
2AE24E:  MOVT            R3, #0x7053
2AE252:  STR             R3, [R0,R2]
2AE254:  MOVW            R2, #(byte_6F717C - 0x6F4374)
2AE258:  STRB            R4, [R0,R2]
2AE25A:  LDR             R2, =(aBjdouble - 0x2AE262); "BJDouble"
2AE25C:  LDR             R3, =(aLetsgohand - 0x2AE264); "LetsGoHand"
2AE25E:  ADD             R2, PC; "BJDouble"
2AE260:  ADD             R3, PC; "LetsGoHand"
2AE262:  VLDR            D17, [R2]
2AE266:  ADD.W           R2, R0, #0x2E00
2AE26A:  VST1.8          {D17}, [R2]
2AE26E:  MOVW            R2, #(word_6F71F8 - 0x6F4374)
2AE272:  STRH            R1, [R0,R2]
2AE274:  MOVW            R2, #0x4A42
2AE278:  MOV.W           R1, #(dword_6F71F4 - 0x6F4374)
2AE27C:  MOVT            R2, #0x6948
2AE280:  STR             R2, [R0,R1]
2AE282:  MOVW            R2, #:lower16:unk_646E61
2AE286:  MOVW            R1, #(dword_6F7278 - 0x6F4374)
2AE28A:  MOVT            R2, #:upper16:unk_646E61
2AE28E:  STR             R2, [R0,R1]
2AE290:  MOVW            R2, #0x4A42
2AE294:  MOV.W           R1, #(dword_6F7274 - 0x6F4374)
2AE298:  MOVT            R2, #0x7453
2AE29C:  STR             R2, [R0,R1]
2AE29E:  MOVW            R2, #:lower16:unk_776F72
2AE2A2:  MOVW            R1, #(dword_6F73FC - 0x6F4374)
2AE2A6:  MOVT            R2, #:upper16:unk_776F72
2AE2AA:  STR             R2, [R0,R1]
2AE2AC:  MOVS            R2, #0x77 ; 'w'
2AE2AE:  LDR             R1, =(aYellowarrow - 0x2AE2B4); "YellowArrow"
2AE2B0:  ADD             R1, PC; "YellowArrow"
2AE2B2:  VLDR            D17, [R1]
2AE2B6:  ADD.W           R1, R0, #0x3080
2AE2BA:  VST1.8          {D17}, [R1]
2AE2BE:  MOVW            R1, #(word_6F747C - 0x6F4374)
2AE2C2:  STRH            R2, [R0,R1]
2AE2C4:  MOVW            R2, #0x776F
2AE2C8:  LDR             R1, =(aBluearrow - 0x2AE2CE); "BlueArrow"
2AE2CA:  ADD             R1, PC; "BlueArrow"
2AE2CC:  VLDR            D17, [R1]
2AE2D0:  ADD.W           R1, R0, #0x3100
2AE2D4:  VST1.8          {D17}, [R1]
2AE2D8:  MOVW            R1, #(byte_6F74FC - 0x6F4374)
2AE2DC:  STRB            R4, [R0,R1]
2AE2DE:  LDR             R1, =(aRedarrow - 0x2AE2E4); "RedArrow"
2AE2E0:  ADD             R1, PC; "RedArrow"
2AE2E2:  VLDR            D17, [R1]
2AE2E6:  ADD.W           R1, R0, #0x3180
2AE2EA:  VST1.8          {D17}, [R1]
2AE2EE:  MOVW            R1, #(byte_6F757E - 0x6F4374)
2AE2F2:  STRB            R4, [R0,R1]
2AE2F4:  MOVW            R1, #(word_6F757C - 0x6F4374)
2AE2F8:  STRH            R2, [R0,R1]
2AE2FA:  LDR             R1, =(aGreenarrow - 0x2AE302); "GreenArrow"
2AE2FC:  LDR             R2, =(aGangbackground_0 - 0x2AE304); "GangBackground"
2AE2FE:  ADD             R1, PC; "GreenArrow"
2AE300:  ADD             R2, PC; "GangBackground"
2AE302:  VLDR            D17, [R1]
2AE306:  ADD.W           R1, R0, #0x3200
2AE30A:  VST1.8          {D17}, [R1]
2AE30E:  MOVW            R1, #(byte_6F7684 - 0x6F4374)
2AE312:  STRB            R4, [R0,R1]
2AE314:  ADD.W           R1, R0, #0x3300
2AE318:  VST1.8          {D20-D21}, [R1]
2AE31C:  MOVW            R1, #(byte_6F787C - 0x6F4374)
2AE320:  STRB            R4, [R0,R1]
2AE322:  LDR             R1, =(aFistbump - 0x2AE328); "FistBump"
2AE324:  ADD             R1, PC; "FistBump"
2AE326:  VLDR            D17, [R1]
2AE32A:  ADD.W           R1, R0, #0x3500
2AE32E:  VST1.8          {D17}, [R1]
2AE332:  MOVW            R1, #(word_6F78F8 - 0x6F4374)
2AE336:  STRH.W          R10, [R0,R1]
2AE33A:  MOV.W           R1, #(dword_6F78F4 - 0x6F4374)
2AE33E:  STR.W           R12, [R0,R1]
2AE342:  MOVW            R1, #(byte_6F797E - 0x6F4374)
2AE346:  VLDR            D17, [R3]
2AE34A:  ADD.W           R3, R0, #0x3600
2AE34E:  STRB            R4, [R0,R1]
2AE350:  MOVW            R1, #(word_6F797C - 0x6F4374)
2AE354:  STRH            R6, [R0,R1]
2AE356:  VST1.8          {D17}, [R3]
2AE35A:  MOVW            R3, #(byte_6F79FC - 0x6F4374)
2AE35E:  STRB            R4, [R0,R3]
2AE360:  ADD.W           R3, R0, #0x3680
2AE364:  VST1.8          {D18}, [R3]
2AE368:  ADDS            R3, R2, #7
2AE36A:  VLD1.8          {D17}, [R3]
2AE36E:  MOVW            R3, #0x3487
2AE372:  ADD             R3, R0
2AE374:  VLDR            D18, [R2]
2AE378:  ADD.W           R2, R0, #0x3480
2AE37C:  VST1.8          {D17}, [R3]
2AE380:  VST1.8          {D18}, [R2]
2AE384:  MOVW            R2, #(byte_6F957E - 0x6F4374)
2AE388:  STRB            R4, [R0,R2]
2AE38A:  MOVW            R2, #(word_6F957C - 0x6F4374)
2AE38E:  STRH.W          R9, [R0,R2]
2AE392:  ADD.W           R2, R0, #0x5200
2AE396:  VST1.8          {D16}, [R2]
2AE39A:  MOVW            R2, #(byte_6F96FE - 0x6F4374)
2AE39E:  STRB            R4, [R0,R2]
2AE3A0:  MOVW            R2, #(word_6F96FC - 0x6F4374)
2AE3A4:  STRH.W          R9, [R0,R2]
2AE3A8:  ADD.W           R2, R0, #0x5380
2AE3AC:  VST1.8          {D16}, [R2]
2AE3B0:  MOVW            R2, #(byte_6F997E - 0x6F4374)
2AE3B4:  LDR             R1, =(aHudParachute - 0x2AE3C0); "hud_parachute"
2AE3B6:  STRB            R4, [R0,R2]
2AE3B8:  MOVW            R2, #(word_6F997C - 0x6F4374)
2AE3BC:  ADD             R1, PC; "hud_parachute"
2AE3BE:  STRH.W          R9, [R0,R2]
2AE3C2:  ADD.W           R2, R0, #0x5600
2AE3C6:  VST1.8          {D16}, [R2]
2AE3CA:  ADDS            R2, R1, #6
2AE3CC:  VLD1.16         {D16}, [R2]
2AE3D0:  MOVW            R2, #0x5D86
2AE3D4:  ADD             R2, R0
2AE3D6:  VLDR            D17, [R1]
2AE3DA:  ADD.W           R1, R0, #0x5D80
2AE3DE:  VST1.8          {D16}, [R2]
2AE3E2:  MOV             R2, #0x63726963
2AE3EA:  VST1.8          {D17}, [R1]
2AE3EE:  MOVW            R1, #(byte_6F92FA - 0x6F4374)
2AE3F2:  STRB            R4, [R0,R1]
2AE3F4:  MOVW            R1, #(word_6F92F8 - 0x6F4374)
2AE3F8:  STRH.W          R9, [R0,R1]
2AE3FC:  MOV.W           R1, #(dword_6F92F4 - 0x6F4374)
2AE400:  STR             R2, [R0,R1]
2AE402:  POP.W           {R8-R10}
2AE406:  POP             {R4-R7,PC}
