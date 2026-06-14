; =========================================================
; Game Engine Function: _ZN7CCamera30SetNearClipBasedOnPedCollisionEf
; Address            : 0x3E1A38 - 0x3E1A86
; =========================================================

3E1A38:  VMOV            S0, R1
3E1A3C:  LDR             R0, =(gPedClipDist_ptr - 0x3E1A4A)
3E1A3E:  VLDR            S4, =0.3
3E1A42:  VSQRT.F32       S0, S0
3E1A46:  ADD             R0, PC; gPedClipDist_ptr
3E1A48:  LDR             R0, [R0]; gPedClipDist
3E1A4A:  VLDR            S2, [R0]
3E1A4E:  LDR             R0, =(gpCamColVars_ptr - 0x3E1A58)
3E1A50:  VDIV.F32        S0, S0, S2
3E1A54:  ADD             R0, PC; gpCamColVars_ptr
3E1A56:  LDR             R0, [R0]; gpCamColVars
3E1A58:  LDR             R0, [R0]
3E1A5A:  VMOV.F32        S2, #0.25
3E1A5E:  VLDR            S6, [R0,#0x10]
3E1A62:  LDR             R0, =(Scene_ptr - 0x3E1A6C)
3E1A64:  VSUB.F32        S4, S4, S6
3E1A68:  ADD             R0, PC; Scene_ptr
3E1A6A:  LDR             R0, [R0]; Scene
3E1A6C:  VMUL.F32        S0, S0, S2
3E1A70:  LDR             R0, [R0,#(dword_9FC93C - 0x9FC938)]
3E1A72:  VMUL.F32        S0, S0, S4
3E1A76:  VADD.F32        S0, S6, S0
3E1A7A:  VMAX.F32        D0, D0, D3
3E1A7E:  VMOV            R1, S0
3E1A82:  B.W             sub_1918BC
