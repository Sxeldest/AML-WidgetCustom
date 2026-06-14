; =========================================================
; Game Engine Function: alGenSources
; Address            : 0x1CAEE0 - 0x1CB10C
; =========================================================

1CAEE0:  PUSH            {R4-R11,LR}
1CAEE4:  ADD             R11, SP, #0x1C
1CAEE8:  SUB             SP, SP, #0x14
1CAEEC:  MOV             R4, R1
1CAEF0:  MOV             R7, R0
1CAEF4:  BL              j_GetContextRef
1CAEF8:  CMP             R0, #0
1CAEFC:  BEQ             loc_1CAF38
1CAF00:  CMP             R7, #0
1CAF04:  STR             R0, [SP,#0x30+var_20]
1CAF08:  BLT             loc_1CAF20
1CAF0C:  CMP             R4, #0
1CAF10:  BNE             loc_1CAF40
1CAF14:  BIC             R1, R7, #0xC0000000
1CAF18:  CMP             R1, #0
1CAF1C:  BEQ             loc_1CAF40
1CAF20:  MOVW            R1, #0xA003
1CAF24:  BL              j_alSetError
1CAF28:  LDR             R0, [SP,#0x30+var_20]
1CAF2C:  SUB             SP, R11, #0x1C
1CAF30:  POP             {R4-R11,LR}
1CAF34:  B               j_ALCcontext_DecRef
1CAF38:  SUB             SP, R11, #0x1C
1CAF3C:  POP             {R4-R11,PC}
1CAF40:  CMP             R7, #1
1CAF44:  BLT             loc_1CAF28
1CAF48:  LDR             R0, [SP,#0x30+var_20]
1CAF4C:  MOV             R9, #0
1CAF50:  MOV             R6, #0x3F800000
1CAF54:  MOV             R10, #0
1CAF58:  ADD             R0, R0, #0x7C ; '|'
1CAF5C:  STR             R0, [SP,#0x30+var_2C]
1CAF60:  LDR             R0, =(DefaultResampler_ptr - 0x1CAF6C)
1CAF64:  LDR             R0, [PC,R0]; DefaultResampler
1CAF68:  STR             R0, [SP,#0x30+var_28]
1CAF6C:  STR             R4, [SP,#0x30+var_24]
1CAF70:  STR             R7, [SP,#0x30+var_30]
1CAF74:  MOV             R0, #1; nmemb
1CAF78:  MOVW            R1, #0x1FA8; size
1CAF7C:  BL              calloc
1CAF80:  MOV             R5, R0
1CAF84:  CMP             R5, #0
1CAF88:  BEQ             loc_1CB0F0
1CAF8C:  MOVW            R0, #0
1CAF90:  MOV             R1, #1
1CAF94:  MOVT            R0, #0x43B4
1CAF98:  MOVW            R2, #0x1011
1CAF9C:  STR             R0, [R5,#0x14]
1CAFA0:  MOVW            R7, #0x1FA4
1CAFA4:  STR             R0, [R5,#0x18]
1CAFA8:  MOV             R0, #0x7F7FFFFF
1CAFB0:  STR             R6, [R5]
1CAFB4:  STR             R9, [R5,#0x28]
1CAFB8:  ADD             R8, R5, R7
1CAFBC:  STR             R9, [R5,#0x2C]
1CAFC0:  STR             R9, [R5,#0x30]
1CAFC4:  STR             R9, [R5,#0x40]
1CAFC8:  STR             R9, [R5,#0x44]
1CAFCC:  STR             R9, [R5,#0x48]
1CAFD0:  STR             R9, [R5,#0x34]
1CAFD4:  STR             R9, [R5,#0x38]
1CAFD8:  STR             R9, [R5,#0x3C]
1CAFDC:  STR             R6, [R5,#0x1C]
1CAFE0:  STR             R0, [R5,#0x20]
1CAFE4:  MOVW            R0, #0xD002
1CAFE8:  STR             R6, [R5,#0x24]
1CAFEC:  STRB            R9, [R5,#0x4D]
1CAFF0:  STR             R6, [R5,#4]
1CAFF4:  STR             R9, [R5,#0xC]
1CAFF8:  STR             R6, [R5,#0x10]
1CAFFC:  STR             R9, [R5,#8]
1CB000:  STR             R6, [R5,#0xB4]
1CB004:  STRB            R1, [R5,#0xB0]
1CB008:  STRB            R1, [R5,#0xB1]
1CB00C:  STRB            R1, [R5,#0xB2]
1CB010:  STR             R9, [R5,#0xB8]
1CB014:  STR             R9, [R5,#0xBC]
1CB018:  STR             R6, [R5,#0xC0]
1CB01C:  STRB            R1, [R5,#0x54]
1CB020:  STR             R0, [R5,#0x50]
1CB024:  LDR             R0, [SP,#0x30+var_28]
1CB028:  LDR             R0, [R0]
1CB02C:  STR             R2, [R5,#0x5C]
1CB030:  MOVW            R2, #0x1030
1CB034:  STR             R2, [R5,#0xCC]
1CB038:  MOVW            R2, #0x1F9C
1CB03C:  STR             R1, [R5,R2]
1CB040:  STR             R0, [R5,#0x58]
1CB044:  MOV             R0, #0xFFFFFFFF
1CB048:  STR             R0, [R5,#0xC4]
1CB04C:  MOV             R0, R8
1CB050:  STR             R6, [R5,#0x78]
1CB054:  STR             R6, [R5,#0x7C]
1CB058:  STR             R6, [R5,#0x84]
1CB05C:  STR             R6, [R5,#0x88]
1CB060:  STR             R6, [R5,#0x90]
1CB064:  STR             R6, [R5,#0x94]
1CB068:  STR             R6, [R5,#0x9C]
1CB06C:  STR             R6, [R5,#0xA0]
1CB070:  STR             R6, [R5,#0xA8]
1CB074:  STR             R6, [R5,#0xAC]
1CB078:  BL              j_NewThunkEntry
1CB07C:  LDR             R1, [R5,R7]
1CB080:  MOV             R4, R0
1CB084:  CMP             R4, #0
1CB088:  BNE             loc_1CB0C4
1CB08C:  LDR             R0, [SP,#0x30+var_2C]
1CB090:  MOV             R2, R5
1CB094:  BL              j_InsertUIntMapEntry
1CB098:  LDR             R1, [R8]
1CB09C:  MOV             R4, R0
1CB0A0:  CMP             R4, #0
1CB0A4:  BNE             loc_1CB0C4
1CB0A8:  LDR             R4, [SP,#0x30+var_24]
1CB0AC:  STR             R1, [R4,R10,LSL#2]
1CB0B0:  ADD             R10, R10, #1
1CB0B4:  LDR             R7, [SP,#0x30+var_30]
1CB0B8:  CMP             R10, R7
1CB0BC:  BLT             loc_1CAF74
1CB0C0:  B               loc_1CAF28
1CB0C4:  MOV             R0, R1
1CB0C8:  BL              j_FreeThunkEntry
1CB0CC:  MOV             R0, R5; ptr
1CB0D0:  BL              free
1CB0D4:  LDR             R0, [SP,#0x30+var_20]
1CB0D8:  MOV             R1, R4
1CB0DC:  BL              j_alSetError
1CB0E0:  LDR             R1, [SP,#0x30+var_24]
1CB0E4:  MOV             R0, R10
1CB0E8:  BL              j_alDeleteSources
1CB0EC:  B               loc_1CAF28
1CB0F0:  LDR             R0, [SP,#0x30+var_20]
1CB0F4:  MOVW            R1, #0xA005
1CB0F8:  BL              j_alSetError
1CB0FC:  MOV             R0, R10
1CB100:  MOV             R1, R4
1CB104:  BL              j_alDeleteSources
1CB108:  B               loc_1CAF28
