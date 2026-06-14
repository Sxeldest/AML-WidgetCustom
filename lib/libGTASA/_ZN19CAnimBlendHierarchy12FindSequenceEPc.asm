; =========================================================
; Game Engine Function: _ZN19CAnimBlendHierarchy12FindSequenceEPc
; Address            : 0x38A25C - 0x38A28E
; =========================================================

38A25C:  PUSH            {R4,R6,R7,LR}
38A25E:  ADD             R7, SP, #8
38A260:  MOV             R4, R0
38A262:  MOV             R0, R1; this
38A264:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
38A268:  LDRSH.W         R2, [R4,#8]
38A26C:  MOV             R1, R0
38A26E:  CMP             R2, #1
38A270:  BLT             loc_38A288
38A272:  LDR             R0, [R4,#4]
38A274:  MOVS            R3, #0
38A276:  LDR             R4, [R0]
38A278:  CMP             R4, R1
38A27A:  BEQ             locret_38A28C
38A27C:  ADDS            R3, #1
38A27E:  ADDS            R0, #0xC
38A280:  CMP             R3, R2
38A282:  BLT             loc_38A276
38A284:  MOVS            R0, #0
38A286:  POP             {R4,R6,R7,PC}
38A288:  MOVS            R0, #0
38A28A:  POP             {R4,R6,R7,PC}
38A28C:  POP             {R4,R6,R7,PC}
