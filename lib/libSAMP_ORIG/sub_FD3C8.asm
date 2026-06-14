; =========================================================
; Game Engine Function: sub_FD3C8
; Address            : 0xFD3C8 - 0xFD3DE
; =========================================================

FD3C8:  PUSH            {R4,R6,R7,LR}
FD3CA:  ADD             R7, SP, #8
FD3CC:  MOV             R4, R0
FD3CE:  BL              sub_FD3F0
FD3D2:  LDR             R0, [R4]; void *
FD3D4:  CBZ             R0, loc_FD3DA
FD3D6:  BLX             j__ZdlPv; operator delete(void *)
FD3DA:  MOV             R0, R4
FD3DC:  POP             {R4,R6,R7,PC}
