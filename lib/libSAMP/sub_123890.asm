; =========================================================
; Game Engine Function: sub_123890
; Address            : 0x123890 - 0x1238AE
; =========================================================

123890:  PUSH            {R4,R6,R7,LR}
123892:  ADD             R7, SP, #8
123894:  MOV             R4, R0
123896:  LDR             R0, =(_ZTVN15descent_builder9builder_tI15AutomobileZR350EE - 0x12389E); `vtable for'descent_builder::builder_t<AutomobileZR350> ...
123898:  MOVS            R2, #0
12389A:  ADD             R0, PC; `vtable for'descent_builder::builder_t<AutomobileZR350>
12389C:  ADDS            R0, #8
12389E:  STRD.W          R0, R2, [R4]
1238A2:  MOV             R0, R1
1238A4:  MOV             R1, R4
1238A6:  BL              sub_ECD64
1238AA:  MOV             R0, R4
1238AC:  POP             {R4,R6,R7,PC}
