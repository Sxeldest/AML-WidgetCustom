; =========================================================
; Game Engine Function: sub_E67E4
; Address            : 0xE67E4 - 0xE67F8
; =========================================================

E67E4:  PUSH            {R7,LR}
E67E6:  MOV             R7, SP
E67E8:  BL              sub_21FCD0
E67EC:  LDR             R0, [R0]
E67EE:  CMP             R0, #0
E67F0:  ITE EQ
E67F2:  MOVEQ           R0, #0x2E ; '.'
E67F4:  LDRBNE          R0, [R0]
E67F6:  POP             {R7,PC}
