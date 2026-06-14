; =========================================================
; Game Engine Function: _ZN10CStreaming28WeAreTryingToPhaseVehicleOutEi
; Address            : 0x2D8C10 - 0x2D8C58
; =========================================================

2D8C10:  LDR             R1, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D8C1A)
2D8C12:  ADD.W           R0, R0, R0,LSL#2
2D8C16:  ADD             R1, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D8C18:  LDR             R1, [R1]; CStreaming::ms_aInfoForModel ...
2D8C1A:  ADD.W           R1, R1, R0,LSL#2
2D8C1E:  LDRB            R1, [R1,#0x10]
2D8C20:  CMP             R1, #1
2D8C22:  ITT NE
2D8C24:  MOVNE           R0, #0
2D8C26:  BXNE            LR
2D8C28:  LDR             R1, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D8C2E)
2D8C2A:  ADD             R1, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D8C2C:  LDR             R1, [R1]; CStreaming::ms_aInfoForModel ...
2D8C2E:  LDRSH.W         R1, [R1,R0,LSL#2]
2D8C32:  CMP.W           R1, #0xFFFFFFFF
2D8C36:  ITT GT
2D8C38:  MOVGT           R0, #1
2D8C3A:  BXGT            LR
2D8C3C:  LDR             R2, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D8C46)
2D8C3E:  MOV.W           R1, #0xFFFFFFFF
2D8C42:  ADD             R2, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D8C44:  LDR             R2, [R2]; CStreaming::ms_aInfoForModel ...
2D8C46:  ADD.W           R0, R2, R0,LSL#2
2D8C4A:  LDRSH.W         R2, [R0,#2]
2D8C4E:  MOVS            R0, #0
2D8C50:  CMP             R2, R1
2D8C52:  IT GT
2D8C54:  MOVGT           R0, #1
2D8C56:  BX              LR
