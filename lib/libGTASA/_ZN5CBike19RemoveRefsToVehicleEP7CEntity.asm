; =========================================================
; Game Engine Function: _ZN5CBike19RemoveRefsToVehicleEP7CEntity
; Address            : 0x566B94 - 0x566BCE
; =========================================================

566B94:  LDR.W           R2, [R0,#0x7D4]
566B98:  CMP             R2, R1
566B9A:  ITT EQ
566B9C:  MOVEQ           R2, #0
566B9E:  STREQ.W         R2, [R0,#0x7D4]
566BA2:  LDR.W           R2, [R0,#0x7D8]
566BA6:  CMP             R2, R1
566BA8:  ITT EQ
566BAA:  MOVEQ           R2, #0
566BAC:  STREQ.W         R2, [R0,#0x7D8]
566BB0:  LDR.W           R2, [R0,#0x7DC]
566BB4:  CMP             R2, R1
566BB6:  ITT EQ
566BB8:  MOVEQ           R2, #0
566BBA:  STREQ.W         R2, [R0,#0x7DC]
566BBE:  LDR.W           R2, [R0,#0x7E0]
566BC2:  CMP             R2, R1
566BC4:  ITT EQ
566BC6:  MOVEQ           R1, #0
566BC8:  STREQ.W         R1, [R0,#0x7E0]
566BCC:  BX              LR
