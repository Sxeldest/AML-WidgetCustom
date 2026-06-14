; =========================================================
; Game Engine Function: sub_79BCC
; Address            : 0x79BCC - 0x79CCA
; =========================================================

79BCC:  PUSH            {R4-R7,LR}
79BCE:  ADD             R7, SP, #0xC
79BD0:  PUSH.W          {R8}
79BD4:  SUB             SP, SP, #0x138
79BD6:  MOV             R8, R0
79BD8:  LDR             R0, =(__stack_chk_guard_ptr - 0x79BE2)
79BDA:  MOV             R5, R3
79BDC:  MOV             R6, R2
79BDE:  ADD             R0, PC; __stack_chk_guard_ptr
79BE0:  MOV             R4, R1
79BE2:  LDR             R0, [R0]; __stack_chk_guard
79BE4:  LDR             R0, [R0]
79BE6:  STR             R0, [SP,#0x148+var_14]
79BE8:  ADD             R0, SP, #0x148+var_128
79BEA:  BL              sub_86B90
79BEE:  CBZ             R4, loc_79BF8
79BF0:  ADD             R0, SP, #0x148+var_128
79BF2:  BL              sub_86F46
79BF6:  B               loc_79BFE
79BF8:  ADD             R0, SP, #0x148+var_128
79BFA:  BL              sub_86ECA
79BFE:  STRH.W          R6, [SP,#0x148+var_12C]
79C02:  ADD             R0, SP, #0x148+var_128
79C04:  ADD             R1, SP, #0x148+var_12C
79C06:  MOVS            R2, #0x10
79C08:  MOVS            R3, #1
79C0A:  BL              sub_86D52
79C0E:  STR             R5, [SP,#0x148+var_12C]
79C10:  ADD             R0, SP, #0x148+var_128
79C12:  ADD             R1, SP, #0x148+var_12C
79C14:  MOVS            R2, #0x20 ; ' '
79C16:  MOVS            R3, #1
79C18:  BL              sub_86D52
79C1C:  LDR             R0, [R7,#arg_0]
79C1E:  STR             R0, [SP,#0x148+var_12C]
79C20:  ADD             R0, SP, #0x148+var_128
79C22:  ADD             R1, SP, #0x148+var_12C
79C24:  MOVS            R2, #0x20 ; ' '
79C26:  MOVS            R3, #1
79C28:  BL              sub_86D52
79C2C:  LDR             R0, [R7,#arg_4]
79C2E:  STR             R0, [SP,#0x148+var_12C]
79C30:  ADD             R0, SP, #0x148+var_128
79C32:  ADD             R1, SP, #0x148+var_12C
79C34:  MOVS            R2, #0x20 ; ' '
79C36:  MOVS            R3, #1
79C38:  BL              sub_86D52
79C3C:  LDR             R0, [R7,#arg_8]
79C3E:  STR             R0, [SP,#0x148+var_12C]
79C40:  ADD             R0, SP, #0x148+var_128
79C42:  ADD             R1, SP, #0x148+var_12C
79C44:  MOVS            R2, #0x20 ; ' '
79C46:  MOVS            R3, #1
79C48:  BL              sub_86D52
79C4C:  LDR             R0, [R7,#arg_C]
79C4E:  STR             R0, [SP,#0x148+var_12C]
79C50:  ADD             R0, SP, #0x148+var_128
79C52:  ADD             R1, SP, #0x148+var_12C
79C54:  MOVS            R2, #0x20 ; ' '
79C56:  MOVS            R3, #1
79C58:  BL              sub_86D52
79C5C:  LDR             R0, [R7,#arg_10]
79C5E:  STR             R0, [SP,#0x148+var_12C]
79C60:  ADD             R0, SP, #0x148+var_128
79C62:  ADD             R1, SP, #0x148+var_12C
79C64:  MOVS            R2, #0x20 ; ' '
79C66:  MOVS            R3, #1
79C68:  BL              sub_86D52
79C6C:  LDR             R0, [R7,#arg_14]
79C6E:  STR             R0, [SP,#0x148+var_12C]
79C70:  ADD             R0, SP, #0x148+var_128
79C72:  ADD             R1, SP, #0x148+var_12C
79C74:  MOVS            R2, #0x20 ; ' '
79C76:  MOVS            R3, #1
79C78:  BL              sub_86D52
79C7C:  LDR.W           R0, [R8,#0x210]
79C80:  MOVS            R3, #0
79C82:  LDR             R1, =(off_114C64 - 0x79C88)
79C84:  ADD             R1, PC; off_114C64
79C86:  LDR             R2, [R0]
79C88:  LDR             R1, [R1]; unk_116E40
79C8A:  LDR             R6, [R2,#0x6C]
79C8C:  MOV.W           R12, #0xFFFFFFFF
79C90:  MOVS            R4, #8
79C92:  ADD             R2, SP, #0x148+var_128
79C94:  MOVW            R5, #0xFFFF
79C98:  STRD.W          R4, R3, [SP,#0x148+var_148]
79C9C:  STRD.W          R3, R12, [SP,#0x148+var_140]
79CA0:  STR             R3, [SP,#0x148+var_130]
79CA2:  MOVS            R3, #1
79CA4:  STRD.W          R5, R5, [SP,#0x148+var_138]
79CA8:  BLX             R6
79CAA:  ADD             R0, SP, #0x148+var_128
79CAC:  BL              sub_86BF8
79CB0:  LDR             R0, [SP,#0x148+var_14]
79CB2:  LDR             R1, =(__stack_chk_guard_ptr - 0x79CB8)
79CB4:  ADD             R1, PC; __stack_chk_guard_ptr
79CB6:  LDR             R1, [R1]; __stack_chk_guard
79CB8:  LDR             R1, [R1]
79CBA:  CMP             R1, R0
79CBC:  ITTT EQ
79CBE:  ADDEQ           SP, SP, #0x138
79CC0:  POPEQ.W         {R8}
79CC4:  POPEQ           {R4-R7,PC}
79CC6:  BLX             __stack_chk_fail
