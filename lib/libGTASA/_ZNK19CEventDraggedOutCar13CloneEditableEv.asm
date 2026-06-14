; =========================================================
; Game Engine Function: _ZNK19CEventDraggedOutCar13CloneEditableEv
; Address            : 0x379878 - 0x37991C
; =========================================================

379878:  PUSH            {R4,R5,R7,LR}
37987A:  ADD             R7, SP, #8
37987C:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x379884)
37987E:  MOVS            R3, #0
379880:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
379882:  LDR             R1, [R1]; CPools::ms_pEventPool ...
379884:  LDR             R1, [R1]; CPools::ms_pEventPool
379886:  LDRD.W          R12, R4, [R1,#8]
37988A:  ADDS            R4, #1
37988C:  STR             R4, [R1,#0xC]
37988E:  CMP             R4, R12
379890:  BNE             loc_37989C
379892:  MOVS            R4, #0
379894:  LSLS            R2, R3, #0x1F
379896:  STR             R4, [R1,#0xC]
379898:  BNE             loc_3798CC
37989A:  MOVS            R3, #1
37989C:  LDR             R5, [R1,#4]
37989E:  LDRSB           R2, [R5,R4]
3798A0:  CMP.W           R2, #0xFFFFFFFF
3798A4:  BGT             loc_37988A
3798A6:  AND.W           R2, R2, #0x7F
3798AA:  STRB            R2, [R5,R4]
3798AC:  LDR             R2, [R1,#4]
3798AE:  LDR             R3, [R1,#0xC]
3798B0:  LDRB            R5, [R2,R3]
3798B2:  AND.W           R4, R5, #0x80
3798B6:  ADDS            R5, #1
3798B8:  AND.W           R5, R5, #0x7F
3798BC:  ORRS            R5, R4
3798BE:  STRB            R5, [R2,R3]
3798C0:  LDR             R2, [R1]
3798C2:  LDR             R1, [R1,#0xC]
3798C4:  ADD.W           R1, R1, R1,LSL#4
3798C8:  ADD.W           R4, R2, R1,LSL#2
3798CC:  LDR             R1, =(_ZTV19CEventDraggedOutCar_ptr - 0x3798DA)
3798CE:  MOVS            R5, #0
3798D0:  LDRD.W          R3, R2, [R0,#0x10]
3798D4:  CMP             R2, #0
3798D6:  ADD             R1, PC; _ZTV19CEventDraggedOutCar_ptr
3798D8:  LDRB            R0, [R0,#0x18]
3798DA:  STR             R5, [R4,#4]
3798DC:  MOV             R5, #0xC80100
3798E4:  LDR             R1, [R1]; `vtable for'CEventDraggedOutCar ...
3798E6:  STR             R5, [R4,#8]
3798E8:  MOVW            R5, #0xFFFF
3798EC:  STRH            R5, [R4,#0xC]
3798EE:  MOV             R5, R4
3798F0:  STRB            R0, [R4,#0x18]
3798F2:  ADD.W           R0, R1, #8
3798F6:  MOV             R1, R4
3798F8:  STR             R0, [R4]
3798FA:  STR.W           R2, [R1,#0x14]!; CEntity **
3798FE:  STR.W           R3, [R5,#0x10]!
379902:  BEQ             loc_37990C
379904:  MOV             R0, R2; this
379906:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
37990A:  LDR             R3, [R5]
37990C:  CMP             R3, #0
37990E:  ITTT NE
379910:  MOVNE           R0, R3; this
379912:  MOVNE           R1, R5; CEntity **
379914:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
379918:  MOV             R0, R4
37991A:  POP             {R4,R5,R7,PC}
