; =========================================================
; Game Engine Function: _Z29RpAnimBlendGetNextAssociationP21CAnimBlendAssociation
; Address            : 0x390BE4 - 0x390BEE
; =========================================================

390BE4:  LDR             R0, [R0,#4]
390BE6:  CMP             R0, #0
390BE8:  IT NE
390BEA:  SUBNE           R0, #4
390BEC:  BX              LR
