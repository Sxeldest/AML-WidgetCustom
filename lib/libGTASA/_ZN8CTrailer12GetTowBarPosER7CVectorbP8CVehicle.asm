; =========================================================
; Game Engine Function: _ZN8CTrailer12GetTowBarPosER7CVectorbP8CVehicle
; Address            : 0x57BDFC - 0x57BE6E
; =========================================================

57BDFC:  PUSH            {R4,R6,R7,LR}
57BDFE:  ADD             R7, SP, #8
57BE00:  SUB             SP, SP, #0x10
57BE02:  MOV             R4, R1
57BE04:  CBNZ            R2, loc_57BE14
57BE06:  LDRSH.W         R1, [R0,#0x26]
57BE0A:  MOVW            R2, #0x12F
57BE0E:  CMP.W           R2, R1,LSR#1
57BE12:  BNE             loc_57BE68
57BE14:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x57BE1E)
57BE16:  MOVS            R2, #0
57BE18:  STR             R2, [R4]
57BE1A:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
57BE1C:  LDRSH.W         R2, [R0,#0x26]
57BE20:  VLDR            S0, =0.05
57BE24:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
57BE26:  LDR.W           R1, [R1,R2,LSL#2]
57BE2A:  MOV             R2, R4
57BE2C:  LDR             R1, [R1,#0x2C]
57BE2E:  VLDR            S2, [R1,#4]
57BE32:  ADDW            R1, R0, #0x8AC
57BE36:  VADD.F32        S0, S2, S0
57BE3A:  VMOV.F32        S2, #0.5
57BE3E:  VSTR            S0, [R4,#4]
57BE42:  VLDR            S0, [R1]
57BE46:  VSUB.F32        S0, S2, S0
57BE4A:  VSTR            S0, [R4,#8]
57BE4E:  LDR             R1, [R0,#0x14]
57BE50:  MOV             R0, SP
57BE52:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
57BE56:  VLDR            D16, [SP,#0x18+var_18]
57BE5A:  LDR             R0, [SP,#0x18+var_10]
57BE5C:  STR             R0, [R4,#8]
57BE5E:  MOVS            R0, #1
57BE60:  VSTR            D16, [R4]
57BE64:  ADD             SP, SP, #0x10
57BE66:  POP             {R4,R6,R7,PC}
57BE68:  MOVS            R0, #0
57BE6A:  ADD             SP, SP, #0x10
57BE6C:  POP             {R4,R6,R7,PC}
