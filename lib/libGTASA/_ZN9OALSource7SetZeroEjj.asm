; =========================================================
; Game Engine Function: _ZN9OALSource7SetZeroEjj
; Address            : 0x27FCE8 - 0x27FD26
; =========================================================

27FCE8:  PUSH            {R4-R7,LR}
27FCEA:  ADD             R7, SP, #0xC
27FCEC:  PUSH.W          {R8}
27FCF0:  SUB             SP, SP, #8
27FCF2:  MOV             R5, R1
27FCF4:  MOV             R6, R0
27FCF6:  MOV             R0, R5; byte_count
27FCF8:  MOV             R8, R2
27FCFA:  BLX             malloc
27FCFE:  MOV             R1, R5
27FD00:  MOV             R4, R0
27FD02:  BLX             j___aeabi_memclr8_1
27FD06:  MOVS            R0, #1
27FD08:  MOV             R1, R4; void *
27FD0A:  STR             R0, [SP,#0x18+var_18]; unsigned int
27FD0C:  MOV             R0, R6; this
27FD0E:  MOV             R2, R5; unsigned int
27FD10:  MOV             R3, R8; unsigned int
27FD12:  BLX             j__ZN9OALSource7SetDataEPvjjj; OALSource::SetData(void *,uint,uint,uint)
27FD16:  MOV             R0, R4; p
27FD18:  ADD             SP, SP, #8
27FD1A:  POP.W           {R8}
27FD1E:  POP.W           {R4-R7,LR}
27FD22:  B.W             j_free
