; =========================================================
; Game Engine Function: _ZN7CWanted11IsInPursuitEP7CCopPed
; Address            : 0x422B92 - 0x422BEC
; =========================================================

422B92:  LDR.W           R2, [R0,#0x1F4]
422B96:  CMP             R2, R1
422B98:  BEQ             loc_422BE8
422B9A:  LDR.W           R2, [R0,#0x1F8]
422B9E:  CMP             R2, R1
422BA0:  ITT NE
422BA2:  LDRNE.W         R2, [R0,#0x1FC]
422BA6:  CMPNE           R2, R1
422BA8:  BEQ             loc_422BE8
422BAA:  LDR.W           R2, [R0,#0x200]
422BAE:  CMP             R2, R1
422BB0:  ITT NE
422BB2:  LDRNE.W         R2, [R0,#0x204]
422BB6:  CMPNE           R2, R1
422BB8:  BEQ             loc_422BE8
422BBA:  LDR.W           R2, [R0,#0x208]
422BBE:  CMP             R2, R1
422BC0:  ITT NE
422BC2:  LDRNE.W         R2, [R0,#0x20C]
422BC6:  CMPNE           R2, R1
422BC8:  BEQ             loc_422BE8
422BCA:  LDR.W           R2, [R0,#0x210]
422BCE:  CMP             R2, R1
422BD0:  ITT NE
422BD2:  LDRNE.W         R2, [R0,#0x214]
422BD6:  CMPNE           R2, R1
422BD8:  BEQ             loc_422BE8
422BDA:  LDR.W           R2, [R0,#0x218]
422BDE:  MOVS            R0, #0
422BE0:  CMP             R2, R1
422BE2:  IT EQ
422BE4:  MOVEQ           R0, #1
422BE6:  BX              LR
422BE8:  MOVS            R0, #1
422BEA:  BX              LR
