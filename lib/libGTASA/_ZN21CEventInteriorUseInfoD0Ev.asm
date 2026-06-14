; =========================================================
; Game Engine Function: _ZN21CEventInteriorUseInfoD0Ev
; Address            : 0x378AD4 - 0x378B00
; =========================================================

378AD4:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x378ADA)
378AD6:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
378AD8:  LDR             R1, [R1]; CPools::ms_pEventPool ...
378ADA:  LDR             R1, [R1]; CPools::ms_pEventPool
378ADC:  LDRD.W          R2, R3, [R1]
378AE0:  SUBS            R0, R0, R2
378AE2:  MOV             R2, #0xF0F0F0F1
378AEA:  ASRS            R0, R0, #2
378AEC:  MULS            R0, R2
378AEE:  LDRB            R2, [R3,R0]
378AF0:  ORR.W           R2, R2, #0x80
378AF4:  STRB            R2, [R3,R0]
378AF6:  LDR             R2, [R1,#0xC]
378AF8:  CMP             R0, R2
378AFA:  IT LT
378AFC:  STRLT           R0, [R1,#0xC]
378AFE:  BX              LR
