; =========================================================
; Game Engine Function: sub_152A84
; Address            : 0x152A84 - 0x152A9A
; =========================================================

152A84:  PUSH            {R7,LR}
152A86:  MOV             R7, SP
152A88:  SUB             SP, SP, #8
152A8A:  STRH.W          R1, [R7,#-2]
152A8E:  ADDS            R0, #0xC
152A90:  SUBS            R1, R7, #2
152A92:  BL              sub_154250
152A96:  ADD             SP, SP, #8
152A98:  POP             {R7,PC}
