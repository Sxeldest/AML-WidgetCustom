; =========================================================
; Game Engine Function: sub_13AE68
; Address            : 0x13AE68 - 0x13AE8C
; =========================================================

13AE68:  PUSH            {R4,R5,R7,LR}
13AE6A:  ADD             R7, SP, #8
13AE6C:  CBZ             R1, locret_13AE8A
13AE6E:  MOV             R4, R1
13AE70:  LDRB            R0, [R4,#0x10]
13AE72:  LDR             R5, [R4]
13AE74:  LSLS            R0, R0, #0x1F
13AE76:  ITT NE
13AE78:  LDRNE           R0, [R4,#0x18]; void *
13AE7A:  BLXNE           j__ZdlPv; operator delete(void *)
13AE7E:  MOV             R0, R4; void *
13AE80:  BLX             j__ZdlPv; operator delete(void *)
13AE84:  CMP             R5, #0
13AE86:  MOV             R4, R5
13AE88:  BNE             loc_13AE70
13AE8A:  POP             {R4,R5,R7,PC}
