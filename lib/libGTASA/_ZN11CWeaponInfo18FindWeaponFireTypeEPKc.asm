; =========================================================
; Game Engine Function: _ZN11CWeaponInfo18FindWeaponFireTypeEPKc
; Address            : 0x474D48 - 0x474DA6
; =========================================================

474D48:  PUSH            {R4,R6,R7,LR}
474D4A:  ADD             R7, SP, #8
474D4C:  ADR             R1, aMelee; "MELEE"
474D4E:  MOV             R4, R0
474D50:  BLX             strcmp
474D54:  CBZ             R0, loc_474D92
474D56:  ADR             R1, aInstantHit; "INSTANT_HIT"
474D58:  MOV             R0, R4; char *
474D5A:  BLX             strcmp
474D5E:  CBZ             R0, loc_474D96
474D60:  ADR             R1, aProjectile; "PROJECTILE"
474D62:  MOV             R0, R4; char *
474D64:  BLX             strcmp
474D68:  CBZ             R0, loc_474D9A
474D6A:  ADR             R1, aAreaEffect; "AREA_EFFECT"
474D6C:  MOV             R0, R4; char *
474D6E:  BLX             strcmp
474D72:  CBZ             R0, loc_474D9E
474D74:  ADR             R1, aCamera; "CAMERA"
474D76:  MOV             R0, R4; char *
474D78:  BLX             strcmp
474D7C:  CBZ             R0, loc_474DA2
474D7E:  ADR             R1, aUse; "USE"
474D80:  MOV             R0, R4; char *
474D82:  BLX             strcmp
474D86:  MOV             R1, R0
474D88:  MOVS            R0, #1
474D8A:  CMP             R1, #0
474D8C:  IT EQ
474D8E:  MOVEQ           R0, #5
474D90:  POP             {R4,R6,R7,PC}
474D92:  MOVS            R0, #0
474D94:  POP             {R4,R6,R7,PC}
474D96:  MOVS            R0, #1
474D98:  POP             {R4,R6,R7,PC}
474D9A:  MOVS            R0, #2
474D9C:  POP             {R4,R6,R7,PC}
474D9E:  MOVS            R0, #3
474DA0:  POP             {R4,R6,R7,PC}
474DA2:  MOVS            R0, #4
474DA4:  POP             {R4,R6,R7,PC}
