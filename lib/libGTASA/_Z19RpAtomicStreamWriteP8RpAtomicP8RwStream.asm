; =========================================================
; Game Engine Function: _Z19RpAtomicStreamWriteP8RpAtomicP8RwStream
; Address            : 0x214A90 - 0x214AAC
; =========================================================

214A90:  PUSH            {R7,LR}
214A92:  MOV             R7, SP
214A94:  SUB             SP, SP, #0x18
214A96:  STR             R1, [SP,#0x20+var_20]
214A98:  MOVS            R1, #1
214A9A:  STR             R1, [SP,#0x20+var_C]
214A9C:  MOVS            R1, #0
214A9E:  STR             R1, [SP,#0x20+var_18]
214AA0:  STR             R1, [SP,#0x20+var_10]
214AA2:  MOV             R1, SP
214AA4:  BL              sub_214AAC
214AA8:  ADD             SP, SP, #0x18
214AAA:  POP             {R7,PC}
