; =========================================================
; Game Engine Function: sub_111BFC
; Address            : 0x111BFC - 0x111C18
; =========================================================

111BFC:  PUSH            {R4,R5,R7,LR}
111BFE:  ADD             R7, SP, #8
111C00:  MOV             R4, R1
111C02:  MOV             R5, R0
111C04:  BLX             strlen
111C08:  MOV             R2, R0
111C0A:  MOVS            R0, #2
111C0C:  MOV             R1, R5
111C0E:  MOV             R3, R4
111C10:  POP.W           {R4,R5,R7,LR}
111C14:  B.W             sub_112034
