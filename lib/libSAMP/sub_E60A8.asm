; =========================================================
; Game Engine Function: sub_E60A8
; Address            : 0xE60A8 - 0xE60C6
; =========================================================

E60A8:  PUSH            {R4,R6,R7,LR}
E60AA:  ADD             R7, SP, #8
E60AC:  MOV             R4, R0
E60AE:  LDR             R0, =(_ZTVN8nlohmann6detail9exceptionE - 0xE60B4); `vtable for'nlohmann::detail::exception ...
E60B0:  ADD             R0, PC; `vtable for'nlohmann::detail::exception
E60B2:  ADDS            R0, #8
E60B4:  STRD.W          R0, R1, [R4]
E60B8:  ADD.W           R0, R4, #8; this
E60BC:  MOV             R1, R2; char *
E60BE:  BLX             j__ZNSt13runtime_errorC2EPKc; std::runtime_error::runtime_error(char const*)
E60C2:  MOV             R0, R4
E60C4:  POP             {R4,R6,R7,PC}
