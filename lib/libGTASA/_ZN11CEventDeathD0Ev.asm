; =========================================================
; Game Engine Function: _ZN11CEventDeathD0Ev
; Address            : 0x373AB0 - 0x373ADC
; =========================================================

373AB0:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x373AB6)
373AB2:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
373AB4:  LDR             R1, [R1]; CPools::ms_pEventPool ...
373AB6:  LDR             R1, [R1]; CPools::ms_pEventPool
373AB8:  LDRD.W          R2, R3, [R1]
373ABC:  SUBS            R0, R0, R2
373ABE:  MOV             R2, #0xF0F0F0F1
373AC6:  ASRS            R0, R0, #2
373AC8:  MULS            R0, R2
373ACA:  LDRB            R2, [R3,R0]
373ACC:  ORR.W           R2, R2, #0x80
373AD0:  STRB            R2, [R3,R0]
373AD2:  LDR             R2, [R1,#0xC]
373AD4:  CMP             R0, R2
373AD6:  IT LT
373AD8:  STRLT           R0, [R1,#0xC]
373ADA:  BX              LR
