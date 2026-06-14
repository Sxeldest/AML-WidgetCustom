; =========================================================
; Game Engine Function: _ZN7CCamera27DeleteCutSceneCamDataMemoryEv
; Address            : 0x462D30 - 0x462D7C
; =========================================================

462D30:  PUSH            {R4,R6,R7,LR}
462D32:  ADD             R7, SP, #8
462D34:  MOV             R4, R0
462D36:  LDR.W           R0, [R4,#0x8E4]; void *
462D3A:  CBZ             R0, loc_462D46
462D3C:  BLX             _ZdaPv; operator delete[](void *)
462D40:  MOVS            R0, #0
462D42:  STR.W           R0, [R4,#0x8E4]
462D46:  LDR.W           R0, [R4,#0x8E8]; void *
462D4A:  CBZ             R0, loc_462D56
462D4C:  BLX             _ZdaPv; operator delete[](void *)
462D50:  MOVS            R0, #0
462D52:  STR.W           R0, [R4,#0x8E8]
462D56:  LDR.W           R0, [R4,#0x8EC]; void *
462D5A:  CBZ             R0, loc_462D66
462D5C:  BLX             _ZdaPv; operator delete[](void *)
462D60:  MOVS            R0, #0
462D62:  STR.W           R0, [R4,#0x8EC]
462D66:  LDR.W           R0, [R4,#0x8F0]; void *
462D6A:  CMP             R0, #0
462D6C:  IT EQ
462D6E:  POPEQ           {R4,R6,R7,PC}
462D70:  BLX             _ZdaPv; operator delete[](void *)
462D74:  MOVS            R0, #0
462D76:  STR.W           R0, [R4,#0x8F0]
462D7A:  POP             {R4,R6,R7,PC}
