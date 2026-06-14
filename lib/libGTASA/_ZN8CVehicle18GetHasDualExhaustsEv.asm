; =========================================================
; Game Engine Function: _ZN8CVehicle18GetHasDualExhaustsEv
; Address            : 0x58B590 - 0x58B59E
; =========================================================

58B590:  LDR.W           R0, [R0,#0x388]
58B594:  LDRB.W          R0, [R0,#0xCD]
58B598:  UBFX.W          R0, R0, #5, #1
58B59C:  BX              LR
