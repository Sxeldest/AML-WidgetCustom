; =========================================================
; Game Engine Function: _ZN20CTaskSimpleIKManager8BlendOutEii
; Address            : 0x4EFD60 - 0x4EFD8A
; =========================================================

4EFD60:  ADD.W           R0, R0, R1,LSL#2
4EFD64:  LDR             R0, [R0,#8]
4EFD66:  LDR             R1, [R0,#0x54]
4EFD68:  CMP             R1, #0
4EFD6A:  IT NE
4EFD6C:  BXNE            LR
4EFD6E:  LDR             R1, [R0,#8]
4EFD70:  MOVS            R3, #1
4EFD72:  ADDS            R1, #1
4EFD74:  ITT EQ
4EFD76:  MOVEQ           R1, #0
4EFD78:  STREQ           R1, [R0,#8]
4EFD7A:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4EFD80)
4EFD7C:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4EFD7E:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
4EFD80:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
4EFD82:  STR             R3, [R0,#0x54]
4EFD84:  ADD             R1, R2
4EFD86:  STR             R1, [R0,#0x48]
4EFD88:  BX              LR
