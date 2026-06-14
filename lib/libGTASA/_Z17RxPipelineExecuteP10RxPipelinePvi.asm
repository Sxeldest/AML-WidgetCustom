; =========================================================
; Game Engine Function: _Z17RxPipelineExecuteP10RxPipelinePvi
; Address            : 0x1DE8B8 - 0x1DE92E
; =========================================================

1DE8B8:  PUSH            {R4,R5,R7,LR}
1DE8BA:  ADD             R7, SP, #8
1DE8BC:  MOV             R5, R1
1DE8BE:  MOV             R4, R0
1DE8C0:  CBZ             R2, loc_1DE8D4
1DE8C2:  LDR             R0, =(_rxHeapGlobal_ptr - 0x1DE8C8)
1DE8C4:  ADD             R0, PC; _rxHeapGlobal_ptr
1DE8C6:  LDR             R0, [R0]; _rxHeapGlobal
1DE8C8:  LDR             R0, [R0]
1DE8CA:  LDR             R1, [R0,#0x18]
1DE8CC:  CMP             R1, #0
1DE8CE:  IT NE
1DE8D0:  BLXNE           j__Z12_rxHeapResetP6RxHeap; _rxHeapReset(RxHeap *)
1DE8D4:  LDR             R0, =(_rxExecCtxGlobal_ptr - 0x1DE8DC)
1DE8D6:  LDR             R2, =(_rxHeapGlobal_ptr - 0x1DE8DE)
1DE8D8:  ADD             R0, PC; _rxExecCtxGlobal_ptr
1DE8DA:  ADD             R2, PC; _rxHeapGlobal_ptr
1DE8DC:  LDR             R1, [R0]; _rxExecCtxGlobal
1DE8DE:  LDR             R0, [R2]; _rxHeapGlobal
1DE8E0:  MOVS            R2, #1
1DE8E2:  STR             R4, [R1]
1DE8E4:  LDR             R0, [R0]
1DE8E6:  STR             R2, [R1,#(dword_6BCFCC - 0x6BCFC4)]
1DE8E8:  STR             R0, [R1,#(dword_6BCFD8 - 0x6BCFC4)]
1DE8EA:  STR.W           R5, [R1,#(dword_6BCFD4 - 0x6BCFC4)]!
1DE8EE:  MOVS            R5, #0
1DE8F0:  LDR             R0, [R4,#8]
1DE8F2:  STR             R5, [R4,#0x10]
1DE8F4:  LDR             R2, [R0]
1DE8F6:  LDR             R2, [R2,#4]
1DE8F8:  BLX             R2
1DE8FA:  CBNZ            R0, loc_1DE904
1DE8FC:  LDR             R0, =(_rxExecCtxGlobal_ptr - 0x1DE902)
1DE8FE:  ADD             R0, PC; _rxExecCtxGlobal_ptr
1DE900:  LDR             R0, [R0]; _rxExecCtxGlobal
1DE902:  STR             R5, [R0,#(dword_6BCFCC - 0x6BCFC4)]
1DE904:  LDR             R0, [R4,#0x10]
1DE906:  CMP             R0, #2
1DE908:  BLT             loc_1DE914
1DE90A:  LDR             R0, [R4,#0x14]
1DE90C:  MOVS            R1, #2
1DE90E:  STR             R1, [R4,#0x10]
1DE910:  BLX             j__Z16_rxPacketDestroyP8RxPacket; _rxPacketDestroy(RxPacket *)
1DE914:  LDR             R0, =(_rxExecCtxGlobal_ptr - 0x1DE91C)
1DE916:  MOVS            R2, #0
1DE918:  ADD             R0, PC; _rxExecCtxGlobal_ptr
1DE91A:  LDR             R0, [R0]; _rxExecCtxGlobal
1DE91C:  LDR             R1, [R0,#(dword_6BCFCC - 0x6BCFC4)]
1DE91E:  STR             R2, [R0]
1DE920:  CMP             R1, #0
1DE922:  STRD.W          R2, R2, [R0,#(dword_6BCFD4 - 0x6BCFC4)]
1DE926:  IT EQ
1DE928:  MOVEQ           R4, R1
1DE92A:  MOV             R0, R4
1DE92C:  POP             {R4,R5,R7,PC}
