; =========================================================
; Game Engine Function: sub_4823B0
; Address            : 0x4823B0 - 0x4823CC
; =========================================================

4823B0:  PUSH            {R4,R6,R7,LR}
4823B2:  ADD             R7, SP, #8
4823B4:  MOV             R4, R0
4823B6:  LDR             R0, =(dword_9ECCC0 - 0x4823BE)
4823B8:  MOV             R3, R1
4823BA:  ADD             R0, PC; dword_9ECCC0
4823BC:  LDR             R0, [R0]
4823BE:  ADDS            R1, R2, R0; void *
4823C0:  MOV             R0, R4; int
4823C2:  MOV             R2, R3; size_t
4823C4:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
4823C8:  MOV             R0, R4
4823CA:  POP             {R4,R6,R7,PC}
