; =========================================================
; Game Engine Function: _ZN20CPedAttractorManager23ComputeEffectForwardDirEPK9C2dEffectRK7CMatrixR7CVector
; Address            : 0x4AC01A - 0x4AC046
; =========================================================

4AC01A:  PUSH            {R4,R6,R7,LR}
4AC01C:  ADD             R7, SP, #8
4AC01E:  SUB             SP, SP, #0x20
4AC020:  VLDR            D16, [R0,#0x28]
4AC024:  MOV             R4, R2
4AC026:  LDR             R0, [R0,#0x30]
4AC028:  MOV             R2, SP
4AC02A:  STR             R0, [SP,#0x28+var_20]
4AC02C:  ADD             R0, SP, #0x28+var_18; CMatrix *
4AC02E:  VSTR            D16, [SP,#0x28+var_28]
4AC032:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
4AC036:  VLDR            D16, [SP,#0x28+var_18]
4AC03A:  LDR             R0, [SP,#0x28+var_10]
4AC03C:  STR             R0, [R4,#8]
4AC03E:  VSTR            D16, [R4]
4AC042:  ADD             SP, SP, #0x20 ; ' '
4AC044:  POP             {R4,R6,R7,PC}
