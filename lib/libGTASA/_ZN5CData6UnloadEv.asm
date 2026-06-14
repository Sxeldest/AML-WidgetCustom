; =========================================================
; Game Engine Function: _ZN5CData6UnloadEv
; Address            : 0x54D5C0 - 0x54D5D8
; =========================================================

54D5C0:  PUSH            {R4,R6,R7,LR}
54D5C2:  ADD             R7, SP, #8
54D5C4:  MOV             R4, R0
54D5C6:  LDR             R0, [R4]; void *
54D5C8:  CBZ             R0, loc_54D5D2
54D5CA:  BLX             _ZdaPv; operator delete[](void *)
54D5CE:  MOVS            R0, #0
54D5D0:  STR             R0, [R4]
54D5D2:  MOVS            R0, #0
54D5D4:  STR             R0, [R4,#4]
54D5D6:  POP             {R4,R6,R7,PC}
