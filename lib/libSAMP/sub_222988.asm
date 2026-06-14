; =========================================================
; Game Engine Function: sub_222988
; Address            : 0x222988 - 0x222A14
; =========================================================

222988:  PUSH            {R4,R10,R11,LR}
22298C:  ADD             R11, SP, #8
222990:  SUB             SP, SP, #0x2E0
222994:  MOV             R4, R0
222998:  SUB             R0, R11, #-var_158
22299C:  BL              sub_224220
2229A0:  LDR             R3, [R4,#0xC]
2229A4:  CMP             R3, #0
2229A8:  BNE             loc_2229C4
2229AC:  SUB             R0, R11, #-var_158
2229B0:  ADD             R1, SP, #0x2E8+var_2E0
2229B4:  MOV             R2, R4
2229B8:  MOV             R3, #1
2229BC:  BL              sub_222828
2229C0:  B               loc_2229DC
2229C4:  LDR             R0, [R4,#0x14]
2229C8:  ADD             R1, SP, #0x2E8+var_2E0
2229CC:  STR             R0, [SP,#0x2E8+var_2E8]
2229D0:  SUB             R0, R11, #-var_158
2229D4:  MOV             R2, R4
2229D8:  BL              sub_222A24
2229DC:  LDR             R1, =(aLibunwindSS - 0x2229F0); "libunwind: %s - %s\n" ...
2229E0:  LDR             R2, =(aUnwindResume - 0x2229F8); "_Unwind_Resume" ...
2229E4:  LDR             R3, =(aUnwindResumeCa - 0x2229FC); "_Unwind_Resume() can't return" ...
2229E8:  ADD             R1, PC, R1; "libunwind: %s - %s\n"
2229EC:  LDR             R0, =(__sF_ptr - 0x222A00)
2229F0:  ADD             R2, PC, R2; "_Unwind_Resume"
2229F4:  ADD             R3, PC, R3; "_Unwind_Resume() can't return"
2229F8:  LDR             R0, [PC,R0]; __sF
2229FC:  ADD             R4, R0, #0xA8
222A00:  MOV             R0, R4; stream
222A04:  BL              fprintf
222A08:  MOV             R0, R4; stream
222A0C:  BL              fflush
222A10:  BL              abort
