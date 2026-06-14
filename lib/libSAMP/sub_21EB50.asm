; =========================================================
; Game Engine Function: sub_21EB50
; Address            : 0x21EB50 - 0x21EB86
; =========================================================

21EB50:  PUSH            {R4,R5,R7,LR}
21EB52:  ADD             R7, SP, #8
21EB54:  LDR             R3, [R0]
21EB56:  MOVS            R2, #0
21EB58:  MOVS            R1, #0
21EB5A:  LDRB.W          R4, [R3],#1
21EB5E:  AND.W           R5, R4, #0x7F
21EB62:  LSLS            R5, R2
21EB64:  ADDS            R2, #7
21EB66:  ORRS            R1, R5
21EB68:  LSLS            R5, R4, #0x18
21EB6A:  BMI             loc_21EB5A
21EB6C:  STR             R3, [R0]
21EB6E:  MOV.W           R0, #0xFFFFFFFF
21EB72:  LSL.W           R3, R0, R2
21EB76:  MOV             R0, R1
21EB78:  CMP             R2, #0x20 ; ' '
21EB7A:  IT CC
21EB7C:  ORRCC           R0, R3
21EB7E:  LSLS            R2, R4, #0x19
21EB80:  IT PL
21EB82:  MOVPL           R0, R1
21EB84:  POP             {R4,R5,R7,PC}
