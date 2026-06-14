; =========================================================
; Game Engine Function: sub_164196
; Address            : 0x164196 - 0x1641C4
; =========================================================

164196:  PUSH            {R4-R7,LR}
164198:  ADD             R7, SP, #0xC
16419A:  PUSH.W          {R11}
16419E:  MOV             R5, R0
1641A0:  MOVW            R0, #0xFFF
1641A4:  BIC.W           R0, R5, R0; addr
1641A8:  MOV             R6, R2
1641AA:  MOV             R4, R1
1641AC:  MOV.W           R1, #0x1000; len
1641B0:  MOVS            R2, #3; prot
1641B2:  BLX             mprotect
1641B6:  CBZ             R6, loc_1641BC
1641B8:  LDR             R0, [R5]
1641BA:  STR             R0, [R6]
1641BC:  STR             R4, [R5]
1641BE:  POP.W           {R11}
1641C2:  POP             {R4-R7,PC}
