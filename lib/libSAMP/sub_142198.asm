; =========================================================
; Game Engine Function: sub_142198
; Address            : 0x142198 - 0x1421CA
; =========================================================

142198:  PUSH            {R4,R5,R7,LR}
14219A:  ADD             R7, SP, #8
14219C:  SUB             SP, SP, #8
14219E:  MOV             R4, R0
1421A0:  LDR             R0, =(off_234A24 - 0x1421A6)
1421A2:  ADD             R0, PC; off_234A24
1421A4:  LDR             R0, [R0]; dword_23DEEC
1421A6:  LDR             R0, [R0]
1421A8:  CBZ             R0, loc_1421C0
1421AA:  LDR             R5, [R0,#0x60]
1421AC:  MOV             R0, SP; int
1421AE:  LDR             R1, =(unk_901C3 - 0x1421B6)
1421B0:  MOVS            R2, #0x46 ; 'F'
1421B2:  ADD             R1, PC; unk_901C3 ; s
1421B4:  BL              sub_F1E90
1421B8:  LDR             R1, [SP,#0x10+var_10]
1421BA:  MOV             R0, R5
1421BC:  BL              sub_12D5E8
1421C0:  MOVS            R0, #1
1421C2:  STR.W           R0, [R4,#0x218]
1421C6:  ADD             SP, SP, #8
1421C8:  POP             {R4,R5,R7,PC}
