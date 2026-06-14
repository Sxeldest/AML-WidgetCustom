; =========================================================
; Game Engine Function: _Z13SaveMenuStatsPv
; Address            : 0x2AD054 - 0x2AD0B4
; =========================================================

2AD054:  PUSH            {R4,R5,R7,LR}
2AD056:  ADD             R7, SP, #8
2AD058:  SUB             SP, SP, #8
2AD05A:  MOV             R4, R0
2AD05C:  LDR             R0, =(MenuCounts_ptr - 0x2AD068)
2AD05E:  VMOV.I32        Q8, #0
2AD062:  ADD             R1, SP, #0x10+ptr; ptr
2AD064:  ADD             R0, PC; MenuCounts_ptr
2AD066:  MOVS            R2, #4; int
2AD068:  LDR             R5, [R0]; MenuCounts
2AD06A:  ADD.W           R0, R5, #0x5C ; '\'
2AD06E:  VST1.32         {D16-D17}, [R0]
2AD072:  ADD.W           R0, R5, #0x50 ; 'P'
2AD076:  VST1.32         {D16-D17}, [R0]
2AD07A:  ADD.W           R0, R5, #0x40 ; '@'
2AD07E:  VST1.32         {D16-D17}, [R0]
2AD082:  ADD.W           R0, R5, #0x30 ; '0'
2AD086:  VST1.32         {D16-D17}, [R0]
2AD08A:  ADD.W           R0, R5, #0x20 ; ' '
2AD08E:  VST1.32         {D16-D17}, [R0]
2AD092:  MOV             R0, R5
2AD094:  VST1.32         {D16-D17}, [R0]!
2AD098:  VST1.32         {D16-D17}, [R0]
2AD09C:  MOVS            R0, #0x1B
2AD09E:  STR             R0, [SP,#0x10+ptr]
2AD0A0:  MOV             R0, R4; void *
2AD0A2:  BLX             j__Z12OS_FileWritePvPKvi; OS_FileWrite(void *,void const*,int)
2AD0A6:  MOV             R0, R4; void *
2AD0A8:  MOV             R1, R5; ptr
2AD0AA:  MOVS            R2, #0x6C ; 'l'; int
2AD0AC:  BLX             j__Z12OS_FileWritePvPKvi; OS_FileWrite(void *,void const*,int)
2AD0B0:  ADD             SP, SP, #8
2AD0B2:  POP             {R4,R5,R7,PC}
