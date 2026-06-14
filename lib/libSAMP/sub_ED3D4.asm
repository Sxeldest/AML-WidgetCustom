; =========================================================
; Game Engine Function: sub_ED3D4
; Address            : 0xED3D4 - 0xED3E8
; =========================================================

ED3D4:  PUSH            {R4,R6,R7,LR}
ED3D6:  ADD             R7, SP, #8
ED3D8:  MOV             R4, R0
ED3DA:  LDR             R0, [R0,#0x28]; void *
ED3DC:  CBZ             R0, loc_ED3E4
ED3DE:  STR             R0, [R4,#0x2C]
ED3E0:  BLX             j__ZdlPv; operator delete(void *)
ED3E4:  MOV             R0, R4
ED3E6:  POP             {R4,R6,R7,PC}
