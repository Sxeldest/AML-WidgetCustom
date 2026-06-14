; =========================================================
; Game Engine Function: sub_15BC16
; Address            : 0x15BC16 - 0x15BC28
; =========================================================

15BC16:  PUSH            {R4,R6,R7,LR}
15BC18:  ADD             R7, SP, #8
15BC1A:  MOV             R4, R0
15BC1C:  LDR             R0, [R0,#8]; void *
15BC1E:  CBZ             R0, loc_15BC24
15BC20:  BLX             j__ZdaPv; operator delete[](void *)
15BC24:  MOV             R0, R4
15BC26:  POP             {R4,R6,R7,PC}
