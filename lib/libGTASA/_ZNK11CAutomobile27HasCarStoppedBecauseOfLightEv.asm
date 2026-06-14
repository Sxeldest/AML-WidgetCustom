; =========================================================
; Game Engine Function: _ZNK11CAutomobile27HasCarStoppedBecauseOfLightEv
; Address            : 0x318A64 - 0x318C1C
; =========================================================

318A64:  PUSH            {R4-R7,LR}
318A66:  ADD             R7, SP, #0xC
318A68:  PUSH.W          {R8-R11}
318A6C:  LDRB.W          R1, [R0,#0x3A]
318A70:  AND.W           R1, R1, #0xF0
318A74:  CMP             R1, #0x10
318A76:  BNE.W           loc_318C0C
318A7A:  LDR             R1, =(ThePaths_ptr - 0x318A84)
318A7C:  LDR.W           R3, [R0,#0x394]
318A80:  ADD             R1, PC; ThePaths_ptr
318A82:  LDR             R1, [R1]; ThePaths
318A84:  UXTH.W          R12, R3
318A88:  ADD.W           R1, R1, R12,LSL#2
318A8C:  LDR.W           R1, [R1,#0x804]
318A90:  CMP             R1, #0
318A92:  BEQ.W           loc_318C0C
318A96:  LDR             R6, =(ThePaths_ptr - 0x318AA0)
318A98:  LDRH.W          R11, [R0,#0x398]
318A9C:  ADD             R6, PC; ThePaths_ptr
318A9E:  LDR             R6, [R6]; ThePaths
318AA0:  ADD.W           R6, R6, R11,LSL#2
318AA4:  LDR.W           R6, [R6,#0x804]
318AA8:  CMP             R6, #0
318AAA:  BEQ.W           loc_318C0C
318AAE:  LSRS            R6, R3, #0x10
318AB0:  LSLS            R5, R6, #3
318AB2:  SUB.W           R3, R5, R3,LSR#16
318AB6:  ADD.W           R3, R1, R3,LSL#2
318ABA:  LDRH            R3, [R3,#0x18]
318ABC:  ANDS.W          R4, R3, #0xF
318AC0:  BEQ             loc_318B4A
318AC2:  LDR             R3, =(ThePaths_ptr - 0x318AD2)
318AC4:  RSB.W           R6, R6, R6,LSL#3
318AC8:  BIC.W           R4, R4, #0xFF000000
318ACC:  MOVS            R5, #0
318ACE:  ADD             R3, PC; ThePaths_ptr
318AD0:  ADD.W           R1, R1, R6,LSL#2
318AD4:  LDR             R3, [R3]; ThePaths
318AD6:  LDRSH.W         R1, [R1,#0x10]
318ADA:  ADD.W           R6, R3, R12,LSL#2
318ADE:  ADDW            LR, R6, #0xDA4
318AE2:  LDR.W           R3, [R6,#0xA44]
318AE6:  MOV.W           R9, R1,LSL#1
318AEA:  ADD.W           R3, R3, R1,LSL#2
318AEE:  LDR             R1, =(ThePaths_ptr - 0x318AF4)
318AF0:  ADD             R1, PC; ThePaths_ptr
318AF2:  LDR.W           R10, [R1]; ThePaths
318AF6:  LDR             R1, =(ThePaths_ptr - 0x318AFC)
318AF8:  ADD             R1, PC; ThePaths_ptr
318AFA:  LDR.W           R8, [R1]; ThePaths
318AFE:  LDRH.W          R1, [R3,R5,LSL#2]
318B02:  CMP             R1, R11
318B04:  BNE             loc_318B44
318B06:  ADD.W           R6, R3, R5,LSL#2
318B0A:  LDRH.W          R1, [R0,#0x39A]
318B0E:  LDRH            R6, [R6,#2]
318B10:  CMP             R6, R1
318B12:  BNE             loc_318B44
318B14:  LDR.W           R1, [LR]
318B18:  ADD             R1, R9
318B1A:  LDRH.W          R1, [R1,R5,LSL#1]
318B1E:  LSRS            R6, R1, #0xA
318B20:  ADD.W           R2, R10, R6,LSL#2
318B24:  LDR.W           R2, [R2,#0x804]
318B28:  CBZ             R2, loc_318B44
318B2A:  ADD.W           R2, R8, R6,LSL#2
318B2E:  BFC.W           R1, #0xA, #0x16
318B32:  LDR.W           R2, [R2,#0x924]
318B36:  RSB.W           R1, R1, R1,LSL#3
318B3A:  ADD.W           R1, R2, R1,LSL#1
318B3E:  LDRB            R1, [R1,#0xC]
318B40:  LSLS            R1, R1, #0x1E
318B42:  BNE             loc_318C14
318B44:  ADDS            R5, #1
318B46:  CMP             R5, R4
318B48:  BLT             loc_318AFE
318B4A:  LDRH.W          R1, [R0,#0x39C]
318B4E:  MOVW            R2, #0xFFFF
318B52:  CMP             R1, R2
318B54:  BEQ             loc_318C0C
318B56:  LDR             R1, =(ThePaths_ptr - 0x318B60)
318B58:  LDR.W           R3, [R0,#0x39C]
318B5C:  ADD             R1, PC; ThePaths_ptr
318B5E:  LDR             R2, [R1]; ThePaths
318B60:  UXTH            R1, R3
318B62:  ADD.W           R2, R2, R1,LSL#2
318B66:  LDR.W           R2, [R2,#0x804]
318B6A:  CMP             R2, #0
318B6C:  ITTTT NE
318B6E:  LSRNE           R5, R3, #0x10
318B70:  LSLNE           R6, R5, #3
318B72:  SUBNE.W         R3, R6, R3,LSR#16
318B76:  ADDNE.W         R3, R2, R3,LSL#2
318B7A:  ITT NE
318B7C:  LDRHNE          R3, [R3,#0x18]
318B7E:  ANDSNE.W        R6, R3, #0xF
318B82:  BEQ             loc_318C0C
318B84:  LDR             R3, =(ThePaths_ptr - 0x318B92)
318B86:  RSB.W           R5, R5, R5,LSL#3
318B8A:  BIC.W           R4, R6, #0xFF000000
318B8E:  ADD             R3, PC; ThePaths_ptr
318B90:  ADD.W           R2, R2, R5,LSL#2
318B94:  MOVS            R5, #0
318B96:  LDR             R3, [R3]; ThePaths
318B98:  LDRSH.W         R2, [R2,#0x10]
318B9C:  ADD.W           R3, R3, R1,LSL#2
318BA0:  ADDW            R8, R3, #0xDA4
318BA4:  LDR.W           R1, [R3,#0xA44]
318BA8:  MOV.W           R9, R2,LSL#1
318BAC:  ADD.W           R1, R1, R2,LSL#2
318BB0:  LDR             R2, =(ThePaths_ptr - 0x318BB6)
318BB2:  ADD             R2, PC; ThePaths_ptr
318BB4:  LDR.W           R10, [R2]; ThePaths
318BB8:  LDR             R2, =(ThePaths_ptr - 0x318BBE)
318BBA:  ADD             R2, PC; ThePaths_ptr
318BBC:  LDR.W           LR, [R2]; ThePaths
318BC0:  LDRH.W          R2, [R1,R5,LSL#2]
318BC4:  CMP             R2, R12
318BC6:  BNE             loc_318C06
318BC8:  ADD.W           R3, R1, R5,LSL#2
318BCC:  LDRH.W          R2, [R0,#0x396]
318BD0:  LDRH            R3, [R3,#2]
318BD2:  CMP             R3, R2
318BD4:  BNE             loc_318C06
318BD6:  LDR.W           R2, [R8]
318BDA:  ADD             R2, R9
318BDC:  LDRH.W          R2, [R2,R5,LSL#1]
318BE0:  LSRS            R3, R2, #0xA
318BE2:  ADD.W           R6, R10, R3,LSL#2
318BE6:  LDR.W           R6, [R6,#0x804]
318BEA:  CBZ             R6, loc_318C06
318BEC:  ADD.W           R3, LR, R3,LSL#2
318BF0:  BFC.W           R2, #0xA, #0x16
318BF4:  LDR.W           R3, [R3,#0x924]
318BF8:  RSB.W           R2, R2, R2,LSL#3
318BFC:  ADD.W           R2, R3, R2,LSL#1
318C00:  LDRB            R2, [R2,#0xC]
318C02:  LSLS            R2, R2, #0x1E
318C04:  BNE             loc_318C14
318C06:  ADDS            R5, #1
318C08:  CMP             R5, R4
318C0A:  BLT             loc_318BC0
318C0C:  MOVS            R0, #0
318C0E:  POP.W           {R8-R11}
318C12:  POP             {R4-R7,PC}
318C14:  MOVS            R0, #1
318C16:  POP.W           {R8-R11}
318C1A:  POP             {R4-R7,PC}
