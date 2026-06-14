; =========================================================
; Game Engine Function: _ZN4CPad12GetAutoClimbEv
; Address            : 0x3FBABC - 0x3FBB52
; =========================================================

3FBABC:  PUSH            {R4,R6,R7,LR}
3FBABE:  ADD             R7, SP, #8
3FBAC0:  SUB             SP, SP, #8
3FBAC2:  LDR             R1, =(_ZN14MobileSettings8settingsE_ptr - 0x3FBAC8)
3FBAC4:  ADD             R1, PC; _ZN14MobileSettings8settingsE_ptr
3FBAC6:  LDR             R1, [R1]; MobileSettings::settings ...
3FBAC8:  LDR.W           R1, [R1,#(dword_6E085C - 0x6E03F4)]
3FBACC:  CBZ             R1, loc_3FBB4A
3FBACE:  LDRSH.W         R0, [R0,#2]
3FBAD2:  CMN.W           R0, #0x40 ; '@'
3FBAD6:  BGE             loc_3FBADC
3FBAD8:  MOVS            R4, #1
3FBADA:  B               loc_3FBB4C
3FBADC:  MOVS            R4, #0
3FBADE:  MOV             R1, SP
3FBAE0:  MOVS            R0, #0xA7
3FBAE2:  MOVS            R2, #1
3FBAE4:  STRD.W          R4, R4, [SP,#0x10+var_10]
3FBAE8:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FBAEC:  CMP             R0, #1
3FBAEE:  BNE             loc_3FBB4C
3FBAF0:  VLDR            S0, [SP,#0x10+var_C]
3FBAF4:  VLDR            S2, =-32.0
3FBAF8:  VCMPE.F32       S0, S2
3FBAFC:  VMRS            APSR_nzcv, FPSCR
3FBB00:  BGE             loc_3FBB4C
3FBB02:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x3FBB08)
3FBB04:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
3FBB06:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
3FBB08:  LDR.W           R0, [R0,#(dword_6F3A30 - 0x6F3794)]
3FBB0C:  CBZ             R0, loc_3FBB4A
3FBB0E:  VLDR            S2, [R0,#0x90]
3FBB12:  MOVS            R1, #0
3FBB14:  VLDR            S0, =0.4
3FBB18:  MOVS            R0, #0
3FBB1A:  VLDR            S4, =5.8832
3FBB1E:  MOVS            R4, #1
3FBB20:  VCMPE.F32       S2, S0
3FBB24:  VMRS            APSR_nzcv, FPSCR
3FBB28:  VCMPE.F32       S2, #0.0
3FBB2C:  IT LT
3FBB2E:  MOVLT           R1, #1
3FBB30:  VMRS            APSR_nzcv, FPSCR
3FBB34:  VCMPE.F32       S2, S4
3FBB38:  IT GT
3FBB3A:  MOVGT           R0, #1
3FBB3C:  VMRS            APSR_nzcv, FPSCR
3FBB40:  BGT             loc_3FBB4C
3FBB42:  ANDS            R0, R1
3FBB44:  IT EQ
3FBB46:  MOVEQ           R4, #0
3FBB48:  B               loc_3FBB4C
3FBB4A:  MOVS            R4, #0
3FBB4C:  MOV             R0, R4
3FBB4E:  ADD             SP, SP, #8
3FBB50:  POP             {R4,R6,R7,PC}
