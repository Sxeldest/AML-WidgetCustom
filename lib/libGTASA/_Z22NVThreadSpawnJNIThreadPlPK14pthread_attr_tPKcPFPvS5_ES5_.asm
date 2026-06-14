; =========================================================
; Game Engine Function: _Z22NVThreadSpawnJNIThreadPlPK14pthread_attr_tPKcPFPvS5_ES5_
; Address            : 0x26C0F4 - 0x26C14C
; =========================================================

26C0F4:  PUSH            {R4-R7,LR}
26C0F6:  ADD             R7, SP, #0xC
26C0F8:  PUSH.W          {R8-R10}
26C0FC:  MOV             R6, R3
26C0FE:  MOV             R5, R2
26C100:  MOV             R8, R1
26C102:  MOV             R9, R0
26C104:  CBZ             R6, loc_26C13C
26C106:  MOVS            R0, #0x28 ; '('; byte_count
26C108:  LDR.W           R10, [R7,#arg_0]
26C10C:  BLX             malloc
26C110:  MOV             R4, R0
26C112:  ADD.W           R0, R4, #8; char *
26C116:  MOV             R1, R5; char *
26C118:  MOVS            R2, #0x1F; size_t
26C11A:  STRD.W          R10, R6, [R4]
26C11E:  BLX             strncpy
26C122:  LDR             R2, =(sub_27A128+1 - 0x26C12E)
26C124:  MOV             R0, R9; newthread
26C126:  MOV             R1, R8; attr
26C128:  MOV             R3, R4; arg
26C12A:  ADD             R2, PC; sub_27A128 ; start_routine
26C12C:  BLX             pthread_create
26C130:  MOV             R5, R0
26C132:  CBZ             R5, loc_26C142
26C134:  MOV             R0, R4; p
26C136:  BLX             free
26C13A:  B               loc_26C144
26C13C:  MOV.W           R5, #0xFFFFFFFF
26C140:  B               loc_26C144
26C142:  MOVS            R5, #0
26C144:  MOV             R0, R5
26C146:  POP.W           {R8-R10}
26C14A:  POP             {R4-R7,PC}
