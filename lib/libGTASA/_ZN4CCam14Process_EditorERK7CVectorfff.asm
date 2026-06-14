; =========================================================
; Game Engine Function: _ZN4CCam14Process_EditorERK7CVectorfff
; Address            : 0x3CBA0C - 0x3CBF54
; =========================================================

3CBA0C:  PUSH            {R4-R7,LR}
3CBA0E:  ADD             R7, SP, #0xC
3CBA10:  PUSH.W          {R8,R9,R11}
3CBA14:  VPUSH           {D8-D11}
3CBA18:  SUB             SP, SP, #0x140
3CBA1A:  MOV             R4, R0
3CBA1C:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x3CBA24)
3CBA20:  ADD             R0, PC; __stack_chk_guard_ptr
3CBA22:  LDR             R0, [R0]; __stack_chk_guard
3CBA24:  LDR             R0, [R0]
3CBA26:  STR             R0, [SP,#0x178+var_3C]
3CBA28:  LDRB            R0, [R4,#0xA]
3CBA2A:  CBZ             R0, loc_3CBA5E
3CBA2C:  MOVW            R0, #0x4000
3CBA30:  MOVS            R1, #0
3CBA32:  MOVS            R2, #0
3CBA34:  MOVT            R0, #0xC46A
3CBA38:  MOVT            R1, #0x4447
3CBA3C:  MOVT            R2, #0x4220
3CBA40:  STRD.W          R1, R0, [R4,#0x174]
3CBA44:  ADD.W           R5, R4, #0x1F4
3CBA48:  STR.W           R2, [R4,#0x17C]
3CBA4C:  LDR.W           R0, [R4,#0x1F4]; this
3CBA50:  CMP             R0, #0
3CBA52:  ITT NE
3CBA54:  MOVNE           R1, R5; CEntity **
3CBA56:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3CBA5A:  MOVS            R0, #0
3CBA5C:  STR             R0, [R5]
3CBA5E:  LDR.W           R0, =(Scene_ptr - 0x3CBA6E)
3CBA62:  MOVS            R1, #0
3CBA64:  STRB            R1, [R4,#0xA]
3CBA66:  MOVW            R1, #0x999A
3CBA6A:  ADD             R0, PC; Scene_ptr
3CBA6C:  MOVT            R1, #0x3E99
3CBA70:  LDR             R0, [R0]; Scene
3CBA72:  LDR             R0, [R0,#(dword_9FC93C - 0x9FC938)]
3CBA74:  BLX             j__Z24RwCameraSetNearClipPlaneP8RwCameraf; RwCameraSetNearClipPlane(RwCamera *,float)
3CBA78:  MOVS            R0, #0x428C0000
3CBA7E:  STR.W           R0, [R4,#0x8C]
3CBA82:  MOVS            R0, #(stderr+1); this
3CBA84:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3CBA88:  LDRSH.W         R5, [R0]
3CBA8C:  MOVS            R0, #(stderr+1); this
3CBA8E:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3CBA92:  VMOV            S0, R5
3CBA96:  VLDR            S2, =0.02618
3CBA9A:  VMOV.F32        S6, #19.0
3CBA9E:  VLDR            S16, =50.0
3CBAA2:  VCVT.F32.S32    S0, S0
3CBAA6:  LDRSH.W         R0, [R0,#2]
3CBAAA:  VMOV            S4, R0
3CBAAE:  VCVT.F32.S32    S4, S4
3CBAB2:  LDR.W           R0, [R4,#0x1F4]
3CBAB6:  VMUL.F32        S0, S0, S2
3CBABA:  VLDR            S2, =0.017453
3CBABE:  CMP             R0, #0
3CBAC0:  VMUL.F32        S2, S4, S2
3CBAC4:  VLDR            S4, [R4,#0x84]
3CBAC8:  VDIV.F32        S0, S0, S6
3CBACC:  VDIV.F32        S2, S2, S16
3CBAD0:  VLDR            S6, [R4,#0x94]
3CBAD4:  VADD.F32        S6, S0, S6
3CBAD8:  VADD.F32        S0, S4, S2
3CBADC:  VSTR            S6, [R4,#0x94]
3CBAE0:  VSTR            S0, [R4,#0x84]
3CBAE4:  BEQ             loc_3CBB00
3CBAE6:  LDR             R1, [R0,#0x14]
3CBAE8:  ADD.W           R2, R1, #0x30 ; '0'
3CBAEC:  CMP             R1, #0
3CBAEE:  IT EQ
3CBAF0:  ADDEQ           R2, R0, #4
3CBAF2:  VLDR            S22, [R2]
3CBAF6:  VLDR            S18, [R2,#4]
3CBAFA:  VLDR            S20, [R2,#8]
3CBAFE:  B               loc_3CBB1C
3CBB00:  VLDR            S2, =0.0
3CBB04:  VLDR            S4, [R4,#0x174]
3CBB08:  VLDR            S6, [R4,#0x178]
3CBB0C:  VLDR            S8, [R4,#0x17C]
3CBB10:  VADD.F32        S22, S4, S2
3CBB14:  VADD.F32        S18, S6, S2
3CBB18:  VADD.F32        S20, S8, S2
3CBB1C:  VLDR            S2, =1.5621
3CBB20:  VCMPE.F32       S0, S2
3CBB24:  VMRS            APSR_nzcv, FPSCR
3CBB28:  BLE             loc_3CBB38
3CBB2A:  MOV             R0, #0x3FC7F1E6
3CBB32:  STR.W           R0, [R4,#0x84]
3CBB36:  B               loc_3CBB5E
3CBB38:  VLDR            S2, =-1.5621
3CBB3C:  VCMPE.F32       S0, S2
3CBB40:  VMRS            APSR_nzcv, FPSCR
3CBB44:  BGE             loc_3CBB5E
3CBB46:  LDR.W           R0, =(unk_952E40 - 0x3CBB56)
3CBB4A:  MOV             R1, #0xBFC7F1E6
3CBB52:  ADD             R0, PC; unk_952E40
3CBB54:  STR.W           R1, [R4,#0x84]
3CBB58:  VLDR            S0, [R0]
3CBB5C:  B               loc_3CBBAC
3CBB5E:  MOVS            R0, #(stderr+1); this
3CBB60:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3CBB64:  LDRH            R0, [R0,#0x1C]
3CBB66:  CBZ             R0, loc_3CBB7C
3CBB68:  LDR.W           R0, =(unk_952E40 - 0x3CBB74)
3CBB6C:  VLDR            S0, =0.1
3CBB70:  ADD             R0, PC; unk_952E40
3CBB72:  VLDR            S2, [R0]
3CBB76:  VADD.F32        S0, S2, S0
3CBB7A:  B               loc_3CBBA2
3CBB7C:  MOVS            R0, #(stderr+1); this
3CBB7E:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3CBB82:  LDR.W           R1, =(unk_952E40 - 0x3CBB8E)
3CBB86:  VLDR            S2, =-0.1
3CBB8A:  ADD             R1, PC; unk_952E40
3CBB8C:  LDRH            R0, [R0,#0x20]
3CBB8E:  VLDR            S0, =0.0
3CBB92:  VLDR            S4, [R1]
3CBB96:  CMP             R0, #0
3CBB98:  VADD.F32        S2, S4, S2
3CBB9C:  IT NE
3CBB9E:  VMOVNE.F32      S0, S2
3CBBA2:  LDR.W           R0, =(unk_952E40 - 0x3CBBAA)
3CBBA6:  ADD             R0, PC; unk_952E40
3CBBA8:  VSTR            S0, [R0]
3CBBAC:  VLDR            S2, =70.0
3CBBB0:  VCMPE.F32       S0, S2
3CBBB4:  VMRS            APSR_nzcv, FPSCR
3CBBB8:  BGT             loc_3CBBC8
3CBBBA:  VLDR            S2, =-70.0
3CBBBE:  VCMPE.F32       S0, S2
3CBBC2:  VMRS            APSR_nzcv, FPSCR
3CBBC6:  BGE             loc_3CBBD0
3CBBC8:  LDR             R0, =(unk_952E40 - 0x3CBBCE)
3CBBCA:  ADD             R0, PC; unk_952E40
3CBBCC:  VSTR            S2, [R0]
3CBBD0:  VLDR            S0, [R4,#0x174]
3CBBD4:  ADD.W           R9, R4, #0x168
3CBBD8:  VLDR            S2, [R4,#0x178]
3CBBDC:  VLDR            S4, [R4,#0x17C]
3CBBE0:  VSUB.F32        S0, S22, S0
3CBBE4:  VSUB.F32        S2, S18, S2
3CBBE8:  MOV             R0, R9; this
3CBBEA:  VSUB.F32        S4, S20, S4
3CBBEE:  VSTR            S0, [R4,#0x168]
3CBBF2:  VSTR            S2, [R4,#0x16C]
3CBBF6:  VSTR            S4, [R4,#0x170]
3CBBFA:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CBBFE:  LDR             R0, =(unk_952E40 - 0x3CBC08)
3CBC00:  VLDR            S4, [R4,#0x170]
3CBC04:  ADD             R0, PC; unk_952E40
3CBC06:  VLDR            S0, [R4,#0x168]
3CBC0A:  VLDR            S2, [R4,#0x16C]
3CBC0E:  VLDR            S12, [R0]
3CBC12:  MOVS            R0, #(stderr+1); this
3CBC14:  VLDR            S10, [R4,#0x17C]
3CBC18:  VMUL.F32        S4, S12, S4
3CBC1C:  VLDR            S6, [R4,#0x174]
3CBC20:  VMUL.F32        S0, S12, S0
3CBC24:  VLDR            S8, [R4,#0x178]
3CBC28:  VMUL.F32        S2, S12, S2
3CBC2C:  VADD.F32        S4, S4, S10
3CBC30:  VADD.F32        S0, S0, S6
3CBC34:  VLDR            S6, =-450.0
3CBC38:  VADD.F32        S2, S2, S8
3CBC3C:  VMAX.F32        D2, D2, D3
3CBC40:  VSTR            S0, [R4,#0x174]
3CBC44:  VSTR            S2, [R4,#0x178]
3CBC48:  VSTR            S4, [R4,#0x17C]
3CBC4C:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3CBC50:  LDRH            R1, [R0,#0xE]
3CBC52:  ADD.W           R8, R4, #0x174
3CBC56:  CMP             R1, #0
3CBC58:  BEQ             loc_3CBCE0
3CBC5A:  LDRH            R0, [R0,#0x3E]
3CBC5C:  CMP             R0, #0
3CBC5E:  BNE             loc_3CBCE0
3CBC60:  MOV.W           R0, #0xFFFFFFFF; int
3CBC64:  MOVS            R1, #0; bool
3CBC66:  MOVS            R5, #0
3CBC68:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3CBC6C:  CBZ             R0, loc_3CBC88
3CBC6E:  MOV.W           R0, #0xFFFFFFFF; int
3CBC72:  MOVS            R1, #0; bool
3CBC74:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3CBC78:  LDR             R6, [R0]
3CBC7A:  ADD.W           R3, R4, #0x174
3CBC7E:  LDM             R3, {R1-R3}
3CBC80:  LDR             R6, [R6,#0x3C]
3CBC82:  STR             R5, [SP,#0x178+var_178]
3CBC84:  BLX             R6
3CBC86:  B               loc_3CBCE0
3CBC88:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x3CBC94)
3CBC8A:  MOV.W           R2, #0x194
3CBC8E:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x3CBC96)
3CBC90:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
3CBC92:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
3CBC94:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
3CBC96:  LDR             R1, [R1]; CWorld::Players ...
3CBC98:  LDR             R0, [R0]; CWorld::PlayerInFocus
3CBC9A:  SMULBB.W        R0, R0, R2
3CBC9E:  LDR             R1, [R1,R0]
3CBCA0:  LDRD.W          R3, R2, [R4,#0x174]
3CBCA4:  LDR.W           R0, [R4,#0x17C]
3CBCA8:  LDR             R6, [R1,#0x14]
3CBCAA:  CBZ             R6, loc_3CBCD8
3CBCAC:  STR             R3, [R6,#0x30]
3CBCAE:  LDR             R3, [R1,#0x14]
3CBCB0:  STR             R2, [R3,#0x34]
3CBCB2:  LDR             R1, [R1,#0x14]
3CBCB4:  ADDS            R1, #0x38 ; '8'
3CBCB6:  B               loc_3CBCDE
3CBCB8:  DCFS 0.02618
3CBCBC:  DCFS 50.0
3CBCC0:  DCFS 0.017453
3CBCC4:  DCFS 0.0
3CBCC8:  DCFS 1.5621
3CBCCC:  DCFS -1.5621
3CBCD0:  DCFS 0.1
3CBCD4:  DCFS -0.1
3CBCD8:  STRD.W          R3, R2, [R1,#4]
3CBCDC:  ADDS            R1, #0xC
3CBCDE:  STR             R0, [R1]
3CBCE0:  VLDR            S6, [R8]
3CBCE4:  VLDR            S0, =60.0
3CBCE8:  VDIV.F32        S2, S6, S16
3CBCEC:  VADD.F32        S2, S2, S0
3CBCF0:  VLDR            S4, =115.0
3CBCF4:  VCMPE.F32       S2, S4
3CBCF8:  VMRS            APSR_nzcv, FPSCR
3CBCFC:  BLE             loc_3CBD1C
3CBCFE:  VMOV.F32        S2, #-1.0
3CBD02:  VADD.F32        S6, S6, S2
3CBD06:  VDIV.F32        S8, S6, S16
3CBD0A:  VADD.F32        S8, S8, S0
3CBD0E:  VCMPE.F32       S8, S4
3CBD12:  VMRS            APSR_nzcv, FPSCR
3CBD16:  BGT             loc_3CBD02
3CBD18:  VSTR            S6, [R8]
3CBD1C:  VDIV.F32        S8, S6, S16
3CBD20:  VMOV.F32        S2, #5.0
3CBD24:  VADD.F32        S8, S8, S0
3CBD28:  VCMPE.F32       S8, S2
3CBD2C:  VMRS            APSR_nzcv, FPSCR
3CBD30:  BGE             loc_3CBD50
3CBD32:  VMOV.F32        S8, #1.0
3CBD36:  VADD.F32        S6, S6, S8
3CBD3A:  VDIV.F32        S10, S6, S16
3CBD3E:  VADD.F32        S10, S10, S0
3CBD42:  VCMPE.F32       S10, S2
3CBD46:  VMRS            APSR_nzcv, FPSCR
3CBD4A:  BLT             loc_3CBD36
3CBD4C:  VSTR            S6, [R8]
3CBD50:  VLDR            S6, [R4,#0x178]
3CBD54:  VDIV.F32        S8, S6, S16
3CBD58:  VADD.F32        S8, S8, S0
3CBD5C:  VCMPE.F32       S8, S4
3CBD60:  VMRS            APSR_nzcv, FPSCR
3CBD64:  BLE             loc_3CBD84
3CBD66:  VMOV.F32        S8, #-1.0
3CBD6A:  VADD.F32        S6, S6, S8
3CBD6E:  VDIV.F32        S10, S6, S16
3CBD72:  VADD.F32        S10, S10, S0
3CBD76:  VCMPE.F32       S10, S4
3CBD7A:  VMRS            APSR_nzcv, FPSCR
3CBD7E:  BGT             loc_3CBD6A
3CBD80:  VSTR            S6, [R4,#0x178]
3CBD84:  VDIV.F32        S4, S6, S16
3CBD88:  VADD.F32        S4, S4, S0
3CBD8C:  VCMPE.F32       S4, S2
3CBD90:  VMRS            APSR_nzcv, FPSCR
3CBD94:  BGE             loc_3CBDB4
3CBD96:  VMOV.F32        S4, #1.0
3CBD9A:  VADD.F32        S6, S6, S4
3CBD9E:  VDIV.F32        S8, S6, S16
3CBDA2:  VADD.F32        S8, S8, S0
3CBDA6:  VCMPE.F32       S8, S2
3CBDAA:  VMRS            APSR_nzcv, FPSCR
3CBDAE:  BLT             loc_3CBD9A
3CBDB0:  VSTR            S6, [R4,#0x178]
3CBDB4:  MOVS            R0, #0
3CBDB6:  MOV.W           R1, #0x3F800000
3CBDBA:  STRD.W          R0, R0, [R4,#0x18C]
3CBDBE:  MOV             R0, R9; this
3CBDC0:  STR.W           R1, [R4,#0x194]
3CBDC4:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CBDC8:  VLDR            S0, [R4,#0x168]
3CBDCC:  ADD.W           R5, R4, #0x18C
3CBDD0:  VCMP.F32        S0, #0.0
3CBDD4:  VMRS            APSR_nzcv, FPSCR
3CBDD8:  BNE             loc_3CBDF4
3CBDDA:  VLDR            S0, [R4,#0x16C]
3CBDDE:  VCMP.F32        S0, #0.0
3CBDE2:  VMRS            APSR_nzcv, FPSCR
3CBDE6:  ITTT EQ
3CBDE8:  MOVWEQ          R0, #0xB717
3CBDEC:  MOVTEQ          R0, #0x38D1
3CBDF0:  STRDEQ.W        R0, R0, [R4,#0x168]
3CBDF4:  ADD             R0, SP, #0x178+var_148; CVector *
3CBDF6:  MOV             R1, R9; CVector *
3CBDF8:  MOV             R2, R5
3CBDFA:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3CBDFE:  ADD             R6, SP, #0x178+var_138
3CBE00:  LDR             R0, [SP,#0x178+var_140]
3CBE02:  VLDR            D16, [SP,#0x178+var_148]
3CBE06:  STR             R0, [SP,#0x178+var_130]
3CBE08:  MOV             R0, R6; this
3CBE0A:  VSTR            D16, [SP,#0x178+var_138]
3CBE0E:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CBE12:  ADD             R0, SP, #0x178+var_148; CVector *
3CBE14:  MOV             R1, R6; CVector *
3CBE16:  MOV             R2, R9
3CBE18:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3CBE1C:  VLDR            D16, [SP,#0x178+var_148]
3CBE20:  LDR             R0, [SP,#0x178+var_140]
3CBE22:  STR             R0, [R5,#8]
3CBE24:  MOVS            R0, #(stderr+1); this
3CBE26:  VSTR            D16, [R5]
3CBE2A:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3CBE2E:  LDRH            R2, [R0,#0x24]
3CBE30:  MOVS            R1, #0
3CBE32:  CBZ             R2, loc_3CBE3E
3CBE34:  LDRH.W          R0, [R0,#0x54]
3CBE38:  CMP             R0, #0
3CBE3A:  IT EQ
3CBE3C:  MOVEQ           R1, #1
3CBE3E:  CBNZ            R1, loc_3CBE8C
3CBE40:  LDR             R0, =(gbBigWhiteDebugLightSwitchedOn_ptr - 0x3CBE46)
3CBE42:  ADD             R0, PC; gbBigWhiteDebugLightSwitchedOn_ptr
3CBE44:  LDR             R0, [R0]; gbBigWhiteDebugLightSwitchedOn
3CBE46:  LDRB            R0, [R0]
3CBE48:  CBZ             R0, loc_3CBE8C
3CBE4A:  LDR             R0, =(gpShadowExplosionTex_ptr - 0x3CBE58)
3CBE4C:  MOV.W           R2, #0x3F800000
3CBE50:  MOVS            R6, #0
3CBE52:  MOVS            R3, #0x80
3CBE54:  ADD             R0, PC; gpShadowExplosionTex_ptr
3CBE56:  MOVT            R6, #0xC140
3CBE5A:  LDR             R0, [R0]; gpShadowExplosionTex
3CBE5C:  LDR             R1, [R0]; int
3CBE5E:  MOVS            R0, #0
3CBE60:  STRD.W          R0, R2, [SP,#0x178+var_158]; int
3CBE64:  MOVS            R2, #0x447A0000
3CBE6A:  STRD.W          R0, R0, [SP,#0x178+var_150]; int
3CBE6E:  STRD.W          R0, R0, [SP,#0x178+var_178]; float
3CBE72:  MOVS            R0, #2; int
3CBE74:  STRD.W          R6, R3, [SP,#0x178+var_170]; float
3CBE78:  STRD.W          R3, R3, [SP,#0x178+var_168]; int
3CBE7C:  STRD.W          R3, R2, [SP,#0x178+var_160]; int
3CBE80:  MOVS            R3, #0x41400000; int
3CBE86:  MOV             R2, R8; int
3CBE88:  BLX             j__ZN8CShadows23StoreShadowToBeRenderedEhP9RwTextureP7CVectorffffshhhfbfP15CRealTimeShadowb; CShadows::StoreShadowToBeRendered(uchar,RwTexture *,CVector *,float,float,float,float,short,uchar,uchar,uchar,float,bool,float,CRealTimeShadow *,bool)
3CBE8C:  LDR             R0, =(_ZN4CHud19m_Wants_To_Draw_HudE_ptr - 0x3CBE92)
3CBE8E:  ADD             R0, PC; _ZN4CHud19m_Wants_To_Draw_HudE_ptr
3CBE90:  LDR             R0, [R0]; CHud::m_Wants_To_Draw_Hud ...
3CBE92:  LDRB            R0, [R0]; CHud::m_Wants_To_Draw_Hud
3CBE94:  CMP             R0, #0
3CBE96:  BEQ             loc_3CBF36
3CBE98:  VLDR            S0, [R4,#0x174]
3CBE9C:  ADD             R5, SP, #0x178+var_138
3CBE9E:  VLDR            S2, [R4,#0x178]
3CBEA2:  ADR             R1, aCamx03fCamy03f; "CamX: %0.3f CamY: %0.3f  CamZ:  %0.3f"
3CBEA4:  VCVT.F64.F32    D16, S0
3CBEA8:  MOV             R0, R5
3CBEAA:  VMOV            R2, R3, D16
3CBEAE:  VLDR            S4, [R4,#0x17C]
3CBEB2:  VCVT.F64.F32    D17, S2
3CBEB6:  VCVT.F64.F32    D16, S4
3CBEBA:  VSTR            D17, [SP,#0x178+var_178]
3CBEBE:  VSTR            D16, [SP,#0x178+var_170]
3CBEC2:  BL              sub_5E6BC0
3CBEC6:  VLDR            S0, [R4,#0x168]
3CBECA:  ADR             R1, aFrontx03fFront; "Frontx: %0.3f, Fronty: %0.3f, Frontz: %"...
3CBECC:  VLDR            S2, [R4,#0x16C]
3CBED0:  MOV             R0, R5
3CBED2:  VCVT.F64.F32    D16, S0
3CBED6:  VMOV            R2, R3, D16
3CBEDA:  VLDR            S4, [R4,#0x170]
3CBEDE:  VCVT.F64.F32    D17, S2
3CBEE2:  VCVT.F64.F32    D16, S4
3CBEE6:  VSTR            D17, [SP,#0x178+var_178]
3CBEEA:  VSTR            D16, [SP,#0x178+var_170]
3CBEEE:  BL              sub_5E6BC0
3CBEF2:  VLDR            S0, [R4,#0x168]
3CBEF6:  ADR             R1, aLookat03fLooka; "LookAT: %0.3f, LookAT: %0.3f, LookAT: %"...
3CBEF8:  VLDR            S6, [R4,#0x174]
3CBEFC:  MOV             R0, R5
3CBEFE:  VLDR            S2, [R4,#0x16C]
3CBF02:  VADD.F32        S0, S0, S6
3CBF06:  VLDR            S8, [R4,#0x178]
3CBF0A:  VLDR            S4, [R4,#0x170]
3CBF0E:  VLDR            S10, [R4,#0x17C]
3CBF12:  VADD.F32        S2, S2, S8
3CBF16:  VCVT.F64.F32    D16, S0
3CBF1A:  VMOV            R2, R3, D16
3CBF1E:  VADD.F32        S0, S4, S10
3CBF22:  VCVT.F64.F32    D17, S2
3CBF26:  VSTR            D17, [SP,#0x178+var_178]
3CBF2A:  VCVT.F64.F32    D16, S0
3CBF2E:  VSTR            D16, [SP,#0x178+var_170]
3CBF32:  BL              sub_5E6BC0
3CBF36:  LDR             R0, =(__stack_chk_guard_ptr - 0x3CBF3E)
3CBF38:  LDR             R1, [SP,#0x178+var_3C]
3CBF3A:  ADD             R0, PC; __stack_chk_guard_ptr
3CBF3C:  LDR             R0, [R0]; __stack_chk_guard
3CBF3E:  LDR             R0, [R0]
3CBF40:  SUBS            R0, R0, R1
3CBF42:  ITTTT EQ
3CBF44:  ADDEQ           SP, SP, #0x140
3CBF46:  VPOPEQ          {D8-D11}
3CBF4A:  POPEQ.W         {R8,R9,R11}
3CBF4E:  POPEQ           {R4-R7,PC}
3CBF50:  BLX             __stack_chk_fail
