; =========================================================
; Game Engine Function: _Z22GetPedAttractorManagerv
; Address            : 0x4A95B4 - 0x4A9612
; =========================================================

4A95B4:  LDR             R0, =(dword_9EE2D4 - 0x4A95BA)
4A95B6:  ADD             R0, PC; dword_9EE2D4
4A95B8:  LDR             R0, [R0]
4A95BA:  CMP             R0, #0
4A95BC:  IT NE
4A95BE:  BXNE            LR
4A95C0:  PUSH            {R7,LR}
4A95C2:  MOV             R7, SP
4A95C4:  MOVS            R0, #0x78 ; 'x'; unsigned int
4A95C6:  BLX             _Znwj; operator new(uint)
4A95CA:  MOVS            R2, #0
4A95CC:  VMOV.I32        Q8, #0
4A95D0:  STRD.W          R2, R2, [R0,#0x70]
4A95D4:  ADD.W           R2, R0, #0x60 ; '`'
4A95D8:  LDR             R1, =(dword_9EE2D4 - 0x4A95E6)
4A95DA:  VST1.32         {D16-D17}, [R2]
4A95DE:  ADD.W           R2, R0, #0x50 ; 'P'
4A95E2:  ADD             R1, PC; dword_9EE2D4
4A95E4:  VST1.32         {D16-D17}, [R2]
4A95E8:  ADD.W           R2, R0, #0x40 ; '@'
4A95EC:  VST1.32         {D16-D17}, [R2]
4A95F0:  ADD.W           R2, R0, #0x30 ; '0'
4A95F4:  VST1.32         {D16-D17}, [R2]
4A95F8:  ADD.W           R2, R0, #0x20 ; ' '
4A95FC:  VST1.32         {D16-D17}, [R2]
4A9600:  MOV             R2, R0
4A9602:  VST1.32         {D16-D17}, [R2]!
4A9606:  VST1.32         {D16-D17}, [R2]
4A960A:  STR             R0, [R1]
4A960C:  POP.W           {R7,LR}
4A9610:  BX              LR
