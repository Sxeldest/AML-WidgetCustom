; =========================================================
; Game Engine Function: ModulatorCreate
; Address            : 0x1E0398 - 0x1E03FC
; =========================================================

1E0398:  PUSH            {R4,R10,R11,LR}
1E039C:  ADD             R11, SP, #8
1E03A0:  MOV             R0, #0x48 ; 'H'; size
1E03A4:  BL              malloc
1E03A8:  CMP             R0, #0
1E03AC:  BEQ             loc_1E03F4
1E03B0:  LDR             R1, =(sub_1E0410 - 0x1E03CC)
1E03B4:  MOV             R2, #0
1E03B8:  LDR             R12, =(sub_1E0418 - 0x1E03EC)
1E03BC:  MOV             R4, #1
1E03C0:  LDR             LR, =(sub_1E0520 - 0x1E03DC)
1E03C4:  ADD             R1, PC, R1; sub_1E0410
1E03C8:  LDR             R3, =(j_free_1 - 0x1E03E8)
1E03CC:  STR             R2, [R0,#0x14]
1E03D0:  STR             R4, [R0,#0x18]
1E03D4:  ADD             R4, PC, LR; sub_1E0520
1E03D8:  STR             R2, [R0,#0x40]
1E03DC:  STR             R2, [R0,#0x44]
1E03E0:  ADD             R2, PC, R3; j_free_1
1E03E4:  ADD             R3, PC, R12; sub_1E0418
1E03E8:  STR             R2, [R0]
1E03EC:  STMIB           R0, {R1,R3,R4}
1E03F0:  POP             {R4,R10,R11,PC}
1E03F4:  MOV             R0, #0
1E03F8:  POP             {R4,R10,R11,PC}
