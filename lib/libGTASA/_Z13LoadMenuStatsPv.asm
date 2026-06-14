; =========================================================
; Game Engine Function: _Z13LoadMenuStatsPv
; Address            : 0x2AD0B8 - 0x2AD11A
; =========================================================

2AD0B8:  PUSH            {R4,R5,R7,LR}
2AD0BA:  ADD             R7, SP, #8
2AD0BC:  SUB             SP, SP, #8
2AD0BE:  MOV             R4, R0
2AD0C0:  LDR             R0, =(MenuCounts_ptr - 0x2AD0CC)
2AD0C2:  VMOV.I32        Q8, #0
2AD0C6:  ADD             R1, SP, #0x10+ptr; ptr
2AD0C8:  ADD             R0, PC; MenuCounts_ptr
2AD0CA:  MOVS            R2, #4; n
2AD0CC:  LDR             R5, [R0]; MenuCounts
2AD0CE:  ADD.W           R0, R5, #0x5C ; '\'
2AD0D2:  VST1.32         {D16-D17}, [R0]
2AD0D6:  ADD.W           R0, R5, #0x50 ; 'P'
2AD0DA:  VST1.32         {D16-D17}, [R0]
2AD0DE:  ADD.W           R0, R5, #0x40 ; '@'
2AD0E2:  VST1.32         {D16-D17}, [R0]
2AD0E6:  ADD.W           R0, R5, #0x30 ; '0'
2AD0EA:  VST1.32         {D16-D17}, [R0]
2AD0EE:  ADD.W           R0, R5, #0x20 ; ' '
2AD0F2:  VST1.32         {D16-D17}, [R0]
2AD0F6:  MOV             R0, R5
2AD0F8:  VST1.32         {D16-D17}, [R0]!
2AD0FC:  VST1.32         {D16-D17}, [R0]
2AD100:  MOVS            R0, #0x1B
2AD102:  STR             R0, [SP,#0x10+ptr]
2AD104:  MOV             R0, R4; this
2AD106:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
2AD10A:  LDR             R0, [SP,#0x10+ptr]
2AD10C:  MOV             R1, R5; ptr
2AD10E:  LSLS            R2, R0, #2; n
2AD110:  MOV             R0, R4; this
2AD112:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
2AD116:  ADD             SP, SP, #8
2AD118:  POP             {R4,R5,R7,PC}
