; =========================================================
; Game Engine Function: _ZN14CStreamingInfo9GetCdPosnEv
; Address            : 0x2CF500 - 0x2CF518
; =========================================================

2CF500:  LDR             R1, =(_ZN10CStreaming8ms_filesE_ptr - 0x2CF508)
2CF502:  LDRB            R2, [R0,#7]
2CF504:  ADD             R1, PC; _ZN10CStreaming8ms_filesE_ptr
2CF506:  LDR             R0, [R0,#8]
2CF508:  LDR             R1, [R1]; CStreaming::ms_files ...
2CF50A:  ADD.W           R2, R2, R2,LSL#1
2CF50E:  ADD.W           R1, R1, R2,LSL#4
2CF512:  LDR             R1, [R1,#0x2C]
2CF514:  ADD             R0, R1
2CF516:  BX              LR
