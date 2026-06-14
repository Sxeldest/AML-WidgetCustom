; =========================================================
; Game Engine Function: sub_21D14C
; Address            : 0x21D14C - 0x21D1E2
; =========================================================

21D14C:  PUSH            {R4-R7,LR}
21D14E:  ADD             R7, SP, #0xC
21D150:  PUSH.W          {R8,R9,R11}
21D154:  LDR             R1, =(aTs - 0x21D15C); "Ts" ...
21D156:  MOV             R4, R0
21D158:  ADD             R1, PC; "Ts"
21D15A:  ADDS            R2, R1, #2
21D15C:  BL              sub_2155E4
21D160:  CBZ             R0, loc_21D16C
21D162:  LDR             R0, =(aStruct - 0x21D168); "struct" ...
21D164:  ADD             R0, PC; "struct"
21D166:  ADD.W           R8, R0, #6
21D16A:  B               loc_21D19A
21D16C:  LDR             R1, =(aTu - 0x21D174); "Tu" ...
21D16E:  MOV             R0, R4
21D170:  ADD             R1, PC; "Tu"
21D172:  ADDS            R2, R1, #2
21D174:  BL              sub_2155E4
21D178:  CBZ             R0, loc_21D184
21D17A:  LDR             R0, =(aUnion - 0x21D180); "union" ...
21D17C:  ADD             R0, PC; "union"
21D17E:  ADD.W           R8, R0, #5
21D182:  B               loc_21D19A
21D184:  LDR             R1, =(aTe - 0x21D18C); "Te" ...
21D186:  MOV             R0, R4
21D188:  ADD             R1, PC; "Te"
21D18A:  ADDS            R2, R1, #2
21D18C:  BL              sub_2155E4
21D190:  CBZ             R0, loc_21D1D8
21D192:  LDR             R0, =(aEnum - 0x21D198); "enum" ...
21D194:  ADD             R0, PC; "enum"
21D196:  ADD.W           R8, R0, #4
21D19A:  MOV             R9, R0
21D19C:  MOV             R0, R4
21D19E:  MOVS            R1, #0
21D1A0:  MOVS            R5, #0
21D1A2:  BL              sub_216710
21D1A6:  CBZ             R0, loc_21D1D0
21D1A8:  MOV             R6, R0
21D1AA:  CMP             R9, R8
21D1AC:  BEQ             loc_21D1CE
21D1AE:  ADD.W           R0, R4, #0x198
21D1B2:  MOVS            R1, #0x14
21D1B4:  BL              sub_216EF0
21D1B8:  MOV             R5, R0
21D1BA:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle22ElaboratedTypeSpefTypeE - 0x21D1C2); `vtable for'`anonymous namespace'::itanium_demangle::ElaboratedTypeSpefType ...
21D1BC:  LDR             R0, =0x1010106
21D1BE:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::ElaboratedTypeSpefType
21D1C0:  STRD.W          R9, R8, [R5,#8]
21D1C4:  ADDS            R1, #8
21D1C6:  STR             R6, [R5,#0x10]
21D1C8:  STRD.W          R1, R0, [R5]
21D1CC:  B               loc_21D1D0
21D1CE:  MOV             R5, R6
21D1D0:  MOV             R0, R5
21D1D2:  POP.W           {R8,R9,R11}
21D1D6:  POP             {R4-R7,PC}
21D1D8:  MOV.W           R9, #0
21D1DC:  MOV.W           R8, #0
21D1E0:  B               loc_21D19C
