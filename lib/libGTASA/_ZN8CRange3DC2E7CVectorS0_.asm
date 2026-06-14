; =========================================================
; Game Engine Function: _ZN8CRange3DC2E7CVectorS0_
; Address            : 0x40E690 - 0x40E6A6
; =========================================================

40E690:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CRange3D::CRange3D(CVector, CVector)'
40E692:  ADD             R7, SP, #8
40E694:  LDRD.W          R4, LR, [R7,#arg_0]
40E698:  LDR.W           R12, [R7,#arg_8]
40E69C:  STM.W           R0, {R1-R4,LR}
40E6A0:  STR.W           R12, [R0,#0x14]
40E6A4:  POP             {R4,R6,R7,PC}
