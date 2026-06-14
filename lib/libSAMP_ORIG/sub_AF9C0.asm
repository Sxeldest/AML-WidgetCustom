; =========================================================
; Game Engine Function: sub_AF9C0
; Address            : 0xAF9C0 - 0xAFA06
; =========================================================

AF9C0:  PUSH            {R4-R7,LR}
AF9C2:  ADD             R7, SP, #0xC
AF9C4:  PUSH.W          {R8}
AF9C8:  MOV             R5, R0
AF9CA:  ADD             R0, R1
AF9CC:  SUBS            R4, R0, #1
AF9CE:  MOVS            R0, #0x28 ; '('; name
AF9D0:  MOV             R8, R2
AF9D2:  BLX             sysconf
AF9D6:  MOV             R6, R0
AF9D8:  MOVS            R0, #0x28 ; '('; name
AF9DA:  BLX             sysconf
AF9DE:  NEGS            R0, R0
AF9E0:  ANDS            R4, R0
AF9E2:  MOVS            R0, #0x28 ; '('; name
AF9E4:  BLX             sysconf
AF9E8:  NEGS            R0, R0
AF9EA:  ANDS            R0, R5
AF9EC:  SUBS            R4, R4, R0
AF9EE:  MOVS            R0, #0x28 ; '('; name
AF9F0:  BLX             sysconf
AF9F4:  ADDS            R1, R4, R0; len
AF9F6:  NEGS            R0, R6
AF9F8:  ANDS            R0, R5; addr
AF9FA:  MOV             R2, R8; prot
AF9FC:  BLX             mprotect
AFA00:  POP.W           {R8}
AFA04:  POP             {R4-R7,PC}
