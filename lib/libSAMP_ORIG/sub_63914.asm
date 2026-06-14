; =========================================================
; Game Engine Function: sub_63914
; Address            : 0x63914 - 0x6393C
; =========================================================

63914:  PUSH            {R7,LR}
63916:  MOV             R7, SP
63918:  LDR             R1, =(off_1A3A78 - 0x6391E)
6391A:  ADD             R1, PC; off_1A3A78
6391C:  LDR             R1, [R1]
6391E:  BLX             R1
63920:  BL              sub_83B30
63924:  BL              sub_7E42C
63928:  LDR             R0, =(off_114B54 - 0x63932)
6392A:  MOVS            R2, #0
6392C:  LDR             R1, =(off_114B50 - 0x63934)
6392E:  ADD             R0, PC; off_114B54
63930:  ADD             R1, PC; off_114B50
63932:  LDR             R0, [R0]; byte_1A448C
63934:  LDR             R1, [R1]; byte_1A49B0
63936:  STRB            R2, [R0]
63938:  STRB            R2, [R1]
6393A:  POP             {R7,PC}
