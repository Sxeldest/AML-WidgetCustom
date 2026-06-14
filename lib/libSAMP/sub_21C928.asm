; =========================================================
; Game Engine Function: sub_21C928
; Address            : 0x21C928 - 0x21C950
; =========================================================

21C928:  PUSH            {R4,R5,R7,LR}
21C92A:  ADD             R7, SP, #8
21C92C:  ADD.W           R0, R0, #0x198
21C930:  MOV             R5, R1
21C932:  MOVS            R1, #0x10
21C934:  MOV             R4, R2
21C936:  BL              sub_216EF0
21C93A:  LDR             R1, =0x1010118
21C93C:  STR             R1, [R0,#4]
21C93E:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle9LocalNameE - 0x21C946); `vtable for'`anonymous namespace'::itanium_demangle::LocalName ...
21C940:  LDR             R2, [R5]
21C942:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::LocalName
21C944:  ADDS            R1, #8
21C946:  STR             R1, [R0]
21C948:  LDR             R1, [R4]
21C94A:  STRD.W          R2, R1, [R0,#8]
21C94E:  POP             {R4,R5,R7,PC}
