; =========================================================
; Game Engine Function: StopThread
; Address            : 0x252B92 - 0x252BAC
; =========================================================

252B92:  PUSH            {R4,R5,R7,LR}
252B94:  ADD             R7, SP, #8
252B96:  MOV             R4, R0
252B98:  MOVS            R1, #0; thread_return
252B9A:  LDR             R0, [R4,#0xC]; th
252B9C:  BLX             pthread_join
252BA0:  MOV             R0, R4; p
252BA2:  LDR             R5, [R4,#8]
252BA4:  BLX             free
252BA8:  MOV             R0, R5
252BAA:  POP             {R4,R5,R7,PC}
