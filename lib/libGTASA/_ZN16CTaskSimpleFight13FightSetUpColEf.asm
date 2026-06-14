; =========================================================
; Game Engine Function: _ZN16CTaskSimpleFight13FightSetUpColEf
; Address            : 0x4DAEF0 - 0x4DAF7E
; =========================================================

4DAEF0:  PUSH            {R4,R6,R7,LR}
4DAEF2:  ADD             R7, SP, #8
4DAEF4:  VPUSH           {D8}
4DAEF8:  SUB             SP, SP, #0x18
4DAEFA:  LDR             R0, =(_ZN16CTaskSimpleFight17m_sStrikeColModelE_ptr - 0x4DAF04)
4DAEFC:  VMOV            S16, R1; float
4DAF00:  ADD             R0, PC; _ZN16CTaskSimpleFight17m_sStrikeColModelE_ptr
4DAF02:  LDR             R0, [R0]; CTaskSimpleFight::m_sStrikeColModel ...
4DAF04:  LDR             R0, [R0,#(dword_9FDBC8 - 0x9FDB9C)]
4DAF06:  CBZ             R0, loc_4DAF12
4DAF08:  LDR             R0, =(_ZN16CTaskSimpleFight16m_sStrikeColDataE_ptr - 0x4DAF0E)
4DAF0A:  ADD             R0, PC; _ZN16CTaskSimpleFight16m_sStrikeColDataE_ptr
4DAF0C:  LDR             R0, [R0]; CTaskSimpleFight::m_sStrikeColData ...
4DAF0E:  LDR             R0, [R0,#(dword_9FDBD4 - 0x9FDBCC)]
4DAF10:  B               loc_4DAF34
4DAF12:  LDR.W           R12, =(_ZN16CTaskSimpleFight17m_sStrikeColModelE_ptr - 0x4DAF20)
4DAF16:  LDR             R0, =(_ZN16CTaskSimpleFight16m_sStrikeColDataE_ptr - 0x4DAF22)
4DAF18:  LDR.W           LR, =(_ZN16CTaskSimpleFight16m_sStrikeSpheresE_ptr - 0x4DAF24)
4DAF1C:  ADD             R12, PC; _ZN16CTaskSimpleFight17m_sStrikeColModelE_ptr
4DAF1E:  ADD             R0, PC; _ZN16CTaskSimpleFight16m_sStrikeColDataE_ptr
4DAF20:  ADD             LR, PC; _ZN16CTaskSimpleFight16m_sStrikeSpheresE_ptr
4DAF22:  LDR.W           R3, [R12]; CTaskSimpleFight::m_sStrikeColModel ...
4DAF26:  LDR             R2, [R0]; CTaskSimpleFight::m_sStrikeColData ...
4DAF28:  LDR.W           R0, [LR]; this
4DAF2C:  STR             R2, [R3,#(dword_9FDBC8 - 0x9FDB9C)]
4DAF2E:  MOVS            R3, #1
4DAF30:  STR             R0, [R2,#(dword_9FDBD4 - 0x9FDBCC)]
4DAF32:  STRH            R3, [R2]; CTaskSimpleFight::m_sStrikeColData
4DAF34:  MOVS            R4, #0
4DAF36:  MOVS            R2, #0xFF
4DAF38:  STRD.W          R4, R4, [SP,#0x28+var_1C]
4DAF3C:  MOVS            R3, #0; unsigned __int8
4DAF3E:  STR             R4, [SP,#0x28+var_14]
4DAF40:  STRD.W          R4, R2, [SP,#0x28+var_28]; unsigned __int8
4DAF44:  ADD             R2, SP, #0x28+var_1C; CVector *
4DAF46:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
4DAF4A:  LDR             R0, =(_ZN16CTaskSimpleFight17m_sStrikeColModelE_ptr - 0x4DAF54)
4DAF4C:  VNEG.F32        S0, S16
4DAF50:  ADD             R0, PC; _ZN16CTaskSimpleFight17m_sStrikeColModelE_ptr
4DAF52:  LDR             R0, [R0]; CTaskSimpleFight::m_sStrikeColModel ...
4DAF54:  VSTR            S16, [R0,#0x24]
4DAF58:  STRD.W          R4, R4, [R0,#(dword_9FDBB4 - 0x9FDB9C)]
4DAF5C:  STR             R4, [R0,#(dword_9FDBBC - 0x9FDB9C)]
4DAF5E:  VSTR            S0, [R0]
4DAF62:  VSTR            S0, [R0,#4]
4DAF66:  VSTR            S0, [R0,#8]
4DAF6A:  VSTR            S16, [R0,#0xC]
4DAF6E:  VSTR            S16, [R0,#0x10]
4DAF72:  VSTR            S16, [R0,#0x14]
4DAF76:  ADD             SP, SP, #0x18
4DAF78:  VPOP            {D8}
4DAF7C:  POP             {R4,R6,R7,PC}
