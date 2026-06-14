; =========================================================
; Game Engine Function: _ZN20CTaskSimpleIKManager14AddIKChainTaskEP18CTaskSimpleIKChaini
; Address            : 0x4EFBE8 - 0x4EFC3C
; =========================================================

4EFBE8:  MOV             R3, R0
4EFBEA:  CMP.W           R2, #0xFFFFFFFF
4EFBEE:  BLE             loc_4EFBFA
4EFBF0:  ADD.W           R0, R3, R2,LSL#2
4EFBF4:  STR             R1, [R0,#8]
4EFBF6:  MOV             R0, R2
4EFBF8:  BX              LR
4EFBFA:  MOV             R2, R3
4EFBFC:  LDR.W           R0, [R2,#8]!
4EFC00:  CMP             R0, #0
4EFC02:  ITTT EQ
4EFC04:  MOVEQ           R0, #0
4EFC06:  STREQ           R1, [R2]
4EFC08:  BXEQ            LR
4EFC0A:  MOV             R2, R3
4EFC0C:  LDR.W           R0, [R2,#0xC]!
4EFC10:  CMP             R0, #0
4EFC12:  ITTT EQ
4EFC14:  MOVEQ           R0, #1
4EFC16:  STREQ           R1, [R2]
4EFC18:  BXEQ            LR
4EFC1A:  MOV             R2, R3
4EFC1C:  LDR.W           R0, [R2,#0x10]!
4EFC20:  CMP             R0, #0
4EFC22:  ITTT EQ
4EFC24:  MOVEQ           R0, #2
4EFC26:  STREQ           R1, [R2]
4EFC28:  BXEQ            LR
4EFC2A:  LDR.W           R0, [R3,#0x14]!
4EFC2E:  CMP             R0, #0
4EFC30:  ITEEE NE
4EFC32:  MOVNE           R0, #0
4EFC34:  MOVEQ           R0, #3
4EFC36:  MOVEQ           R2, R3
4EFC38:  STREQ           R1, [R2]
4EFC3A:  BX              LR
