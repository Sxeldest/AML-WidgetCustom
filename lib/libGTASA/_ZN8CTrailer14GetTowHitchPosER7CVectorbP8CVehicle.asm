; =========================================================
; Game Engine Function: _ZN8CTrailer14GetTowHitchPosER7CVectorbP8CVehicle
; Address            : 0x57BD44 - 0x57BDF8
; =========================================================

57BD44:  PUSH            {R4,R5,R7,LR}
57BD46:  ADD             R7, SP, #8
57BD48:  SUB             SP, SP, #0x10
57BD4A:  LDR.W           R12, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x57BD5A)
57BD4E:  MOV             R5, R1
57BD50:  LDRSH.W         R1, [R0,#0x26]
57BD54:  CMP             R3, #0
57BD56:  ADD             R12, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
57BD58:  LDR.W           R4, [R12]; CModelInfo::ms_modelInfoPtrs ...
57BD5C:  LDR.W           R12, [R4,R1,LSL#2]
57BD60:  LDR.W           R1, [R12,#0x74]
57BD64:  VLDR            D16, [R1,#0x6C]
57BD68:  LDR             R1, [R1,#0x74]
57BD6A:  STR             R1, [R5,#8]
57BD6C:  VSTR            D16, [R5]
57BD70:  BEQ             loc_57BD80
57BD72:  LDRH            R1, [R3,#0x26]
57BD74:  MOVW            R3, #0x20D
57BD78:  CMP             R1, R3
57BD7A:  BNE             loc_57BD80
57BD7C:  MOVS            R1, #0
57BD7E:  B               loc_57BDF2
57BD80:  VLDR            S0, [R5]
57BD84:  VCMP.F32        S0, #0.0
57BD88:  VMRS            APSR_nzcv, FPSCR
57BD8C:  BNE             loc_57BDDA
57BD8E:  VLDR            S0, [R5,#4]
57BD92:  VCMP.F32        S0, #0.0
57BD96:  VMRS            APSR_nzcv, FPSCR
57BD9A:  BNE             loc_57BDDA
57BD9C:  VLDR            S0, [R5,#8]
57BDA0:  VCMP.F32        S0, #0.0
57BDA4:  VMRS            APSR_nzcv, FPSCR
57BDA8:  BNE             loc_57BDDA
57BDAA:  MOVS            R1, #0
57BDAC:  CMP             R2, #1
57BDAE:  BNE             loc_57BDF2
57BDB0:  VMOV.F32        S0, #1.0
57BDB4:  STR             R1, [R5]
57BDB6:  LDR.W           R1, [R12,#0x2C]
57BDBA:  VLDR            S2, [R1,#0x10]
57BDBE:  ADDW            R1, R0, #0x8AC
57BDC2:  VADD.F32        S0, S2, S0
57BDC6:  VMOV.F32        S2, #0.5
57BDCA:  VSTR            S0, [R5,#4]
57BDCE:  VLDR            S0, [R1]
57BDD2:  VSUB.F32        S0, S2, S0
57BDD6:  VSTR            S0, [R5,#8]
57BDDA:  LDR             R1, [R0,#0x14]
57BDDC:  MOV             R0, SP
57BDDE:  MOV             R2, R5
57BDE0:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
57BDE4:  VLDR            D16, [SP,#0x18+var_18]
57BDE8:  MOVS            R1, #1
57BDEA:  LDR             R0, [SP,#0x18+var_10]
57BDEC:  STR             R0, [R5,#8]
57BDEE:  VSTR            D16, [R5]
57BDF2:  MOV             R0, R1
57BDF4:  ADD             SP, SP, #0x10
57BDF6:  POP             {R4,R5,R7,PC}
