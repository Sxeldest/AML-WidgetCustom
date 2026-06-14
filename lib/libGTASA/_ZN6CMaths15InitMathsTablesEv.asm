; =========================================================
; Game Engine Function: _ZN6CMaths15InitMathsTablesEv
; Address            : 0x44EA48 - 0x44EA82
; =========================================================

44EA48:  PUSH            {R4,R5,R7,LR}
44EA4A:  ADD             R7, SP, #8
44EA4C:  VPUSH           {D8}
44EA50:  LDR             R0, =(_ZN6CMaths11ms_SinTableE_ptr - 0x44EA5C)
44EA52:  MOVS            R5, #0
44EA54:  VLDR            S16, =0.024544
44EA58:  ADD             R0, PC; _ZN6CMaths11ms_SinTableE_ptr
44EA5A:  LDR             R4, [R0]; CMaths::ms_SinTable ...
44EA5C:  VMOV            S0, R5
44EA60:  VCVT.F32.S32    S0, S0
44EA64:  VMUL.F32        S0, S0, S16
44EA68:  VMOV            R0, S0; x
44EA6C:  BLX             sinf
44EA70:  ADDS            R5, #1
44EA72:  STR.W           R0, [R4],#4; CMaths::ms_SinTable
44EA76:  CMP.W           R5, #0x100
44EA7A:  BNE             loc_44EA5C
44EA7C:  VPOP            {D8}
44EA80:  POP             {R4,R5,R7,PC}
