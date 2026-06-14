; =========================================================
; Game Engine Function: _ZN11CTheScripts22HighlightImportantAreaEjfffff
; Address            : 0x34AE04 - 0x34AEA6
; =========================================================

34AE04:  PUSH            {R4,R6,R7,LR}
34AE06:  ADD             R7, SP, #8
34AE08:  VPUSH           {D8-D11}
34AE0C:  SUB             SP, SP, #0x20; float
34AE0E:  VLDR            S0, [R7,#arg_0]
34AE12:  VMOV            S4, R2; float
34AE16:  VMOV            S2, R3
34AE1A:  MOV             R4, R0
34AE1C:  VMOV            S6, R1
34AE20:  VMAX.F32        D8, D2, D0
34AE24:  VMIN.F32        D0, D2, D0
34AE28:  VMAX.F32        D9, D3, D1
34AE2C:  VMIN.F32        D1, D3, D1
34AE30:  VMOV.F32        S4, #0.5
34AE34:  VADD.F32        S0, S0, S16
34AE38:  VADD.F32        S2, S2, S18
34AE3C:  VMUL.F32        S22, S0, S4
34AE40:  VLDR            S0, [R7,#arg_4]
34AE44:  VMUL.F32        S20, S2, S4
34AE48:  VLDR            S2, =-100.0
34AE4C:  VCMPE.F32       S0, S2
34AE50:  VMRS            APSR_nzcv, FPSCR
34AE54:  VSTR            S22, [SP,#0x48+var_30]
34AE58:  VSTR            S20, [SP,#0x48+var_34]
34AE5C:  BGT             loc_34AE76
34AE5E:  VMOV            R0, S20; this
34AE62:  VMOV            R1, S22; float
34AE66:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
34AE6A:  VMOV.F32        S0, #2.0
34AE6E:  VMOV            S2, R0
34AE72:  VADD.F32        S0, S2, S0
34AE76:  VSUB.F32        S2, S22, S16
34AE7A:  MOVS            R0, #0
34AE7C:  VSUB.F32        S4, S18, S20
34AE80:  ADD             R3, SP, #0x48+var_34; int
34AE82:  VSTR            S0, [SP,#0x48+var_2C]
34AE86:  MOVS            R1, #2; int
34AE88:  STR             R0, [SP,#0x48+var_38]
34AE8A:  MOVS            R2, #0; int
34AE8C:  STRD.W          R0, R0, [SP,#0x48+var_44]; int
34AE90:  MOV             R0, R4; this
34AE92:  VSTR            S2, [SP,#0x48+var_3C]
34AE96:  VSTR            S4, [SP,#0x48+var_48]
34AE9A:  BLX             j__ZN8CShadows21RenderIndicatorShadowEjhP9RwTextureP7CVectorffffs; CShadows::RenderIndicatorShadow(uint,uchar,RwTexture *,CVector *,float,float,float,float,short)
34AE9E:  ADD             SP, SP, #0x20 ; ' '
34AEA0:  VPOP            {D8-D11}
34AEA4:  POP             {R4,R6,R7,PC}
