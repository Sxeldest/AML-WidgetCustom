; =========================================================
; Game Engine Function: _ZN22CEventHitByWaterCannonC2ERK7CVectorS2_
; Address            : 0x376B7C - 0x376BB2
; =========================================================

376B7C:  PUSH            {R7,LR}
376B7E:  MOV             R7, SP
376B80:  LDR.W           R12, =(_ZTV22CEventHitByWaterCannon_ptr - 0x376B90)
376B84:  MOV.W           LR, #0
376B88:  STRB.W          LR, [R0,#8]
376B8C:  ADD             R12, PC; _ZTV22CEventHitByWaterCannon_ptr
376B8E:  LDR.W           R3, [R12]; `vtable for'CEventHitByWaterCannon ...
376B92:  ADDS            R3, #8
376B94:  STRD.W          R3, LR, [R0]
376B98:  VLDR            D16, [R1]
376B9C:  LDR             R1, [R1,#8]
376B9E:  STR             R1, [R0,#0x14]
376BA0:  VSTR            D16, [R0,#0xC]
376BA4:  VLDR            D16, [R2]
376BA8:  LDR             R1, [R2,#8]
376BAA:  STR             R1, [R0,#0x20]
376BAC:  VSTR            D16, [R0,#0x18]
376BB0:  POP             {R7,PC}
