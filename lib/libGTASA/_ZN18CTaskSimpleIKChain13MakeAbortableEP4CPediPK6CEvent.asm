; =========================================================
; Game Engine Function: _ZN18CTaskSimpleIKChain13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4EFF9C - 0x4EFFCA
; =========================================================

4EFF9C:  CMP             R2, #2
4EFF9E:  ITT EQ
4EFFA0:  MOVEQ           R0, #1
4EFFA2:  BXEQ            LR
4EFFA4:  LDR             R1, [R0,#0x54]
4EFFA6:  CBZ             R1, loc_4EFFAC
4EFFA8:  MOVS            R0, #0
4EFFAA:  BX              LR
4EFFAC:  LDR             R1, [R0,#8]
4EFFAE:  MOVS            R2, #1
4EFFB0:  ADDS            R1, #1
4EFFB2:  ITT EQ
4EFFB4:  MOVEQ           R1, #0
4EFFB6:  STREQ           R1, [R0,#8]
4EFFB8:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4EFFBE)
4EFFBA:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4EFFBC:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
4EFFBE:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
4EFFC0:  STR             R2, [R0,#0x54]
4EFFC2:  ADDS            R1, #0xFA
4EFFC4:  STR             R1, [R0,#0x48]
4EFFC6:  MOVS            R0, #0
4EFFC8:  BX              LR
