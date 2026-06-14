; =========================================================
; Game Engine Function: _ZN6SArrayIPK5CTaskED2Ev
; Address            : 0x4AC2E8 - 0x4AC302
; =========================================================

4AC2E8:  PUSH            {R4,R5,R7,LR}
4AC2EA:  ADD             R7, SP, #8
4AC2EC:  MOV             R4, R0
4AC2EE:  MOVS            R5, #0
4AC2F0:  LDR             R0, [R4,#8]; p
4AC2F2:  STR             R5, [R4,#4]
4AC2F4:  CBZ             R0, loc_4AC2FC
4AC2F6:  BLX             free
4AC2FA:  STR             R5, [R4,#8]
4AC2FC:  MOV             R0, R4
4AC2FE:  STR             R5, [R4]
4AC300:  POP             {R4,R5,R7,PC}
