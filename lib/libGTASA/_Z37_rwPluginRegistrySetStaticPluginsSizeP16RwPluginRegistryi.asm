; =========================================================
; Game Engine Function: _Z37_rwPluginRegistrySetStaticPluginsSizeP16RwPluginRegistryi
; Address            : 0x1E5F74 - 0x1E5F98
; =========================================================

1E5F74:  LDRD.W          R2, R3, [R0]
1E5F78:  CMP             R2, R3
1E5F7A:  ITTT NE
1E5F7C:  MOVNE           R1, #0
1E5F7E:  MOVNE           R0, R1
1E5F80:  BXNE            LR
1E5F82:  LDR             R3, [R0,#8]
1E5F84:  CMP             R3, #1
1E5F86:  BLT             loc_1E5F8C
1E5F88:  CMP             R3, R1
1E5F8A:  BLE             loc_1E5F90
1E5F8C:  ADD             R1, R2
1E5F8E:  STR             R1, [R0,#8]
1E5F90:  MOVS            R1, #1
1E5F92:  STR             R1, [R0,#0xC]
1E5F94:  MOV             R0, R1
1E5F96:  BX              LR
