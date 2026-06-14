; =========================================================
; Game Engine Function: sub_158C6C
; Address            : 0x158C6C - 0x158C8E
; =========================================================

158C6C:  PUSH            {R4,R5,R7,LR}
158C6E:  ADD             R7, SP, #8
158C70:  LDR             R1, =(_ZTV11AudioStream - 0x158C7A); `vtable for'AudioStream ...
158C72:  MOV             R4, R0
158C74:  LDR             R0, [R0,#8]
158C76:  ADD             R1, PC; `vtable for'AudioStream
158C78:  ADDS            R1, #8
158C7A:  STR             R1, [R4]
158C7C:  BL              sub_164AF4
158C80:  LDR             R0, [R4,#0xC]; void *
158C82:  CBZ             R0, loc_158C8A
158C84:  STR             R0, [R4,#0x10]
158C86:  BLX             j__ZdlPv; operator delete(void *)
158C8A:  MOV             R0, R4
158C8C:  POP             {R4,R5,R7,PC}
