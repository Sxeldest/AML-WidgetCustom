; =========================================================
; Game Engine Function: _ZN4CPad9GetSprintEi
; Address            : 0x3FBD60 - 0x3FBE08
; =========================================================

3FBD60:  PUSH            {R4,R5,R7,LR}
3FBD62:  ADD             R7, SP, #8
3FBD64:  LDRH.W          R0, [R0,#0x110]
3FBD68:  MOV             R4, R1
3FBD6A:  MOVS            R5, #0
3FBD6C:  CBNZ            R0, loc_3FBDCA
3FBD6E:  LDR             R0, =(_ZN6CRopes19PlayerControlsCraneE_ptr - 0x3FBD74)
3FBD70:  ADD             R0, PC; _ZN6CRopes19PlayerControlsCraneE_ptr
3FBD72:  LDR             R0, [R0]; CRopes::PlayerControlsCrane ...
3FBD74:  LDR             R0, [R0]; CRopes::PlayerControlsCrane
3FBD76:  CBNZ            R0, loc_3FBDCA
3FBD78:  MOV.W           R0, #0xFFFFFFFF; int
3FBD7C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FBD80:  CBZ             R0, loc_3FBDBC
3FBD82:  MOV.W           R0, #0xFFFFFFFF; int
3FBD86:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FBD8A:  LDRB.W          R0, [R0,#0x487]
3FBD8E:  LSLS            R0, R0, #0x1D
3FBD90:  BPL             loc_3FBDBC
3FBD92:  MOV.W           R0, #0xFFFFFFFF; int
3FBD96:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FBD9A:  VLDR            S0, [R0,#0x48]
3FBD9E:  VLDR            S2, [R0,#0x4C]
3FBDA2:  VMUL.F32        S0, S0, S0
3FBDA6:  VMUL.F32        S2, S2, S2
3FBDAA:  VADD.F32        S0, S0, S2
3FBDAE:  VSQRT.F32       S0, S0
3FBDB2:  VCMP.F32        S0, #0.0
3FBDB6:  VMRS            APSR_nzcv, FPSCR
3FBDBA:  BEQ             loc_3FBDC8
3FBDBC:  LDR             R0, =(TheCamera_ptr - 0x3FBDC2)
3FBDBE:  ADD             R0, PC; TheCamera_ptr
3FBDC0:  LDR             R0, [R0]; TheCamera ; this
3FBDC2:  BLX             j__ZN7CCamera17IsTargetingActiveEv; CCamera::IsTargetingActive(void)
3FBDC6:  CBZ             R0, loc_3FBDCE
3FBDC8:  MOVS            R5, #0
3FBDCA:  MOV             R0, R5
3FBDCC:  POP             {R4,R5,R7,PC}
3FBDCE:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x3FBDD4)
3FBDD0:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
3FBDD2:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
3FBDD4:  LDR             R0, [R0,#(dword_6F3810 - 0x6F3794)]
3FBDD6:  CBZ             R0, loc_3FBDE8
3FBDD8:  CBZ             R4, loc_3FBDF2
3FBDDA:  ORR.W           R0, R4, #1
3FBDDE:  CMP             R0, #3
3FBDE0:  BNE             loc_3FBDC8
3FBDE2:  MOVS            R5, #1
3FBDE4:  MOVS            R0, #0x22 ; '"'
3FBDE6:  B               loc_3FBDF6
3FBDE8:  CMP             R4, #1
3FBDEA:  BEQ             loc_3FBDC8
3FBDEC:  MOVS            R5, #1
3FBDEE:  MOVS            R0, #0xA8
3FBDF0:  B               loc_3FBDF6
3FBDF2:  MOVS            R5, #1
3FBDF4:  MOVS            R0, #0x1F
3FBDF6:  MOVS            R1, #0
3FBDF8:  MOVS            R2, #1
3FBDFA:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FBDFE:  CMP             R0, #0
3FBE00:  IT EQ
3FBE02:  MOVEQ           R5, #0
3FBE04:  MOV             R0, R5
3FBE06:  POP             {R4,R5,R7,PC}
