; =========================================================
; Game Engine Function: sub_E079C
; Address            : 0xE079C - 0xE07CA
; =========================================================

E079C:  PUSH            {R7,LR}
E079E:  MOV             R7, SP
E07A0:  CMP             R2, #4
E07A2:  BHI             loc_E07C2
E07A4:  LDR.W           R12, [R0]
E07A8:  CBZ             R2, loc_E07BC
E07AA:  ADD.W           LR, R12, #0xB
E07AE:  MOV             R0, R2
E07B0:  LDRB.W          R3, [R1],#1; char *
E07B4:  SUBS            R0, #1
E07B6:  STRB.W          R3, [LR],#1
E07BA:  BNE             loc_E07B0
E07BC:  STRB.W          R2, [R12,#0xF]
E07C0:  POP             {R7,PC}
E07C2:  LDR             R0, =(aInvalidFill - 0xE07C8); "invalid fill" ...
E07C4:  ADD             R0, PC; "invalid fill"
E07C6:  BLX             j__ZN3fmt2v86detail18throw_format_errorEPKc; fmt::v8::detail::throw_format_error(char const*)
