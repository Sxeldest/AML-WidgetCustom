; =========================================================
; Game Engine Function: sub_10B0E4
; Address            : 0x10B0E4 - 0x10B1D4
; =========================================================

10B0E4:  PUSH            {R4-R7,R11,LR}
10B0E8:  ADD             R11, SP, #0x10
10B0EC:  MOV             R5, R0
10B0F0:  BIC             R0, R1, #0xF
10B0F4:  MOV             R7, R3
10B0F8:  MOV             R6, R2
10B0FC:  MOV             R4, R1
10B100:  CMP             R0, #0x110
10B104:  BEQ             loc_10B12C
10B108:  CMP             R0, #0x100
10B10C:  BNE             loc_10B19C
10B110:  LDRB            R0, [R5,#0x4D]
10B114:  CMP             R0, #0
10B118:  BEQ             loc_10B15C
10B11C:  ADD             R0, R5, R4,LSL#3
10B120:  SUB             R0, R0, #0x7B0
10B124:  STRD            R6, R7, [R0]
10B128:  POP             {R4-R7,R11,PC}
10B12C:  LDRB            R0, [R5,#0x4E]
10B130:  CMP             R0, #0
10B134:  BNE             loc_10B148
10B138:  MOV             R0, #1
10B13C:  STRB            R0, [R5,#0x4E]
10B140:  ADD             R0, R5, #0xD8
10B144:  BL              sub_10C138
10B148:  ADD             R0, R5, R4,LSL#3
10B14C:  MOVW            R1, #0x7A8
10B150:  SUB             R0, R0, R1
10B154:  STRD            R6, R7, [R0]
10B158:  POP             {R4-R7,R11,PC}
10B15C:  MOV             R0, #1
10B160:  LDRB            R1, [R5,#0x4C]
10B164:  STRB            R0, [R5,#0x4D]
10B168:  ADD             R0, R5, #0x50 ; 'P'
10B16C:  CMP             R1, #0
10B170:  BEQ             loc_10B188
10B174:  BL              sub_10C130
10B178:  ADD             R0, R5, R4,LSL#3
10B17C:  SUB             R0, R0, #0x7B0
10B180:  STRD            R6, R7, [R0]
10B184:  POP             {R4-R7,R11,PC}
10B188:  BL              sub_10C128
10B18C:  ADD             R0, R5, R4,LSL#3
10B190:  SUB             R0, R0, #0x7B0
10B194:  STRD            R6, R7, [R0]
10B198:  POP             {R4-R7,R11,PC}
10B19C:  LDR             R1, =(aLibunwindSS - 0x10B1B0); "libunwind: %s - %s\n" ...
10B1A0:  LDR             R2, =(aSetfloatregist - 0x10B1B8); "setFloatRegister" ...
10B1A4:  LDR             R3, =(aUnknownArmFloa - 0x10B1BC); "Unknown ARM float register" ...
10B1A8:  ADD             R1, PC, R1; "libunwind: %s - %s\n"
10B1AC:  LDR             R0, =(__sF_ptr - 0x10B1C0)
10B1B0:  ADD             R2, PC, R2; "setFloatRegister"
10B1B4:  ADD             R3, PC, R3; "Unknown ARM float register"
10B1B8:  LDR             R0, [PC,R0]; __sF
10B1BC:  ADD             R4, R0, #0xA8
10B1C0:  MOV             R0, R4; stream
10B1C4:  BL              fprintf
10B1C8:  MOV             R0, R4; stream
10B1CC:  BL              fflush
10B1D0:  BL              abort
