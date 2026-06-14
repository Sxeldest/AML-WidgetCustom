; =========================================================
; Game Engine Function: sub_F99D0
; Address            : 0xF99D0 - 0xF9A20
; =========================================================

F99D0:  PUSH            {R4-R7,LR}
F99D2:  ADD             R7, SP, #0xC
F99D4:  PUSH.W          {R11}
F99D8:  SUB             SP, SP, #8
F99DA:  MOV             R4, R0
F99DC:  LDR             R0, =(_ZNSt6__ndk111char_traitsIwE2eqEww_ptr - 0xF99E6)
F99DE:  CMP             R1, R3
F99E0:  LDR             R6, [R7,#arg_0]
F99E2:  ADD             R0, PC; _ZNSt6__ndk111char_traitsIwE2eqEww_ptr
F99E4:  LDR             R0, [R0]; std::char_traits<wchar_t>::eq(wchar_t,wchar_t)
F99E6:  STR             R0, [SP,#0x18+var_18]
F99E8:  IT CC
F99EA:  MOVCC           R3, R1
F99EC:  SUBS            R0, R1, R3
F99EE:  CMP             R0, R6
F99F0:  IT HI
F99F2:  ADDHI           R1, R3, R6
F99F4:  ADD.W           R5, R4, R1,LSL#2
F99F8:  ADD.W           R3, R2, R6,LSL#2
F99FC:  MOV             R0, R4
F99FE:  MOV             R1, R5
F9A00:  BLX             j__ZNSt6__ndk110__find_endIPDoFbwwEPKwS4_EET0_S5_S5_T1_S6_T_NS_26random_access_iterator_tagES8_
F9A04:  SUBS            R1, R0, R4
F9A06:  ASRS            R1, R1, #2
F9A08:  CMP             R0, R5
F9A0A:  MOV             R0, R1
F9A0C:  IT EQ
F9A0E:  MOVEQ.W         R0, #0xFFFFFFFF
F9A12:  CMP             R6, #0
F9A14:  IT EQ
F9A16:  MOVEQ           R0, R1
F9A18:  ADD             SP, SP, #8
F9A1A:  POP.W           {R11}
F9A1E:  POP             {R4-R7,PC}
