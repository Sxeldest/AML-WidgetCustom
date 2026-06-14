; =========================================================
; Game Engine Function: _Z23jinit_d_post_controllerP22jpeg_decompress_structh
; Address            : 0x47FB60 - 0x47FBC8
; =========================================================

47FB60:  PUSH            {R4-R7,LR}
47FB62:  ADD             R7, SP, #0xC
47FB64:  PUSH.W          {R11}
47FB68:  MOV             R4, R0
47FB6A:  MOV             R6, R1
47FB6C:  LDR             R0, [R4,#4]
47FB6E:  MOVS            R1, #1
47FB70:  MOVS            R2, #0x1C
47FB72:  LDR             R3, [R0]
47FB74:  MOV             R0, R4
47FB76:  BLX             R3
47FB78:  MOV             R5, R0
47FB7A:  LDR             R0, =(sub_47FBCC+1 - 0x47FB86)
47FB7C:  MOVS            R1, #0
47FB7E:  STR.W           R5, [R4,#0x18C]
47FB82:  ADD             R0, PC; sub_47FBCC
47FB84:  STR             R0, [R5]
47FB86:  STRD.W          R1, R1, [R5,#8]
47FB8A:  LDRB.W          R0, [R4,#0x4A]
47FB8E:  CBZ             R0, loc_47FBC2
47FB90:  LDR.W           R3, [R4,#0x114]
47FB94:  CMP             R6, #0
47FB96:  STR             R3, [R5,#0x10]
47FB98:  BEQ             loc_47FBB0
47FB9A:  LDR             R0, [R4]
47FB9C:  MOVS            R1, #4
47FB9E:  STR             R1, [R0,#0x14]
47FBA0:  LDR             R0, [R4]
47FBA2:  LDR             R1, [R0]
47FBA4:  MOV             R0, R4
47FBA6:  POP.W           {R11}
47FBAA:  POP.W           {R4-R7,LR}
47FBAE:  BX              R1
47FBB0:  LDR             R1, [R4,#0x5C]
47FBB2:  LDR             R2, [R4,#0x64]
47FBB4:  LDR             R0, [R4,#4]
47FBB6:  MULS            R2, R1
47FBB8:  MOVS            R1, #1
47FBBA:  LDR             R6, [R0,#8]
47FBBC:  MOV             R0, R4
47FBBE:  BLX             R6
47FBC0:  STR             R0, [R5,#0xC]
47FBC2:  POP.W           {R11}
47FBC6:  POP             {R4-R7,PC}
