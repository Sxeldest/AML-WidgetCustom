; =========================================================
; Game Engine Function: sub_ECC3C
; Address            : 0xECC3C - 0xECC64
; =========================================================

ECC3C:  PUSH            {R4,R5,R7,LR}
ECC3E:  ADD             R7, SP, #8
ECC40:  MOV             R4, R0
ECC42:  MOVS            R0, #0
ECC44:  STRB.W          R0, [R4,#0x80]
ECC48:  STRD.W          R0, R0, [R4]
ECC4C:  STR             R0, [R4,#8]
ECC4E:  CBZ             R1, loc_ECC60
ECC50:  MOV             R5, R1
ECC52:  MOV             R0, R4
ECC54:  BL              sub_F62BC
ECC58:  MOV             R0, R4
ECC5A:  MOV             R1, R5
ECC5C:  BL              sub_F62E4
ECC60:  MOV             R0, R4
ECC62:  POP             {R4,R5,R7,PC}
