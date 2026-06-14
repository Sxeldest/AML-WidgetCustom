; =========================================================
; Game Engine Function: _ZNK8CVehicle15IsVehicleNormalEv
; Address            : 0x585418 - 0x585450
; =========================================================

585418:  LDR.W           R1, [R0,#0x464]
58541C:  CBZ             R1, loc_585430
58541E:  LDRB.W          R1, [R0,#0x488]
585422:  CBNZ            R1, loc_585430
585424:  LDRB.W          R1, [R0,#0x3A]
585428:  AND.W           R1, R1, #0xF8
58542C:  CMP             R1, #0x28 ; '('
58542E:  BNE             loc_585434
585430:  MOVS            R0, #0
585432:  BX              LR
585434:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x58543E)
585436:  LDRSH.W         R0, [R0,#0x26]
58543A:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
58543C:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
58543E:  LDR.W           R0, [R1,R0,LSL#2]
585442:  LDRB.W          R1, [R0,#0x65]
585446:  MOVS            R0, #0
585448:  CMP             R1, #0xFF
58544A:  IT NE
58544C:  MOVNE           R0, #1
58544E:  BX              LR
