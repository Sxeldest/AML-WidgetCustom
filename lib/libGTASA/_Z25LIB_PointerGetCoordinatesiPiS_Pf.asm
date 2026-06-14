; =========================================================
; Game Engine Function: _Z25LIB_PointerGetCoordinatesiPiS_Pf
; Address            : 0x270128 - 0x270168
; =========================================================

270128:  PUSH            {R7,LR}
27012A:  MOV             R7, SP
27012C:  CMP             R0, #3
27012E:  ITT GT
270130:  MOVGT           R0, #0
270132:  POPGT           {R7,PC}
270134:  LDR.W           R12, =(pointers_ptr - 0x270142)
270138:  RSB.W           LR, R0, R0,LSL#3
27013C:  CMP             R3, #0
27013E:  ADD             R12, PC; pointers_ptr
270140:  LDR.W           R12, [R12]; pointers
270144:  ADD.W           R12, R12, LR,LSL#4
270148:  LDR.W           R0, [R12,#0xC]
27014C:  STR             R0, [R1]
27014E:  LDR.W           R0, [R12,#0x10]
270152:  STR             R0, [R2]
270154:  BEQ             loc_270164
270156:  LDR             R0, =(pointers_ptr - 0x27015C)
270158:  ADD             R0, PC; pointers_ptr
27015A:  LDR             R0, [R0]; pointers
27015C:  ADD.W           R0, R0, LR,LSL#4
270160:  LDR             R0, [R0,#0x14]
270162:  STR             R0, [R3]
270164:  MOVS            R0, #1
270166:  POP             {R7,PC}
