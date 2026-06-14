; =========================================================
; Game Engine Function: sub_FE0B0
; Address            : 0xFE0B0 - 0xFE116
; =========================================================

FE0B0:  PUSH            {R4,R5,R7,LR}
FE0B2:  ADD             R7, SP, #8
FE0B4:  LDR             R0, =(off_23494C - 0xFE0C2)
FE0B6:  MOV             R5, #0x670A10
FE0BE:  ADD             R0, PC; off_23494C
FE0C0:  LDR             R4, [R0]; dword_23DF24
FE0C2:  LDR             R0, [R4]
FE0C4:  LDR             R1, =(sub_FD960+1 - 0xFE0CE)
FE0C6:  LDR             R2, =(off_247548 - 0xFE0D4)
FE0C8:  ADD             R0, R5
FE0CA:  ADD             R1, PC; sub_FD960
FE0CC:  ADD.W           R0, R0, #0xCC0
FE0D0:  ADD             R2, PC; off_247548
FE0D2:  BL              sub_164196
FE0D6:  LDR             R0, [R4]
FE0D8:  LDR             R1, =(sub_FDA18+1 - 0xFE0E2)
FE0DA:  LDR             R2, =(off_24754C - 0xFE0E8)
FE0DC:  ADD             R0, R5
FE0DE:  ADD             R1, PC; sub_FDA18
FE0E0:  ADD.W           R0, R0, #0x1500
FE0E4:  ADD             R2, PC; off_24754C
FE0E6:  BL              sub_164196
FE0EA:  LDR             R0, [R4]
FE0EC:  LDR             R1, =(sub_FDCAC+1 - 0xFE0F6)
FE0EE:  LDR             R2, =(unk_24755C - 0xFE0F8)
FE0F0:  ADD             R0, R5
FE0F2:  ADD             R1, PC; sub_FDCAC
FE0F4:  ADD             R2, PC; unk_24755C
FE0F6:  BL              sub_164196
FE0FA:  LDR             R0, [R4]
FE0FC:  MOVW            R3, #0xEAC4
FE100:  LDR             R1, =(sub_FDCD8+1 - 0xFE10E)
FE102:  MOVT            R3, #0x66 ; 'f'
FE106:  LDR             R2, =(off_247560 - 0xFE110)
FE108:  ADD             R0, R3
FE10A:  ADD             R1, PC; sub_FDCD8
FE10C:  ADD             R2, PC; off_247560
FE10E:  POP.W           {R4,R5,R7,LR}
FE112:  B.W             sub_164196
