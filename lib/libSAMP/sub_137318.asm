; =========================================================
; Game Engine Function: sub_137318
; Address            : 0x137318 - 0x13732A
; =========================================================

137318:  LDR             R2, =(_ZTSZN5SpawnC1EvE3$_1 - 0x137322); type descriptor name
13731A:  LDR             R3, [R1,#4]
13731C:  MOVS            R1, #0
13731E:  ADD             R2, PC; type descriptor name
137320:  CMP             R3, R2
137322:  IT EQ
137324:  ADDEQ           R1, R0, #4
137326:  MOV             R0, R1
137328:  BX              LR
