; =========================================================
; Game Engine Function: sub_1E2230
; Address            : 0x1E2230 - 0x1E22A4
; =========================================================

1E2230:  PUSH            {R4-R6,R10,R11,LR}
1E2234:  ADD             R11, SP, #0x10
1E2238:  MOV             R5, R1
1E223C:  MOV             R4, R0
1E2240:  CMP             R5, #0
1E2244:  BEQ             loc_1E226C
1E2248:  LDR             R0, =(aNoOutput - 0x1E2254); "No Output" ...
1E224C:  ADD             R1, PC, R0; "No Output"
1E2250:  MOV             R0, R5; s1
1E2254:  BL              strcmp
1E2258:  MOV             R1, R0
1E225C:  MOVW            R0, #0xA004
1E2260:  CMP             R1, #0
1E2264:  POPNE           {R4-R6,R10,R11,PC}
1E2268:  B               loc_1E2274
1E226C:  LDR             R0, =(aNoOutput - 0x1E2278); "No Output" ...
1E2270:  ADD             R5, PC, R0; "No Output"
1E2274:  MOV             R0, #1; nmemb
1E2278:  MOV             R1, #8; size
1E227C:  BL              calloc
1E2280:  MOV             R6, R0
1E2284:  MOV             R0, R5; s
1E2288:  BL              strdup
1E228C:  MOV             R1, #0x28958
1E2294:  STR             R6, [R4,R1]
1E2298:  STR             R0, [R4,#0x20]
1E229C:  MOV             R0, #0
1E22A0:  POP             {R4-R6,R10,R11,PC}
