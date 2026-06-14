; =========================================================
; Game Engine Function: _ZN15CLoadedCarGroup12CountMembersEv
; Address            : 0x4D1A3E - 0x4D1B58
; =========================================================

4D1A3E:  LDRSH.W         R1, [R0]
4D1A42:  CMP             R1, #0
4D1A44:  ITT LT
4D1A46:  MOVLT           R0, #0
4D1A48:  BXLT            LR
4D1A4A:  LDRSH.W         R2, [R0,#2]
4D1A4E:  MOV.W           R1, #0xFFFFFFFF
4D1A52:  CMP             R2, R1
4D1A54:  ITT LE
4D1A56:  MOVLE           R0, #1
4D1A58:  BXLE            LR
4D1A5A:  LDRSH.W         R2, [R0,#4]
4D1A5E:  CMP             R2, R1
4D1A60:  BLE             loc_4D1B30
4D1A62:  LDRSH.W         R2, [R0,#6]
4D1A66:  CMP             R2, R1
4D1A68:  ITT LE
4D1A6A:  MOVLE           R0, #3
4D1A6C:  BXLE            LR
4D1A6E:  LDRSH.W         R2, [R0,#8]
4D1A72:  CMP             R2, R1
4D1A74:  BLE             loc_4D1B34
4D1A76:  LDRSH.W         R2, [R0,#0xA]
4D1A7A:  CMP             R2, R1
4D1A7C:  ITT LE
4D1A7E:  MOVLE           R0, #5
4D1A80:  BXLE            LR
4D1A82:  LDRSH.W         R2, [R0,#0xC]
4D1A86:  CMP             R2, R1
4D1A88:  BLE             loc_4D1B38
4D1A8A:  LDRSH.W         R2, [R0,#0xE]
4D1A8E:  CMP             R2, R1
4D1A90:  ITT LE
4D1A92:  MOVLE           R0, #7
4D1A94:  BXLE            LR
4D1A96:  LDRSH.W         R2, [R0,#0x10]
4D1A9A:  CMP             R2, R1
4D1A9C:  BLE             loc_4D1B3C
4D1A9E:  LDRSH.W         R2, [R0,#0x12]
4D1AA2:  CMP             R2, R1
4D1AA4:  ITT LE
4D1AA6:  MOVLE           R0, #9
4D1AA8:  BXLE            LR
4D1AAA:  LDRSH.W         R2, [R0,#0x14]
4D1AAE:  CMP             R2, R1
4D1AB0:  BLE             loc_4D1B40
4D1AB2:  LDRSH.W         R2, [R0,#0x16]
4D1AB6:  CMP             R2, R1
4D1AB8:  ITT LE
4D1ABA:  MOVLE           R0, #0xB
4D1ABC:  BXLE            LR
4D1ABE:  LDRSH.W         R2, [R0,#0x18]
4D1AC2:  CMP             R2, R1
4D1AC4:  BLE             loc_4D1B44
4D1AC6:  LDRSH.W         R2, [R0,#0x1A]
4D1ACA:  CMP             R2, R1
4D1ACC:  ITT LE
4D1ACE:  MOVLE           R0, #0xD
4D1AD0:  BXLE            LR
4D1AD2:  LDRSH.W         R2, [R0,#0x1C]
4D1AD6:  CMP             R2, R1
4D1AD8:  BLE             loc_4D1B48
4D1ADA:  LDRSH.W         R2, [R0,#0x1E]
4D1ADE:  CMP             R2, R1
4D1AE0:  ITT LE
4D1AE2:  MOVLE           R0, #0xF
4D1AE4:  BXLE            LR
4D1AE6:  LDRSH.W         R2, [R0,#0x20]
4D1AEA:  CMP             R2, R1
4D1AEC:  BLE             loc_4D1B4C
4D1AEE:  LDRSH.W         R2, [R0,#0x22]
4D1AF2:  CMP             R2, R1
4D1AF4:  ITT LE
4D1AF6:  MOVLE           R0, #0x11
4D1AF8:  BXLE            LR
4D1AFA:  LDRSH.W         R2, [R0,#0x24]
4D1AFE:  CMP             R2, R1
4D1B00:  BLE             loc_4D1B50
4D1B02:  LDRSH.W         R2, [R0,#0x26]
4D1B06:  CMP             R2, R1
4D1B08:  ITT LE
4D1B0A:  MOVLE           R0, #0x13
4D1B0C:  BXLE            LR
4D1B0E:  LDRSH.W         R2, [R0,#0x28]
4D1B12:  CMP             R2, R1
4D1B14:  BLE             loc_4D1B54
4D1B16:  LDRSH.W         R2, [R0,#0x2A]
4D1B1A:  CMP             R2, R1
4D1B1C:  ITT LE
4D1B1E:  MOVLE           R0, #0x15
4D1B20:  BXLE            LR
4D1B22:  LDRSH.W         R2, [R0,#0x2C]
4D1B26:  MOVS            R0, #0x16
4D1B28:  CMP             R2, R1
4D1B2A:  IT GT
4D1B2C:  MOVGT           R0, #0x17
4D1B2E:  BX              LR
4D1B30:  MOVS            R0, #2
4D1B32:  BX              LR
4D1B34:  MOVS            R0, #4
4D1B36:  BX              LR
4D1B38:  MOVS            R0, #6
4D1B3A:  BX              LR
4D1B3C:  MOVS            R0, #8
4D1B3E:  BX              LR
4D1B40:  MOVS            R0, #0xA
4D1B42:  BX              LR
4D1B44:  MOVS            R0, #0xC
4D1B46:  BX              LR
4D1B48:  MOVS            R0, #0xE
4D1B4A:  BX              LR
4D1B4C:  MOVS            R0, #0x10
4D1B4E:  BX              LR
4D1B50:  MOVS            R0, #0x12
4D1B52:  BX              LR
4D1B54:  MOVS            R0, #0x14
4D1B56:  BX              LR
