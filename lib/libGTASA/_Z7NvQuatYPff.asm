; =========================================================
; Game Engine Function: _Z7NvQuatYPff
; Address            : 0x27944E - 0x27947C
; =========================================================

27944E:  PUSH            {R4,R5,R7,LR}
279450:  ADD             R7, SP, #8
279452:  VMOV.F32        S0, #0.5
279456:  MOV             R4, R0
279458:  VMOV            S2, R1
27945C:  MOVS            R0, #0
27945E:  STR             R0, [R4]
279460:  STR             R0, [R4,#8]
279462:  VMUL.F32        S0, S2, S0
279466:  VMOV            R5, S0
27946A:  MOV             R0, R5; x
27946C:  BLX             sinf
279470:  STR             R0, [R4,#4]
279472:  MOV             R0, R5; x
279474:  BLX             cosf
279478:  STR             R0, [R4,#0xC]
27947A:  POP             {R4,R5,R7,PC}
