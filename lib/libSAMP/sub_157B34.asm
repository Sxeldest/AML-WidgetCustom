; =========================================================
; Game Engine Function: sub_157B34
; Address            : 0x157B34 - 0x157C4C
; =========================================================

157B34:  PUSH            {R4-R7,LR}
157B36:  ADD             R7, SP, #0xC
157B38:  PUSH.W          {R8}
157B3C:  SUB             SP, SP, #0x18
157B3E:  MOV             R5, R2
157B40:  MOV             R4, R1
157B42:  MOV             R8, R0
157B44:  BL              sub_157C88
157B48:  ADD             R0, SP, #0x28+var_1C
157B4A:  BL              sub_159258
157B4E:  LDRD.W          R0, R1, [SP,#0x28+var_1C]
157B52:  MOVS            R6, #0
157B54:  CMP             R0, R1
157B56:  BEQ             loc_157C38
157B58:  STR             R6, [SP,#0x28+var_20]
157B5A:  ADD             R0, SP, #0x28+var_24; int
157B5C:  ADD             R1, SP, #0x28+var_1C; int
157B5E:  MOV             R2, R4; int
157B60:  MOV             R3, R5; n
157B62:  BL              sub_1592BC
157B66:  LDRD.W          R1, R2, [SP,#0x28+var_24]
157B6A:  MOVS            R4, #0
157B6C:  STRD.W          R4, R1, [SP,#0x28+var_24]
157B70:  CBZ             R2, loc_157B88
157B72:  ADD             R0, SP, #0x28+var_20
157B74:  MOV             R1, R2
157B76:  BL              sub_15614C
157B7A:  LDR             R1, [SP,#0x28+var_24]
157B7C:  STR             R4, [SP,#0x28+var_24]
157B7E:  CBZ             R1, loc_157B86
157B80:  ADD             R0, SP, #0x28+var_24
157B82:  BL              sub_15614C
157B86:  LDR             R1, [SP,#0x28+var_20]
157B88:  CMP             R1, #0
157B8A:  BEQ             loc_157C36
157B8C:  MOV             R0, R8
157B8E:  BL              sub_157CB8
157B92:  LDR.W           R1, [R8,#4]!
157B96:  MOVS            R4, #0
157B98:  LDR             R0, [SP,#0x28+var_20]
157B9A:  STR.W           R0, [R8]
157B9E:  STR             R4, [SP,#0x28+var_20]
157BA0:  CBZ             R1, loc_157BB4
157BA2:  MOV             R0, R8
157BA4:  BL              sub_15614C
157BA8:  LDR             R1, [SP,#0x28+var_20]
157BAA:  STR             R4, [SP,#0x28+var_20]
157BAC:  CBZ             R1, loc_157BB4
157BAE:  ADD             R0, SP, #0x28+var_20
157BB0:  BL              sub_15614C
157BB4:  MOVS            R6, #1
157BB6:  B               loc_157C38
157BB8:  B               loc_157BBA
157BBA:  CMP             R1, #1
157BBC:  BNE             loc_157C64
157BBE:  BLX             j___cxa_begin_catch
157BC2:  LDR             R2, =(byte_8F794 - 0x157BCA)
157BC4:  MOV             R6, R0
157BC6:  ADD             R2, PC; byte_8F794 ; int
157BC8:  ADD             R0, SP, #0x28+var_24; int
157BCA:  ADD             R1, SP, #0x28+var_1C; int
157BCC:  MOVS            R3, #0; n
157BCE:  BL              sub_1592BC
157BD2:  LDR             R5, [SP,#0x28+var_24]
157BD4:  CBZ             R5, loc_157C20
157BD6:  LDR             R1, [SP,#0x28+var_20]
157BD8:  MOV             R0, R5
157BDA:  BL              sub_157D94
157BDE:  CBNZ            R0, loc_157C48
157BE0:  LDR             R0, [R6]
157BE2:  LDR             R1, [R0,#8]
157BE4:  MOV             R0, R6
157BE6:  BLX             R1
157BE8:  LDR             R2, =(aRecorderInitia - 0x157BF0); "Recorder initialization failed (error: "... ...
157BEA:  STR             R0, [SP,#0x28+var_28]
157BEC:  ADD             R2, PC; "Recorder initialization failed (error: "...
157BEE:  MOV             R1, SP
157BF0:  MOV             R0, R2
157BF2:  BL              sub_157E1C
157BF6:  LDR             R1, [SP,#0x28+var_24]
157BF8:  MOV             R0, R8
157BFA:  BL              sub_157CB8
157BFE:  LDR.W           R1, [R8,#4]!
157C02:  MOVS            R4, #0
157C04:  LDR             R0, [SP,#0x28+var_24]
157C06:  STR.W           R0, [R8]
157C0A:  STR             R4, [SP,#0x28+var_24]
157C0C:  CBZ             R1, loc_157C20
157C0E:  MOV             R0, R8
157C10:  BL              sub_15614C
157C14:  LDR             R1, [SP,#0x28+var_24]
157C16:  STR             R4, [SP,#0x28+var_24]
157C18:  CBZ             R1, loc_157C20
157C1A:  ADD             R0, SP, #0x28+var_24
157C1C:  BL              sub_15614C
157C20:  BLX             j___cxa_end_catch
157C24:  LDR             R1, [SP,#0x28+var_20]
157C26:  MOVS            R0, #0
157C28:  CMP             R5, #0
157C2A:  STR             R0, [SP,#0x28+var_20]
157C2C:  BNE             loc_157BAC
157C2E:  CBZ             R1, loc_157C36
157C30:  ADD             R0, SP, #0x28+var_20
157C32:  BL              sub_15614C
157C36:  MOVS            R6, #0
157C38:  ADD             R0, SP, #0x28+var_1C
157C3A:  BL              sub_157F44
157C3E:  MOV             R0, R6
157C40:  ADD             SP, SP, #0x18
157C42:  POP.W           {R8}
157C46:  POP             {R4-R7,PC}
157C48:  BLX             j___cxa_rethrow
