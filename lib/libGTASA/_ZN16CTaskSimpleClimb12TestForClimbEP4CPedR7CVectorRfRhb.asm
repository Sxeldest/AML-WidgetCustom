; =========================================================
; Game Engine Function: _ZN16CTaskSimpleClimb12TestForClimbEP4CPedR7CVectorRfRhb
; Address            : 0x52CA50 - 0x52CB7A
; =========================================================

52CA50:  PUSH            {R4-R7,LR}
52CA52:  ADD             R7, SP, #0xC
52CA54:  PUSH.W          {R8,R9,R11}
52CA58:  VPUSH           {D8}
52CA5C:  SUB             SP, SP, #0x40
52CA5E:  MOV             R8, R0
52CA60:  LDR             R0, [R7,#arg_0]
52CA62:  MOVS            R5, #0
52CA64:  MOV             R9, R2
52CA66:  STRD.W          R0, R5, [SP,#0x60+var_60]; unsigned __int8 *
52CA6A:  MOV             R0, R8; this
52CA6C:  MOV             R4, R1
52CA6E:  STRD.W          R5, R5, [SP,#0x60+var_58]; bool
52CA72:  BLX             j__ZN16CTaskSimpleClimb10ScanToGrabEP4CPedR7CVectorRfRhbbbPS2_; CTaskSimpleClimb::ScanToGrab(CPed *,CVector &,float &,uchar &,bool,bool,bool,CVector*)
52CA76:  MOV             R6, R0
52CA78:  CMP             R6, #0
52CA7A:  BEQ             loc_52CB6C
52CA7C:  VLDR            D16, [R4]
52CA80:  LDR             R0, [R4,#8]
52CA82:  STR             R0, [SP,#0x60+var_38]
52CA84:  VSTR            D16, [SP,#0x60+var_40]
52CA88:  LDRB.W          R0, [R6,#0x3A]
52CA8C:  VLDR            S16, [R9]
52CA90:  AND.W           R0, R0, #7
52CA94:  SUBS            R0, #2
52CA96:  UXTB            R0, R0
52CA98:  CMP             R0, #2
52CA9A:  BHI             loc_52CAE2
52CA9C:  LDR             R1, [R6,#0x14]
52CA9E:  CBNZ            R1, loc_52CAB0
52CAA0:  MOV             R0, R6; this
52CAA2:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
52CAA6:  LDR             R1, [R6,#0x14]; CMatrix *
52CAA8:  ADDS            R0, R6, #4; this
52CAAA:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
52CAAE:  LDR             R1, [R6,#0x14]
52CAB0:  ADD             R0, SP, #0x60+var_50
52CAB2:  ADD             R2, SP, #0x60+var_40
52CAB4:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
52CAB8:  VLDR            D16, [SP,#0x60+var_50]
52CABC:  LDR             R0, [SP,#0x60+var_48]
52CABE:  STR             R0, [SP,#0x60+var_38]
52CAC0:  VSTR            D16, [SP,#0x60+var_40]
52CAC4:  LDR             R0, [R6,#0x14]
52CAC6:  CBZ             R0, loc_52CADA
52CAC8:  LDRD.W          R2, R1, [R0,#0x10]; x
52CACC:  EOR.W           R0, R2, #0x80000000; y
52CAD0:  BLX             atan2f
52CAD4:  VMOV            S0, R0
52CAD8:  B               loc_52CADE
52CADA:  VLDR            S0, [R6,#0x10]
52CADE:  VADD.F32        S16, S16, S0
52CAE2:  VMOV            R4, S16
52CAE6:  MOV             R0, R4; x
52CAE8:  BLX             sinf
52CAEC:  MOV             R5, R0
52CAEE:  LDR             R0, =(_ZN16CTaskSimpleClimb20ms_fAtEdgeOffsetHorzE_ptr - 0x52CAF4)
52CAF0:  ADD             R0, PC; _ZN16CTaskSimpleClimb20ms_fAtEdgeOffsetHorzE_ptr
52CAF2:  LDR             R0, [R0]; CTaskSimpleClimb::ms_fAtEdgeOffsetHorz ...
52CAF4:  VLDR            S16, [R0]
52CAF8:  MOV             R0, R4; x
52CAFA:  BLX             cosf
52CAFE:  VMOV            S0, R0
52CB02:  LDR             R0, =(_ZN16CTaskSimpleClimb20ms_fAtEdgeOffsetVertE_ptr - 0x52CB10)
52CB04:  VMOV            S2, R5
52CB08:  VLDR            S4, [SP,#0x60+var_40]
52CB0C:  ADD             R0, PC; _ZN16CTaskSimpleClimb20ms_fAtEdgeOffsetVertE_ptr
52CB0E:  VMUL.F32        S0, S0, S16
52CB12:  VMUL.F32        S2, S2, S16
52CB16:  VLDR            S6, [SP,#0x60+var_40+4]
52CB1A:  LDR             R0, [R0]; CTaskSimpleClimb::ms_fAtEdgeOffsetVert ...
52CB1C:  MOVS            R1, #0
52CB1E:  VLDR            S8, [SP,#0x60+var_38]
52CB22:  MOVS            R2, #1
52CB24:  SUB.W           R3, R7, #-var_31; float *
52CB28:  VLDR            S10, [R0]
52CB2C:  ADD             R0, SP, #0x60+var_40
52CB2E:  VADD.F32        S0, S6, S0
52CB32:  VSUB.F32        S2, S4, S2
52CB36:  VADD.F32        S4, S10, S8
52CB3A:  VSTR            S0, [SP,#0x60+var_40+4]
52CB3E:  VSTR            S2, [SP,#0x60+var_40]
52CB42:  VSTR            S4, [SP,#0x60+var_38]
52CB46:  STRD.W          R1, R2, [SP,#0x60+var_60]; unsigned __int8 *
52CB4A:  ADD             R2, SP, #0x60+var_24; CVector *
52CB4C:  STRD.W          R1, R0, [SP,#0x60+var_58]; bool
52CB50:  ADD             R1, SP, #0x60+var_31+1; CPed *
52CB52:  MOV             R0, R8; this
52CB54:  BLX             j__ZN16CTaskSimpleClimb10ScanToGrabEP4CPedR7CVectorRfRhbbbPS2_; CTaskSimpleClimb::ScanToGrab(CPed *,CVector &,float &,uchar &,bool,bool,bool,CVector*)
52CB58:  CBZ             R0, loc_52CB6A
52CB5A:  MOVW            R0, #0x3F9A
52CB5E:  MOVS            R5, #0
52CB60:  MOVT            R0, #0xC61C
52CB64:  STR.W           R0, [R9]
52CB68:  B               loc_52CB6C
52CB6A:  MOV             R5, R6
52CB6C:  MOV             R0, R5
52CB6E:  ADD             SP, SP, #0x40 ; '@'
52CB70:  VPOP            {D8}
52CB74:  POP.W           {R8,R9,R11}
52CB78:  POP             {R4-R7,PC}
