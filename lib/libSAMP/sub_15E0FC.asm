; =========================================================
; Game Engine Function: sub_15E0FC
; Address            : 0x15E0FC - 0x15E13E
; =========================================================

15E0FC:  PUSH            {R4,R5,R7,LR}
15E0FE:  ADD             R7, SP, #8
15E100:  SUB             SP, SP, #8
15E102:  LDR             R0, [R0]
15E104:  MOVS            R4, #0
15E106:  LDR             R5, [R7,#arg_0]
15E108:  STRD.W          R5, R4, [SP,#0x10+var_10]
15E10C:  BLX             j_opus_decode
15E110:  MOV             R4, R0
15E112:  CMP.W           R0, #0xFFFFFFFF
15E116:  ITTT GT
15E118:  MOVGT           R0, R4
15E11A:  ADDGT           SP, SP, #8
15E11C:  POPGT           {R4,R5,R7,PC}
15E11E:  MOVS            R0, #0x18; thrown_size
15E120:  BLX             j___cxa_allocate_exception
15E124:  LDR             R1, =(aOpusDecode_0 - 0x15E12C); "Opus decode" ...
15E126:  MOV             R5, R0
15E128:  ADD             R1, PC; "Opus decode"
15E12A:  MOV             R2, R4
15E12C:  BL              sub_15E154
15E130:  LDR             R1, =(_ZTI19OpusExceptionDecode - 0x15E13A); `typeinfo for'OpusExceptionDecode ...
15E132:  MOV             R0, R5; void *
15E134:  LDR             R2, =(sub_15E16C+1 - 0x15E13C)
15E136:  ADD             R1, PC; lptinfo
15E138:  ADD             R2, PC; sub_15E16C ; void (*)(void *)
15E13A:  BLX             j___cxa_throw
