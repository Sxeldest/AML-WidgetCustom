; =========================================================
; Game Engine Function: sub_EB024
; Address            : 0xEB024 - 0xEB054
; =========================================================

EB024:  PUSH            {R4,R5,R7,LR}
EB026:  ADD             R7, SP, #8
EB028:  MOV             R5, R0
EB02A:  LDR             R0, =(_ZTVN8nlohmann6detail9exceptionE - 0xEB034); `vtable for'nlohmann::detail::exception ...
EB02C:  MOV             R4, R1
EB02E:  LDR             R1, [R1,#4]
EB030:  ADD             R0, PC; `vtable for'nlohmann::detail::exception
EB032:  ADDS            R0, #8
EB034:  STRD.W          R0, R1, [R5]
EB038:  ADD.W           R0, R5, #8; this
EB03C:  ADD.W           R1, R4, #8; std::runtime_error *
EB040:  BLX             j__ZNSt13runtime_errorC2ERKS_; std::runtime_error::runtime_error(std::runtime_error const&)
EB044:  LDR             R0, =(_ZTVN8nlohmann6detail11parse_errorE - 0xEB04C); `vtable for'nlohmann::detail::parse_error ...
EB046:  LDR             R1, [R4,#0x10]
EB048:  ADD             R0, PC; `vtable for'nlohmann::detail::parse_error
EB04A:  STR             R1, [R5,#0x10]
EB04C:  ADDS            R0, #8
EB04E:  STR             R0, [R5]
EB050:  MOV             R0, R5
EB052:  POP             {R4,R5,R7,PC}
