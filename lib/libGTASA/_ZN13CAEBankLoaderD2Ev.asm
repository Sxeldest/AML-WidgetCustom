; =========================================================
; Game Engine Function: _ZN13CAEBankLoaderD2Ev
; Address            : 0x27D4BA - 0x27D4DC
; =========================================================

27D4BA:  PUSH            {R4,R6,R7,LR}
27D4BC:  ADD             R7, SP, #8
27D4BE:  MOV             R4, R0
27D4C0:  LDRB            R0, [R4,#0x14]
27D4C2:  CBZ             R0, loc_27D4D8
27D4C4:  LDR             R0, [R4]; void *
27D4C6:  CMP             R0, #0
27D4C8:  IT NE
27D4CA:  BLXNE           _ZdaPv; operator delete[](void *)
27D4CE:  LDR             R0, [R4,#4]; void *
27D4D0:  CMP             R0, #0
27D4D2:  IT NE
27D4D4:  BLXNE           _ZdaPv; operator delete[](void *)
27D4D8:  MOV             R0, R4
27D4DA:  POP             {R4,R6,R7,PC}
