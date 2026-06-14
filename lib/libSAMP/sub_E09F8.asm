; =========================================================
; Game Engine Function: sub_E09F8
; Address            : 0xE09F8 - 0xE0A1E
; =========================================================

E09F8:  PUSH            {R7,LR}
E09FA:  MOV             R7, SP
E09FC:  MOV             R12, R0
E09FE:  LDR             R0, [R1,#4]; this
E0A00:  LDR             R2, [R0,#8]
E0A02:  CMP.W           R2, #0xFFFFFFFF
E0A06:  BLE             loc_E0A16
E0A08:  LDR             R1, [R1,#8]
E0A0A:  ADDS            R3, R2, #1
E0A0C:  STR             R3, [R0,#8]
E0A0E:  MOV             R0, R12
E0A10:  BL              sub_E0290
E0A14:  POP             {R7,PC}
E0A16:  LDR             R1, =(aCannotSwitchFr - 0xE0A1C); "cannot switch from manual to automatic "... ...
E0A18:  ADD             R1, PC; "cannot switch from manual to automatic "...
E0A1A:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
