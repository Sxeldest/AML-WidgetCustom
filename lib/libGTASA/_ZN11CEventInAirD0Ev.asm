; =========================================================
; Game Engine Function: _ZN11CEventInAirD0Ev
; Address            : 0x3766F0 - 0x37671C
; =========================================================

3766F0:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x3766F6)
3766F2:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
3766F4:  LDR             R1, [R1]; CPools::ms_pEventPool ...
3766F6:  LDR             R1, [R1]; CPools::ms_pEventPool
3766F8:  LDRD.W          R2, R3, [R1]
3766FC:  SUBS            R0, R0, R2
3766FE:  MOV             R2, #0xF0F0F0F1
376706:  ASRS            R0, R0, #2
376708:  MULS            R0, R2
37670A:  LDRB            R2, [R3,R0]
37670C:  ORR.W           R2, R2, #0x80
376710:  STRB            R2, [R3,R0]
376712:  LDR             R2, [R1,#0xC]
376714:  CMP             R0, R2
376716:  IT LT
376718:  STRLT           R0, [R1,#0xC]
37671A:  BX              LR
