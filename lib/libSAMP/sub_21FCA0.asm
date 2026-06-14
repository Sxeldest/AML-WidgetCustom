; =========================================================
; Game Engine Function: sub_21FCA0
; Address            : 0x21FCA0 - 0x21FCC8
; =========================================================

21FCA0:  PUSH            {R4,R5,R7,LR}
21FCA2:  ADD             R7, SP, #8
21FCA4:  MOV             R4, R0
21FCA6:  LDR             R0, =(unk_23CAB0 - 0x21FCAC)
21FCA8:  ADD             R0, PC; unk_23CAB0
21FCAA:  BLX             j___emutls_get_address
21FCAE:  LDR             R5, [R0]
21FCB0:  CBZ             R4, loc_21FCBC
21FCB2:  LDR             R0, =(unk_23CAB0 - 0x21FCB8)
21FCB4:  ADD             R0, PC; unk_23CAB0
21FCB6:  BLX             j___emutls_get_address
21FCBA:  STR             R4, [R0]
21FCBC:  CMP             R5, #0
21FCBE:  IT EQ
21FCC0:  MOVEQ.W         R5, #0xFFFFFFFF
21FCC4:  MOV             R0, R5
21FCC6:  POP             {R4,R5,R7,PC}
