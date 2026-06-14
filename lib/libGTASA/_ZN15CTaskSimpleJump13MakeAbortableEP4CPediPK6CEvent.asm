; =========================================================
; Game Engine Function: _ZN15CTaskSimpleJump13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x52D748 - 0x52D768
; =========================================================

52D748:  LDR             R1, [R0,#0x28]
52D74A:  CBZ             R1, loc_52D75E
52D74C:  LDRH            R3, [R1,#0x2E]
52D74E:  ORR.W           R3, R3, #4
52D752:  STRH            R3, [R1,#0x2E]
52D754:  LDR             R0, [R0,#0x28]
52D756:  MOVS            R1, #0xC0800000
52D75C:  STR             R1, [R0,#0x1C]
52D75E:  MOVS            R0, #0
52D760:  CMP             R2, #2
52D762:  IT EQ
52D764:  MOVEQ           R0, #1
52D766:  BX              LR
