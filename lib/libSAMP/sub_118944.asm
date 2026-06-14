; =========================================================
; Game Engine Function: sub_118944
; Address            : 0x118944 - 0x118A9E
; =========================================================

118944:  PUSH            {R4,R6,R7,LR}
118946:  ADD             R7, SP, #8
118948:  MOV             R4, R0
11894A:  BL              sub_117AA8
11894E:  MOV             R1, R4
118950:  MOV             R2, R0
118952:  LDR.W           R0, [R1],#0x14
118956:  LDR             R3, =(aArzhudSpdBg2 - 0x118960); "arzhud_spd_bg2" ...
118958:  LDR.W           R12, [R0,#0x40]
11895C:  ADD             R3, PC; "arzhud_spd_bg2"
11895E:  MOV             R0, R4
118960:  BLX             R12
118962:  BL              sub_117AA8
118966:  MOV             R1, R4
118968:  MOV             R2, R0
11896A:  LDR.W           R0, [R1],#0x1C
11896E:  LDR             R3, =(aArzhudSpdArrow - 0x118978); "arzhud_spd_arrow" ...
118970:  LDR.W           R12, [R0,#0x40]
118974:  ADD             R3, PC; "arzhud_spd_arrow"
118976:  MOV             R0, R4
118978:  BLX             R12
11897A:  BL              sub_117AA8
11897E:  MOV             R1, R4
118980:  MOV             R2, R0
118982:  LDR.W           R0, [R1],#0x4C
118986:  LDR             R3, =(aArzhudSpdDoor - 0x118990); "arzhud_spd_door" ...
118988:  LDR.W           R12, [R0,#0x40]
11898C:  ADD             R3, PC; "arzhud_spd_door"
11898E:  MOV             R0, R4
118990:  BLX             R12
118992:  BL              sub_117AA8
118996:  MOV             R1, R4
118998:  MOV             R2, R0
11899A:  LDR.W           R0, [R1],#0x50
11899E:  LDR             R3, =(aArzhudSpdEngin - 0x1189A8); "arzhud_spd_engine" ...
1189A0:  LDR.W           R12, [R0,#0x40]
1189A4:  ADD             R3, PC; "arzhud_spd_engine"
1189A6:  MOV             R0, R4
1189A8:  BLX             R12
1189AA:  BL              sub_117AA8
1189AE:  MOV             R1, R4
1189B0:  MOV             R2, R0
1189B2:  LDR.W           R0, [R1],#0x54
1189B6:  LDR             R3, =(aArzhudSpdLight - 0x1189C0); "arzhud_spd_light" ...
1189B8:  LDR.W           R12, [R0,#0x40]
1189BC:  ADD             R3, PC; "arzhud_spd_light"
1189BE:  MOV             R0, R4
1189C0:  BLX             R12
1189C2:  BL              sub_117AA8
1189C6:  MOV             R1, R4
1189C8:  MOV             R2, R0
1189CA:  LDR.W           R0, [R1],#0x58
1189CE:  LDR             R3, =(aArzhudSpdPark - 0x1189D8); "arzhud_spd_park" ...
1189D0:  LDR.W           R12, [R0,#0x40]
1189D4:  ADD             R3, PC; "arzhud_spd_park"
1189D6:  MOV             R0, R4
1189D8:  BLX             R12
1189DA:  BL              sub_117AA8
1189DE:  MOV             R1, R4
1189E0:  MOV             R2, R0
1189E2:  LDR.W           R0, [R1],#0x5C
1189E6:  LDR             R3, =(aArzhudSpdTurn - 0x1189F0); "arzhud_spd_turn" ...
1189E8:  LDR.W           R12, [R0,#0x40]
1189EC:  ADD             R3, PC; "arzhud_spd_turn"
1189EE:  MOV             R0, R4
1189F0:  BLX             R12
1189F2:  BL              sub_117AA8
1189F6:  MOV             R1, R4
1189F8:  MOV             R2, R0
1189FA:  LDR.W           R0, [R1],#0x64
1189FE:  LDR             R3, =(aArzhudSpdRect - 0x118A08); "arzhud_spd_rect" ...
118A00:  LDR.W           R12, [R0,#0x40]
118A04:  ADD             R3, PC; "arzhud_spd_rect"
118A06:  MOV             R0, R4
118A08:  BLX             R12
118A0A:  BL              sub_117AA8
118A0E:  MOV             R1, R4
118A10:  MOV             R2, R0
118A12:  LDR.W           R0, [R1],#0x68
118A16:  LDR             R3, =(aArzhudSpdHp - 0x118A20); "arzhud_spd_hp" ...
118A18:  LDR.W           R12, [R0,#0x40]
118A1C:  ADD             R3, PC; "arzhud_spd_hp"
118A1E:  MOV             R0, R4
118A20:  BLX             R12
118A22:  BL              sub_117AA8
118A26:  MOV             R1, R4
118A28:  MOV             R2, R0
118A2A:  LDR.W           R0, [R1],#0x6C
118A2E:  LDR             R3, =(aArzhudSpdGas - 0x118A38); "arzhud_spd_gas" ...
118A30:  LDR.W           R12, [R0,#0x40]
118A34:  ADD             R3, PC; "arzhud_spd_gas"
118A36:  MOV             R0, R4
118A38:  BLX             R12
118A3A:  BL              sub_117AA8
118A3E:  MOV             R1, R4
118A40:  MOV             R2, R0
118A42:  LDR.W           R0, [R1],#0x24
118A46:  LDR             R3, =(aArzhudSpdMenuB_0 - 0x118A50); "arzhud_spd_menu_bg2" ...
118A48:  LDR.W           R12, [R0,#0x40]
118A4C:  ADD             R3, PC; "arzhud_spd_menu_bg2"
118A4E:  MOV             R0, R4
118A50:  BLX             R12
118A52:  BL              sub_117AA8
118A56:  MOV             R1, R4
118A58:  MOV             R2, R0
118A5A:  LDR.W           R0, [R1],#0x28
118A5E:  LDR             R3, =(aArzhudSpdMenuS - 0x118A68); "arzhud_spd_menu_select" ...
118A60:  LDR.W           R12, [R0,#0x40]
118A64:  ADD             R3, PC; "arzhud_spd_menu_select"
118A66:  MOV             R0, R4
118A68:  BLX             R12
118A6A:  BL              sub_117AA8
118A6E:  MOV             R1, R4
118A70:  MOV             R2, R0
118A72:  LDR.W           R0, [R1],#0x70
118A76:  LDR             R3, =(aArzhudSpdRadio - 0x118A80); "arzhud_spd_radio" ...
118A78:  LDR.W           R12, [R0,#0x40]
118A7C:  ADD             R3, PC; "arzhud_spd_radio"
118A7E:  MOV             R0, R4
118A80:  BLX             R12
118A82:  BL              sub_117AA8
118A86:  MOV             R1, R4
118A88:  MOV             R2, R0
118A8A:  LDR.W           R0, [R1],#0x74
118A8E:  LDR             R3, =(aArzhudSpdMenu - 0x118A98); "arzhud_spd_menu" ...
118A90:  LDR.W           R12, [R0,#0x40]
118A94:  ADD             R3, PC; "arzhud_spd_menu"
118A96:  MOV             R0, R4
118A98:  POP.W           {R4,R6,R7,LR}
118A9C:  BX              R12
