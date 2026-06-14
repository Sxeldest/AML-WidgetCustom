; =========================================================
; Game Engine Function: _ZN18CTaskSimpleIKChain8BlendOutEi
; Address            : 0x4EFD90 - 0x4EFDB4
; =========================================================

4EFD90:  LDR             R2, [R0,#0x54]
4EFD92:  CMP             R2, #0
4EFD94:  IT NE
4EFD96:  BXNE            LR
4EFD98:  LDR             R2, [R0,#8]
4EFD9A:  MOVS            R3, #1
4EFD9C:  ADDS            R2, #1
4EFD9E:  ITT EQ
4EFDA0:  MOVEQ           R2, #0
4EFDA2:  STREQ           R2, [R0,#8]
4EFDA4:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4EFDAA)
4EFDA6:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4EFDA8:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
4EFDAA:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
4EFDAC:  STR             R3, [R0,#0x54]
4EFDAE:  ADD             R1, R2
4EFDB0:  STR             R1, [R0,#0x48]
4EFDB2:  BX              LR
