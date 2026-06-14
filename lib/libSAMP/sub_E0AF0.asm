; =========================================================
; Game Engine Function: sub_E0AF0
; Address            : 0xE0AF0 - 0xE0B4E
; =========================================================

E0AF0:  PUSH            {R7,LR}
E0AF2:  MOV             R7, SP
E0AF4:  SUB             SP, SP, #8
E0AF6:  SUBS            R2, #1; switch 15 cases
E0AF8:  CMP             R2, #0xE
E0AFA:  BHI             def_E0AFC; jumptable 000E0AFC default case, cases 5-15
E0AFC:  TBB.W           [PC,R2]; switch jump
E0B00:  DCB 8; jump table for switch statement
E0B01:  DCB 0xC
E0B02:  DCB 0xE
E0B03:  DCB 0x11
E0B04:  DCB 0x18
E0B05:  DCB 0x18
E0B06:  DCB 0x18
E0B07:  DCB 0x18
E0B08:  DCB 0x18
E0B09:  DCB 0x18
E0B0A:  DCB 0x18
E0B0B:  DCB 0x18
E0B0C:  DCB 0x18
E0B0D:  DCB 0x18
E0B0E:  DCB 0x18
E0B0F:  ALIGN 2
E0B10:  CMP.W           R0, #0xFFFFFFFF; jumptable 000E0AFC case 1
E0B14:  BGT             loc_E0B2C
E0B16:  B               loc_E0B44
E0B18:  MOVS            R1, #0; jumptable 000E0AFC case 2
E0B1A:  B               loc_E0B22; jumptable 000E0AFC case 4
E0B1C:  CMP.W           R1, #0xFFFFFFFF; jumptable 000E0AFC case 3
E0B20:  BLE             loc_E0B44
E0B22:  SUBS.W          R2, R0, #0x80000000; jumptable 000E0AFC case 4
E0B26:  SBCS.W          R1, R1, #0
E0B2A:  BCS             loc_E0B3A
E0B2C:  ADD             SP, SP, #8
E0B2E:  POP             {R7,PC}
E0B30:  LDR             R1, =(aPrecisionIsNot - 0xE0B38); jumptable 000E0AFC default case, cases 5-15
E0B32:  ADD             R0, SP, #0x10+var_C; this
E0B34:  ADD             R1, PC; "precision is not integer"
E0B36:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
E0B3A:  LDR             R1, =(aNumberIsTooBig - 0xE0B42); "number is too big" ...
E0B3C:  ADD             R0, SP, #0x10+var_C; this
E0B3E:  ADD             R1, PC; "number is too big"
E0B40:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
E0B44:  LDR             R1, =(aNegativePrecis - 0xE0B4C); "negative precision" ...
E0B46:  ADD             R0, SP, #0x10+var_C; this
E0B48:  ADD             R1, PC; "negative precision"
E0B4A:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
