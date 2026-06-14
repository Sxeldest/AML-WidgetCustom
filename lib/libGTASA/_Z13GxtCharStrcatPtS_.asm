; =========================================================
; Game Engine Function: _Z13GxtCharStrcatPtS_
; Address            : 0x5A8370 - 0x5A83B2
; =========================================================

5A8370:  MOV             R2, R0
5A8372:  MOV             R12, R2
5A8374:  LDRH.W          R3, [R2],#2
5A8378:  CMP             R3, #0
5A837A:  BNE             loc_5A8372
5A837C:  PUSH            {R7,LR}
5A837E:  MOV             R7, SP
5A8380:  LDRH.W          LR, [R1]
5A8384:  CMP.W           LR, #0
5A8388:  BEQ             loc_5A83AA
5A838A:  ADD.W           R12, R1, #2
5A838E:  MOV             R1, #0xFFFFFFFE
5A8392:  ADD.W           R3, R12, R1
5A8396:  STRH.W          LR, [R2,R1]
5A839A:  ADDS            R1, #2
5A839C:  LDRH.W          LR, [R3,#2]
5A83A0:  CMP.W           LR, #0
5A83A4:  BNE             loc_5A8392
5A83A6:  ADD.W           R12, R2, R1
5A83AA:  MOVS            R1, #0
5A83AC:  STRH.W          R1, [R12]
5A83B0:  POP             {R7,PC}
