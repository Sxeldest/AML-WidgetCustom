; =========================================================
; Game Engine Function: sub_137B76
; Address            : 0x137B76 - 0x137B98
; =========================================================

137B76:  PUSH            {R4,R6,R7,LR}
137B78:  ADD             R7, SP, #8
137B7A:  MOV             R4, R0
137B7C:  LDRB            R0, [R0,#0x10]
137B7E:  LSLS            R0, R0, #0x1F
137B80:  ITT NE
137B82:  LDRNE           R0, [R4,#0x18]; void *
137B84:  BLXNE           j__ZdlPv; operator delete(void *)
137B88:  LDRB            R0, [R4,#4]
137B8A:  LSLS            R0, R0, #0x1F
137B8C:  ITT NE
137B8E:  LDRNE           R0, [R4,#0xC]; void *
137B90:  BLXNE           j__ZdlPv; operator delete(void *)
137B94:  MOV             R0, R4
137B96:  POP             {R4,R6,R7,PC}
