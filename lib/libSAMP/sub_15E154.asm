; =========================================================
; Game Engine Function: sub_15E154
; Address            : 0x15E154 - 0x15E166
; =========================================================

15E154:  PUSH            {R7,LR}
15E156:  MOV             R7, SP
15E158:  BL              sub_15E044
15E15C:  LDR             R1, =(_ZTV19OpusExceptionDecode - 0x15E162); `vtable for'OpusExceptionDecode ...
15E15E:  ADD             R1, PC; `vtable for'OpusExceptionDecode
15E160:  ADDS            R1, #8
15E162:  STR             R1, [R0]
15E164:  POP             {R7,PC}
