; =========================================================
; Game Engine Function: sub_15E350
; Address            : 0x15E350 - 0x15E38E
; =========================================================

15E350:  PUSH            {R4,R5,R7,LR}
15E352:  ADD             R7, SP, #8
15E354:  SUB             SP, SP, #8
15E356:  LDR             R0, [R0]
15E358:  LDR             R5, [R7,#arg_0]
15E35A:  STR             R5, [SP,#0x10+var_10]
15E35C:  BLX             j_opus_encode
15E360:  MOV             R4, R0
15E362:  CMP.W           R0, #0xFFFFFFFF
15E366:  ITTT GT
15E368:  MOVGT           R0, R4
15E36A:  ADDGT           SP, SP, #8
15E36C:  POPGT           {R4,R5,R7,PC}
15E36E:  MOVS            R0, #0x18; thrown_size
15E370:  BLX             j___cxa_allocate_exception
15E374:  LDR             R1, =(aOpusEncode_0 - 0x15E37C); "Opus encode" ...
15E376:  MOV             R5, R0
15E378:  ADD             R1, PC; "Opus encode"
15E37A:  MOV             R2, R4
15E37C:  BL              sub_15E3A4
15E380:  LDR             R1, =(_ZTI19OpusExceptionEncode - 0x15E38A); `typeinfo for'OpusExceptionEncode ...
15E382:  MOV             R0, R5; void *
15E384:  LDR             R2, =(sub_15E16C+1 - 0x15E38C)
15E386:  ADD             R1, PC; lptinfo
15E388:  ADD             R2, PC; sub_15E16C ; void (*)(void *)
15E38A:  BLX             j___cxa_throw
