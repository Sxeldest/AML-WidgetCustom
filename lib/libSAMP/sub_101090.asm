; =========================================================
; Game Engine Function: sub_101090
; Address            : 0x101090 - 0x1010A2
; =========================================================

101090:  LDR             R2, =(_ZTSZ25CPed__ProcessControl_hookP9_PED_TYPEE3$_3 - 0x10109A); type descriptor name
101092:  LDR             R3, [R1,#4]
101094:  MOVS            R1, #0
101096:  ADD             R2, PC; type descriptor name
101098:  CMP             R3, R2
10109A:  IT EQ
10109C:  ADDEQ           R1, R0, #4
10109E:  MOV             R0, R1
1010A0:  BX              LR
