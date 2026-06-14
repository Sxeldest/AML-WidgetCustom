; =========================================================
; Game Engine Function: _ZN21CTaskSimplePickUpBike13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x501254 - 0x50127C
; =========================================================

501254:  CMP             R2, #2
501256:  ITT NE
501258:  MOVNE           R0, #0
50125A:  BXNE            LR
50125C:  LDR             R1, [R0,#0xC]
50125E:  CMP             R1, #0
501260:  ITTT NE
501262:  MOVNE           R2, #0
501264:  MOVTNE          R2, #0xC47A
501268:  STRNE           R2, [R1,#0x1C]
50126A:  LDR             R0, [R0,#0x10]
50126C:  LDRB.W          R1, [R0,#0x628]
501270:  AND.W           R1, R1, #0xF7
501274:  STRB.W          R1, [R0,#0x628]
501278:  MOVS            R0, #1
50127A:  BX              LR
