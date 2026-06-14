; =========================================================
; Game Engine Function: sub_105CBC
; Address            : 0x105CBC - 0x105CEA
; =========================================================

105CBC:  PUSH            {R4,R5,R7,LR}
105CBE:  ADD             R7, SP, #8
105CC0:  ADD.W           R0, R0, #0x198
105CC4:  MOV             R4, R1
105CC6:  MOVS            R1, #0x10
105CC8:  BL              sub_FFA98
105CCC:  MOV             R5, R0
105CCE:  MOV             R0, R4; s
105CD0:  BLX             strlen
105CD4:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle8NameTypeE - 0x105CDE); `vtable for'`anonymous namespace'::itanium_demangle::NameType ...
105CD6:  ADD             R0, R4
105CD8:  LDR             R1, =0x1010107
105CDA:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::NameType
105CDC:  STRD.W          R4, R0, [R5,#8]
105CE0:  MOV             R0, R5
105CE2:  ADDS            R2, #8
105CE4:  STRD.W          R2, R1, [R5]
105CE8:  POP             {R4,R5,R7,PC}
