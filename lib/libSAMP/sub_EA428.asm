; =========================================================
; Game Engine Function: sub_EA428
; Address            : 0xEA428 - 0xEA450
; =========================================================

EA428:  PUSH            {R4,R6,R7,LR}
EA42A:  ADD             R7, SP, #8
EA42C:  MOV             R4, R0
EA42E:  LDR             R0, =(_ZTVN8nlohmann6detail9exceptionE - 0xEA438); `vtable for'nlohmann::detail::exception ...
EA430:  LDR             R2, [R1,#4]
EA432:  ADDS            R1, #8; std::runtime_error *
EA434:  ADD             R0, PC; `vtable for'nlohmann::detail::exception
EA436:  ADDS            R0, #8
EA438:  STRD.W          R0, R2, [R4]
EA43C:  ADD.W           R0, R4, #8; this
EA440:  BLX             j__ZNSt13runtime_errorC2ERKS_; std::runtime_error::runtime_error(std::runtime_error const&)
EA444:  LDR             R0, =(_ZTVN8nlohmann6detail12out_of_rangeE - 0xEA44A); `vtable for'nlohmann::detail::out_of_range ...
EA446:  ADD             R0, PC; `vtable for'nlohmann::detail::out_of_range
EA448:  ADDS            R0, #8
EA44A:  STR             R0, [R4]
EA44C:  MOV             R0, R4
EA44E:  POP             {R4,R6,R7,PC}
