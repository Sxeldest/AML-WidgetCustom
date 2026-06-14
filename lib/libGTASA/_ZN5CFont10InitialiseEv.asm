; =========================================================
; Game Engine Function: _ZN5CFont10InitialiseEv
; Address            : 0x46FD1C - 0x46FE60
; =========================================================

46FD1C:  PUSH            {R4,R5,R7,LR}
46FD1E:  ADD             R7, SP, #8
46FD20:  SUB             SP, SP, #0x10
46FD22:  BLX             j__ZN5CFont21ClearSpecialLanguagesEv; CFont::ClearSpecialLanguages(void)
46FD26:  LDR             R0, =(FrontEndMenuManager_ptr - 0x46FD30)
46FD28:  MOVS            R2, #1
46FD2A:  LDR             R1, =(IsInitialized_ptr - 0x46FD32)
46FD2C:  ADD             R0, PC; FrontEndMenuManager_ptr
46FD2E:  ADD             R1, PC; IsInitialized_ptr
46FD30:  LDR             R0, [R0]; FrontEndMenuManager
46FD32:  LDR             R1, [R1]; IsInitialized
46FD34:  LDRB.W          R0, [R0,#(byte_98F140 - 0x98F0F8)]; this
46FD38:  STRB            R2, [R1]
46FD3A:  CMP             R0, #5
46FD3C:  BEQ             loc_46FD48
46FD3E:  CMP             R0, #6
46FD40:  BNE             loc_46FD4E
46FD42:  BLX             j__ZN5CFont18AddJapaneseTextureEv; CFont::AddJapaneseTexture(void)
46FD46:  B               loc_46FD52
46FD48:  BLX             j__ZN5CFont17AddRussianTextureEv; CFont::AddRussianTexture(void)
46FD4C:  B               loc_46FD52
46FD4E:  BLX             j__ZN5CFont12AddEFIGSFontEv; CFont::AddEFIGSFont(void)
46FD52:  BLX             j__ZN5CFont14LoadFontValuesEv; CFont::LoadFontValues(void)
46FD56:  MOV.W           R0, #0x3F800000; this
46FD5A:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
46FD5E:  LDR             R0, =(RsGlobal_ptr - 0x46FD68)
46FD60:  MOVS            R1, #0; float
46FD62:  MOVS            R5, #0
46FD64:  ADD             R0, PC; RsGlobal_ptr
46FD66:  LDR             R4, [R0]; RsGlobal
46FD68:  LDR             R0, [R4,#(dword_9FC900 - 0x9FC8FC)]
46FD6A:  VMOV            S0, R0
46FD6E:  VCVT.F32.S32    S0, S0
46FD72:  VMOV            R0, S0; this
46FD76:  BLX             j__ZN5CFont16SetSlantRefPointEff; CFont::SetSlantRefPoint(float,float)
46FD7A:  MOVS            R0, #0; this
46FD7C:  BLX             j__ZN5CFont8SetSlantEf; CFont::SetSlant(float)
46FD80:  ADD             R0, SP, #0x18+var_C; this
46FD82:  MOVS            R1, #0xFF; unsigned __int8
46FD84:  MOVS            R2, #0xFF; unsigned __int8
46FD86:  MOVS            R3, #0xFF; unsigned __int8
46FD88:  STR             R5, [SP,#0x18+var_18]; unsigned __int8
46FD8A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
46FD8E:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
46FD92:  MOVS            R0, #(stderr+1); this
46FD94:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
46FD98:  MOVS            R0, #0; this
46FD9A:  BLX             j__ZN5CFont10SetJustifyEh; CFont::SetJustify(uchar)
46FD9E:  LDR             R0, [R4,#(dword_9FC900 - 0x9FC8FC)]
46FDA0:  VMOV            S0, R0
46FDA4:  VCVT.F32.S32    S0, S0
46FDA8:  VMOV            R0, S0; this
46FDAC:  BLX             j__ZN5CFont8SetWrapxEf; CFont::SetWrapx(float)
46FDB0:  LDR             R0, [R4,#(dword_9FC900 - 0x9FC8FC)]
46FDB2:  VMOV            S0, R0
46FDB6:  VCVT.F32.S32    S0, S0
46FDBA:  VMOV            R0, S0; this
46FDBE:  BLX             j__ZN5CFont13SetCentreSizeEf; CFont::SetCentreSize(float)
46FDC2:  MOVS            R0, #0; this
46FDC4:  MOVS            R1, #0; unsigned __int8
46FDC6:  BLX             j__ZN5CFont13SetBackgroundEhh; CFont::SetBackground(uchar,uchar)
46FDCA:  MOVS            R0, #0x80
46FDCC:  MOVS            R1, #0x80; unsigned __int8
46FDCE:  STR             R0, [SP,#0x18+var_18]; unsigned __int8
46FDD0:  ADD             R0, SP, #0x18+var_10; this
46FDD2:  MOVS            R2, #0x80; unsigned __int8
46FDD4:  MOVS            R3, #0x80; unsigned __int8
46FDD6:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
46FDDA:  BLX             j__ZN5CFont18SetBackgroundColorE5CRGBA; CFont::SetBackgroundColor(CRGBA)
46FDDE:  MOVS            R0, #(stderr+1); this
46FDE0:  BLX             j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
46FDE4:  MOVS            R0, #0; this
46FDE6:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
46FDEA:  MOVS            R0, #0; this
46FDEC:  BLX             j__ZN5CFont19SetRightJustifyWrapEf; CFont::SetRightJustifyWrap(float)
46FDF0:  MOVS            R0, #0x437F0000; this
46FDF6:  BLX             j__ZN5CFont12SetAlphaFadeEf; CFont::SetAlphaFade(float)
46FDFA:  MOVS            R0, #0; this
46FDFC:  BLX             j__ZN5CFont21SetDropShadowPositionEa; CFont::SetDropShadowPosition(signed char)
46FE00:  ADR             R0, aPs2btns; "ps2btns"
46FE02:  ADR             R1, aTxd_3; "txd"
46FE04:  MOVS            R2, #0; char *
46FE06:  BLX             j__ZN9CTxdStore10AddTxdSlotEPKcS1_b; CTxdStore::AddTxdSlot(char const*,char const*,bool)
46FE0A:  ADR             R1, aModelsPcbtnsTx; "MODELS\\PCBTNS.TXD"
46FE0C:  MOV             R4, R0
46FE0E:  BLX             j__ZN9CTxdStore7LoadTxdEiPKc; CTxdStore::LoadTxd(int,char const*)
46FE12:  MOV             R0, R4; this
46FE14:  BLX             j__ZN9CTxdStore6AddRefEi; CTxdStore::AddRef(int)
46FE18:  BLX             j__ZN9CTxdStore14PushCurrentTxdEv; CTxdStore::PushCurrentTxd(void)
46FE1C:  MOV             R0, R4; this
46FE1E:  MOVS            R1, #0; int
46FE20:  BLX             j__ZN9CTxdStore13SetCurrentTxdEiPKc; CTxdStore::SetCurrentTxd(int,char const*)
46FE24:  LDR             R0, =(_ZN5CFont9PS2SpriteE_ptr - 0x46FE2E)
46FE26:  ADR             R1, dword_46FE90; char *
46FE28:  ADR             R2, dword_46FE94; char *
46FE2A:  ADD             R0, PC; _ZN5CFont9PS2SpriteE_ptr
46FE2C:  LDR             R4, [R0]; CFont::PS2Sprite ...
46FE2E:  ADDS            R0, R4, #4; this
46FE30:  BLX             j__ZN9CSprite2d10SetTextureEPcS0_; CSprite2d::SetTexture(char *,char *)
46FE34:  ADD.W           R0, R4, #8; this
46FE38:  ADR             R1, aDown_0; "down"
46FE3A:  ADR             R2, aDowna; "downA"
46FE3C:  BLX             j__ZN9CSprite2d10SetTextureEPcS0_; CSprite2d::SetTexture(char *,char *)
46FE40:  ADD.W           R0, R4, #0xC; this
46FE44:  ADR             R1, aLeft_0; "left"
46FE46:  ADR             R2, aLefta; "leftA"
46FE48:  BLX             j__ZN9CSprite2d10SetTextureEPcS0_; CSprite2d::SetTexture(char *,char *)
46FE4C:  ADD.W           R0, R4, #0x10; this
46FE50:  ADR             R1, aRight_0; "right"
46FE52:  ADR             R2, aRighta; "rightA"
46FE54:  BLX             j__ZN9CSprite2d10SetTextureEPcS0_; CSprite2d::SetTexture(char *,char *)
46FE58:  BLX             j__ZN9CTxdStore13PopCurrentTxdEv; CTxdStore::PopCurrentTxd(void)
46FE5C:  ADD             SP, SP, #0x10
46FE5E:  POP             {R4,R5,R7,PC}
