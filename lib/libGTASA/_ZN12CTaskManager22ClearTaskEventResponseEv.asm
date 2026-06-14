; =========================================================
; Game Engine Function: _ZN12CTaskManager22ClearTaskEventResponseEv
; Address            : 0x533D0C - 0x533D3A
; =========================================================

533D0C:  PUSH            {R4,R5,R7,LR}
533D0E:  ADD             R7, SP, #8
533D10:  MOV             R4, R0
533D12:  MOV             R5, R4
533D14:  LDR.W           R0, [R5,#4]!
533D18:  CBZ             R0, loc_533D22
533D1A:  LDR             R1, [R0]
533D1C:  LDR             R1, [R1,#4]
533D1E:  BLX             R1
533D20:  B               loc_533D34
533D22:  LDR.W           R0, [R4,#8]!
533D26:  CMP             R0, #0
533D28:  IT EQ
533D2A:  POPEQ           {R4,R5,R7,PC}
533D2C:  LDR             R1, [R0]
533D2E:  LDR             R1, [R1,#4]
533D30:  BLX             R1
533D32:  MOV             R5, R4
533D34:  MOVS            R0, #0
533D36:  STR             R0, [R5]
533D38:  POP             {R4,R5,R7,PC}
