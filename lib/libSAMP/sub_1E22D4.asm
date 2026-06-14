; =========================================================
; Game Engine Function: sub_1E22D4
; Address            : 0x1E22D4 - 0x1E2314
; =========================================================

1E22D4:  PUSH            {R4,R5,R11,LR}
1E22D8:  ADD             R11, SP, #8
1E22DC:  MOV             R4, R0
1E22E0:  MOV             R0, #0x28958
1E22E8:  LDR             R5, [R4,R0]
1E22EC:  MOV             R0, R4
1E22F0:  BL              j_SetDefaultWFXChannelOrder
1E22F4:  LDR             R0, =(sub_1E2354 - 0x1E2304)
1E22F8:  MOV             R1, R4
1E22FC:  ADD             R0, PC, R0; sub_1E2354
1E2300:  BL              j_StartThread
1E2304:  CMP             R0, #0
1E2308:  STR             R0, [R5,#4]
1E230C:  MOVWNE          R0, #1
1E2310:  POP             {R4,R5,R11,PC}
