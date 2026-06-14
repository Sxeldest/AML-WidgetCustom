; =========================================================
; Game Engine Function: _ZN27CAnimBlendStaticAssociationC2Ev
; Address            : 0x3898F0 - 0x38990C
; =========================================================

3898F0:  LDR             R1, =(_ZTV27CAnimBlendStaticAssociation_ptr - 0x389900)
3898F2:  MOV.W           R2, #0xFFFFFFFF
3898F6:  STR.W           R2, [R0,#6]
3898FA:  MOVS            R2, #0
3898FC:  ADD             R1, PC; _ZTV27CAnimBlendStaticAssociation_ptr
3898FE:  STRH            R2, [R0,#0xA]
389900:  STRD.W          R2, R2, [R0,#0xC]
389904:  LDR             R1, [R1]; `vtable for'CAnimBlendStaticAssociation ...
389906:  ADDS            R1, #8
389908:  STR             R1, [R0]
38990A:  BX              LR
