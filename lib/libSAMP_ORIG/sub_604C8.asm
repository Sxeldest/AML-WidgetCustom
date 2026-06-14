; =========================================================
; Game Engine Function: sub_604C8
; Address            : 0x604C8 - 0x604F4
; =========================================================

604C8:  PUSH            {R4-R7,LR}
604CA:  ADD             R7, SP, #0xC
604CC:  PUSH.W          {R11}
604D0:  LDR             R4, =(dword_1174B0 - 0x604E0)
604D2:  MOVW            R5, #0x5555
604D6:  LDR             R2, =(off_1174C8 - 0x604E2)
604D8:  MOVT            R5, #0x3FD5
604DC:  ADD             R4, PC; dword_1174B0
604DE:  ADD             R2, PC; off_1174C8
604E0:  LDR             R3, [R4]
604E2:  LDR             R2, [R2]
604E4:  LDR             R6, [R3]
604E6:  STR             R5, [R3]
604E8:  BLX             R2
604EA:  LDR             R0, [R4]
604EC:  STR             R6, [R0]
604EE:  POP.W           {R11}
604F2:  POP             {R4-R7,PC}
