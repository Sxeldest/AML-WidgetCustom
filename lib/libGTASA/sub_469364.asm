; =========================================================
; Game Engine Function: sub_469364
; Address            : 0x469364 - 0x469376
; =========================================================

469364:  PUSH            {R4,R6,R7,LR}
469366:  ADD             R7, SP, #8
469368:  MOV             R4, R0
46936A:  MOV             R0, R1
46936C:  MOV             R1, R4
46936E:  BLX             j__Z25RwTexDictionaryAddTextureP15RwTexDictionaryP9RwTexture; RwTexDictionaryAddTexture(RwTexDictionary *,RwTexture *)
469372:  MOV             R0, R4
469374:  POP             {R4,R6,R7,PC}
