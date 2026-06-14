; =========================================================
; Game Engine Function: sub_10A878
; Address            : 0x10A878 - 0x10A904
; =========================================================

10A878:  PUSH            {R4,R10,R11,LR}
10A87C:  ADD             R11, SP, #8
10A880:  SUB             SP, SP, #0x2E0
10A884:  MOV             R4, R0
10A888:  SUB             R0, R11, #-var_158
10A88C:  BL              sub_10C110
10A890:  LDR             R3, [R4,#0xC]
10A894:  CMP             R3, #0
10A898:  BNE             loc_10A8B4
10A89C:  SUB             R0, R11, #-var_158
10A8A0:  ADD             R1, SP, #0x2E8+var_2E0
10A8A4:  MOV             R2, R4
10A8A8:  MOV             R3, #1
10A8AC:  BL              sub_10A718
10A8B0:  B               loc_10A8CC
10A8B4:  LDR             R0, [R4,#0x14]
10A8B8:  ADD             R1, SP, #0x2E8+var_2E0
10A8BC:  STR             R0, [SP,#0x2E8+var_2E8]
10A8C0:  SUB             R0, R11, #-var_158
10A8C4:  MOV             R2, R4
10A8C8:  BL              sub_10A914
10A8CC:  LDR             R1, =(aLibunwindSS - 0x10A8E0); "libunwind: %s - %s\n" ...
10A8D0:  LDR             R2, =(aUnwindResume - 0x10A8E8); "_Unwind_Resume" ...
10A8D4:  LDR             R3, =(aUnwindResumeCa - 0x10A8EC); "_Unwind_Resume() can't return" ...
10A8D8:  ADD             R1, PC, R1; "libunwind: %s - %s\n"
10A8DC:  LDR             R0, =(__sF_ptr - 0x10A8F0)
10A8E0:  ADD             R2, PC, R2; "_Unwind_Resume"
10A8E4:  ADD             R3, PC, R3; "_Unwind_Resume() can't return"
10A8E8:  LDR             R0, [PC,R0]; __sF
10A8EC:  ADD             R4, R0, #0xA8
10A8F0:  MOV             R0, R4; stream
10A8F4:  BL              fprintf
10A8F8:  MOV             R0, R4; stream
10A8FC:  BL              fflush
10A900:  BL              abort
