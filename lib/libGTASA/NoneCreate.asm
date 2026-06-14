; =========================================================
; Game Engine Function: NoneCreate
; Address            : 0x23EB08 - 0x23EB38
; =========================================================

23EB08:  PUSH            {R7,LR}
23EB0A:  MOV             R7, SP
23EB0C:  MOVS            R0, #1; item_count
23EB0E:  MOVS            R1, #0x10; item_size
23EB10:  BLX             calloc
23EB14:  CMP             R0, #0
23EB16:  ITT EQ
23EB18:  MOVEQ           R0, #0
23EB1A:  POPEQ           {R7,PC}
23EB1C:  LDR.W           R12, =(sub_23EB4C+1 - 0x23EB28)
23EB20:  LDR             R3, =(nullsub_17+1 - 0x23EB2C)
23EB22:  LDR             R2, =(nullsub_16+1 - 0x23EB2E)
23EB24:  ADD             R12, PC; sub_23EB4C
23EB26:  LDR             R1, =(j_j_free+1 - 0x23EB30)
23EB28:  ADD             R3, PC; nullsub_17
23EB2A:  ADD             R2, PC; nullsub_16
23EB2C:  ADD             R1, PC; j_j_free
23EB2E:  STRD.W          R1, R12, [R0]
23EB32:  STRD.W          R2, R3, [R0,#8]
23EB36:  POP             {R7,PC}
