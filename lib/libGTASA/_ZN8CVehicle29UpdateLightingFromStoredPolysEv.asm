; =========================================================
; Game Engine Function: _ZN8CVehicle29UpdateLightingFromStoredPolysEv
; Address            : 0x581F38 - 0x581F52
; =========================================================

581F38:  LDRB.W          R1, [R0,#0x554]
581F3C:  LDRB.W          R2, [R0,#0x580]
581F40:  STRB.W          R1, [R0,#0x585]
581F44:  STRB.W          R1, [R0,#0x584]
581F48:  STRB.W          R2, [R0,#0x587]
581F4C:  STRB.W          R2, [R0,#0x586]
581F50:  BX              LR
