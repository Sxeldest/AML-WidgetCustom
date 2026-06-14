; =========================================================
; Game Engine Function: _ZN7CCamera25StoreValuesDuringInterPolER7CVectorS1_S1_Rf
; Address            : 0x3DE688 - 0x3DE734
; =========================================================

3DE688:  PUSH            {R4,R6,R7,LR}
3DE68A:  ADD             R7, SP, #8
3DE68C:  VPUSH           {D8-D10}
3DE690:  MOV             R4, R0
3DE692:  LDR             R0, [R1,#8]
3DE694:  VLDR            D16, [R1]
3DE698:  STR.W           R0, [R4,#0x8A0]
3DE69C:  ADDW            R0, R4, #0x898
3DE6A0:  VSTR            D16, [R0]
3DE6A4:  LDR             R0, [R2,#8]
3DE6A6:  VLDR            D16, [R2]
3DE6AA:  STR.W           R0, [R4,#0x8AC]
3DE6AE:  ADDW            R0, R4, #0x8A4
3DE6B2:  LDR             R2, [R7,#arg_0]
3DE6B4:  VSTR            D16, [R0]
3DE6B8:  VLDR            D16, [R3]
3DE6BC:  LDR             R3, [R3,#8]
3DE6BE:  STR.W           R3, [R4,#0x8B8]
3DE6C2:  ADD.W           R3, R4, #0x8B0
3DE6C6:  VSTR            D16, [R3]
3DE6CA:  ADDW            R3, R4, #0x8A8
3DE6CE:  LDR             R2, [R2]
3DE6D0:  VLDR            S0, [R3]
3DE6D4:  STR.W           R2, [R4,#0xE8]
3DE6D8:  ADDW            R2, R4, #0x8AC; float
3DE6DC:  VLDR            S4, [R1,#4]
3DE6E0:  VLDR            S2, [R1]
3DE6E4:  VLDR            S6, [R0]
3DE6E8:  VSUB.F32        S0, S4, S0
3DE6EC:  VLDR            S16, [R1,#8]
3DE6F0:  VSUB.F32        S2, S2, S6
3DE6F4:  VLDR            S20, [R2]
3DE6F8:  VMOV            R1, S0; float
3DE6FC:  VMUL.F32        S4, S0, S0
3DE700:  VMOV            R0, S2; this
3DE704:  VMUL.F32        S6, S2, S2
3DE708:  VADD.F32        S4, S6, S4
3DE70C:  VSQRT.F32       S18, S4
3DE710:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
3DE714:  VSUB.F32        S0, S16, S20
3DE718:  STR.W           R0, [R4,#0x100]
3DE71C:  VMOV            R2, S18; float
3DE720:  VMOV            R1, S0; float
3DE724:  MOV             R0, R2; this
3DE726:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
3DE72A:  STR.W           R0, [R4,#0xFC]
3DE72E:  VPOP            {D8-D10}
3DE732:  POP             {R4,R6,R7,PC}
