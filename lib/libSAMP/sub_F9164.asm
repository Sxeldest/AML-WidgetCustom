; =========================================================
; Game Engine Function: sub_F9164
; Address            : 0xF9164 - 0xF9180
; =========================================================

F9164:  PUSH            {R7,LR}
F9166:  MOV             R7, SP
F9168:  LDR             R2, =(off_23494C - 0xF9176)
F916A:  MOV             R3, #0x1C2C91
F9172:  ADD             R2, PC; off_23494C
F9174:  LDR             R2, [R2]; dword_23DF24
F9176:  LDR             R2, [R2]
F9178:  ADD             R2, R3
F917A:  BLX             R2
F917C:  LSLS            R0, R0, #6
F917E:  POP             {R7,PC}
