; =========================================================
; Game Engine Function: _ZN4CPad13GetAbortClimbEv
; Address            : 0x3FBB68 - 0x3FBBA4
; =========================================================

3FBB68:  LDRSH.W         R0, [R0,#2]
3FBB6C:  CMP             R0, #0x40 ; '@'
3FBB6E:  ITT GT
3FBB70:  MOVGT           R0, #1
3FBB72:  BXGT            LR
3FBB74:  PUSH            {R4,R6,R7,LR}
3FBB76:  ADD             R7, SP, #0x10+var_8
3FBB78:  SUB             SP, SP, #8
3FBB7A:  MOVS            R4, #0
3FBB7C:  MOV             R1, SP
3FBB7E:  MOVS            R0, #0xA7
3FBB80:  MOVS            R2, #1
3FBB82:  STRD.W          R4, R4, [SP,#0x18+var_18]
3FBB86:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FBB8A:  VLDR            S0, =32.0
3FBB8E:  VLDR            S2, [SP,#0x18+var_14]
3FBB92:  VCMPE.F32       S2, S0
3FBB96:  VMRS            APSR_nzcv, FPSCR
3FBB9A:  IT GT
3FBB9C:  MOVGT           R4, #1
3FBB9E:  ANDS            R0, R4
3FBBA0:  ADD             SP, SP, #8
3FBBA2:  POP             {R4,R6,R7,PC}
