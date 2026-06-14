; =========================================================
; Game Engine Function: sub_15E40C
; Address            : 0x15E40C - 0x15E452
; =========================================================

15E40C:  PUSH            {R4,R6,R7,LR}
15E40E:  ADD             R7, SP, #8
15E410:  SUB             SP, SP, #8
15E412:  MOVS            R3, #0
15E414:  CMP             R2, #0
15E416:  STR             R3, [SP,#0x10+var_10]
15E418:  MOV.W           R3, #0xFFFFFFFF
15E41C:  ITT NE
15E41E:  MOVNE           R1, #1
15E420:  MOVNE           R2, #8
15E422:  BL              sub_164A80
15E426:  CBZ             R0, loc_15E42C
15E428:  ADD             SP, SP, #8
15E42A:  POP             {R4,R6,R7,PC}
15E42C:  MOVS            R0, #0x18; thrown_size
15E42E:  BLX             j___cxa_allocate_exception
15E432:  MOV             R4, R0
15E434:  BL              sub_1649EC
15E438:  LDR             R1, =(aCreateVoiceStr - 0x15E440); "Create voice stream" ...
15E43A:  MOV             R2, R0
15E43C:  ADD             R1, PC; "Create voice stream"
15E43E:  MOV             R0, R4
15E440:  BL              sub_1545C8
15E444:  LDR             R1, =(_ZTI13BassException - 0x15E44E); `typeinfo for'BassException ...
15E446:  MOV             R0, R4; void *
15E448:  LDR             R2, =(sub_15466C+1 - 0x15E450)
15E44A:  ADD             R1, PC; lptinfo
15E44C:  ADD             R2, PC; sub_15466C ; void (*)(void *)
15E44E:  BLX             j___cxa_throw
