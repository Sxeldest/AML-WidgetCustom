; =========================================================
; Game Engine Function: _ZN17CWidgetButtonSwim6UpdateEv
; Address            : 0x2B6B5C - 0x2B6BBA
; =========================================================

2B6B5C:  PUSH            {R4,R5,R7,LR}
2B6B5E:  ADD             R7, SP, #8
2B6B60:  MOV             R4, R0
2B6B62:  BLX             j__ZN13CWidgetButton6UpdateEv; CWidgetButton::Update(void)
2B6B66:  MOV.W           R0, #0xFFFFFFFF; int
2B6B6A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2B6B6E:  CMP             R0, #0
2B6B70:  IT EQ
2B6B72:  POPEQ           {R4,R5,R7,PC}
2B6B74:  MOVS            R0, #7
2B6B76:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
2B6B7A:  MOV             R5, R0
2B6B7C:  MOV.W           R0, #0xFFFFFFFF; int
2B6B80:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2B6B84:  LDR.W           R0, [R0,#0x444]
2B6B88:  VMOV            S2, R5
2B6B8C:  VLDR            S0, =150.0
2B6B90:  VLDR            S4, [R0,#0x18]
2B6B94:  VADD.F32        S2, S2, S0
2B6B98:  VADD.F32        S0, S4, S0
2B6B9C:  VLDR            S4, =0.0
2B6BA0:  VDIV.F32        S0, S0, S2
2B6BA4:  VMOV.F32        S2, #1.0
2B6BA8:  VSUB.F32        S0, S2, S0
2B6BAC:  VMIN.F32        D16, D0, D1
2B6BB0:  VMAX.F32        D0, D16, D2
2B6BB4:  VSTR            S0, [R4,#0x9C]
2B6BB8:  POP             {R4,R5,R7,PC}
