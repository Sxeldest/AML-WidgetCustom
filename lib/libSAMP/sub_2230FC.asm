; =========================================================
; Game Engine Function: sub_2230FC
; Address            : 0x2230FC - 0x2231E4
; =========================================================

2230FC:  PUSH            {R4,R5,R11,LR}
223100:  ADD             R11, SP, #8
223104:  MOV             R5, R0
223108:  BIC             R0, R1, #0xF
22310C:  MOV             R4, R1
223110:  CMP             R0, #0x110
223114:  BEQ             loc_22313C
223118:  CMP             R0, #0x100
22311C:  BNE             loc_2231AC
223120:  LDRB            R0, [R5,#0x4D]
223124:  CMP             R0, #0
223128:  BEQ             loc_22316C
22312C:  ADD             R0, R5, R4,LSL#3
223130:  SUB             R0, R0, #0x7B0
223134:  LDRD            R0, R1, [R0]
223138:  POP             {R4,R5,R11,PC}
22313C:  LDRB            R0, [R5,#0x4E]
223140:  CMP             R0, #0
223144:  BNE             loc_223158
223148:  MOV             R0, #1
22314C:  STRB            R0, [R5,#0x4E]
223150:  ADD             R0, R5, #0xD8
223154:  BL              sub_224248
223158:  ADD             R0, R5, R4,LSL#3
22315C:  MOVW            R1, #0x7A8
223160:  SUB             R0, R0, R1
223164:  LDRD            R0, R1, [R0]
223168:  POP             {R4,R5,R11,PC}
22316C:  MOV             R0, #1
223170:  LDRB            R1, [R5,#0x4C]
223174:  STRB            R0, [R5,#0x4D]
223178:  ADD             R0, R5, #0x50 ; 'P'
22317C:  CMP             R1, #0
223180:  BEQ             loc_223198
223184:  BL              sub_224240
223188:  ADD             R0, R5, R4,LSL#3
22318C:  SUB             R0, R0, #0x7B0
223190:  LDRD            R0, R1, [R0]
223194:  POP             {R4,R5,R11,PC}
223198:  BL              sub_224238
22319C:  ADD             R0, R5, R4,LSL#3
2231A0:  SUB             R0, R0, #0x7B0
2231A4:  LDRD            R0, R1, [R0]
2231A8:  POP             {R4,R5,R11,PC}
2231AC:  LDR             R1, =(aLibunwindSS - 0x2231C0); "libunwind: %s - %s\n" ...
2231B0:  LDR             R2, =(aGetfloatregist - 0x2231C8); "getFloatRegister" ...
2231B4:  LDR             R3, =(aUnknownArmFloa - 0x2231CC); "Unknown ARM float register" ...
2231B8:  ADD             R1, PC, R1; "libunwind: %s - %s\n"
2231BC:  LDR             R0, =(__sF_ptr - 0x2231D0)
2231C0:  ADD             R2, PC, R2; "getFloatRegister"
2231C4:  ADD             R3, PC, R3; "Unknown ARM float register"
2231C8:  LDR             R0, [PC,R0]; __sF
2231CC:  ADD             R4, R0, #0xA8
2231D0:  MOV             R0, R4; stream
2231D4:  BL              fprintf
2231D8:  MOV             R0, R4; stream
2231DC:  BL              fflush
2231E0:  BL              abort
