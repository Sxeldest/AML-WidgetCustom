; =========================================================
; Game Engine Function: _Z21NVEventUnhandledEventP7NVEvent
; Address            : 0x2715F4 - 0x27161A
; =========================================================

2715F4:  LDR             R1, =(byte_6855E5 - 0x2715FA)
2715F6:  ADD             R1, PC; byte_6855E5
2715F8:  LDRB            R1, [R1]
2715FA:  CMP             R1, #0
2715FC:  IT EQ
2715FE:  BXEQ            LR
271600:  LDR             R0, [R0]
271602:  SUBS            R0, #7
271604:  CMP             R0, #1
271606:  BHI             locret_271618
271608:  LDR             R1, =(aNvevent - 0x271614); "NVEvent"
27160A:  ADR             R3, aNveventunhandl; "NVEventUnhandledEvent"
27160C:  LDR             R2, =(aCProjectsOswra_68 - 0x271616); "C:/Projects/OSWrapper\\OS_AND/BUILD/jni"...
27160E:  MOVS            R0, #3; prio
271610:  ADD             R1, PC; "NVEvent"
271612:  ADD             R2, PC; "C:/Projects/OSWrapper\\OS_AND/BUILD/jni"...
271614:  B.W             sub_199CB8
271618:  BX              LR
