; =========================================================
; Game Engine Function: _ZN17CWidgetPlayerInfo4DrawEv
; Address            : 0x2BCC88 - 0x2BD55E
; =========================================================

2BCC88:  PUSH            {R4-R7,LR}
2BCC8A:  ADD             R7, SP, #0xC
2BCC8C:  PUSH.W          {R8-R11}
2BCC90:  SUB             SP, SP, #4
2BCC92:  VPUSH           {D8}
2BCC96:  SUB.W           SP, SP, #0x280
2BCC9A:  MOV             R4, R0
2BCC9C:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x2BCCA4)
2BCCA0:  ADD             R0, PC; __stack_chk_guard_ptr
2BCCA2:  LDR             R0, [R0]; __stack_chk_guard
2BCCA4:  LDR             R0, [R0]
2BCCA6:  STR             R0, [SP,#0x2A8+var_2C]
2BCCA8:  MOVS            R0, #1; unsigned __int8
2BCCAA:  BLX             j__Z12emu_GammaSeth; emu_GammaSet(uchar)
2BCCAE:  LDR.W           R0, =(_ZN7CWidget21m_pInitialTouchWidgetE_ptr - 0x2BCCB8)
2BCCB2:  LDR             R1, [R4,#0x78]; int
2BCCB4:  ADD             R0, PC; _ZN7CWidget21m_pInitialTouchWidgetE_ptr
2BCCB6:  LDR             R0, [R0]; CWidget::m_pInitialTouchWidget ...
2BCCB8:  LDR.W           R0, [R0,R1,LSL#2]
2BCCBC:  CMP             R4, R0
2BCCBE:  BNE             loc_2BCD44
2BCCC0:  ADD             R0, SP, #0x2A8+var_284; this
2BCCC2:  BLX             j__ZN15CTouchInterface16GetTouchPositionEi; CTouchInterface::GetTouchPosition(int)
2BCCC6:  LDR.W           R0, =(_ZN7CWidget14SWIPE_DISTANCEE_ptr - 0x2BCCD2)
2BCCCA:  LDR.W           R2, =(_ZN7CWidget16m_vecTouchAnchorE_ptr - 0x2BCCD6)
2BCCCE:  ADD             R0, PC; _ZN7CWidget14SWIPE_DISTANCEE_ptr
2BCCD0:  LDR             R1, [R4,#0x78]; int
2BCCD2:  ADD             R2, PC; _ZN7CWidget16m_vecTouchAnchorE_ptr
2BCCD4:  LDR             R0, [R0]; CWidget::SWIPE_DISTANCE ...
2BCCD6:  LDR             R2, [R2]; CWidget::m_vecTouchAnchor ...
2BCCD8:  VLDR            S0, [R0]
2BCCDC:  ADD.W           R0, R2, R1,LSL#3
2BCCE0:  VLDR            S2, [R0]
2BCCE4:  VSUB.F32        S0, S2, S0
2BCCE8:  VLDR            S2, [SP,#0x2A8+var_284]
2BCCEC:  VCMPE.F32       S2, S0
2BCCF0:  VMRS            APSR_nzcv, FPSCR
2BCCF4:  ITTT LT
2BCCF6:  MOVWLT          R0, #0xF5C3
2BCCFA:  MOVTLT          R0, #0x3F28
2BCCFE:  STRLT.W         R0, [R4,#0xA8]
2BCD02:  ADD             R0, SP, #0x2A8+var_284; this
2BCD04:  BLX             j__ZN15CTouchInterface16GetTouchPositionEi; CTouchInterface::GetTouchPosition(int)
2BCD08:  LDR.W           R0, =(_ZN7CWidget14SWIPE_DISTANCEE_ptr - 0x2BCD14)
2BCD0C:  LDR.W           R1, =(_ZN7CWidget16m_vecTouchAnchorE_ptr - 0x2BCD18)
2BCD10:  ADD             R0, PC; _ZN7CWidget14SWIPE_DISTANCEE_ptr
2BCD12:  LDR             R2, [R4,#0x78]
2BCD14:  ADD             R1, PC; _ZN7CWidget16m_vecTouchAnchorE_ptr
2BCD16:  LDR             R0, [R0]; CWidget::SWIPE_DISTANCE ...
2BCD18:  LDR             R1, [R1]; CWidget::m_vecTouchAnchor ...
2BCD1A:  VLDR            S0, [R0]
2BCD1E:  ADD.W           R0, R1, R2,LSL#3
2BCD22:  VLDR            S2, [R0]
2BCD26:  VADD.F32        S0, S2, S0
2BCD2A:  VLDR            S2, [SP,#0x2A8+var_284]
2BCD2E:  VCMPE.F32       S2, S0
2BCD32:  VMRS            APSR_nzcv, FPSCR
2BCD36:  ITTT GT
2BCD38:  MOVWGT          R0, #0xF5C3
2BCD3C:  MOVTGT          R0, #0x3F28
2BCD40:  STRGT.W         R0, [R4,#0xAC]
2BCD44:  LDR.W           R0, =(_ZN7CWidget14m_fElapsedTimeE_ptr - 0x2BCD50)
2BCD48:  VLDR            S0, [R4,#0xA8]
2BCD4C:  ADD             R0, PC; _ZN7CWidget14m_fElapsedTimeE_ptr
2BCD4E:  VLDR            S16, =0.0
2BCD52:  VCVT.F64.F32    D16, S0
2BCD56:  LDR             R0, [R0]; CWidget::m_fElapsedTime ...
2BCD58:  VLDR            D17, [R0]
2BCD5C:  MOV.W           R0, #0xFFFFFFFF; int
2BCD60:  VSUB.F64        D16, D16, D17
2BCD64:  VCVT.F32.F64    S0, D16
2BCD68:  VMAX.F32        D0, D0, D8
2BCD6C:  VSTR            S0, [R4,#0xA8]
2BCD70:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2BCD74:  MOV             R5, R0
2BCD76:  CMP             R5, #0
2BCD78:  BEQ.W           loc_2BCEBC
2BCD7C:  LDR.W           R0, [R5,#0x5A4]
2BCD80:  CMP             R0, #0
2BCD82:  ITTTT EQ
2BCD84:  LDREQ.W         R0, [R5,#0x5C0]
2BCD88:  CMPEQ           R0, #0
2BCD8A:  LDREQ.W         R0, [R5,#0x5DC]
2BCD8E:  CMPEQ           R0, #0
2BCD90:  BEQ.W           loc_2BCE62
2BCD94:  MOV             R0, R5; this
2BCD96:  BLX             j__ZN4CPed14IsPedShootableEv; CPed::IsPedShootable(void)
2BCD9A:  CMP             R0, #1
2BCD9C:  BNE.W           loc_2BCEBC
2BCDA0:  LDR.W           R0, [R5,#0x44C]
2BCDA4:  CMP             R0, #0x24 ; '$'
2BCDA6:  BEQ.W           loc_2BCEBC
2BCDAA:  MOV             R0, R5; this
2BCDAC:  BLX             j__ZN6CWorld28FindPlayerSlotWithPedPointerEPv; CWorld::FindPlayerSlotWithPedPointer(void *)
2BCDB0:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x2BCDBC)
2BCDB4:  MOV.W           R2, #0x194
2BCDB8:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
2BCDBA:  LDR             R1, [R1]; CWorld::Players ...
2BCDBC:  MLA.W           R0, R0, R2, R1
2BCDC0:  LDR.W           R0, [R0,#0xB0]; this
2BCDC4:  CMP             R0, #0
2BCDC6:  BNE.W           loc_2BCEBC
2BCDCA:  BLX             j__ZN7CDarkel13FrenzyOnGoingEv; CDarkel::FrenzyOnGoing(void)
2BCDCE:  CMP             R0, #0
2BCDD0:  BNE.W           loc_2BCEBC
2BCDD4:  LDR.W           R0, [R5,#0x100]
2BCDD8:  CMP             R0, #0
2BCDDA:  BNE.W           loc_2BCEBC
2BCDDE:  LDR.W           R0, [R5,#0x440]; this
2BCDE2:  BLX             j__ZNK16CPedIntelligence14GetTaskJetPackEv; CPedIntelligence::GetTaskJetPack(void)
2BCDE6:  CMP             R0, #0
2BCDE8:  BNE.W           loc_2BCEBC
2BCDEC:  LDR.W           R0, [R5,#0x720]
2BCDF0:  CMP             R0, #0
2BCDF2:  BNE.W           loc_2BCEBC
2BCDF6:  LDR.W           R0, [R5,#0x444]
2BCDFA:  LDRH            R1, [R0,#0x34]
2BCDFC:  TST.W           R1, #8
2BCE00:  BNE.W           loc_2BCEBC
2BCE04:  LSLS            R1, R1, #0x14
2BCE06:  MOV.W           R6, #1
2BCE0A:  BMI.W           loc_2BCEBE; jumptable 002BCE2C cases 7,8,34,39,40,42,46,51,52
2BCE0E:  LDRB.W          R0, [R0,#0x85]
2BCE12:  CMP             R0, #0
2BCE14:  BNE.W           loc_2BCEBE; jumptable 002BCE2C cases 7,8,34,39,40,42,46,51,52
2BCE18:  LDR.W           R0, =(TheCamera_ptr - 0x2BCE20)
2BCE1C:  ADD             R0, PC; TheCamera_ptr
2BCE1E:  LDR             R0, [R0]; TheCamera
2BCE20:  LDRH.W          R0, [R0,#(word_95275C - 0x951FA8)]
2BCE24:  SUBS            R0, #7; switch 46 cases
2BCE26:  CMP             R0, #0x2D ; '-'
2BCE28:  BHI             def_2BCE2C; jumptable 002BCE2C default case, cases 9-33,35-38,41,43-45,47-50
2BCE2A:  MOVS            R6, #1
2BCE2C:  TBB.W           [PC,R0]; switch jump
2BCE30:  DCB 0x47; jump table for switch statement
2BCE31:  DCB 0x47
2BCE32:  DCB 0x17
2BCE33:  DCB 0x17
2BCE34:  DCB 0x17
2BCE35:  DCB 0x17
2BCE36:  DCB 0x17
2BCE37:  DCB 0x17
2BCE38:  DCB 0x17
2BCE39:  DCB 0x17
2BCE3A:  DCB 0x17
2BCE3B:  DCB 0x17
2BCE3C:  DCB 0x17
2BCE3D:  DCB 0x17
2BCE3E:  DCB 0x17
2BCE3F:  DCB 0x17
2BCE40:  DCB 0x17
2BCE41:  DCB 0x17
2BCE42:  DCB 0x17
2BCE43:  DCB 0x17
2BCE44:  DCB 0x17
2BCE45:  DCB 0x17
2BCE46:  DCB 0x17
2BCE47:  DCB 0x17
2BCE48:  DCB 0x17
2BCE49:  DCB 0x17
2BCE4A:  DCB 0x17
2BCE4B:  DCB 0x47
2BCE4C:  DCB 0x17
2BCE4D:  DCB 0x17
2BCE4E:  DCB 0x17
2BCE4F:  DCB 0x17
2BCE50:  DCB 0x47
2BCE51:  DCB 0x47
2BCE52:  DCB 0x17
2BCE53:  DCB 0x47
2BCE54:  DCB 0x17
2BCE55:  DCB 0x17
2BCE56:  DCB 0x17
2BCE57:  DCB 0x47
2BCE58:  DCB 0x17
2BCE59:  DCB 0x17
2BCE5A:  DCB 0x17
2BCE5B:  DCB 0x17
2BCE5C:  DCB 0x47
2BCE5D:  DCB 0x47
2BCE5E:  MOVS            R6, #0; jumptable 002BCE2C default case, cases 9-33,35-38,41,43-45,47-50
2BCE60:  B               loc_2BCEBE; jumptable 002BCE2C cases 7,8,34,39,40,42,46,51,52
2BCE62:  LDR.W           R0, [R5,#0x5F8]
2BCE66:  CMP             R0, #0
2BCE68:  ITT EQ
2BCE6A:  LDREQ.W         R0, [R5,#0x614]
2BCE6E:  CMPEQ           R0, #0
2BCE70:  BNE.W           loc_2BCD94
2BCE74:  LDR.W           R0, [R5,#0x630]
2BCE78:  CMP             R0, #0
2BCE7A:  ITT EQ
2BCE7C:  LDREQ.W         R0, [R5,#0x64C]
2BCE80:  CMPEQ           R0, #0
2BCE82:  BNE.W           loc_2BCD94
2BCE86:  LDR.W           R0, [R5,#0x668]
2BCE8A:  CMP             R0, #0
2BCE8C:  ITT EQ
2BCE8E:  LDREQ.W         R0, [R5,#0x684]
2BCE92:  CMPEQ           R0, #0
2BCE94:  BNE.W           loc_2BCD94
2BCE98:  LDR.W           R0, [R5,#0x6A0]
2BCE9C:  CMP             R0, #0
2BCE9E:  ITT EQ
2BCEA0:  LDREQ.W         R0, [R5,#0x6BC]
2BCEA4:  CMPEQ           R0, #0
2BCEA6:  BNE.W           loc_2BCD94
2BCEAA:  LDR.W           R0, [R5,#0x6D8]
2BCEAE:  CMP             R0, #0
2BCEB0:  ITT EQ
2BCEB2:  LDREQ.W         R0, [R5,#0x6F4]
2BCEB6:  CMPEQ           R0, #0
2BCEB8:  BNE.W           loc_2BCD94
2BCEBC:  MOVS            R6, #1
2BCEBE:  VLDR            S0, [R4,#0xA8]; jumptable 002BCE2C cases 7,8,34,39,40,42,46,51,52
2BCEC2:  VCMPE.F32       S0, #0.0
2BCEC6:  VMRS            APSR_nzcv, FPSCR
2BCECA:  BLE             loc_2BCF5C
2BCECC:  VLDR            S2, [R4,#0x98]
2BCED0:  ADD.W           R5, R4, #0xB0
2BCED4:  VLDR            S6, [R4,#0xA0]
2BCED8:  CMP             R6, #1
2BCEDA:  VLDR            S4, [R4,#0x9C]
2BCEDE:  VLDR            S8, [R4,#0xA4]
2BCEE2:  VSUB.F32        S6, S6, S2
2BCEE6:  VLDR            S12, =0.1
2BCEEA:  VSUB.F32        S10, S4, S8
2BCEEE:  VLDR            S14, =-0.2
2BCEF2:  VSTR            S2, [SP,#0x2A8+var_27C]
2BCEF6:  VABS.F32        S6, S6
2BCEFA:  VABS.F32        S10, S10
2BCEFE:  VMUL.F32        S6, S6, S14
2BCF02:  VMUL.F32        S10, S10, S12
2BCF06:  VADD.F32        S6, S2, S6
2BCF0A:  VADD.F32        S8, S8, S10
2BCF0E:  VSUB.F32        S4, S4, S10
2BCF12:  VSTR            S8, [SP,#0x2A8+var_278]
2BCF16:  VSTR            S6, [SP,#0x2A8+var_284]
2BCF1A:  VSTR            S4, [SP,#0x2A8+var_280]
2BCF1E:  LDRB.W          R0, [R4,#0x4C]
2BCF22:  VMOV            S2, R0
2BCF26:  VCVT.F32.U32    S2, S2
2BCF2A:  VMUL.F32        S0, S0, S2
2BCF2E:  VCVT.U32.F32    S0, S0
2BCF32:  VMOV            R0, S0
2BCF36:  BNE             loc_2BCF44
2BCF38:  STR             R0, [SP,#0x2A8+var_2A8]
2BCF3A:  ADD             R0, SP, #0x2A8+var_F4
2BCF3C:  MOVS            R1, #0xFF
2BCF3E:  MOVS            R2, #0
2BCF40:  MOVS            R3, #0
2BCF42:  B               loc_2BCF4E
2BCF44:  STR             R0, [SP,#0x2A8+var_2A8]; unsigned __int8
2BCF46:  ADD             R0, SP, #0x2A8+var_F4; this
2BCF48:  MOVS            R1, #0xFF; unsigned __int8
2BCF4A:  MOVS            R2, #0xFF; unsigned __int8
2BCF4C:  MOVS            R3, #0xFF; unsigned __int8
2BCF4E:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BCF52:  ADD             R1, SP, #0x2A8+var_284
2BCF54:  ADD             R2, SP, #0x2A8+var_F4
2BCF56:  MOV             R0, R5
2BCF58:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; CSprite2d::Draw(CRect const&,CRGBA const&)
2BCF5C:  LDR.W           R0, =(_ZN7CWidget14m_fElapsedTimeE_ptr - 0x2BCF68)
2BCF60:  VLDR            S0, [R4,#0xAC]
2BCF64:  ADD             R0, PC; _ZN7CWidget14m_fElapsedTimeE_ptr
2BCF66:  VCVT.F64.F32    D16, S0
2BCF6A:  LDR             R0, [R0]; CWidget::m_fElapsedTime ...
2BCF6C:  VLDR            D17, [R0]
2BCF70:  VSUB.F64        D16, D16, D17
2BCF74:  VCVT.F32.F64    S0, D16
2BCF78:  VCMPE.F32       S0, #0.0
2BCF7C:  VMRS            APSR_nzcv, FPSCR
2BCF80:  IT GT
2BCF82:  VMOVGT.F32      S16, S0
2BCF86:  VSTR            S16, [R4,#0xAC]
2BCF8A:  BLE             loc_2BD044
2BCF8C:  VLDR            S0, [R4,#0x98]
2BCF90:  ADD.W           R5, R4, #0xB0
2BCF94:  VLDR            S4, [R4,#0xA0]
2BCF98:  CMP             R6, #1
2BCF9A:  VLDR            S2, [R4,#0x9C]
2BCF9E:  VLDR            S6, [R4,#0xA4]
2BCFA2:  VSUB.F32        S0, S4, S0
2BCFA6:  VLDR            S10, =0.1
2BCFAA:  VSUB.F32        S8, S2, S6
2BCFAE:  VLDR            S12, =0.2
2BCFB2:  VSTR            S4, [SP,#0x2A8+var_27C]
2BCFB6:  VABS.F32        S0, S0
2BCFBA:  VABS.F32        S8, S8
2BCFBE:  VMUL.F32        S0, S0, S12
2BCFC2:  VMUL.F32        S8, S8, S10
2BCFC6:  VADD.F32        S0, S4, S0
2BCFCA:  VADD.F32        S6, S6, S8
2BCFCE:  VSUB.F32        S2, S2, S8
2BCFD2:  VSTR            S6, [SP,#0x2A8+var_278]
2BCFD6:  VSTR            S0, [SP,#0x2A8+var_284]
2BCFDA:  VSTR            S2, [SP,#0x2A8+var_280]
2BCFDE:  LDRB.W          R0, [R4,#0x4C]
2BCFE2:  VMOV            S0, R0
2BCFE6:  VCVT.F32.U32    S0, S0
2BCFEA:  VMUL.F32        S0, S16, S0
2BCFEE:  VCVT.U32.F32    S0, S0
2BCFF2:  VMOV            R0, S0
2BCFF6:  BNE             loc_2BD02C
2BCFF8:  STR             R0, [SP,#0x2A8+var_2A8]
2BCFFA:  ADD             R0, SP, #0x2A8+var_F4
2BCFFC:  MOVS            R1, #0xFF
2BCFFE:  MOVS            R2, #0
2BD000:  MOVS            R3, #0
2BD002:  B               loc_2BD036
2BD004:  DCFS 0.0
2BD008:  DCFS 0.1
2BD00C:  DCFS -0.2
2BD010:  DCFS 0.2
2BD014:  ALIGN 8
2BD018:  DCFD 0.006
2BD020:  DCFS 0.55
2BD024:  DCFS 0.05
2BD028:  DCFS 0.00525
2BD02C:  STR             R0, [SP,#0x2A8+var_2A8]; unsigned __int8
2BD02E:  ADD             R0, SP, #0x2A8+var_F4; this
2BD030:  MOVS            R1, #0xFF; unsigned __int8
2BD032:  MOVS            R2, #0xFF; unsigned __int8
2BD034:  MOVS            R3, #0xFF; unsigned __int8
2BD036:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BD03A:  ADD             R1, SP, #0x2A8+var_284
2BD03C:  ADD             R2, SP, #0x2A8+var_F4
2BD03E:  MOV             R0, R5
2BD040:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; CSprite2d::Draw(CRect const&,CRGBA const&)
2BD044:  LDR.W           R0, =(FrontEndMenuManager_ptr - 0x2BD04C)
2BD048:  ADD             R0, PC; FrontEndMenuManager_ptr
2BD04A:  LDR             R0, [R0]; FrontEndMenuManager
2BD04C:  LDRB            R0, [R0,#(byte_98F111 - 0x98F0F8)]
2BD04E:  CMP             R0, #0
2BD050:  BEQ.W           loc_2BD4DA
2BD054:  LDR.W           R0, =(_ZN11CTheScripts11bDisplayHudE_ptr - 0x2BD05C)
2BD058:  ADD             R0, PC; _ZN11CTheScripts11bDisplayHudE_ptr
2BD05A:  LDR             R0, [R0]; CTheScripts::bDisplayHud ...
2BD05C:  LDRB            R0, [R0]; CTheScripts::bDisplayHud
2BD05E:  CMP             R0, #0
2BD060:  BEQ.W           loc_2BD4DA
2BD064:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x2BD074)
2BD068:  MOV.W           R2, #0x194; unsigned __int8
2BD06C:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x2BD076)
2BD070:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
2BD072:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
2BD074:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
2BD076:  LDR             R1, [R1]; CWorld::Players ...
2BD078:  LDR             R0, [R0]; CWorld::PlayerInFocus
2BD07A:  SMULBB.W        R0, R0, R2
2BD07E:  LDR.W           R8, [R1,R0]
2BD082:  MOVS            R0, #0; this
2BD084:  MOVS            R1, #0; unsigned __int8
2BD086:  BLX             j__ZN5CFont13SetBackgroundEhh; CFont::SetBackground(uchar,uchar)
2BD08A:  MOVS            R0, #0; this
2BD08C:  BLX             j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
2BD090:  LDR.W           R0, =(_ZN5CFont18UsingEFIGSLanguageE_ptr - 0x2BD098)
2BD094:  ADD             R0, PC; _ZN5CFont18UsingEFIGSLanguageE_ptr
2BD096:  LDR             R0, [R0]; CFont::UsingEFIGSLanguage ...
2BD098:  LDRB            R0, [R0]; CFont::UsingEFIGSLanguage
2BD09A:  CMP             R0, #0
2BD09C:  MOV.W           R0, #5
2BD0A0:  IT NE
2BD0A2:  MOVNE           R0, #(stderr+3); this
2BD0A4:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
2BD0A8:  MOVS            R0, #(stderr+2); this
2BD0AA:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
2BD0AE:  MOVS            R0, #0; this
2BD0B0:  BLX             j__ZN5CFont19SetRightJustifyWrapEf; CFont::SetRightJustifyWrap(float)
2BD0B4:  MOVS            R0, #(stderr+1); this
2BD0B6:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
2BD0BA:  VLDR            S0, [R4,#0x20]
2BD0BE:  VLDR            S2, [R4,#0x28]
2BD0C2:  VLDR            D17, =0.006
2BD0C6:  VSUB.F32        S0, S2, S0
2BD0CA:  VABS.F32        S0, S0
2BD0CE:  VCVT.F64.F32    D16, S0
2BD0D2:  VMUL.F64        D16, D16, D17
2BD0D6:  VCVT.F32.F64    S0, D16
2BD0DA:  VMOV            R0, S0; this
2BD0DE:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2BD0E2:  LDRB.W          R0, [R4,#0x4C]
2BD0E6:  MOVS            R1, #0; unsigned __int8
2BD0E8:  STR             R0, [SP,#0x2A8+var_2A8]; unsigned __int8
2BD0EA:  ADD             R0, SP, #0x2A8+var_288; this
2BD0EC:  MOVS            R2, #0; unsigned __int8
2BD0EE:  MOVS            R3, #0; unsigned __int8
2BD0F0:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BD0F4:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
2BD0F8:  LDR.W           R0, =(HudColour_ptr - 0x2BD108)
2BD0FC:  ADD             R6, SP, #0x2A8+var_28C
2BD0FE:  LDRB.W          R3, [R4,#0x4C]
2BD102:  MOVS            R2, #5; unsigned __int8
2BD104:  ADD             R0, PC; HudColour_ptr
2BD106:  LDR             R1, [R0]; HudColour ; unsigned __int8
2BD108:  MOV             R0, R6; this
2BD10A:  BLX             j__ZN11CHudColours6GetRGBEhh; CHudColours::GetRGB(uchar,uchar)
2BD10E:  MOV             R0, R6
2BD110:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
2BD114:  LDR.W           R0, =(_ZN6CClock20ms_nGameClockMinutesE_ptr - 0x2BD122)
2BD118:  ADD             R6, SP, #0x2A8+var_F4
2BD11A:  LDR.W           R1, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x2BD124)
2BD11E:  ADD             R0, PC; _ZN6CClock20ms_nGameClockMinutesE_ptr
2BD120:  ADD             R1, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
2BD122:  LDR             R0, [R0]; CClock::ms_nGameClockMinutes ...
2BD124:  LDR             R1, [R1]; CClock::ms_nGameClockHours ...
2BD126:  LDRB            R3, [R0]; CClock::ms_nGameClockMinutes
2BD128:  MOV             R0, R6
2BD12A:  LDRB            R2, [R1]; CClock::ms_nGameClockHours
2BD12C:  ADR.W           R1, a02d02d; "%02d:%02d"
2BD130:  BL              sub_5E6BC0
2BD134:  ADD             R1, SP, #0x2A8+var_284; unsigned __int16 *
2BD136:  MOV             R0, R6; char *
2BD138:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
2BD13C:  LDRB.W          R0, [R4,#0xB4]
2BD140:  CBZ             R0, loc_2BD148
2BD142:  VLDR            S0, [R4,#0x28]
2BD146:  B               loc_2BD164
2BD148:  VLDR            S0, [R4,#0x20]
2BD14C:  VLDR            S2, [R4,#0x28]
2BD150:  VLDR            S4, =0.55
2BD154:  VSUB.F32        S2, S2, S0
2BD158:  VABS.F32        S2, S2
2BD15C:  VMUL.F32        S2, S2, S4
2BD160:  VADD.F32        S0, S0, S2
2BD164:  VLDR            S2, [R4,#0x24]
2BD168:  VMOV            R9, S0
2BD16C:  VLDR            S4, [R4,#0x2C]
2BD170:  ADD             R2, SP, #0x2A8+var_284; CFont *
2BD172:  VLDR            S6, =0.05
2BD176:  VSUB.F32        S2, S2, S4
2BD17A:  VABS.F32        S2, S2
2BD17E:  VMUL.F32        S2, S2, S6
2BD182:  MOV             R0, R9; this
2BD184:  VADD.F32        S2, S4, S2
2BD188:  VMOV            R1, S2; float
2BD18C:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
2BD190:  MOVS            R0, #0; this
2BD192:  BLX             j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
2BD196:  MOVS            R0, #0; this
2BD198:  MOVS            R1, #0; unsigned __int8
2BD19A:  BLX             j__ZN5CFont13SetBackgroundEhh; CFont::SetBackground(uchar,uchar)
2BD19E:  MOVS            R0, #(stderr+2); this
2BD1A0:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
2BD1A4:  MOVS            R0, #0; this
2BD1A6:  BLX             j__ZN5CFont19SetRightJustifyWrapEf; CFont::SetRightJustifyWrap(float)
2BD1AA:  LDR.W           R0, =(_ZN5CFont18UsingEFIGSLanguageE_ptr - 0x2BD1B2)
2BD1AE:  ADD             R0, PC; _ZN5CFont18UsingEFIGSLanguageE_ptr
2BD1B0:  LDR             R0, [R0]; CFont::UsingEFIGSLanguage ...
2BD1B2:  LDRB            R1, [R0]; unsigned __int8
2BD1B4:  MOVS            R0, #5
2BD1B6:  CMP             R1, #0
2BD1B8:  IT NE
2BD1BA:  MOVNE           R0, #(stderr+3); this
2BD1BC:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
2BD1C0:  MOVS            R0, #0; this
2BD1C2:  BLX             j__ZN5CFont21SetDropShadowPositionEa; CFont::SetDropShadowPosition(signed char)
2BD1C6:  LDRB.W          R0, [R4,#0x4C]
2BD1CA:  MOVS            R1, #0; unsigned __int8
2BD1CC:  STR             R0, [SP,#0x2A8+var_2A8]; unsigned __int8
2BD1CE:  ADD             R0, SP, #0x2A8+var_290; this
2BD1D0:  MOVS            R2, #0; unsigned __int8
2BD1D2:  MOVS            R3, #0; unsigned __int8
2BD1D4:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BD1D8:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
2BD1DC:  MOVS            R0, #(stderr+1); this
2BD1DE:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
2BD1E2:  VLDR            S0, [R4,#0x20]
2BD1E6:  VLDR            S2, [R4,#0x28]
2BD1EA:  VSUB.F32        S0, S2, S0
2BD1EE:  VLDR            S2, =0.00525
2BD1F2:  VABS.F32        S0, S0
2BD1F6:  VMUL.F32        S0, S0, S2
2BD1FA:  VMOV            R0, S0; this
2BD1FE:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2BD202:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x2BD20E)
2BD204:  MOV.W           R2, #0x194
2BD208:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x2BD214)
2BD20A:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
2BD20C:  LDRB.W          R3, [R4,#0x4C]
2BD210:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
2BD212:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
2BD214:  LDR             R1, [R1]; CWorld::Players ...
2BD216:  LDR             R0, [R0]; CWorld::PlayerInFocus
2BD218:  SMLABB.W        R0, R0, R2, R1
2BD21C:  LDR.W           R0, [R0,#0xBC]
2BD220:  CMP             R0, #0
2BD222:  BLT             loc_2BD22E
2BD224:  LDR             R0, =(HudColour_ptr - 0x2BD22E)
2BD226:  ADD             R5, SP, #0x2A8+var_294
2BD228:  MOVS            R2, #1
2BD22A:  ADD             R0, PC; HudColour_ptr
2BD22C:  B               loc_2BD236
2BD22E:  LDR             R0, =(HudColour_ptr - 0x2BD238)
2BD230:  ADD             R5, SP, #0x2A8+var_298
2BD232:  MOVS            R2, #0; unsigned __int8
2BD234:  ADD             R0, PC; HudColour_ptr
2BD236:  LDR             R1, [R0]; HudColour ; unsigned __int8
2BD238:  MOV             R0, R5; this
2BD23A:  BLX             j__ZN11CHudColours6GetRGBEhh; CHudColours::GetRGB(uchar,uchar)
2BD23E:  MOV             R0, R5
2BD240:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
2BD244:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x2BD252)
2BD246:  MOV.W           R11, #0x194
2BD24A:  ADD.W           R10, SP, #0x2A8+var_F4
2BD24E:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
2BD250:  LDR             R6, [R0]; CWorld::PlayerInFocus ...
2BD252:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x2BD258)
2BD254:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
2BD256:  LDR             R1, [R6]; CWorld::PlayerInFocus
2BD258:  LDR             R5, [R0]; CWorld::Players ...
2BD25A:  SMLABB.W        R0, R1, R11, R5
2BD25E:  ADR             R1, off_2BD5D0
2BD260:  LDR.W           R2, [R0,#0xBC]
2BD264:  MOV             R0, R10
2BD266:  BL              sub_5E6BC0
2BD26A:  ADD             R1, SP, #0x2A8+var_284; unsigned __int16 *
2BD26C:  MOV             R0, R10; char *
2BD26E:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
2BD272:  LDRB            R0, [R6]; CWorld::PlayerInFocus
2BD274:  MOV             R1, #unk_989680; float
2BD27C:  SMLABB.W        R0, R0, R11, R5
2BD280:  LDR.W           R0, [R0,#0xBC]
2BD284:  CMP             R0, R1
2BD286:  BLT             loc_2BD2A8
2BD288:  VLDR            S0, [R4,#0x20]
2BD28C:  VLDR            S2, [R4,#0x28]
2BD290:  VSUB.F32        S0, S2, S0
2BD294:  VLDR            S2, =0.00485
2BD298:  VABS.F32        S0, S0
2BD29C:  VMUL.F32        S0, S0, S2
2BD2A0:  VMOV            R0, S0; this
2BD2A4:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2BD2A8:  VLDR            S0, [R4,#0x24]
2BD2AC:  ADD             R2, SP, #0x2A8+var_284; CFont *
2BD2AE:  VLDR            S2, [R4,#0x2C]
2BD2B2:  MOV             R0, R9; this
2BD2B4:  VLDR            S4, =0.255
2BD2B8:  VSUB.F32        S0, S0, S2
2BD2BC:  VABS.F32        S0, S0
2BD2C0:  VMUL.F32        S0, S0, S4
2BD2C4:  VADD.F32        S0, S2, S0
2BD2C8:  VMOV            R1, S0; float
2BD2CC:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
2BD2D0:  LDRB.W          R0, [R4,#0xB4]
2BD2D4:  CMP             R0, #0
2BD2D6:  BNE.W           loc_2BD4E0
2BD2DA:  VLDR            S0, [R4,#0x24]
2BD2DE:  VLDR            S2, [R4,#0x2C]
2BD2E2:  VLDR            S4, =0.455
2BD2E6:  VSUB.F32        S0, S0, S2
2BD2EA:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x2BD2F0)
2BD2EC:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
2BD2EE:  LDR             R5, [R0]; CWorld::PlayerInFocus ...
2BD2F0:  MOV             R0, R4; this
2BD2F2:  VABS.F32        S0, S0
2BD2F6:  LDR             R1, [R5]; int
2BD2F8:  VMUL.F32        S0, S0, S4
2BD2FC:  VADD.F32        S0, S2, S0
2BD300:  VMOV            R2, S0; float
2BD304:  BLX             j__ZN17CWidgetPlayerInfo15RenderHealthBarEif; CWidgetPlayerInfo::RenderHealthBar(int,float)
2BD308:  VLDR            S0, [R4,#0x24]
2BD30C:  MOV             R0, R4; this
2BD30E:  VLDR            S2, [R4,#0x2C]
2BD312:  VLDR            S4, =0.565
2BD316:  VSUB.F32        S0, S0, S2
2BD31A:  LDRB            R1, [R5]; int
2BD31C:  VABS.F32        S0, S0
2BD320:  VMUL.F32        S0, S0, S4
2BD324:  VADD.F32        S0, S2, S0
2BD328:  VMOV            R2, S0; float
2BD32C:  BLX             j__ZN17CWidgetPlayerInfo14RenderArmorBarEif; CWidgetPlayerInfo::RenderArmorBar(int,float)
2BD330:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x2BD336)
2BD332:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
2BD334:  LDR             R0, [R0]; CWorld::Players ...
2BD336:  LDR.W           R0, [R0,#(dword_96B830 - 0x96B69C)]
2BD33A:  CBZ             R0, loc_2BD38C
2BD33C:  VLDR            S0, [R4,#0x24]
2BD340:  MOV             R0, R4; this
2BD342:  VLDR            S2, [R4,#0x2C]
2BD346:  MOVS            R1, #1; int
2BD348:  VLDR            S4, =1.455
2BD34C:  VSUB.F32        S0, S0, S2
2BD350:  VABS.F32        S0, S0
2BD354:  VMUL.F32        S0, S0, S4
2BD358:  VADD.F32        S0, S2, S0
2BD35C:  VMOV            R2, S0; float
2BD360:  BLX             j__ZN17CWidgetPlayerInfo15RenderHealthBarEif; CWidgetPlayerInfo::RenderHealthBar(int,float)
2BD364:  VLDR            S0, [R4,#0x24]
2BD368:  MOV             R0, R4; this
2BD36A:  VLDR            S2, [R4,#0x2C]
2BD36E:  MOVS            R1, #1; int
2BD370:  VLDR            S4, =1.565
2BD374:  VSUB.F32        S0, S0, S2
2BD378:  VABS.F32        S0, S0
2BD37C:  VMUL.F32        S0, S0, S4
2BD380:  VADD.F32        S0, S2, S0
2BD384:  VMOV            R2, S0; float
2BD388:  BLX             j__ZN17CWidgetPlayerInfo14RenderArmorBarEif; CWidgetPlayerInfo::RenderArmorBar(int,float)
2BD38C:  LDR.W           R0, [R8,#0x440]; this
2BD390:  BLX             j__ZNK16CPedIntelligence11GetTaskSwimEv; CPedIntelligence::GetTaskSwim(void)
2BD394:  CMP             R0, #0
2BD396:  BEQ.W           loc_2BD504
2BD39A:  VLDR            S0, [R4,#0x24]
2BD39E:  VLDR            S2, [R4,#0x2C]
2BD3A2:  VLDR            S4, =0.675
2BD3A6:  VSUB.F32        S0, S0, S2
2BD3AA:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x2BD3B0)
2BD3AC:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
2BD3AE:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
2BD3B0:  VABS.F32        S0, S0
2BD3B4:  LDR             R1, [R0]; int
2BD3B6:  MOV             R0, R4; this
2BD3B8:  VMUL.F32        S0, S0, S4
2BD3BC:  VADD.F32        S0, S2, S0
2BD3C0:  VMOV            R2, S0; float
2BD3C4:  BLX             j__ZN17CWidgetPlayerInfo15RenderBreathBarEif; CWidgetPlayerInfo::RenderBreathBar(int,float)
2BD3C8:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2BD3CE)
2BD3CA:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2BD3CC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2BD3CE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2BD3D0:  STR.W           R0, [R4,#0x94]
2BD3D4:  LDRB.W          R0, [R4,#0x4C]
2BD3D8:  LDR.W           R3, [R4,#0x9C]; int
2BD3DC:  VMOV            S0, R0
2BD3E0:  VCVT.F32.U32    S0, S0
2BD3E4:  LDR.W           R2, [R4,#0x98]; float
2BD3E8:  LDRD.W          R0, R1, [R4,#0xA0]; int
2BD3EC:  STRD.W          R0, R1, [SP,#0x2A8+var_2A8]; int
2BD3F0:  MOV             R1, R8; int
2BD3F2:  VSTR            S0, [SP,#0x2A8+var_2A0]
2BD3F6:  BLX             j__ZN17CWidgetPlayerInfo14DrawWeaponIconEP4CPed5CRectf; CWidgetPlayerInfo::DrawWeaponIcon(CPed *,CRect,float)
2BD3FA:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x2BD400)
2BD3FC:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
2BD3FE:  LDR             R0, [R0]; CWorld::Players ...
2BD400:  LDR.W           R1, [R0,#(dword_96B830 - 0x96B69C)]; int
2BD404:  CBZ             R1, loc_2BD44C
2BD406:  VLDR            S0, [R4,#0x24]
2BD40A:  VLDR            S2, [R4,#0x2C]
2BD40E:  VLDR            S4, [R4,#0x9C]
2BD412:  VSUB.F32        S0, S0, S2
2BD416:  LDRB.W          R0, [R4,#0x4C]
2BD41A:  VLDR            S6, [R4,#0xA4]
2BD41E:  VABS.F32        S0, S0
2BD422:  VADD.F32        S2, S4, S0
2BD426:  VADD.F32        S0, S6, S0
2BD42A:  VMOV            R3, S2; int
2BD42E:  VMOV            S2, R0
2BD432:  VCVT.F32.U32    S2, S2
2BD436:  LDR.W           R2, [R4,#0x98]; float
2BD43A:  LDR.W           R0, [R4,#0xA0]; int
2BD43E:  STR             R0, [SP,#0x2A8+var_2A8]; int
2BD440:  VSTR            S0, [SP,#0x2A8+var_2A4]
2BD444:  VSTR            S2, [SP,#0x2A8+var_2A0]
2BD448:  BLX             j__ZN17CWidgetPlayerInfo14DrawWeaponIconEP4CPed5CRectf; CWidgetPlayerInfo::DrawWeaponIcon(CPed *,CRect,float)
2BD44C:  LDR.W           R0, [R4,#0x88]; this
2BD450:  CMP             R0, #0
2BD452:  IT NE
2BD454:  BLXNE           j__ZN11CHoldEffect4DrawEv; CHoldEffect::Draw(void)
2BD458:  LDRB.W          R0, [R4,#0x4C]
2BD45C:  LDR.W           R3, [R4,#0x9C]; int
2BD460:  VMOV            S0, R0
2BD464:  VCVT.F32.U32    S0, S0
2BD468:  LDR.W           R2, [R4,#0x98]; int
2BD46C:  LDRD.W          R0, R1, [R4,#0xA0]
2BD470:  STRD.W          R0, R1, [SP,#0x2A8+var_2A8]; int
2BD474:  MOV             R0, R4; int
2BD476:  MOV             R1, R8; int
2BD478:  VSTR            S0, [SP,#0x2A8+var_2A0]
2BD47C:  BLX             j__ZN17CWidgetPlayerInfo8DrawAmmoEP4CPed5CRectf; CWidgetPlayerInfo::DrawAmmo(CPed *,CRect,float)
2BD480:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x2BD486)
2BD482:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
2BD484:  LDR             R0, [R0]; CWorld::Players ...
2BD486:  LDR.W           R1, [R0,#(dword_96B830 - 0x96B69C)]; int
2BD48A:  CBZ             R1, loc_2BD4D4
2BD48C:  VLDR            S0, [R4,#0x24]
2BD490:  VLDR            S2, [R4,#0x2C]
2BD494:  VLDR            S4, [R4,#0x9C]
2BD498:  VSUB.F32        S0, S0, S2
2BD49C:  LDRB.W          R0, [R4,#0x4C]
2BD4A0:  VLDR            S6, [R4,#0xA4]
2BD4A4:  VABS.F32        S0, S0
2BD4A8:  VADD.F32        S2, S4, S0
2BD4AC:  VADD.F32        S0, S6, S0
2BD4B0:  VMOV            R3, S2; int
2BD4B4:  VMOV            S2, R0
2BD4B8:  VCVT.F32.U32    S2, S2
2BD4BC:  LDR.W           R2, [R4,#0x98]; int
2BD4C0:  LDR.W           R0, [R4,#0xA0]
2BD4C4:  STR             R0, [SP,#0x2A8+var_2A8]; int
2BD4C6:  MOV             R0, R4; int
2BD4C8:  VSTR            S0, [SP,#0x2A8+var_2A4]
2BD4CC:  VSTR            S2, [SP,#0x2A8+var_2A0]
2BD4D0:  BLX             j__ZN17CWidgetPlayerInfo8DrawAmmoEP4CPed5CRectf; CWidgetPlayerInfo::DrawAmmo(CPed *,CRect,float)
2BD4D4:  MOV             R0, R4; this
2BD4D6:  BLX             j__ZN17CWidgetPlayerInfo10DrawWantedEv; CWidgetPlayerInfo::DrawWanted(void)
2BD4DA:  MOVS            R0, #0; unsigned __int8
2BD4DC:  BLX             j__Z12emu_GammaSeth; emu_GammaSet(uchar)
2BD4E0:  LDR             R0, =(__stack_chk_guard_ptr - 0x2BD4E8)
2BD4E2:  LDR             R1, [SP,#0x2A8+var_2C]
2BD4E4:  ADD             R0, PC; __stack_chk_guard_ptr
2BD4E6:  LDR             R0, [R0]; __stack_chk_guard
2BD4E8:  LDR             R0, [R0]
2BD4EA:  SUBS            R0, R0, R1
2BD4EC:  ITTTT EQ
2BD4EE:  ADDEQ.W         SP, SP, #0x280
2BD4F2:  VPOPEQ          {D8}
2BD4F6:  ADDEQ           SP, SP, #4
2BD4F8:  POPEQ.W         {R8-R11}
2BD4FC:  IT EQ
2BD4FE:  POPEQ           {R4-R7,PC}
2BD500:  BLX             __stack_chk_fail
2BD504:  LDRB.W          R0, [R8,#0x485]
2BD508:  LSLS            R0, R0, #0x1F
2BD50A:  BEQ             loc_2BD528
2BD50C:  LDR.W           R0, [R8,#0x590]
2BD510:  CMP             R0, #0
2BD512:  ITT NE
2BD514:  LDRBNE.W        R1, [R0,#0x45]
2BD518:  MOVSNE.W        R1, R1,LSL#31
2BD51C:  BEQ             loc_2BD528
2BD51E:  LDRB.W          R0, [R0,#0x42F]
2BD522:  LSLS            R0, R0, #0x19
2BD524:  BMI.W           loc_2BD39A
2BD528:  LDR.W           R0, [R8,#0x444]
2BD52C:  VLDR            S16, [R0,#0x44]
2BD530:  MOVS            R0, #8
2BD532:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
2BD536:  VMOV            S0, R0
2BD53A:  VCMPE.F32       S16, S0
2BD53E:  VMRS            APSR_nzcv, FPSCR
2BD542:  BGE.W           loc_2BD3D4
2BD546:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2BD550)
2BD548:  LDR.W           R1, [R4,#0x94]
2BD54C:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2BD54E:  ADD.W           R1, R1, #0x1F4
2BD552:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2BD554:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2BD556:  CMP             R1, R0
2BD558:  BHI.W           loc_2BD39A
2BD55C:  B               loc_2BD3D4
