; =========================================================
; Game Engine Function: _ZNK13CPedAttractor12GetQueueSlotEPK4CPed
; Address            : 0x4A8E96 - 0x4A8ECC
; =========================================================

4A8E96:  PUSH            {R7,LR}
4A8E98:  MOV             R7, SP
4A8E9A:  LDR.W           R12, [R0,#0x1C]
4A8E9E:  CMP.W           R12, #1
4A8EA2:  ITT LT
4A8EA4:  MOVLT.W         R0, #0xFFFFFFFF
4A8EA8:  POPLT           {R7,PC}
4A8EAA:  LDR.W           LR, [R0,#0x20]
4A8EAE:  MOVS            R3, #0
4A8EB0:  MOV.W           R0, #0xFFFFFFFF
4A8EB4:  LDR.W           R2, [LR,R3,LSL#2]
4A8EB8:  CMP             R2, R1
4A8EBA:  IT EQ
4A8EBC:  MOVEQ           R0, R3
4A8EBE:  ADDS            R3, #1
4A8EC0:  CMP             R3, R12
4A8EC2:  IT GE
4A8EC4:  POPGE           {R7,PC}
4A8EC6:  CMP             R2, R1
4A8EC8:  BNE             loc_4A8EB4
4A8ECA:  POP             {R7,PC}
