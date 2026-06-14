; =========================================================
; Game Engine Function: silk_CNG_Reset
; Address            : 0x190BE0 - 0x190C28
; =========================================================

190BE0:  PUSH            {R4,R5,R7,LR}
190BE2:  ADD             R7, SP, #8
190BE4:  MOV             R4, R0
190BE6:  MOVW            R0, #0x7FFF
190BEA:  LDR.W           R5, [R4,#0x924]
190BEE:  ADDS            R1, R5, #1
190BF0:  BLX             sub_220A40
190BF4:  CMP             R5, #1
190BF6:  BLT             loc_190C10
190BF8:  ADDW            R1, R4, #0xFD4
190BFC:  MOVS            R2, #0
190BFE:  MOV             R3, R0
190C00:  STRH.W          R3, [R1,R2,LSL#1]
190C04:  ADD             R3, R0
190C06:  ADDS            R2, #1
190C08:  LDR.W           R5, [R4,#0x924]
190C0C:  CMP             R2, R5
190C0E:  BLT             loc_190C00
190C10:  MOVW            R1, #:lower16:unk_307880
190C14:  MOVW            R0, #0x1038
190C18:  MOVT            R1, #:upper16:unk_307880
190C1C:  STR             R1, [R4,R0]
190C1E:  MOVW            R0, #0x1034
190C22:  MOVS            R1, #0
190C24:  STR             R1, [R4,R0]
190C26:  POP             {R4,R5,R7,PC}
