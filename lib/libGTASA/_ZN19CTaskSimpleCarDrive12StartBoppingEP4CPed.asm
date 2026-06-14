; =========================================================
; Game Engine Function: _ZN19CTaskSimpleCarDrive12StartBoppingEP4CPed
; Address            : 0x4FAEC8 - 0x4FB012
; =========================================================

4FAEC8:  PUSH            {R4,R5,R7,LR}
4FAECA:  ADD             R7, SP, #8
4FAECC:  MOV             R5, R1
4FAECE:  MOV             R4, R0
4FAED0:  LDR.W           R0, [R5,#0x590]
4FAED4:  LDR.W           R0, [R0,#0x464]
4FAED8:  CMP             R0, #0
4FAEDA:  IT NE
4FAEDC:  CMPNE           R0, R5
4FAEDE:  BEQ             loc_4FAEFA
4FAEE0:  LDR.W           R0, [R0,#0x440]
4FAEE4:  MOVW            R1, #0x2C5; int
4FAEE8:  ADDS            R0, #4; this
4FAEEA:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
4FAEEE:  CMP             R0, #0
4FAEF0:  ITT NE
4FAEF2:  LDRNE           R1, [R0,#0x20]
4FAEF4:  ADDSNE.W        R2, R1, #1
4FAEF8:  BNE             loc_4FAFD4
4FAEFA:  LDR.W           R0, [R5,#0x590]
4FAEFE:  LDR.W           R1, [R0,#0x468]
4FAF02:  CMP             R1, #0
4FAF04:  IT NE
4FAF06:  CMPNE           R1, R5
4FAF08:  BEQ             loc_4FAF28
4FAF0A:  LDR.W           R0, [R1,#0x440]
4FAF0E:  MOVW            R1, #0x2C5; int
4FAF12:  ADDS            R0, #4; this
4FAF14:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
4FAF18:  CMP             R0, #0
4FAF1A:  ITT NE
4FAF1C:  LDRNE           R1, [R0,#0x20]
4FAF1E:  ADDSNE.W        R2, R1, #1
4FAF22:  BNE             loc_4FAFD4
4FAF24:  LDR.W           R0, [R5,#0x590]
4FAF28:  LDR.W           R1, [R0,#0x46C]
4FAF2C:  CMP             R1, #0
4FAF2E:  IT NE
4FAF30:  CMPNE           R1, R5
4FAF32:  BEQ             loc_4FAF52
4FAF34:  LDR.W           R0, [R1,#0x440]
4FAF38:  MOVW            R1, #0x2C5; int
4FAF3C:  ADDS            R0, #4; this
4FAF3E:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
4FAF42:  CMP             R0, #0
4FAF44:  ITT NE
4FAF46:  LDRNE           R1, [R0,#0x20]
4FAF48:  ADDSNE.W        R2, R1, #1
4FAF4C:  BNE             loc_4FAFD4
4FAF4E:  LDR.W           R0, [R5,#0x590]
4FAF52:  LDR.W           R0, [R0,#0x470]
4FAF56:  CMP             R0, #0
4FAF58:  IT NE
4FAF5A:  CMPNE           R0, R5
4FAF5C:  BEQ             loc_4FAF78
4FAF5E:  LDR.W           R0, [R0,#0x440]
4FAF62:  MOVW            R1, #0x2C5; int
4FAF66:  ADDS            R0, #4; this
4FAF68:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
4FAF6C:  CMP             R0, #0
4FAF6E:  ITT NE
4FAF70:  LDRNE           R1, [R0,#0x20]
4FAF72:  ADDSNE.W        R2, R1, #1
4FAF76:  BNE             loc_4FAFD4
4FAF78:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4FAF7E)
4FAF7A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4FAF7C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4FAF7E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4FAF80:  STR             R0, [R4,#0x20]
4FAF82:  BLX             rand
4FAF86:  UXTH            R0, R0
4FAF88:  VLDR            S2, =0.000015259
4FAF8C:  VMOV            S0, R0
4FAF90:  VCVT.F32.S32    S0, S0
4FAF94:  VMUL.F32        S0, S0, S2
4FAF98:  VLDR            S2, =60.0
4FAF9C:  VMUL.F32        S0, S0, S2
4FAFA0:  VCVT.S32.F32    S0, S0
4FAFA4:  VMOV            R0, S0
4FAFA8:  ADDS            R0, #0x3C ; '<'
4FAFAA:  VMOV            S0, R0
4FAFAE:  MOVS            R0, #0
4FAFB0:  VCVT.F32.S32    S0, S0
4FAFB4:  VDIV.F32        S0, S0, S2
4FAFB8:  VMOV.F32        S2, #1.0
4FAFBC:  VDIV.F32        S0, S2, S0
4FAFC0:  VLDR            S2, =1000.0
4FAFC4:  VMUL.F32        S0, S0, S2
4FAFC8:  VCVT.S32.F32    S0, S0
4FAFCC:  STR             R0, [R4,#0x2C]
4FAFCE:  VSTR            S0, [R4,#0x28]
4FAFD2:  POP             {R4,R5,R7,PC}
4FAFD4:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4FAFDC)
4FAFD6:  ADDS            R0, #0x28 ; '('
4FAFD8:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4FAFDA:  LDR             R5, [R0]
4FAFDC:  STR             R5, [R4,#0x28]
4FAFDE:  LDR             R0, [R2]; CTimer::m_snTimeInMilliseconds ...
4FAFE0:  STR             R1, [R4,#0x20]
4FAFE2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4FAFE4:  SUBS            R0, R0, R1
4FAFE6:  MOV             R1, R5
4FAFE8:  BLX             __aeabi_idivmod
4FAFEC:  VMOV            S0, R5
4FAFF0:  VMOV            S2, R1
4FAFF4:  ADD.W           R1, R0, R0,LSR#31
4FAFF8:  VCVT.F32.S32    S0, S0
4FAFFC:  BIC.W           R1, R1, #1
4FB000:  VCVT.F32.S32    S2, S2
4FB004:  SUBS            R0, R0, R1
4FB006:  STR             R0, [R4,#0x30]
4FB008:  VDIV.F32        S0, S2, S0
4FB00C:  VSTR            S0, [R4,#0x2C]
4FB010:  POP             {R4,R5,R7,PC}
