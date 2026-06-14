; =========================================================
; Game Engine Function: _ZN12CBulletTrace6UpdateEv
; Address            : 0x5C22AC - 0x5C22C4
; =========================================================

5C22AC:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5C22B6)
5C22AE:  LDRD.W          R2, R3, [R0,#0x1C]
5C22B2:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5C22B4:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
5C22B6:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
5C22B8:  SUBS            R1, R1, R2
5C22BA:  CMP             R1, R3
5C22BC:  ITT CS
5C22BE:  MOVCS           R1, #0
5C22C0:  STRBCS          R1, [R0,#0x18]
5C22C2:  BX              LR
