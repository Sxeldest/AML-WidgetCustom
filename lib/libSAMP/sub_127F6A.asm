; =========================================================
; Game Engine Function: sub_127F6A
; Address            : 0x127F6A - 0x127F8C
; =========================================================

127F6A:  PUSH            {R7,LR}
127F6C:  MOV             R7, SP
127F6E:  LDR             R3, [R0,#0xC]
127F70:  LDRD.W          LR, R12, [R0,#4]
127F74:  LDR             R2, [R2]
127F76:  ADD.W           R0, LR, R3,ASR#1
127F7A:  LDR             R1, [R1]
127F7C:  LSLS            R3, R3, #0x1F
127F7E:  ITT NE
127F80:  LDRNE           R3, [R0]
127F82:  LDRNE.W         R12, [R3,R12]
127F86:  POP.W           {R7,LR}
127F8A:  BX              R12
