; =========================================================
; Game Engine Function: _ZN11CAudioZones16RegisterAudioBoxEPcibffffff
; Address            : 0x3BDD04 - 0x3BDDC2
; =========================================================

3BDD04:  PUSH            {R4-R7,LR}
3BDD06:  ADD             R7, SP, #0xC
3BDD08:  PUSH.W          {R8,R9,R11}
3BDD0C:  MOV             R9, R1
3BDD0E:  MOV             R1, R0; char *
3BDD10:  LDR             R0, =(_ZN11CAudioZones10m_NumBoxesE_ptr - 0x3BDD1A)
3BDD12:  MOV             R8, R2
3BDD14:  MOV             R6, R3
3BDD16:  ADD             R0, PC; _ZN11CAudioZones10m_NumBoxesE_ptr
3BDD18:  LDR             R4, [R0]; CAudioZones::m_NumBoxes ...
3BDD1A:  LDR             R0, =(_ZN11CAudioZones8m_aBoxesE_ptr - 0x3BDD22)
3BDD1C:  LDR             R2, [R4]; CAudioZones::m_NumBoxes
3BDD1E:  ADD             R0, PC; _ZN11CAudioZones8m_aBoxesE_ptr
3BDD20:  LDR             R5, [R0]; CAudioZones::m_aBoxes ...
3BDD22:  ADD.W           R0, R2, R2,LSL#1
3BDD26:  ADD.W           R0, R5, R0,LSL#3; char *
3BDD2A:  BLX             strcpy
3BDD2E:  VMOV.F32        S0, #8.0
3BDD32:  VLDR            S2, [R7,#arg_8]
3BDD36:  VLDR            S4, [R7,#arg_4]
3BDD3A:  VMOV            S12, R6
3BDD3E:  VLDR            S6, [R7,#arg_C]
3BDD42:  VLDR            S8, [R7,#arg_10]
3BDD46:  VLDR            S10, [R7,#arg_0]
3BDD4A:  VMUL.F32        S2, S2, S0
3BDD4E:  VMUL.F32        S4, S4, S0
3BDD52:  VMUL.F32        S6, S6, S0
3BDD56:  VMUL.F32        S8, S8, S0
3BDD5A:  VMUL.F32        S10, S10, S0
3BDD5E:  VMUL.F32        S0, S12, S0
3BDD62:  VCVT.S32.F32    S2, S2
3BDD66:  LDR             R0, [R4]; CAudioZones::m_NumBoxes
3BDD68:  VCVT.S32.F32    S6, S6
3BDD6C:  ADD.W           R1, R0, R0,LSL#1
3BDD70:  VCVT.S32.F32    S8, S8
3BDD74:  VCVT.S32.F32    S4, S4
3BDD78:  ADDS            R0, #1
3BDD7A:  ADD.W           R1, R5, R1,LSL#3
3BDD7E:  VCVT.S32.F32    S10, S10
3BDD82:  LDRB            R2, [R1,#0xA]
3BDD84:  VCVT.S32.F32    S0, S0
3BDD88:  STRH.W          R9, [R1,#8]
3BDD8C:  AND.W           R2, R2, #0xFE
3BDD90:  STR             R0, [R4]; CAudioZones::m_NumBoxes
3BDD92:  ORR.W           R2, R2, R8
3BDD96:  VMOV            R3, S0
3BDD9A:  STRH            R3, [R1,#0xC]
3BDD9C:  VMOV            R3, S10
3BDDA0:  STRH            R3, [R1,#0xE]
3BDDA2:  VMOV            R3, S4
3BDDA6:  STRH            R3, [R1,#0x10]
3BDDA8:  VMOV            R3, S2
3BDDAC:  STRH            R3, [R1,#0x12]
3BDDAE:  VMOV            R3, S6
3BDDB2:  STRH            R3, [R1,#0x14]
3BDDB4:  VMOV            R3, S8
3BDDB8:  STRH            R3, [R1,#0x16]
3BDDBA:  STRB            R2, [R1,#0xA]
3BDDBC:  POP.W           {R8,R9,R11}
3BDDC0:  POP             {R4-R7,PC}
