; =========================================================
; Game Engine Function: _ZN6CCover17FindVectorFromDirEh
; Address            : 0x4D6140 - 0x4D6174
; =========================================================

4D6140:  PUSH            {R4,R5,R7,LR}
4D6142:  ADD             R7, SP, #8
4D6144:  VMOV            S0, R1
4D6148:  VLDR            S2, =0.024544
4D614C:  MOV             R4, R0
4D614E:  MOVS            R0, #0
4D6150:  VCVT.F32.U32    S0, S0
4D6154:  STR             R0, [R4,#8]
4D6156:  VMUL.F32        S0, S0, S2
4D615A:  VMOV            R5, S0
4D615E:  MOV             R0, R5; x
4D6160:  BLX             sinf
4D6164:  EOR.W           R0, R0, #0x80000000
4D6168:  STR             R0, [R4]
4D616A:  MOV             R0, R5; x
4D616C:  BLX             cosf
4D6170:  STR             R0, [R4,#4]
4D6172:  POP             {R4,R5,R7,PC}
