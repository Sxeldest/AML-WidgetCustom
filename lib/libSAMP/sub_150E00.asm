; =========================================================
; Game Engine Function: sub_150E00
; Address            : 0x150E00 - 0x150E36
; =========================================================

150E00:  PUSH            {R4,R6,R7,LR}
150E02:  ADD             R7, SP, #8
150E04:  MOV             R4, R0
150E06:  LDR             R0, =(_ZTV12AudioChannel - 0x150E10); `vtable for'AudioChannel ...
150E08:  LDRB.W          R1, [R4,#0x38]
150E0C:  ADD             R0, PC; `vtable for'AudioChannel
150E0E:  ADDS            R0, #8
150E10:  STR             R0, [R4]
150E12:  LSLS            R0, R1, #0x1F
150E14:  ITT NE
150E16:  LDRNE           R0, [R4,#0x40]; void *
150E18:  BLXNE           j__ZdlPv; operator delete(void *)
150E1C:  ADD.W           R0, R4, #0x24 ; '$'
150E20:  BL              sub_150E66
150E24:  ADD.W           R0, R4, #0x10
150E28:  BL              sub_150EA8
150E2C:  ADDS            R0, R4, #4
150E2E:  BL              sub_150EF2
150E32:  MOV             R0, R4
150E34:  POP             {R4,R6,R7,PC}
