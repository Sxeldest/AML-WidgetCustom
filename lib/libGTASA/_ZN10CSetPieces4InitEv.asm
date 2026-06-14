; =========================================================
; Game Engine Function: _ZN10CSetPieces4InitEv
; Address            : 0x35E350 - 0x35E364
; =========================================================

35E350:  LDR             R0, =(_ZN10CSetPieces6bDebugE_ptr - 0x35E35A)
35E352:  MOVS            R2, #0
35E354:  LDR             R1, =(_ZN10CSetPieces12NumSetPiecesE_ptr - 0x35E35C)
35E356:  ADD             R0, PC; _ZN10CSetPieces6bDebugE_ptr
35E358:  ADD             R1, PC; _ZN10CSetPieces12NumSetPiecesE_ptr
35E35A:  LDR             R0, [R0]; CSetPieces::bDebug ...
35E35C:  LDR             R1, [R1]; CSetPieces::NumSetPieces ...
35E35E:  STRB            R2, [R0]; CSetPieces::bDebug
35E360:  STR             R2, [R1]; CSetPieces::NumSetPieces
35E362:  BX              LR
