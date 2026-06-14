; =========================================================
; Game Engine Function: _ZN20CPedAttractorManager21ComputeEffectQueueDirEPK9C2dEffectRK7CMatrixR7CVector
; Address            : 0x4A868A - 0x4A86B6
; =========================================================

4A868A:  PUSH            {R4,R6,R7,LR}
4A868C:  ADD             R7, SP, #8
4A868E:  SUB             SP, SP, #0x20
4A8690:  VLDR            D16, [R0,#0x10]
4A8694:  MOV             R4, R2
4A8696:  LDR             R0, [R0,#0x18]
4A8698:  MOV             R2, SP
4A869A:  STR             R0, [SP,#0x28+var_20]
4A869C:  ADD             R0, SP, #0x28+var_18; CMatrix *
4A869E:  VSTR            D16, [SP,#0x28+var_28]
4A86A2:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
4A86A6:  VLDR            D16, [SP,#0x28+var_18]
4A86AA:  LDR             R0, [SP,#0x28+var_10]
4A86AC:  STR             R0, [R4,#8]
4A86AE:  VSTR            D16, [R4]
4A86B2:  ADD             SP, SP, #0x20 ; ' '
4A86B4:  POP             {R4,R6,R7,PC}
