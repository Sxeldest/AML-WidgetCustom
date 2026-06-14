; =========================================================
; Game Engine Function: sub_21B304
; Address            : 0x21B304 - 0x21B344
; =========================================================

21B304:  PUSH            {R4,R5,R7,LR}
21B306:  ADD             R7, SP, #8
21B308:  MOV             R5, R0
21B30A:  LDRB            R0, [R0,#0xC]
21B30C:  MOV             R4, R1
21B30E:  CBZ             R0, loc_21B31C
21B310:  LDR             R1, =(asc_8B736 - 0x21B318); "::" ...
21B312:  MOV             R0, R4
21B314:  ADD             R1, PC; "::"
21B316:  ADDS            R2, R1, #2
21B318:  BL              sub_216F98
21B31C:  LDR             R1, =(aDelete - 0x21B324); "delete" ...
21B31E:  MOV             R0, R4
21B320:  ADD             R1, PC; "delete"
21B322:  ADDS            R2, R1, #6
21B324:  BL              sub_216F98
21B328:  LDRB            R0, [R5,#0xD]
21B32A:  CBZ             R0, loc_21B338
21B32C:  LDR             R1, =(asc_88E75 - 0x21B334); "[] " ...
21B32E:  MOV             R0, R4
21B330:  ADD             R1, PC; "[] "
21B332:  ADDS            R2, R1, #3
21B334:  BL              sub_216F98
21B338:  LDR             R0, [R5,#8]
21B33A:  MOV             R1, R4
21B33C:  POP.W           {R4,R5,R7,LR}
21B340:  B.W             sub_2154CC
