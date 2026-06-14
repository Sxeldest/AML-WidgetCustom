; =========================================================
; Game Engine Function: sub_15DFEC
; Address            : 0x15DFEC - 0x15E02E
; =========================================================

15DFEC:  PUSH            {R4,R6,R7,LR}
15DFEE:  ADD             R7, SP, #8
15DFF0:  SUB             SP, SP, #8
15DFF2:  MOV             R3, R2
15DFF4:  ADD             R2, SP, #0x10+var_C
15DFF6:  MOV             R4, R0
15DFF8:  STR             R1, [R0,#4]
15DFFA:  MOV             R0, R1
15DFFC:  MOV             R1, R3
15DFFE:  BLX             j_opus_decoder_create
15E002:  LDR             R1, [SP,#0x10+var_C]
15E004:  STR             R0, [R4]
15E006:  CBNZ            R1, loc_15E00E
15E008:  MOV             R0, R4
15E00A:  ADD             SP, SP, #8
15E00C:  POP             {R4,R6,R7,PC}
15E00E:  MOVS            R0, #0x18; thrown_size
15E010:  BLX             j___cxa_allocate_exception
15E014:  LDR             R1, =(aOpusCreateDeco - 0x15E01E); "Opus create decoder" ...
15E016:  MOV             R4, R0
15E018:  LDR             R2, [SP,#0x10+var_C]
15E01A:  ADD             R1, PC; "Opus create decoder"
15E01C:  BL              sub_15E044
15E020:  LDR             R1, =(_ZTI13OpusException - 0x15E02A); `typeinfo for'OpusException ...
15E022:  MOV             R0, R4; void *
15E024:  LDR             R2, =(sub_15E16C+1 - 0x15E02C)
15E026:  ADD             R1, PC; lptinfo
15E028:  ADD             R2, PC; sub_15E16C ; void (*)(void *)
15E02A:  BLX             j___cxa_throw
