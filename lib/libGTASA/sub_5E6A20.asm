; =========================================================
; Game Engine Function: sub_5E6A20
; Address            : 0x5E6A20 - 0x5E6A76
; =========================================================

5E6A20:  SUB             SP, SP, #0xC
5E6A22:  PUSH            {R4-R7,LR}
5E6A24:  ADD             R7, SP, #0xC
5E6A26:  PUSH.W          {R11}
5E6A2A:  SUB             SP, SP, #0xC
5E6A2C:  MOV             R4, R0
5E6A2E:  LDR             R0, =(__sF_ptr - 0x5E6A3C)
5E6A30:  ADD.W           R5, R7, #8
5E6A34:  ADD.W           R12, R7, #8
5E6A38:  ADD             R0, PC; __sF_ptr
5E6A3A:  STM.W           R12, {R1-R3}
5E6A3E:  MOV             R1, R4
5E6A40:  LDR             R0, [R0]; __sF
5E6A42:  MOV             R2, R5
5E6A44:  STR             R5, [SP,#0x1C+var_14]
5E6A46:  ADD.W           R6, R0, #0xA8
5E6A4A:  MOV             R0, R6
5E6A4C:  BL              sub_5E6C18
5E6A50:  MOVS            R0, #0xA; c
5E6A52:  MOV             R1, R6; stream
5E6A54:  BLX.W           fputc
5E6A58:  ADD             R0, SP, #0x1C+var_18; char **
5E6A5A:  MOV             R1, R4; char *
5E6A5C:  MOV             R2, R5; va_list
5E6A5E:  STR             R5, [SP,#0x1C+var_1C]
5E6A60:  BLX.W           vasprintf
5E6A64:  LDR             R0, =(aUsrLocalGoogle - 0x5E6A70); "/usr/local/google/buildbot/src/android/"...
5E6A66:  ADR             R2, aVoidAbortMessa; "void abort_message(const char *, ...)"
5E6A68:  LDR             R3, [SP,#0x1C+var_18]
5E6A6A:  MOVS            R1, #0x4A ; 'J'
5E6A6C:  ADD             R0, PC; "/usr/local/google/buildbot/src/android/"...
5E6A6E:  BLX.W           __assert2
5E6A72:  BLX.W           abort
