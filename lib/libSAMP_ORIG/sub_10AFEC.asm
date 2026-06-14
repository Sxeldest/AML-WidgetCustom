; =========================================================
; Game Engine Function: sub_10AFEC
; Address            : 0x10AFEC - 0x10B0D4
; =========================================================

10AFEC:  PUSH            {R4,R5,R11,LR}
10AFF0:  ADD             R11, SP, #8
10AFF4:  MOV             R5, R0
10AFF8:  BIC             R0, R1, #0xF
10AFFC:  MOV             R4, R1
10B000:  CMP             R0, #0x110
10B004:  BEQ             loc_10B02C
10B008:  CMP             R0, #0x100
10B00C:  BNE             loc_10B09C
10B010:  LDRB            R0, [R5,#0x4D]
10B014:  CMP             R0, #0
10B018:  BEQ             loc_10B05C
10B01C:  ADD             R0, R5, R4,LSL#3
10B020:  SUB             R0, R0, #0x7B0
10B024:  LDRD            R0, R1, [R0]
10B028:  POP             {R4,R5,R11,PC}
10B02C:  LDRB            R0, [R5,#0x4E]
10B030:  CMP             R0, #0
10B034:  BNE             loc_10B048
10B038:  MOV             R0, #1
10B03C:  STRB            R0, [R5,#0x4E]
10B040:  ADD             R0, R5, #0xD8
10B044:  BL              sub_10C138
10B048:  ADD             R0, R5, R4,LSL#3
10B04C:  MOVW            R1, #0x7A8
10B050:  SUB             R0, R0, R1
10B054:  LDRD            R0, R1, [R0]
10B058:  POP             {R4,R5,R11,PC}
10B05C:  MOV             R0, #1
10B060:  LDRB            R1, [R5,#0x4C]
10B064:  STRB            R0, [R5,#0x4D]
10B068:  ADD             R0, R5, #0x50 ; 'P'
10B06C:  CMP             R1, #0
10B070:  BEQ             loc_10B088
10B074:  BL              sub_10C130
10B078:  ADD             R0, R5, R4,LSL#3
10B07C:  SUB             R0, R0, #0x7B0
10B080:  LDRD            R0, R1, [R0]
10B084:  POP             {R4,R5,R11,PC}
10B088:  BL              sub_10C128
10B08C:  ADD             R0, R5, R4,LSL#3
10B090:  SUB             R0, R0, #0x7B0
10B094:  LDRD            R0, R1, [R0]
10B098:  POP             {R4,R5,R11,PC}
10B09C:  LDR             R1, =(aLibunwindSS - 0x10B0B0); "libunwind: %s - %s\n" ...
10B0A0:  LDR             R2, =(aGetfloatregist - 0x10B0B8); "getFloatRegister" ...
10B0A4:  LDR             R3, =(aUnknownArmFloa - 0x10B0BC); "Unknown ARM float register" ...
10B0A8:  ADD             R1, PC, R1; "libunwind: %s - %s\n"
10B0AC:  LDR             R0, =(__sF_ptr - 0x10B0C0)
10B0B0:  ADD             R2, PC, R2; "getFloatRegister"
10B0B4:  ADD             R3, PC, R3; "Unknown ARM float register"
10B0B8:  LDR             R0, [PC,R0]; __sF
10B0BC:  ADD             R4, R0, #0xA8
10B0C0:  MOV             R0, R4; stream
10B0C4:  BL              fprintf
10B0C8:  MOV             R0, R4; stream
10B0CC:  BL              fflush
10B0D0:  BL              abort
