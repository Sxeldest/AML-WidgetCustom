; =========================================================
; Game Engine Function: _ZN4CPad17ClearMouseHistoryEv
; Address            : 0x3F8314 - 0x3F833C
; =========================================================

3F8314:  LDR             R0, =(_ZN4CPad26PCTempMouseControllerStateE_ptr - 0x3F8320)
3F8316:  MOVS            R3, #0
3F8318:  LDR             R1, =(_ZN4CPad23OldMouseControllerStateE_ptr - 0x3F8322)
3F831A:  LDR             R2, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x3F8324)
3F831C:  ADD             R0, PC; _ZN4CPad26PCTempMouseControllerStateE_ptr
3F831E:  ADD             R1, PC; _ZN4CPad23OldMouseControllerStateE_ptr
3F8320:  ADD             R2, PC; _ZN4CPad23NewMouseControllerStateE_ptr
3F8322:  LDR             R0, [R0]; CPad::PCTempMouseControllerState ...
3F8324:  LDR             R1, [R1]; CPad::OldMouseControllerState ...
3F8326:  LDR             R2, [R2]; CPad::NewMouseControllerState ...
3F8328:  STRB            R3, [R0,#(byte_959AE6 - 0x959AE0)]
3F832A:  STRH            R3, [R0,#(word_959AE4 - 0x959AE0)]
3F832C:  STRB            R3, [R2,#(byte_959AFA - 0x959AF4)]
3F832E:  STRH            R3, [R2,#(word_959AF8 - 0x959AF4)]
3F8330:  STRB            R3, [R1,#(byte_959B0E - 0x959B08)]
3F8332:  STRH            R3, [R1,#(word_959B0C - 0x959B08)]
3F8334:  STR             R3, [R0]; CPad::PCTempMouseControllerState
3F8336:  STR             R3, [R2]; CPad::NewMouseControllerState
3F8338:  STR             R3, [R1]; CPad::OldMouseControllerState
3F833A:  BX              LR
