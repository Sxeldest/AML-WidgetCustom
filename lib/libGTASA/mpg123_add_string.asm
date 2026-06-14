; =========================================================
; Game Engine Function: mpg123_add_string
; Address            : 0x234904 - 0x234920
; =========================================================

234904:  PUSH            {R4,R5,R7,LR}
234906:  ADD             R7, SP, #8
234908:  MOV             R4, R1
23490A:  MOV             R5, R0
23490C:  MOV             R0, R4; char *
23490E:  BLX             strlen
234912:  MOV             R3, R0; size_t
234914:  MOV             R0, R5; int
234916:  MOV             R1, R4; int
234918:  MOVS            R2, #0; int
23491A:  POP.W           {R4,R5,R7,LR}
23491E:  B               mpg123_add_substring
