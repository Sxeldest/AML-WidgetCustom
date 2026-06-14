; =========================================================
; Game Engine Function: sub_117B48
; Address            : 0x117B48 - 0x117CA2
; =========================================================

117B48:  PUSH            {R4,R6,R7,LR}
117B4A:  ADD             R7, SP, #8
117B4C:  MOV             R4, R0
117B4E:  BL              sub_117AA8
117B52:  MOV             R1, R4
117B54:  MOV             R2, R0
117B56:  LDR.W           R0, [R1],#0x14
117B5A:  LDR             R3, =(aArzhudSpdBg - 0x117B64); "arzhud_spd_bg" ...
117B5C:  LDR.W           R12, [R0,#0x40]
117B60:  ADD             R3, PC; "arzhud_spd_bg"
117B62:  MOV             R0, R4
117B64:  BLX             R12
117B66:  BL              sub_117AA8
117B6A:  MOV             R1, R4
117B6C:  MOV             R2, R0
117B6E:  LDR.W           R0, [R1],#0x1C
117B72:  LDR             R3, =(aArzhudSpdArrow - 0x117B7C); "arzhud_spd_arrow" ...
117B74:  LDR.W           R12, [R0,#0x40]
117B78:  ADD             R3, PC; "arzhud_spd_arrow"
117B7A:  MOV             R0, R4
117B7C:  BLX             R12
117B7E:  BL              sub_117AA8
117B82:  MOV             R1, R4
117B84:  MOV             R2, R0
117B86:  LDR.W           R0, [R1],#0x4C
117B8A:  LDR             R3, =(aArzhudSpdDoor - 0x117B94); "arzhud_spd_door" ...
117B8C:  LDR.W           R12, [R0,#0x40]
117B90:  ADD             R3, PC; "arzhud_spd_door"
117B92:  MOV             R0, R4
117B94:  BLX             R12
117B96:  BL              sub_117AA8
117B9A:  MOV             R1, R4
117B9C:  MOV             R2, R0
117B9E:  LDR.W           R0, [R1],#0x50
117BA2:  LDR             R3, =(aArzhudSpdEngin - 0x117BAC); "arzhud_spd_engine" ...
117BA4:  LDR.W           R12, [R0,#0x40]
117BA8:  ADD             R3, PC; "arzhud_spd_engine"
117BAA:  MOV             R0, R4
117BAC:  BLX             R12
117BAE:  BL              sub_117AA8
117BB2:  MOV             R1, R4
117BB4:  MOV             R2, R0
117BB6:  LDR.W           R0, [R1],#0x54
117BBA:  LDR             R3, =(aArzhudSpdLight - 0x117BC4); "arzhud_spd_light" ...
117BBC:  LDR.W           R12, [R0,#0x40]
117BC0:  ADD             R3, PC; "arzhud_spd_light"
117BC2:  MOV             R0, R4
117BC4:  BLX             R12
117BC6:  BL              sub_117AA8
117BCA:  MOV             R1, R4
117BCC:  MOV             R2, R0
117BCE:  LDR.W           R0, [R1],#0x58
117BD2:  LDR             R3, =(aArzhudSpdPark - 0x117BDC); "arzhud_spd_park" ...
117BD4:  LDR.W           R12, [R0,#0x40]
117BD8:  ADD             R3, PC; "arzhud_spd_park"
117BDA:  MOV             R0, R4
117BDC:  BLX             R12
117BDE:  BL              sub_117AA8
117BE2:  MOV             R1, R4
117BE4:  MOV             R2, R0
117BE6:  LDR.W           R0, [R1],#0x5C
117BEA:  LDR             R3, =(aArzhudSpdIndbg - 0x117BF4); "arzhud_spd_indbg" ...
117BEC:  LDR.W           R12, [R0,#0x40]
117BF0:  ADD             R3, PC; "arzhud_spd_indbg"
117BF2:  MOV             R0, R4
117BF4:  BLX             R12
117BF6:  BL              sub_117AA8
117BFA:  MOV             R1, R4
117BFC:  MOV             R2, R0
117BFE:  LDR.W           R0, [R1],#0x60
117C02:  LDR             R3, =(aArzhudSpdSquar - 0x117C0C); "arzhud_spd_square" ...
117C04:  LDR.W           R12, [R0,#0x40]
117C08:  ADD             R3, PC; "arzhud_spd_square"
117C0A:  MOV             R0, R4
117C0C:  BLX             R12
117C0E:  BL              sub_117AA8
117C12:  MOV             R1, R4
117C14:  MOV             R2, R0
117C16:  LDR.W           R0, [R1],#0x64
117C1A:  LDR             R3, =(aArzhudSpdHp - 0x117C24); "arzhud_spd_hp" ...
117C1C:  LDR.W           R12, [R0,#0x40]
117C20:  ADD             R3, PC; "arzhud_spd_hp"
117C22:  MOV             R0, R4
117C24:  BLX             R12
117C26:  BL              sub_117AA8
117C2A:  MOV             R1, R4
117C2C:  MOV             R2, R0
117C2E:  LDR.W           R0, [R1],#0x68
117C32:  LDR             R3, =(aArzhudSpdGas - 0x117C3C); "arzhud_spd_gas" ...
117C34:  LDR.W           R12, [R0,#0x40]
117C38:  ADD             R3, PC; "arzhud_spd_gas"
117C3A:  MOV             R0, R4
117C3C:  BLX             R12
117C3E:  BL              sub_117AA8
117C42:  MOV             R1, R4
117C44:  MOV             R2, R0
117C46:  LDR.W           R0, [R1],#0x24
117C4A:  LDR             R3, =(aArzhudSpdMenuB - 0x117C54); "arzhud_spd_menu_bg" ...
117C4C:  LDR.W           R12, [R0,#0x40]
117C50:  ADD             R3, PC; "arzhud_spd_menu_bg"
117C52:  MOV             R0, R4
117C54:  BLX             R12
117C56:  BL              sub_117AA8
117C5A:  MOV             R1, R4
117C5C:  MOV             R2, R0
117C5E:  LDR.W           R0, [R1],#0x28
117C62:  LDR             R3, =(aArzhudSpdMenuS - 0x117C6C); "arzhud_spd_menu_select" ...
117C64:  LDR.W           R12, [R0,#0x40]
117C68:  ADD             R3, PC; "arzhud_spd_menu_select"
117C6A:  MOV             R0, R4
117C6C:  BLX             R12
117C6E:  BL              sub_117AA8
117C72:  MOV             R1, R4
117C74:  MOV             R2, R0
117C76:  LDR.W           R0, [R1],#0x6C
117C7A:  LDR             R3, =(aArzhudSpdRadio - 0x117C84); "arzhud_spd_radio" ...
117C7C:  LDR.W           R12, [R0,#0x40]
117C80:  ADD             R3, PC; "arzhud_spd_radio"
117C82:  MOV             R0, R4
117C84:  BLX             R12
117C86:  BL              sub_117AA8
117C8A:  MOV             R1, R4
117C8C:  MOV             R2, R0
117C8E:  LDR.W           R0, [R1],#0x70
117C92:  LDR             R3, =(aArzhudSpdMenu - 0x117C9C); "arzhud_spd_menu" ...
117C94:  LDR.W           R12, [R0,#0x40]
117C98:  ADD             R3, PC; "arzhud_spd_menu"
117C9A:  MOV             R0, R4
117C9C:  POP.W           {R4,R6,R7,LR}
117CA0:  BX              R12
