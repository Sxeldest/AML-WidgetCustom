; =========================================================
; Game Engine Function: sub_15E264
; Address            : 0x15E264 - 0x15E2B0
; =========================================================

15E264:  PUSH            {R4,R6,R7,LR}
15E266:  ADD             R7, SP, #8
15E268:  SUB             SP, SP, #8
15E26A:  MOV             R4, R0
15E26C:  MOVS            R0, #0
15E26E:  ADD             R3, SP, #0x10+var_C
15E270:  STR             R0, [R4,#8]
15E272:  MOV             R0, R1
15E274:  MOV             R1, R2
15E276:  MOV.W           R2, #0x800
15E27A:  BLX             j_opus_encoder_create
15E27E:  LDR             R1, [SP,#0x10+var_C]
15E280:  STR             R0, [R4]
15E282:  CBNZ            R1, loc_15E290
15E284:  BLX             j_opus_repacketizer_create
15E288:  STR             R0, [R4,#4]
15E28A:  MOV             R0, R4
15E28C:  ADD             SP, SP, #8
15E28E:  POP             {R4,R6,R7,PC}
15E290:  MOVS            R0, #0x18; thrown_size
15E292:  BLX             j___cxa_allocate_exception
15E296:  LDR             R1, =(aOpusCreateEnco - 0x15E2A0); "Opus create encoder" ...
15E298:  MOV             R4, R0
15E29A:  LDR             R2, [SP,#0x10+var_C]
15E29C:  ADD             R1, PC; "Opus create encoder"
15E29E:  BL              sub_15E044
15E2A2:  LDR             R1, =(_ZTI13OpusException - 0x15E2AC); `typeinfo for'OpusException ...
15E2A4:  MOV             R0, R4; void *
15E2A6:  LDR             R2, =(sub_15E16C+1 - 0x15E2AE)
15E2A8:  ADD             R1, PC; lptinfo
15E2AA:  ADD             R2, PC; sub_15E16C ; void (*)(void *)
15E2AC:  BLX             j___cxa_throw
