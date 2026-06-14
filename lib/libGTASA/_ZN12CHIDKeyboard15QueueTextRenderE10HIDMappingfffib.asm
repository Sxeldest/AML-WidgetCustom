; =========================================================
; Game Engine Function: _ZN12CHIDKeyboard15QueueTextRenderE10HIDMappingfffib
; Address            : 0x294E54 - 0x294E9C
; =========================================================

294E54:  LDR.W           R12, [R0,#0x14]
294E58:  CMP.W           R12, #0x63 ; 'c'
294E5C:  IT GT
294E5E:  BXGT            LR
294E60:  PUSH            {R4,R6,R7,LR}
294E62:  ADD             R7, SP, #0x10+var_8
294E64:  VMOV            S4, R2
294E68:  ADD.W           R2, R12, R12,LSL#1
294E6C:  LDRD.W          R4, LR, [R7,#0xC]
294E70:  VMOV            S2, R3
294E74:  ADD.W           R2, R0, R2,LSL#3
294E78:  VLDR            S0, [R7,#8]
294E7C:  STR             R1, [R2,#0x18]
294E7E:  VSTR            S4, [R2,#0x1C]
294E82:  VSTR            S2, [R2,#0x20]
294E86:  VSTR            S0, [R2,#0x24]
294E8A:  STR             R4, [R2,#0x28]
294E8C:  STRB.W          LR, [R2,#0x2C]
294E90:  LDR             R1, [R0,#0x14]
294E92:  ADDS            R1, #1
294E94:  STR             R1, [R0,#0x14]
294E96:  POP.W           {R4,R6,R7,LR}
294E9A:  BX              LR
