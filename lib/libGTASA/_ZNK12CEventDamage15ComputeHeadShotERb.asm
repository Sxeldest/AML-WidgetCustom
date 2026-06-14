; =========================================================
; Game Engine Function: _ZNK12CEventDamage15ComputeHeadShotERb
; Address            : 0x372E30 - 0x372E90
; =========================================================

372E30:  MOVS            R2, #0
372E32:  STRB            R2, [R1]
372E34:  LDR             R2, [R0,#0x18]
372E36:  CMP             R2, #0x34 ; '4'; switch 53 cases
372E38:  BHI             def_372E3A; jumptable 00372E3A default case, cases 16-21,35-37,39-45,47-51
372E3A:  TBB.W           [PC,R2]; switch jump
372E3E:  DCB 0x1B; jump table for switch statement
372E3F:  DCB 0x1B
372E40:  DCB 0x1B
372E41:  DCB 0x1B
372E42:  DCB 0x1B
372E43:  DCB 0x1B
372E44:  DCB 0x1B
372E45:  DCB 0x1B
372E46:  DCB 0x1B
372E47:  DCB 0x1B
372E48:  DCB 0x1B
372E49:  DCB 0x1B
372E4A:  DCB 0x1B
372E4B:  DCB 0x1B
372E4C:  DCB 0x1B
372E4D:  DCB 0x1B
372E4E:  DCB 0x28
372E4F:  DCB 0x28
372E50:  DCB 0x28
372E51:  DCB 0x28
372E52:  DCB 0x28
372E53:  DCB 0x28
372E54:  DCB 0x1F
372E55:  DCB 0x1F
372E56:  DCB 0x1F
372E57:  DCB 0x1F
372E58:  DCB 0x1F
372E59:  DCB 0x1F
372E5A:  DCB 0x1F
372E5B:  DCB 0x1F
372E5C:  DCB 0x1F
372E5D:  DCB 0x1F
372E5E:  DCB 0x1F
372E5F:  DCB 0x1F
372E60:  DCB 0x1F
372E61:  DCB 0x28
372E62:  DCB 0x28
372E63:  DCB 0x28
372E64:  DCB 0x1F
372E65:  DCB 0x28
372E66:  DCB 0x28
372E67:  DCB 0x28
372E68:  DCB 0x28
372E69:  DCB 0x28
372E6A:  DCB 0x28
372E6B:  DCB 0x28
372E6C:  DCB 0x1B
372E6D:  DCB 0x28
372E6E:  DCB 0x28
372E6F:  DCB 0x28
372E70:  DCB 0x28
372E71:  DCB 0x28
372E72:  DCB 0x1F
372E73:  ALIGN 2
372E74:  LDRB.W          R0, [R0,#0x3D]; jumptable 00372E3A cases 0-15,46
372E78:  CBNZ            R0, loc_372E8A
372E7A:  B               def_372E3A; jumptable 00372E3A default case, cases 16-21,35-37,39-45,47-51
372E7C:  LDRB.W          R2, [R0,#0x3D]; jumptable 00372E3A cases 22-34,38,52
372E80:  CBZ             R2, def_372E3A; jumptable 00372E3A default case, cases 16-21,35-37,39-45,47-51
372E82:  LDR             R0, [R0,#0x1C]
372E84:  CMP             R0, #9
372E86:  IT NE
372E88:  BXNE            LR
372E8A:  MOVS            R0, #1
372E8C:  STRB            R0, [R1]
372E8E:  BX              LR; jumptable 00372E3A default case, cases 16-21,35-37,39-45,47-51
