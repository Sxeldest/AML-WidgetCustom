; =========================================================
; Game Engine Function: sub_116230
; Address            : 0x116230 - 0x116294
; =========================================================

116230:  PUSH            {R4,R5,R7,LR}
116232:  ADD             R7, SP, #8
116234:  MOV             R4, R0
116236:  LDR             R0, =(byte_263520 - 0x11623C)
116238:  ADD             R0, PC; byte_263520
11623A:  LDRB            R0, [R0]
11623C:  DMB.W           ISH
116240:  LDR             R5, =(off_26351C - 0x116246)
116242:  ADD             R5, PC; off_26351C
116244:  LSLS            R0, R0, #0x1F
116246:  BEQ             loc_11626A
116248:  LDR             R2, [R5]
11624A:  MOVS            R0, #0
11624C:  MOVS            R1, #0
11624E:  BLX             R2
116250:  VMOV.F32        S0, #0.75
116254:  VLDR            S2, [R4,#4]
116258:  CMP             R0, #0
11625A:  VMUL.F32        S0, S2, S0
11625E:  IT EQ
116260:  VMOVEQ.F32      S0, S2
116264:  VMOV            R0, S0
116268:  POP             {R4,R5,R7,PC}
11626A:  LDR             R0, =(byte_263520 - 0x116270)
11626C:  ADD             R0, PC; byte_263520 ; __guard *
11626E:  BLX             j___cxa_guard_acquire
116272:  CMP             R0, #0
116274:  BEQ             loc_116248
116276:  LDR             R0, =(off_23494C - 0x116284)
116278:  MOV             R2, #0x40B531
116280:  ADD             R0, PC; off_23494C
116282:  LDR             R1, [R0]; dword_23DF24
116284:  LDR             R0, =(byte_263520 - 0x11628C)
116286:  LDR             R1, [R1]
116288:  ADD             R0, PC; byte_263520 ; __guard *
11628A:  ADD             R1, R2
11628C:  STR             R1, [R5]
11628E:  BLX             j___cxa_guard_release
116292:  B               loc_116248
