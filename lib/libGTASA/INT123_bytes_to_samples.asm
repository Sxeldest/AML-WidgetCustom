; =========================================================
; Game Engine Function: INT123_bytes_to_samples
; Address            : 0x225200 - 0x225222
; =========================================================

225200:  PUSH            {R4,R6,R7,LR}
225202:  ADD             R7, SP, #8
225204:  MOV             R4, R0
225206:  MOVW            R0, #0xB2B4
22520A:  LDR             R2, [R4,R0]
22520C:  MOV             R0, R1
22520E:  MOV             R1, R2
225210:  BLX             __aeabi_idiv
225214:  MOVW            R1, #0xB2B8
225218:  LDR             R1, [R4,R1]
22521A:  POP.W           {R4,R6,R7,LR}
22521E:  B.W             j___aeabi_idiv
