; =========================================================
; Game Engine Function: sub_826C8
; Address            : 0x826C8 - 0x826F0
; =========================================================

826C8:  PUSH            {R4,R5,R7,LR}
826CA:  ADD             R7, SP, #8
826CC:  LDR             R5, =(dword_1A49F0 - 0x826D4)
826CE:  MOV             R4, R0
826D0:  ADD             R5, PC; dword_1A49F0
826D2:  LDRB            R0, [R5]
826D4:  LSLS            R0, R0, #0x1F
826D6:  ITT NE
826D8:  LDRNE           R0, [R5,#(dword_1A49F8 - 0x1A49F0)]; void *
826DA:  BLXNE           j__ZdlPv; operator delete(void *)
826DE:  VLDR            D16, [R4]
826E2:  LDR             R0, [R4,#8]
826E4:  STR             R0, [R5,#(dword_1A49F8 - 0x1A49F0)]
826E6:  MOVS            R0, #0
826E8:  VSTR            D16, [R5]
826EC:  STRH            R0, [R4]
826EE:  POP             {R4,R5,R7,PC}
